Readers' Haven Public Library

A responsive static website developed for Readers' Haven Public Library as part of the DevOps Fundamentals (SEST4663) Assignment 02 at the University of Central Punjab.

Project Overview

Readers' Haven is a fictional public library website designed to help visitors explore book collections, membership plans, digital services, and contact information.

The project demonstrates how to build, containerize, and deploy a static website using Docker and Nginx.

Technologies Used
HTML5
CSS3
Node.js 22 Alpine
Parcel
Docker
Nginx 1.27 Alpine
Git and GitHub
Docker Hub
Website Pages
Home: Introduction, library mission, location, and opening hours.
Collections: Book categories and featured titles.
Membership: Membership plans, annual fees, and borrowing rules.
Digital Services: Online catalogue, e-books, study rooms, printing, and Wi-Fi.
Contact & Feedback: Library contact details and feedback form.
Project Structure
text
readers-haven-library/
├── src/
│   ├── index.html
│   ├── collections.html
│   ├── membership.html
│   ├── services.html
│   └── contact.html
├── styles/
│   └── style.css
├── Dockerfile
├── .dockerignore
├── .gitignore
├── package.json
└── package-lock.json

Local Development

Install project dependencies:

bash
npm ci


Build the website:

bash
npm run build


The generated static website will be available in the dist/ directory.

Docker Usage

Build the Docker image:

bash
docker image build -t readers-haven .


Run the container:

bash
docker container run -d --name readers-haven-container -p 8080:80 readers-haven


Open the website:

http://localhost:8080

Team Members
Student	Responsibility
Ehaan	Team Lead and Home Page
Haris	Collections Page
Hassan	Membership and Contact Pages
Ali	Digital Services Page
Academic Information
University: University of Central Punjab
Faculty: Faculty of Information Technology
Course: DevOps Fundamentals (SEST4663)
Program: BS Software Engineering
Semester: Fall 2026
Assignment: Assignment 02 – Containerizing a Static Website with Docker
Instructor: Imran Ashraf
Project Objective

To develop a portable static website using a multi-stage Docker build, optimize the final container image, and publish it through Docker Hub while practicing GitHub collaboration workflows.