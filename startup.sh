#!/bin/sh
cp .env.example .env
npx prisma generate
npx prisma db push
npm run start
