<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.google.gson.Gson" %>
<%@ page import="java.sql.*" %>
<%@ page import="musicart.com.musicart.connectDB" %>
<html lang="en">
 <head>
  <meta charset="utf-8"/>
  <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
  <title>
   Dashboard
  </title>
  <script src="https://cdn.tailwindcss.com">
  </script>
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet"/>
  <script src="https://cdn.jsdelivr.net/npm/chart.js">
  </script>
 </head>
 <body class="bg-gray-100 font-sans leading-normal tracking-normal">
  <div class="flex flex-col md:flex-row"">
           <!-- Sidebar -->
    <%
    // Lấy tên file hiện tại từ URL
    String currentPage = request.getRequestURI();
%>
    <%@ include file="Sidebar.jsp" %>
   <!-- Main Content -->
   <div class="flex-1 p-6">
    <!-- Top Bar -->
    <div class="flex justify-between items-center mb-6">
     <div class="relative w-1/2">
      <input class="w-full py-2 px-4 rounded-lg border border-gray-300" placeholder="Search for projects" type="text"/>
      <i class="fas fa-search absolute top-3 right-3 text-gray-400">
      </i>
     </div>
     <div class="flex items-center space-x-4">
      <i class="fas fa-moon text-gray-600">
      </i>
      <i class="fas fa-bell text-gray-600">
      </i>
      <i class="fas fa-user-circle text-gray-600">
      </i>
     </div>
    </div>
    
    <!-- Manage Song Table -->
    <div class="bg-white p-6 rounded-lg shadow-md">
     <h2 class="text-xl font-semibold mb-4">
      Manage Song
     </h2>
     <table class="w-full">
      <thead>
       <tr class="text-left text-gray-600">
        <th class="py-2">
         Title
        </th>
        <th class="py-2">
         Singer
        </th>
        <th class="py-2">
         Description
        </th>
        <th class="py-2">
         Image
        </th>
        <th class="py-2">
         File Name
        </th>
        <th class="py-2">
         Action
        </th>
       </tr>
      </thead>
      <tbody>
       <tr class="border-t">
        <td class="py-2">
         Song Title 1
        </td>
        <td class="py-2">
         Singer 1
        </td>
        <td class="py-2">
         Description of song 1
        </td>
        <td class="py-2">
         <img alt="Song Image 1" class="h-10 w-10 rounded-full" height="40" src="https://storage.googleapis.com/a1aa/image/0A9BFaxxBh50OxgspRyjGuzjtnhyYq4NNJvHaAVySEpr7Y8E.jpg" width="40"/>
        </td>
        <td class="py-2">
         song1.mp3
        </td>
        <td class="py-2">
         <button class="bg-yellow-500 text-white py-1 px-2 rounded hover:bg-yellow-600">
          Edit
         </button>
         <button class="bg-red-500 text-white py-1 px-2 rounded hover:bg-red-600">
          Delete
         </button>
        </td>
       </tr>
       <tr class="border-t">
        <td class="py-2">
         Song Title 2
        </td>
        <td class="py-2">
         Singer 2
        </td>
        <td class="py-2">
         Description of song 2
        </td>
        <td class="py-2">
         <img alt="Song Image 2" class="h-10 w-10 rounded-full" height="40" src="https://storage.googleapis.com/a1aa/image/aYx1LGjXByKHHJ4wPAVjJ1Rvfp4vSKbzpfTVPxDXSI3wujxTA.jpg" width="40"/>
        </td>
        <td class="py-2">
         song2.mp3
        </td>
        <td class="py-2">
         <button class="bg-yellow-500 text-white py-1 px-2 rounded hover:bg-yellow-600">
          Edit
         </button>
         <button class="bg-red-500 text-white py-1 px-2 rounded hover:bg-red-600">
          Delete
         </button>
        </td>
       </tr>
       <!-- Add more rows as needed -->
      </tbody>
     </table>
    </div>
   </div>
  </div>
  <script>
   // Revenue Line Chart
    const ctxRevenue = document.getElementById('revenueChart').getContext('2d');
    const revenueChart = new Chart(ctxRevenue, {
        type: 'line',
        data: {
            labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July'],
            datasets: [{
                label: 'Revenue',
                data: [1200, 1900, 3000, 5000, 2000, 3000, 4500],
                borderColor: 'rgba(75, 192, 192, 1)',
                backgroundColor: 'rgba(75, 192, 192, 0.2)',
                fill: true,
                tension: 0.1
            }]
        },
        options: {
            responsive: true,
            scales: {
                x: {
                    beginAtZero: true
                },
                y: {
                    beginAtZero: true
                }
            }
        }
    });

    // Best Seller Pie Chart
    const ctxBestSeller = document.getElementById('bestSellerChart').getContext('2d');
    const bestSellerChart = new Chart(ctxBestSeller, {
        type: 'pie',
        data: {
            labels: ['Product A', 'Product B', 'Product C', 'Product D'],
            datasets: [{
                label: 'Best Seller',
                data: [300, 50, 100, 150],
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)'
                ],
                borderColor: [
                    'rgba(255, 99, 132, 1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)'
                ],
                borderWidth: 1
            }]
        },
        options: {
            responsive: true
        }
    });
  </script>
 </body>
</html>
