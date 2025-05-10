import { Hono } from "hono";
import { serve } from "@hono/node-server";

const port = +process.env.PORT;
const app = new Hono();

app.get("/", (c) => c.html(`<h1>Hi, world!</h1>`));

serve({ port, fetch: app.fetch }, console.info);
