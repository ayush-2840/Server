function startServer(serverType) {
    fetch(`start_servers.php?server_type=${serverType}`)
        .then(response => {
            if (response.ok) {
                alert(`${serverType} server started.`);
            } else {
                alert(`Failed to start ${serverType} server.`);
            }
        });
}

function stopServer(serverType) {
    fetch(`stop_servers.php?server_type=${serverType}`)
        .then(response => {
            if (response.ok) {
                alert(`${serverType} server stopped.`);
            } else {
                alert(`Failed to stop ${serverType} server.`);
            }
        });
}
