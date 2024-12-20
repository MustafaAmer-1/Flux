
# 🌟 **Flux** – Your Personal RSS Feed Aggregator 🚀

Flux is your one-stop RSS feed aggregator, bringing the latest updates from your favorite blogs, news sites, and online publications straight to your fingertips. With a sleek UI and robust backend powered by Go and PostgreSQL, Flux ensures you never miss a beat in the digital world. 🌐

---

## 🌈 **Features**
- **Dynamic Feed Management**: Add, remove, and manage your feeds effortlessly. Stay updated with what matters to you.  
- **Secure API Access**: Enjoy robust authentication using API keys stored securely with cookies. 🔒  
- **Streamlined Login**: Simple yet effective authentication flow to keep your data protected.  
- **Mobile-Responsive UI**: A modern interface crafted with Tailwind CSS for an exceptional user experience across devices.  
- **Personalized Updates**: Aggregate feeds tailored to your interests, presented in a neat, chronological format.  
- **Powerful Backend**: Built with Go for speed and scalability, Flux ensures lightning-fast performance. ⚡  
- **RESTful APIs**: Interact programmatically with your feeds using well-structured API endpoints.  

---

## 🌐 **Try Flux Live!**
Experience Flux in action at: [Flux RSS Aggregator](https://flux-rss.fly.dev/)  
1. **Register an account** to get started.  
2. Add as many feed URLs as you like.  
3. Browse available feeds added by other users and follow them.  
4. Enjoy browsing posts from the feeds you follow! 🚀  

---

## 🛠️ **Tech Stack**
- **Frontend**: React, Tailwind CSS  
- **Backend**: Go with `sqlc` and `goose` for PostgreSQL database management  
- **Database**: PostgreSQL  
- **Authentication**: `bcrypt`, cookies, and API key-based security  
- **Libraries**:  
  - `js-cookie` for cookie management 🍪  
  - `lucide-react` for beautifully simple icons 🎨  
  - `react-router-dom` for seamless navigation 🌐  

---

## 🐳 **Dockerized Setup**
Flux is fully Dockerized for ease of deployment and development.  

- The backend resides in the `Flux_backend` directory, with a `Dockerfile` for building its container.  
- The frontend resides in the `Flux_frontend` directory, also with its own `Dockerfile`.  
- A `docker-compose.yml` file is present at the root of the project to orchestrate the services.  

### **Running with Docker Compose**
1. Ensure Docker and Docker Compose are installed on your system.  
2. From the project root, run:  
   ```bash
   docker-compose up --build
   ```
3. Access the application at `http://localhost:5173` .  

---

## 🚀 **Getting Started**

Follow these steps to launch Flux on your machine:

### **1. Clone the Repository**
```bash
git clone https://github.com/MustafaAmer-1/Flux.git
cd Fluc
```

### **2. Set Up the Backend**
1. Install Go: [Download here](https://golang.org/dl/).  
2. Install PostgreSQL: [Get started](https://www.postgresql.org/download/).  
3. Configure your environment variables:  
   - `PORT`  
   - `DB_URL`  

4. Run migrations with `goose`:
   ```bash
   go install github.com/pressly/goose/v3/cmd/goose@latest
   goose -dir=Flux_backend/sql/schema postgres $DB_URL up
   ```

5. Run the backend server:
   ```bash
   cd Flux_backend
   go mod download
   go mod vendor
   go build -o Flux && ./Flux
   ```

### **3. Set Up the Frontend**
1. Install Node.js and npm: [Node.js Official Website](https://nodejs.org/).  
2. Navigate to the frontend directory and install dependencies:
   ```bash
   cd Flux_frontend
   npm install
   ```
3. ***Optinal: set backend base url:*** If you deployed the backend on another machine you can set it's base url as environment variable `REACT_APP_BACKEND_URL`
    ```bash
    export REACT_APP_BACKEND_URL=https://somedomain.com/v1/
    ```
---
1. Start the development server:
   ```bash
   npm run dev
   ```


## 🎯 **How It Works**

1. **Sign Up or Log In** to start your personalized feed journey.  
2. Add your favorite RSS feeds using their URLs.  
3. Let Flux aggregate, sort, and display all the latest posts for you.  

---

## 🔐 **Security**
- Passwords are hashed with `bcrypt` before being stored in the database.  
- API keys are stored in secure, HTTP-only cookies with `sameSite: strict`.  
- Authorization headers ensure secure access to your feeds.

---

## 🤝 **Contributing**
We welcome contributions from the community!  
1. Fork the repo.  
2. Create your feature branch:  
   ```bash
   git checkout -b feature/amazing-feature
   ```
3. Commit your changes:  
   ```bash
   git commit -m 'Add some amazing feature'
   ```
4. Push your branch:  
   ```bash
   git push origin feature/amazing-feature
   ```
5. Open a Pull Request!  

---

## 📜 **License**
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.  

---

## 💡 **Future Roadmap**
- Add dark mode for better night-time browsing. 🌙  
- Include social media feed integration.  
- Offline mode to read feeds on the go. 🚉  

---

🌟 *Flux: Aggregating the world for you.* 🌟  
