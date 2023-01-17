# XYZ

---

# Technologies

---

- [**Ruby ^3.1.3p185**](https://rubyinstaller.org/downloads/)
- [**Rails ^7.0.4**](https://guides.rubyonrails.org/index.html)

# Packages

---

- **Rails**
- **Sassc-Rails**
- **JQuery-Rails**
- **RSpec-Rails**

# Setup Guide

---

### Step 1

**Download** the Required Tools

- [**SQLite ^3.40.1**](https://www.sqlite.org/download.html)
- [**NodeJS ^18.13.0**](https://nodejs.org/en/)
- [**Yarn ^1.22.19**](https://classic.yarnpkg.com/lang/en/docs/install/#windows-stable)
- [**Ruby ^3.1.3p185**](https://rubyinstaller.org/downloads/)

**NOTES:**

Lower Versions of Software will work, but not guaranteed. Rails has a history of compatibility issues.

### Step 2

**Download** or **Clone** the [**Repository**](https://github.com/Preh4cks/XYZ)

**Extract** the zip file if you download

```powershell
git clone https://github.com/Preh4cks/XYZ
```

### Step 3

**Open** your preferred **Terminal**. 

### Step 4

In the Terminal **Navigate** to the **v1** folder inside the **XYZ**. 

### Step 5

**Run** Bundle Install to install the required gems

```powershell
bundle
```

### Step 6

To make sure that we are running the **Rails** Environment in **Development mode** simply **Run**.

```powershell
rake db:migrate RAILS_ENV=development
```

### Step 7

Lets then **Load** our **seeds** 

```powershell
rake db:seed
```

### Step 8

Now lets **Run** the **Server**

```powershell
rails s
```

TIP:

Here’s a shortcut of the steps!

**Open** your **Terminal**

and **copy** all this code and **paste** it in the **Terminal**

```powershell
git clone https://github.com/Preh4cks/XYZ; cd XYZ/v1; bundle; rake db:migrate RAILS_ENV=development; rake db:seed; rails s; 
```

now **Wait patiently**.

### Step 9

- Open your browser of choice and paste this in your Address Bar

```powershell
localhost:3000
```

### DONE!

- **Congratulations**!, you have successfully cloned **XYZ**.

**Note:**

- Some problem’s may occur, depending on System’s Configuration.
- If Encountered any problem reload the webpage again, it works guaranteed 😎.

# Contributors

---

**Arjhay Frias  ***| *** arjhaycambafrias*@gmail.com* |  [https://www.linkedin.com/in/arjhay-frias/](https://www.linkedin.com/in/arjhay-frias/)**