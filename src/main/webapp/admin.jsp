<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.google.gson.Gson" %>
<!-- Import Gson vào -->

<%
    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;
    int totalSingers = 0, totalSongs = 0, totalUsers = 0, totalViews = 0, totalComments = 0;

    try {
        // Kết nối cơ sở dữ liệu
        conn = connectDB.getConnection(); // Hàm connectDB.getConnection() được định nghĩa trước

        stmt = conn.createStatement();

        // Lấy tổng số singers
        rs = stmt.executeQuery("SELECT COUNT(*) AS total FROM Singer");
        if (rs.next()) {
            totalSingers = rs.getInt("total");
        }

        // Lấy tổng số songs
        rs = stmt.executeQuery("SELECT COUNT(*) AS total FROM Song");
        if (rs.next()) {
            totalSongs = rs.getInt("total");
        }

        // Lấy tổng số users
        rs = stmt.executeQuery("SELECT COUNT(*) AS total FROM User");
        if (rs.next()) {
            totalUsers = rs.getInt("total");
        }

        // Lấy tổng số views
        rs = stmt.executeQuery("SELECT SUM(views) AS total FROM Song");
        if (rs.next()) {
            totalViews = rs.getInt("total");
        }

        // Lấy tổng số comments
        rs = stmt.executeQuery("SELECT COUNT(*) AS total FROM Comment");
        if (rs.next()) {
            totalComments = rs.getInt("total");
        }

    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        if (rs != null) rs.close();
        if (stmt != null) stmt.close();
        if (conn != null) conn.close();
    }
%>


<%@ page import="java.sql.*" %>
<%@ page import="musicart.com.musicart.connectDB" %>

<html lang="en">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Dashboard</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

    <!-- link icon -->
    <link rel="stylesheet" data-purpose="Layout StyleSheet" title="Web Awesome"
          href="/css/app-wa-8d95b745961f6b33ab3aa1b98a45291a.css?vsn=d">

    <link rel="stylesheet" href="https://site-assets.fontawesome.com/releases/v6.4.0/css/all.css">

    <link rel="stylesheet" href="https://site-assets.fontawesome.com/releases/v6.4.0/css/sharp-solid.css">

    <link rel="stylesheet" href="https://site-assets.fontawesome.com/releases/v6.4.0/css/sharp-regular.css">

    <link rel="stylesheet" href="https://site-assets.fontawesome.com/releases/v6.4.0/css/sharp-light.css">
</head>
<style>
    .text-2xl {
        transition: transform 0.2s ease-in-out;
    }

