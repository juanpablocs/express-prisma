#!/bin/sh
cp .env.example .env
npx prisma generate
# npx prisma migrate dev
npm run start
