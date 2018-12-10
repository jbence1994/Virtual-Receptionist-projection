using System;
using System.IO;
using System.Collections.Generic;
using MySql.Data.MySqlClient;

namespace automataMester
{
    public class Mester
    {
        private int azonosito;
        private string nev;
        private string varos;
        private string telefon;

        public override string ToString()
        {
            return azonosito + "\t" + nev + "\t" + varos + "\t\t" + telefon;
        }

        public Mester(int azonosito, string nev, string varos, string telefon)
        {
            this.azonosito = azonosito;
            this.nev = nev;
            this.varos = varos;
            this.telefon = telefon;
        }

        public Mester()
        {

        }

        public Mester(string filesor)
        {
            string[] adatok = filesor.Split(';');

            bool siker = int.TryParse(adatok[0], out azonosito);

            if (!siker)
            {
                throw new Exception("A mester nem rendelkezeik azonosítóval!");
            }

            nev = adatok[1];
            varos = adatok[2];
            telefon = adatok[3];
        }

        public int Azonosito
        {
            get
            {
                return azonosito;
            }
            set
            {
                azonosito = value;
            }
        }

        public string Nev
        {
            get
            {
                return nev;
            }
            set
            {
                nev = value;
            }
        }

        public string Varos
        {
            get
            {
                return varos;
            }
            set
            {
                varos = value;
            }
        }

        public string Telefon
        {
            get
            {
                return telefon;
            }
            set
            {
                telefon = value;
            }
        }
    }

    public class Program
    {
        private static List<Mester> mesterek;
        private static Mester m;

        public static List<Mester> getMesterFromTxt(string fajlNev)
        {
            mesterek = new List<Mester>();
            StreamReader streamReader = new StreamReader(fajlNev);
            while (!streamReader.EndOfStream)
            {
                string line = streamReader.ReadLine();
                Mester mester = new Mester(line);
                mesterek.Add(mester);
            }

            return mesterek;
        }

        private static MySqlConnection connection;
        private static MySqlCommand cmd;

        public static void Main(string[] args)
        {
            mesterek = getMesterFromTxt("mesterek.txt");
            mesterek.ForEach(Console.WriteLine);

            connection = new MySqlConnection()
            {
                ConnectionString = "SERVER =\"127.0.0.1\"; DATABASE=\"mesterek\"; UID=\"root\"; PASSWORD=\"\"; SslMode=None"
            };

            cmd = new MySqlCommand()
            {
                Connection = connection,
                CommandText = "INSERT INTO mesterek(ID, nev, varos, telefon) VALUES (@ID, @nev, @varos, @telefon)"
            };

            connection.Open();

            cmd.Prepare();

            m = new Mester();

            foreach (Mester mester in mesterek)
            {
                m.Azonosito = mester.Azonosito;
                m.Nev = mester.Nev;
                m.Varos = mester.Varos;
                m.Telefon = mester.Telefon;
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@ID", m.Azonosito);
                cmd.Parameters.AddWithValue("@nev", m.Nev);
                cmd.Parameters.AddWithValue("@varos", m.Varos);
                cmd.Parameters.AddWithValue("@telefon", m.Telefon);
                cmd.ExecuteNonQuery();
            }

            connection.Close();

            Console.ReadKey();
        }
    }
}
