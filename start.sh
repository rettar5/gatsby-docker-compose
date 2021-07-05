#! /bin/ash

if [ -z "$GATSBY_SITE_NAME" ]; then
  echo "GATSBY_SITE_NAME is not defined. Please check your environments."
  exit 1
fi

if [ ! -e "$GATSBY_SITE_NAME" ]; then
  gatsby new ${GATSBY_SITE_NAME}
fi

cd $GATSBY_SITE_NAME
gatsby build
gatsby serve -H 0.0.0.0 -p $GATSBY_PORT