</style>
<body class="bg-gray-100 font-sans leading-normal tracking-normal">
<div class="flex">
    <!-- Sidebar -->
    <div class="w-64 bg-white h-screen shadow-md">
        <div class="p-4 flex items-center">
            <img src="https://storage.googleapis.com/a1aa/image/MqM0joCPJiZJNxR2WUzReFAQ6YgfbljjjGAPQjep7spwa5dnA.jpg"
                 alt="Brick Shop Logo" class="mr-2" width="40" height="40"/>
            <span class="text-xl font-bold">BRICK SHOP</span>
        </div>
        <nav class="mt-10">
            <a class="flex items-center py-2 px-8 bg-gray-200 text-gray-700" href="#"><i
                    class="fas fa-tachometer-alt mr-3"></i>Dashboard</a>
            <a class="flex items-center py-2 px-8 text-gray-700 hover:bg-gray-200" href="#"><i
                    class="fas fa-plus mr-3"></i>Add Music</a>
            <a class="flex items-center py-2 px-8 text-gray-700 hover:bg-gray-200" href="#"><i
                    class="fas fa-star mr-3"></i>Add singer</a>
            <a class="flex items-center py-2 px-8 text-gray-700 hover:bg-gray-200" href="#"><i
                    class="fas fa-users mr-3"></i>Manage Users</a>
            <a class="flex items-center py-2 px-8 text-gray-700 hover:bg-gray-200" href="#"><i
                    class="fas fa-box mr-3"></i>Manage Song</a>
            <a class="flex items-center py-2 px-8 text-gray-700 hover:bg-gray-200" href="#"><i
                    class="fas fa-comments mr-3"></i>Manage Comment</a>
            <a class="flex items-center py-2 px-8 text-gray-700 hover:bg-gray-200" href="#"><i
                    class="fas fa-shopping-cart mr-3"></i>Manage Order</a>
            <a class="flex items-center py-2 px-8 text-gray-700 hover:bg-gray-200" href="#"><i
                    class="fas fa-tags mr-3"></i>Manage Discount</a>

        </nav>
    </div>
    <!-- Main Content -->
    <div class="flex-1 p-6">
        <!-- Top Bar -->
        <div class="flex justify-between items-center mb-6">
            <div class="relative w-1/2">
                <input type="text" class="w-full py-2 px-4 rounded-lg border border-gray-300"
                       placeholder="Search for projects"/>
                <i class="fas fa-search absolute top-3 right-3 text-gray-400"></i>
            </div>
            <div class="flex items-center space-x-4">
                <i class="fas fa-moon text-gray-600"></i>
                <i class="fas fa-bell text-gray-600"></i>
                <i class="fas fa-user-circle text-gray-600"></i>
            </div>
        </div>
        <!-- Dashboard Content -->
        <h1 class="text-2xl font-semibold mb-4">Dashboard</h1>
        <div class="grid grid-cols-5 gap-4 mb-6">
            <div class="bg-white p-4 rounded-lg shadow-md flex items-center">
                <i class="fa-solid fa-hand-horns text-3xl text-purple-500 mr-4" style="color: #fc4dff;"></i>
                <div>
                    <p class="text-gray-600">Singers</p>
                    <p class="text-2xl font-bold" id="counter-singer"><%= totalSingers %>
                    </p>
                </div>
            </div>
            <div class="bg-white p-4 rounded-lg shadow-md flex items-center">
                <i class="fas fa-music text-3xl text-purple-500 mr-4"></i>
                <div>
                    <p class="text-gray-600">Songs</p>
                    <p class="text-2xl font-bold" id="counter-music"><%= totalSongs %>
                    </p>
                </div>
            </div>
            <div class="bg-white p-4 rounded-lg shadow-md flex items-center">
                <i class="fa-solid fa-user-music text-3xl text-purple-500 mr-4" style="color: #63E6BE;"></i>
                <div>
                    <p class="text-gray-600">Users</p>
                    <p class="text-2xl font-bold" id="counter-users"><%= totalUsers %>
                    </p>
                </div>
            </div>
            <div class="bg-white p-4 rounded-lg shadow-md flex items-center">
                <i class="fa-solid fa-head-side-headphones text-3xl text-purple-500 mr-4" style="color: #FFD43B;"></i>
                <div>
                    <p class="text-gray-600">Listening</p>
                    <p class="text-2xl font-bold" id="counter-listening"><%= totalViews %>
                    </p>
                </div>
            </div>
            <div class="bg-white p-4 rounded-lg shadow-md flex items-center">
                <i class="fa-solid fa-comment-music text-3xl text-purple-500 mr-4" style="color: #74C0FC;"></i>
                <div>
                    <p class="text-gray-600">Comments</p>
                    <p class="text-2xl font-bold" id="counter-comments"><%= totalComments %>
                    </p>
                </div>
            </div>
        </div>

        <!-- ##### charts Area Start ##### -->
        <%
            String[] songTitles = new String[10];
            int[] songViews = new int[10];

            try {
                // Kết nối cơ sở dữ liệu
                conn = connectDB.getConnection(); // Hàm connectDB.getConnection() được định nghĩa trước
                stmt = conn.createStatement();

                // Lấy thông tin các bài hát và lượt xem
                rs = stmt.executeQuery("SELECT title, views FROM Song LIMIT 10"); // Lấy 10 bài hát đầu tiên
                int index = 0;
                while (rs.next()) {
                    songTitles[index] = rs.getString("title");
                    songViews[index] = rs.getInt("views");
                    index++;
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            }
        %>
        <!-- Charts -->
        <div class="space-y-6 mb-6">
          <!-- Biểu đồ Song Views over Time -->
          <div class="bg-white p-4 rounded-lg shadow-md">
              <h2 class="text-xl font-semibold mb-4">Song Views over Time</h2>
              <div class="relative w-1000 h-600">
                  <canvas id="revenueChart"></canvas>
              </div>
          </div>


        <!-- Song Table -->
        <div class="bg-white p-4 rounded-lg shadow-md">
            <table class="w-full">
                <thead>
                <tr class="text-left text-gray-600">
                    <th class="py-2">Title</th>
                    <th class="py-2">Singers</th>
                    <th class="py-2">Listening</th>
                </tr>
                </thead>
                <tbody>
                <%
                    try {
                        conn = connectDB.getConnection();
                        stmt = conn.createStatement();
                        rs = stmt.executeQuery("SELECT song_id, title, image, singer, views FROM song");

                        while (rs.next()) { // Lặp qua từng dòng dữ liệu
                            String songId = rs.getString("song_id");
                            String title = rs.getString("title");
                            String singer = rs.getString("singer");
                            String image = rs.getString("image");
                            String views = rs.getString("views");
                %>
                <tr class="border-t">
                    <td class="py-2 flex items-center">
                        <img src="img/<%= image %>" alt="Song Thumbnail" class="rounded-full mr-2"
                             width="60" height="60"/>
                        <div>
                            <p class="font-semibold"><%= title %>
                            </p>
                        </div>
                    </td>
                    <td class="py-2"><%= singer %>
                    </td>
                    <td class="py-2">
                        <span class="bg-green-100 text-green-600 py-1 px-3 rounded-full text-xs"><%= views %></span>
                    </td>
                </tr>
                <%
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    } finally {
                        if (rs != null) rs.close();
                        if (stmt != null) stmt.close();
                        if (conn != null) conn.close();
                    }
                %>
                </tbody>
            </table>
        </div>


        </table>
        <div class="flex justify-between items-center mt-4">
            <p class="text-gray-600">SHOWING 1-2 OF 100</p>
            <div class="flex space-x-2">
                <button class="px-3 py-1 bg-gray-200 text-gray-600 rounded">1</button>
                <button class="px-3 py-1 bg-white text-gray-600 rounded">2</button>
                <button class="px-3 py-1 bg-white text-gray-600 rounded">3</button>
            </div>
        </div>
    </div>
</div>
</div>
<script>
    // Truyền dữ liệu từ JSP vào JavaScript
    const songTitles = <%= new Gson().toJson(songTitles) %>;
    const songViews = <%= new Gson().toJson(songViews) %>;

    // Biểu đồ đường với title là trục X, views là trục Y
    const ctxRevenue = document.getElementById('revenueChart').getContext('2d');
    const revenueChart = new Chart(ctxRevenue, {
        type: 'line',
        data: {
            labels: songTitles,  // Trục X là tên bài hát
            datasets: [{
                label: 'Listening',  // Đặt label cho dataset
                data: songViews,  // Dữ liệu là số lượt xem
                borderColor: 'rgba(75, 192, 192, 1)',  // Màu sắc của đường
                backgroundColor: 'rgba(75, 192, 192, 0.2)',  // Màu nền cho các điểm
                fill: false,  // Không tô màu dưới đường
                tension: 0.1
            }]
        },
        options: {
            responsive: true,
            maintainAspectRatio: false, // Cho phép mở rộng biểu đồ
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

    // Lấy các giá trị từ JSP và truyền vào JavaScript
    const data = {
        totalSingers: <%= totalSingers %>,
        totalSongs: <%= totalSongs %>,
        totalUsers: <%= totalUsers %>,
        totalViews: <%= totalViews %>,
        totalComments: <%= totalComments %>
    };

    function animateCounter(id, start, end, duration) {
        const element = document.getElementById(id); // Lấy phần tử dựa trên ID
        const range = end - start; // Khoảng cách giữa giá trị bắt đầu và kết thúc
        const increment = range / (duration / 10); // Giá trị tăng mỗi lần
        let current = start;

        function updateCounter() {
            current += increment; // Cộng giá trị tăng thêm
            if ((increment > 0 && current >= end) || (increment < 0 && current <= end)) {
                current = end; // Đảm bảo không vượt quá giá trị kết thúc
                clearInterval(timer); // Dừng interval
            }
            element.textContent = Math.round(current); // Cập nhật giá trị hiển thị
        }

        const timer = setInterval(updateCounter, 10); // Cập nhật mỗi 10ms
    }

    // Gọi hàm cho từng số
    animateCounter("counter-singer", 0, data.totalSingers, 2000); // Thời gian: 2 giây
    animateCounter("counter-music", 0, data.totalSongs, 2000); // Thời gian: 2 giây
    animateCounter("counter-users", 0, data.totalUsers, 2000);
    animateCounter("counter-listening", 0, data.totalViews, 2000);
    animateCounter("counter-comments", 0, data.totalComments, 2000);
</script>


</body>

</html>
