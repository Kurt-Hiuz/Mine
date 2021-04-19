using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

using System.IO;

namespace Task5
{
	/// <summary>
	/// Логика взаимодействия для MainWindow.xaml
	/// </summary>
	public partial class MainWindow : Window
	{
		public MainWindow()
		{
			InitializeComponent();
		}

		private void AddButton_Click(object sender, RoutedEventArgs e)
		{
			string tovar = TextBox1.Text;
			bool f = false;

			for(int i = 0; i <= ListBox1.Items.Count - 1; i++)
			{
				if(ListBox1.Items[i].ToString() == tovar)
					f = true;
			}

			if(f == true)
			{
				MessageLabel.Text = new FileInfo("Tovari").FullName;
				MessageLabel.Foreground = Brushes.Red;
			}
			else
			{
				ListBox1.Items.Add(tovar);
				StreamWriter writer = new StreamWriter("Tovari.txt");
				foreach(string tov in ListBox1.Items)
				{
					writer.WriteLine(tov);
				}
				writer.Close();

				MessageLabel.Text = "Товар успешно добавлен";
				MessageLabel.Foreground = Brushes.Green;
			}
		}

		private void DeleteButton_Click(object sender, RoutedEventArgs e)
		{
			if(ListBox1.SelectedIndex != -1)
				for(int i = ListBox1.SelectedItems.Count - 1; i >= 0; i--)
				{
					ListBox1.Items.Remove(ListBox1.SelectedItems[i]);
				}
			ListBox1.SelectedItems.Clear();

			StreamWriter writer = new StreamWriter("Tovari.txt");
			foreach(string tov in ListBox1.Items)
			{
				writer.WriteLine(tov);
			}
			writer.Close();

			MessageLabel.Text = "Товар успешно удален";
			MessageLabel.Foreground = Brushes.Green;
		}

		private void ListBox1_Initialized(object sender, EventArgs e)
		{
			if(!File.Exists("Tovari.txt"))
				File.CreateText("Tovari.txt");

			StreamReader reader = new StreamReader("Tovari.txt");
			while(!reader.EndOfStream)
				ListBox1.Items.Add(reader.ReadLine());
			reader.Close();
		}

        private void TextBlock_ChangeColor_Clicked(object sender, RoutedEventArgs e)
        {
            MessageLabel.Text = "Color changed";
            MainWindow1.Background = Brushes.MistyRose;
        }
	}
}
