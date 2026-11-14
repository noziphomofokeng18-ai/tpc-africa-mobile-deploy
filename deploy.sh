#!/bin/bash
# TPC Africa Mobile - Vercel Deploy Script

echo "🚀 Deploying TPC Africa Mobile to Vercel..."
vercel --prod --yes

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ DEPLOYMENT SUCCESSFUL!"
    echo ""
    read -p "Enter the URL shown above (e.g., https://tpc-africa-mobile-deploy.vercel.app): " URL
    if [ -n "$URL" ]; then
        echo ""
        echo "📱 YOUR LIVE LINK: $URL"
        echo ""
        echo "You can now share this link with anyone!"
    fi
else
    echo ""
    echo "❌ DEPLOYMENT FAILED"
    echo ""
    echo "Please try logging in to Vercel first:"
    echo "   vercel login"
    echo ""
    echo "Then run this script again: ./deploy.sh"
fi
