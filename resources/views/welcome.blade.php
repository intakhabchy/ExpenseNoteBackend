<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Expense Tracker</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        html, body {
            height: 100%;
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            color: #333;
        }
        .wrapper {
            min-height: 100%;
            display: flex;
            flex-direction: column;
        }
        .content {
            flex: 1;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;
            padding: 2rem;
        }
        .content h1 {
            font-size: 2.5rem;
            margin-bottom: 1rem;
        }
        .content p {
            font-size: 1.2rem;
            margin-bottom: 2rem;
        }
        .btn-primary {
            margin: 0.5rem;
            background-color: #007bff;
            border: none;
        }
        .btn-primary:hover {
            background-color: #0069d9;
        }
        footer {
            padding: 1rem;
            text-align: center;
            background-color: #e9ecef;
        }
    </style>
</head>
<body>
    <div class="wrapper">
        <!-- Main Content -->
        <div class="content">
            <h1>Expense Tracker</h1>
            <p>Keep track of your expenses easily and efficiently.</p>
            <div>
                <a href="{{ route('login') }}" class="btn btn-primary btn-lg">Login</a>
                <a href="{{ route('register') }}" class="btn btn-primary btn-lg">Register</a>
            </div>
        </div>

        <!-- Footer -->
        <footer>
            &copy; {{ date('Y') }} Expense Tracker. All rights reserved.
        </footer>
    </div>
</body>
</html>
