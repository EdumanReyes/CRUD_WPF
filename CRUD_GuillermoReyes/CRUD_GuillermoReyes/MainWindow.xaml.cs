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

namespace CRUD_GuillermoReyes
{
    /// <summary>
    /// Lógica de interacción para MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private List<Person> personas;

        public MainWindow()
        {
            InitializeComponent();
            personas = new List<Person>();

            // Configurar las columnas del DataGrid
            DataGridTextColumn column1 = new DataGridTextColumn();
            column1.Header = "Id";
            column1.Binding = new System.Windows.Data.Binding("Id");
            column1.Width = 20;

            DataGridTextColumn column2 = new DataGridTextColumn();
            column2.Header = "Edad";
            column2.Binding = new System.Windows.Data.Binding("Edad");
            column2.Width = 40;

            DataGridTextColumn column3 = new DataGridTextColumn();
            column3.Header = "Nombre";
            column3.Binding = new System.Windows.Data.Binding("Nombre");
            column3.Width = 250;

            DataGridTextColumn column4 = new DataGridTextColumn();
            column4.Header = "Correo";
            column4.Binding = new System.Windows.Data.Binding("Correo");
            column4.Width = 235;

            dgTabla.Columns.Add(column1);
            dgTabla.Columns.Add(column2);
            dgTabla.Columns.Add(column3);
            dgTabla.Columns.Add(column4);

            
            dgTabla.ItemsSource = personas;
        }

       

   

        private void Guardar(object sender, RoutedEventArgs e)
        {

            if (string.IsNullOrEmpty(txtId.Text) ||
                string.IsNullOrEmpty(txtEdad.Text) ||
                string.IsNullOrEmpty(txtNombre.Text) ||
                string.IsNullOrEmpty(txtCorreo.Text))
            {
                MessageBox.Show("Para guardar por favor complete todos los campos");
                return;
            }
            else
            {
                
                //Extracción de texto de textboxes
                if (!int.TryParse(txtId.Text, out int id))
                {
                    MessageBox.Show("Por favor, ingrese un id válido.");
                    return;
                }
                if (!int.TryParse(txtEdad.Text, out int edad)) {
                    MessageBox.Show("Por favor, ingrese una edad válida.");
                    return;
                }
                string nombre = txtNombre.Text;
                string correo = txtCorreo.Text;

                Person nuevaPersona = new Person
                {
                    Id = id,
                    Edad = edad,
                    Nombre = nombre,
                    Correo = correo
                };

                // Agregar la nueva persona
                personas.Add(nuevaPersona);

                dgTabla.ItemsSource = null;
                dgTabla.ItemsSource = personas;

                txtId.Text = "";
                txtEdad.Text = "";
                txtNombre.Text = "";
                txtCorreo.Text = "";
            }
        }

        private void Eliminar(object sender, RoutedEventArgs e)
        {
            Person personaSeleccionada = dgTabla.SelectedItem as Person;

            if (personas.Count == 0)
            {
                MessageBox.Show("No hay personas registradas,por favor registre una primero.");
                return;
            }
            else
            {
                if (personaSeleccionada == null)
                {
                    MessageBox.Show("Seleccione una persona para eliminar.");
                    return;
                }
            }

            personas.Remove(personaSeleccionada);

            dgTabla.ItemsSource = null;
            dgTabla.ItemsSource = personas;
        }

        private void Nuevo(object sender, RoutedEventArgs e)
        {
            // Limpiar los TextBox
            txtId.Text = "";
            txtEdad.Text = "";
            txtNombre.Text = "";
            txtCorreo.Text = "";

            btnNuevo.IsEnabled = false;
        }

        private void Editar(object sender, MouseButtonEventArgs e)
        {
            Person personaSeleccionada = dgTabla.SelectedItem as Person;

            if (personaSeleccionada != null)
            {
                // Valores de la persona a los TextBox
                txtId.Text = personaSeleccionada.Id.ToString();
                txtEdad.Text = personaSeleccionada.Edad.ToString();
                txtNombre.Text = personaSeleccionada.Nombre;
                txtCorreo.Text = personaSeleccionada.Correo;

                btnNuevo.IsEnabled = true;
            }
        }
    }
}
