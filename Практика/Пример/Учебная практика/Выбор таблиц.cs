using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Учебная_практика
{
    public partial class Выбор_таблиц : Form
    {
        public Выбор_таблиц()
        {
            InitializeComponent();
        }

        private void button6_Click(object sender, EventArgs e)
        {
            Абоненты newForm = new Абоненты();
            newForm.Show();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            счетчик newForm = new счетчик();
            newForm.Show();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            Показания_счетчиков newForm = new Показания_счетчиков();
            newForm.Show();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            категория_льгот newForm = new категория_льгот();
            newForm.Show();
        }

        private void button5_Click(object sender, EventArgs e)
        {
            тарифы newForm = new тарифы();
            newForm.Show();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Hide();
        }

        private void label2_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
