# New ports collection makefile for:	php5-pdo_cassandra
# Date created:		2011-08-03
# Whom:			Gasol Wu <gasol.wu@gmail.com>
#
# $FreeBSD$
#

PORTNAME=	pdo_cassandra
PORTVERSION=	0.1
#PORTREVISION=	0
#PORTEPOCH=	0
CATEGORIES=	databases
MASTER_SITES=	https://github.com/Gasol/${PORTNAME}/tarball/${PORTVERSION}/
PKGNAMEPREFIX=	php5-
DISTNAME=	Gasol-${PORTNAME}-${PORTVERSION}-${GITVERSION}


MAINTAINER=	gasol.wu@gmail.com
COMMENT=	PDO driver for cassandra

GITVERSION=	1f96b2d
FETCH_ARGS=     -pRr
WRKSRC=		${WRKDIR}/Gasol-${PORTNAME}-${GITVERSION}

LIB_DEPENDS=	boost_iostreams:${PORTSDIR}/devel/boost-libs \
		uuid:${PORTSDIR}/misc/e2fsprogs-libuuid \
		thrift:${PORTSDIR}/devel/thrift

USE_PHP=	pdo
USE_PHPEXT=	yes
DEFAULT_PHP_VER=5
IGNORE_WITH_PHP=4 52

.include <bsd.port.mk>
