import axios from 'axios'

let BACKEND_URL = ''

if (!import.meta.env.VITE_BACKEND_URL) {
  throw new Error('BACKEND_URL is not set')
} else {
  BACKEND_URL = import.meta.env.VITE_BACKEND_URL
  console.log('BACKEND_URL is set to', import.meta.env.VITE_BACKEND_URL)
  console.log('BACKEND IP is set to', import.meta.env.VITE_BACKEND_IP)
}

export const backend = axios.create({
  baseURL: BACKEND_URL,
  timeout: 1000,
  headers: {
    'Content-Type': 'application/json'
  }
})
