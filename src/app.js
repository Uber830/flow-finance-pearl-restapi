import Express from 'express';
import cors from 'cors';
import morgan from 'morgan';

const app = Express();

// Middleware
app.use(cors);
app.use(morgan('dev'));
app.use(Express.json());

// Routes
// app.use('/api/v1/users', require('./routes/users'));
// app.use('/api/v1/auth', require('./routes/auth'));

export default app;