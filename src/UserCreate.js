import { Button, Container, TextField, Typography, Grid2 } from "@mui/material";
import React, { useState } from "react";
import { useNavigate } from "react-router-dom"; // นำเข้า useNavigate

export default function UserCreate() {
    const [fname, setFname] = useState('');
    const [lname, setLname] = useState('');
    const [username, setUsername] = useState('');
    const [password, setPass] = useState('');
    const [avater, setAvatar] = useState('');
    
    const navigate = useNavigate(); // สร้างตัวแปร navigate ด้วย useNavigate

    const handleSubmit = event => {
        event.preventDefault();
        const data = {
            fname,
            lname,
            username,
            password,
            avater,
        };

        fetch('http://localhost:5000/users/create', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify(data),
        })
        .then(res => res.json())
        .then((result) => {
            if (result['affectedRows'] >= 1) {
                // ใช้ navigate ไปที่หน้า home ("/")
                navigate('/'); 
            }
        })
        .catch(error => console.error("Error creating user:", error));
    };

    return (
        <Container sx={{ p: 2 }} maxWidth="sm">
            <Typography component="h1" variant="h5">
                Create User
            </Typography>
            <form onSubmit={handleSubmit}>
                <Grid2 container sx={{ pt: 2 }} spacing={2}>
                    <Grid2 item xs={12} sm={6}>
                        <TextField
                            autoComplete="fname"
                            name="firstName"
                            variant="outlined"
                            required
                            fullWidth
                            id="firstName"
                            label="First Name"
                            value={fname}
                            onChange={(e) => setFname(e.target.value)}
                            autoFocus
                        />
                    </Grid2>
                    <Grid2 item xs={12} sm={6}>
                        <TextField
                            variant="outlined"
                            required
                            fullWidth
                            id="lastName"
                            label="Last Name"
                            value={lname}
                            onChange={(e) => setLname(e.target.value)}
                        />
                    </Grid2>
                    <Grid2 item xs={12}>
                        <TextField
                            variant="outlined"
                            required
                            fullWidth
                            id="username"
                            label="Username"
                            value={username}
                            onChange={(e) => setUsername(e.target.value)}
                        />
                    </Grid2>
                    <Grid2 item xs={12}>
                        <TextField
                            variant="outlined"
                            required
                            fullWidth
                            id="password"
                            label="Password"
                            type="password"
                            value={password}
                            onChange={(e) => setPass(e.target.value)}
                        />
                    </Grid2>
                    <Grid2 item xs={12}>
                        <TextField
                            variant="outlined"
                            required
                            fullWidth
                            id="avatar"
                            label="Avatar"
                            value={avater}
                            onChange={(e) => setAvatar(e.target.value)}
                        />
                    </Grid2>
                    <Grid2 item xs={12}>
                        <Button
                            type="submit"
                            fullWidth
                            variant="contained"
                            color="primary"
                        >
                            Create
                        </Button>
                    </Grid2>
                </Grid2>
            </form>
        </Container>
    );
}
