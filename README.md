<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Manga PS</title>

<link rel="stylesheet" href="style.css">
</head>

<body>

<header class="header">
<h1>🎮 Manga PS</h1>
<p>إدارة أجهزة البلايستيشن</p>
</header>

<div class="container">

<div class="device">
<h2>🟦 PS4 - 1</h2>
<p>الحالة:
<span id="status1">متاح</span>
</p>

<p>
الوقت:
<span id="time1">00:00:00</span>
</p>

<p>
السعر:
<span id="price1">0</span>
جنيه
</p>

<button onclick="startSession(1)">
بدء
</button>

<button onclick="stopSession(1)">
إنهاء
</button>

</div>

<div class="device">
<h2>🟦 PS4 - 2</h2>

<p>
الحالة:
<span id="status2">متاح</span>
</p>

<p>
الوقت:
<span id="time2">00:00:00</span>
</p>

<p>
السعر:
<span id="price2">0</span>
جنيه
</p>

<button onclick="startSession(2)">
بدء
</button>

<button onclick="stopSession(2)">
إنهاء
</button>

</div>

<div class="device">

<h2>🟪 PS5 - 1</h2>

<p>
الحالة:
<span id="status3">متاح</span>
</p>

<p>
الوقت:
<span id="time3">00:00:00</span>
</p>

<p>
السعر:
<span id="price3">0</span>
جنيه
</p>

<button onclick="startSession(3)">
بدء
</button>

<button onclick="stopSession(3)">
إنهاء
</button>

</div>

<div class="device">

<h2>🟪 PS5 - 2</h2>

<p>
الحالة:
<span id="status4">متاح</span>
</p>

<p>
الوقت:
<span id="time4">00:00:00</span>
</p>

<p>
السعر:
<span id="price4">0</span>
جنيه
</p>

<button onclick="startSession(4)">
بدء
</button>

<button onclick="stopSession(4)">
إنهاء
</button>

</div>

</div>

<script src="script.js"></script>

</body>
</html>
