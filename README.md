# Fake Store App

## How to Run
To run the Fake Store app, follow these steps:
1. **Clone the Repository**: Clone this repository to your local machine using:
   ```bash
   git clone
   https://github.com/M-Saad-0/fakestore```
2. **Navigate to the Project Directory**: Change into the project directory:
   ```bash
   cd fakestore```
3. **Install Dependencies**: Install the required dependencies using:
   ```bash
   flutter pub get```
4. **Run the App**: Start the app on an emulator or physical device using:
   ```bash
   flutter run```

## How to Start

When the app is launched, you will be greeted by a **Login Screen**. Please note that the FakeStore API does not support the creation of new user accounts (POST requests to users do not persist). 

To explore the app, please use the existing test accounts provided on the login screen:
* **Username:** `johnd` | **Password:** `m38rmF$`
* **Username:** `mor_2314` | **Password:** `83r5^_`

Once logged in, you can browse products, filter by category, search for specific items, and manage your shopping cart.


## Working Features
- *User Authentication* : Session is stored in secure storage and is used to maintain login state across app restarts.
- *Product Listing* : Products are fetched from the API and displayed in a grid view with pagination.
- *Cart Management*  : Users can add products to the cart, view cart contents, and remove items from the cart. But note that cart changes are not persisted to the server because API does not support.
- *Selecting Categories* : Users can filter products by selecting a category from the list of available categories.
- *Searching Products* : Users can search for specific products by entering keywords in the search bar.
- *Changing Theme* : Users can switch between light and dark themes.
- *Product Detail* : Users can view detailed information about a selected product.


## Screenshots
<div align="center">
  <table>
    <tr>
      <td><img src="/images/login.jpeg" width="200" alt="Login Screen"/></td>
      <td><img src="/images/products.jpeg" width="200" alt="Products Grid"/></td>
      <td><img src="/images/categories.jpeg" width="200" alt="Categories"/></td>
    </tr>
    <tr>
      <td><img src="/images/cart.jpeg" width="200" alt="Shopping Cart"/></td>
      <td><img src="/images/drawer.jpeg" width="200" alt="Navigation Drawer"/></td>
      <td><img src="/images/user_profile.jpeg" width="200" alt="User Profile"/></td>
    </tr>
    <tr>
      <td><img src="/images/changing_theme.jpeg" width="200" alt="Theme Switch"/></td>
      <td><img src="/images/theme.jpeg" width="200" alt="Dark Mode"/></td>
      <td><img src="/images/drawer.jpeg" width="200" alt="Drawer Example"/></td>
    </tr>
  </table>
</div>


## Video
<p align="center">
  <img src="images/demo-ezgif.com-video-to-gif-converter.gif" 
       alt="FakeStore demo" 
       width="400" 
       style="border-radius: 12px; box-shadow: 0 4px 15px rgba(0,0,0,0.15);"/>
</p>

<!-- Or centered with caption
<figure align="center">
  <img src="images/login-to-products.gif" alt="Login → Products flow" width="320"/>
  <figcaption>Login to browsing products flow</figcaption>
</figure> -->