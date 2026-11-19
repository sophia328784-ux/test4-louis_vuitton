.class public final Lokhttp3/internal/http/RealInterceptorChain;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor$Chain;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0001\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u00d1\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\r\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u0007\u0012\u0006\u0010\u000f\u001a\u00020\u0007\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0018\u0012\u0006\u0010\u001b\u001a\u00020\u001a\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u0012\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001e\u0012\u0006\u0010 \u001a\u00020\u0010\u0012\u0006\u0010\"\u001a\u00020!\u0012\u0006\u0010$\u001a\u00020#\u0012\u0006\u0010&\u001a\u00020%\u0012\u0008\u0010(\u001a\u0004\u0018\u00010\'\u0012\u0008\u0010*\u001a\u0004\u0018\u00010)\u0012\u0008\u0010,\u001a\u0004\u0018\u00010+\u00a2\u0006\u0004\u0008-\u0010.BC\u0008\u0010\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010/\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u00101\u001a\u000200\u00a2\u0006\u0004\u0008-\u00102\u00a8\u00063"
    }
    d2 = {
        "Lokhttp3/internal/http/RealInterceptorChain;",
        "Lokhttp3/Interceptor$Chain;",
        "Lokhttp3/internal/connection/RealCall;",
        "call",
        "",
        "Lokhttp3/Interceptor;",
        "interceptors",
        "",
        "index",
        "Lokhttp3/internal/connection/Exchange;",
        "exchange",
        "Lokhttp3/Request;",
        "request",
        "connectTimeoutMillis",
        "readTimeoutMillis",
        "writeTimeoutMillis",
        "Lokhttp3/Authenticator;",
        "authenticator",
        "Lokhttp3/Cache;",
        "cache",
        "Lokhttp3/CertificatePinner;",
        "certificatePinner",
        "Lokhttp3/ConnectionPool;",
        "connectionPool",
        "Lokhttp3/CookieJar;",
        "cookieJar",
        "Lokhttp3/Dns;",
        "dns",
        "Ljavax/net/ssl/HostnameVerifier;",
        "hostnameVerifier",
        "Ljava/net/Proxy;",
        "proxy",
        "proxyAuthenticator",
        "Ljava/net/ProxySelector;",
        "proxySelector",
        "",
        "retryOnConnectionFailure",
        "Ljavax/net/SocketFactory;",
        "socketFactory",
        "Ljavax/net/ssl/SSLSocketFactory;",
        "sslSocketFactoryOrNull",
        "Ljavax/net/ssl/X509TrustManager;",
        "x509TrustManagerOrNull",
        "Lokhttp3/internal/tls/CertificateChainCleaner;",
        "certificateChainCleaner",
        "<init>",
        "(Lokhttp3/internal/connection/RealCall;Ljava/util/List;ILokhttp3/internal/connection/Exchange;Lokhttp3/Request;IIILokhttp3/Authenticator;Lokhttp3/Cache;Lokhttp3/CertificatePinner;Lokhttp3/ConnectionPool;Lokhttp3/CookieJar;Lokhttp3/Dns;Ljavax/net/ssl/HostnameVerifier;Ljava/net/Proxy;Lokhttp3/Authenticator;Ljava/net/ProxySelector;ZLjavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;Lokhttp3/internal/tls/CertificateChainCleaner;)V",
        "",
        "Lokhttp3/OkHttpClient;",
        "client",
        "(Lokhttp3/internal/connection/RealCall;Ljava/util/List;ILjava/lang/Void;Lokhttp3/Request;Lokhttp3/OkHttpClient;)V",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lokhttp3/internal/connection/RealCall;

.field public final b:Ljava/util/List;

.field public final c:I

.field public final d:Lokhttp3/internal/connection/Exchange;

.field public final e:Lokhttp3/Request;

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:Lokhttp3/Authenticator;

.field public final j:Lokhttp3/Cache;

.field public final k:Lokhttp3/CertificatePinner;

.field public final l:Lokhttp3/ConnectionPool;

.field public final m:Lokhttp3/CookieJar;

.field public final n:Lokhttp3/Dns;

.field public final o:Ljavax/net/ssl/HostnameVerifier;

.field public final p:Ljava/net/Proxy;

.field public final q:Lokhttp3/Authenticator;

.field public final r:Ljava/net/ProxySelector;

.field public final s:Z

.field public final t:Ljavax/net/SocketFactory;

.field public final u:Ljavax/net/ssl/SSLSocketFactory;

.field public final v:Ljavax/net/ssl/X509TrustManager;

.field public final w:Lokhttp3/internal/tls/CertificateChainCleaner;

.field public x:I


# direct methods
.method public constructor <init>(Lokhttp3/internal/connection/RealCall;Ljava/util/List;ILjava/lang/Void;Lokhttp3/Request;Lokhttp3/OkHttpClient;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/internal/connection/RealCall;",
            "Ljava/util/List<",
            "+",
            "Lokhttp3/Interceptor;",
            ">;I",
            "Ljava/lang/Void;",
            "Lokhttp3/Request;",
            "Lokhttp3/OkHttpClient;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p6

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    move-object/from16 v4, p4

    check-cast v4, Lokhttp3/internal/connection/Exchange;

    .line 105
    iget v6, v0, Lokhttp3/OkHttpClient;->w:I

    .line 106
    iget v7, v0, Lokhttp3/OkHttpClient;->x:I

    .line 107
    iget v8, v0, Lokhttp3/OkHttpClient;->y:I

    .line 108
    iget-object v9, v0, Lokhttp3/OkHttpClient;->g:Lokhttp3/Authenticator;

    .line 109
    iget-object v10, v0, Lokhttp3/OkHttpClient;->k:Lokhttp3/Cache;

    .line 110
    iget-object v11, v0, Lokhttp3/OkHttpClient;->u:Lokhttp3/CertificatePinner;

    .line 111
    iget-object v12, v0, Lokhttp3/OkHttpClient;->D:Lokhttp3/ConnectionPool;

    .line 112
    iget-object v13, v0, Lokhttp3/OkHttpClient;->j:Lokhttp3/CookieJar;

    .line 113
    iget-object v14, v0, Lokhttp3/OkHttpClient;->l:Lokhttp3/Dns;

    .line 114
    iget-object v15, v0, Lokhttp3/OkHttpClient;->t:Ljavax/net/ssl/HostnameVerifier;

    .line 115
    iget-object v1, v0, Lokhttp3/OkHttpClient;->n:Lokhttp3/Authenticator;

    .line 116
    iget-object v2, v0, Lokhttp3/OkHttpClient;->m:Ljava/net/ProxySelector;

    .line 117
    iget-boolean v3, v0, Lokhttp3/OkHttpClient;->e:Z

    .line 118
    iget-object v5, v0, Lokhttp3/OkHttpClient;->o:Ljavax/net/SocketFactory;

    move-object/from16 v17, v1

    .line 119
    iget-object v1, v0, Lokhttp3/OkHttpClient;->p:Ljavax/net/ssl/SSLSocketFactory;

    move-object/from16 v21, v1

    .line 120
    iget-object v1, v0, Lokhttp3/OkHttpClient;->q:Ljavax/net/ssl/X509TrustManager;

    .line 121
    iget-object v0, v0, Lokhttp3/OkHttpClient;->v:Lokhttp3/internal/tls/CertificateChainCleaner;

    const/16 v16, 0x0

    move-object/from16 v23, v0

    move-object/from16 v22, v1

    move-object/from16 v18, v2

    move/from16 v19, v3

    move-object/from16 v20, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v5, p5

    .line 122
    invoke-direct/range {v0 .. v23}, Lokhttp3/internal/http/RealInterceptorChain;-><init>(Lokhttp3/internal/connection/RealCall;Ljava/util/List;ILokhttp3/internal/connection/Exchange;Lokhttp3/Request;IIILokhttp3/Authenticator;Lokhttp3/Cache;Lokhttp3/CertificatePinner;Lokhttp3/ConnectionPool;Lokhttp3/CookieJar;Lokhttp3/Dns;Ljavax/net/ssl/HostnameVerifier;Ljava/net/Proxy;Lokhttp3/Authenticator;Ljava/net/ProxySelector;ZLjavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;Lokhttp3/internal/tls/CertificateChainCleaner;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/internal/connection/RealCall;Ljava/util/List;ILjava/lang/Void;Lokhttp3/Request;Lokhttp3/OkHttpClient;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    .line 102
    iget-object p6, p1, Lokhttp3/internal/connection/RealCall;->b:Lokhttp3/OkHttpClient;

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 103
    invoke-direct/range {v0 .. v6}, Lokhttp3/internal/http/RealInterceptorChain;-><init>(Lokhttp3/internal/connection/RealCall;Ljava/util/List;ILjava/lang/Void;Lokhttp3/Request;Lokhttp3/OkHttpClient;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/internal/connection/RealCall;Ljava/util/List;ILokhttp3/internal/connection/Exchange;Lokhttp3/Request;IIILokhttp3/Authenticator;Lokhttp3/Cache;Lokhttp3/CertificatePinner;Lokhttp3/ConnectionPool;Lokhttp3/CookieJar;Lokhttp3/Dns;Ljavax/net/ssl/HostnameVerifier;Ljava/net/Proxy;Lokhttp3/Authenticator;Ljava/net/ProxySelector;ZLjavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;Lokhttp3/internal/tls/CertificateChainCleaner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/internal/connection/RealCall;",
            "Ljava/util/List<",
            "+",
            "Lokhttp3/Interceptor;",
            ">;I",
            "Lokhttp3/internal/connection/Exchange;",
            "Lokhttp3/Request;",
            "III",
            "Lokhttp3/Authenticator;",
            "Lokhttp3/Cache;",
            "Lokhttp3/CertificatePinner;",
            "Lokhttp3/ConnectionPool;",
            "Lokhttp3/CookieJar;",
            "Lokhttp3/Dns;",
            "Ljavax/net/ssl/HostnameVerifier;",
            "Ljava/net/Proxy;",
            "Lokhttp3/Authenticator;",
            "Ljava/net/ProxySelector;",
            "Z",
            "Ljavax/net/SocketFactory;",
            "Ljavax/net/ssl/SSLSocketFactory;",
            "Ljavax/net/ssl/X509TrustManager;",
            "Lokhttp3/internal/tls/CertificateChainCleaner;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p17 .. p17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p18 .. p18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p20 .. p20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/http/RealInterceptorChain;->a:Lokhttp3/internal/connection/RealCall;

    iput-object p2, p0, Lokhttp3/internal/http/RealInterceptorChain;->b:Ljava/util/List;

    iput p3, p0, Lokhttp3/internal/http/RealInterceptorChain;->c:I

    iput-object p4, p0, Lokhttp3/internal/http/RealInterceptorChain;->d:Lokhttp3/internal/connection/Exchange;

    iput-object p5, p0, Lokhttp3/internal/http/RealInterceptorChain;->e:Lokhttp3/Request;

    iput p6, p0, Lokhttp3/internal/http/RealInterceptorChain;->f:I

    iput p7, p0, Lokhttp3/internal/http/RealInterceptorChain;->g:I

    iput p8, p0, Lokhttp3/internal/http/RealInterceptorChain;->h:I

    iput-object p9, p0, Lokhttp3/internal/http/RealInterceptorChain;->i:Lokhttp3/Authenticator;

    iput-object p10, p0, Lokhttp3/internal/http/RealInterceptorChain;->j:Lokhttp3/Cache;

    iput-object p11, p0, Lokhttp3/internal/http/RealInterceptorChain;->k:Lokhttp3/CertificatePinner;

    iput-object p12, p0, Lokhttp3/internal/http/RealInterceptorChain;->l:Lokhttp3/ConnectionPool;

    iput-object p13, p0, Lokhttp3/internal/http/RealInterceptorChain;->m:Lokhttp3/CookieJar;

    iput-object p14, p0, Lokhttp3/internal/http/RealInterceptorChain;->n:Lokhttp3/Dns;

    iput-object p15, p0, Lokhttp3/internal/http/RealInterceptorChain;->o:Ljavax/net/ssl/HostnameVerifier;

    move-object/from16 p1, p16

    iput-object p1, p0, Lokhttp3/internal/http/RealInterceptorChain;->p:Ljava/net/Proxy;

    move-object/from16 p1, p17

    iput-object p1, p0, Lokhttp3/internal/http/RealInterceptorChain;->q:Lokhttp3/Authenticator;

    move-object/from16 p1, p18

    iput-object p1, p0, Lokhttp3/internal/http/RealInterceptorChain;->r:Ljava/net/ProxySelector;

    move/from16 p1, p19

    iput-boolean p1, p0, Lokhttp3/internal/http/RealInterceptorChain;->s:Z

    move-object/from16 p1, p20

    iput-object p1, p0, Lokhttp3/internal/http/RealInterceptorChain;->t:Ljavax/net/SocketFactory;

    move-object/from16 p1, p21

    iput-object p1, p0, Lokhttp3/internal/http/RealInterceptorChain;->u:Ljavax/net/ssl/SSLSocketFactory;

    move-object/from16 p1, p22

    iput-object p1, p0, Lokhttp3/internal/http/RealInterceptorChain;->v:Ljavax/net/ssl/X509TrustManager;

    move-object/from16 p1, p23

    iput-object p1, p0, Lokhttp3/internal/http/RealInterceptorChain;->w:Lokhttp3/internal/tls/CertificateChainCleaner;

    return-void
.end method

.method public static f(Lokhttp3/internal/http/RealInterceptorChain;ILokhttp3/internal/connection/Exchange;Lokhttp3/Request;IIII)Lokhttp3/internal/http/RealInterceptorChain;
    .locals 26

    move-object/from16 v0, p0

    and-int/lit8 v1, p7, 0x1

    if-eqz v1, :cond_0

    iget v1, v0, Lokhttp3/internal/http/RealInterceptorChain;->c:I

    move v5, v1

    goto :goto_0

    :cond_0
    move/from16 v5, p1

    :goto_0
    and-int/lit8 v1, p7, 0x2

    if-eqz v1, :cond_1

    iget-object v1, v0, Lokhttp3/internal/http/RealInterceptorChain;->d:Lokhttp3/internal/connection/Exchange;

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object/from16 v6, p2

    :goto_1
    and-int/lit8 v1, p7, 0x4

    if-eqz v1, :cond_2

    iget-object v1, v0, Lokhttp3/internal/http/RealInterceptorChain;->e:Lokhttp3/Request;

    move-object v7, v1

    goto :goto_2

    :cond_2
    move-object/from16 v7, p3

    :goto_2
    and-int/lit8 v1, p7, 0x8

    if-eqz v1, :cond_3

    iget v1, v0, Lokhttp3/internal/http/RealInterceptorChain;->f:I

    move v8, v1

    goto :goto_3

    :cond_3
    move/from16 v8, p4

    :goto_3
    and-int/lit8 v1, p7, 0x10

    if-eqz v1, :cond_4

    iget v1, v0, Lokhttp3/internal/http/RealInterceptorChain;->g:I

    move v9, v1

    goto :goto_4

    :cond_4
    move/from16 v9, p5

    :goto_4
    and-int/lit8 v1, p7, 0x20

    if-eqz v1, :cond_5

    iget v1, v0, Lokhttp3/internal/http/RealInterceptorChain;->h:I

    move v10, v1

    goto :goto_5

    :cond_5
    move/from16 v10, p6

    :goto_5
    iget-object v11, v0, Lokhttp3/internal/http/RealInterceptorChain;->i:Lokhttp3/Authenticator;

    iget-object v12, v0, Lokhttp3/internal/http/RealInterceptorChain;->j:Lokhttp3/Cache;

    iget-object v13, v0, Lokhttp3/internal/http/RealInterceptorChain;->k:Lokhttp3/CertificatePinner;

    iget-object v14, v0, Lokhttp3/internal/http/RealInterceptorChain;->l:Lokhttp3/ConnectionPool;

    iget-object v15, v0, Lokhttp3/internal/http/RealInterceptorChain;->m:Lokhttp3/CookieJar;

    iget-object v1, v0, Lokhttp3/internal/http/RealInterceptorChain;->n:Lokhttp3/Dns;

    iget-object v2, v0, Lokhttp3/internal/http/RealInterceptorChain;->o:Ljavax/net/ssl/HostnameVerifier;

    iget-object v3, v0, Lokhttp3/internal/http/RealInterceptorChain;->p:Ljava/net/Proxy;

    iget-object v4, v0, Lokhttp3/internal/http/RealInterceptorChain;->q:Lokhttp3/Authenticator;

    move-object/from16 v16, v1

    iget-object v1, v0, Lokhttp3/internal/http/RealInterceptorChain;->r:Ljava/net/ProxySelector;

    move-object/from16 v20, v1

    iget-boolean v1, v0, Lokhttp3/internal/http/RealInterceptorChain;->s:Z

    move/from16 v21, v1

    iget-object v1, v0, Lokhttp3/internal/http/RealInterceptorChain;->t:Ljavax/net/SocketFactory;

    move-object/from16 v22, v1

    iget-object v1, v0, Lokhttp3/internal/http/RealInterceptorChain;->u:Ljavax/net/ssl/SSLSocketFactory;

    move-object/from16 v23, v1

    iget-object v1, v0, Lokhttp3/internal/http/RealInterceptorChain;->v:Ljavax/net/ssl/X509TrustManager;

    move-object/from16 v24, v1

    iget-object v1, v0, Lokhttp3/internal/http/RealInterceptorChain;->w:Lokhttp3/internal/tls/CertificateChainCleaner;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v17, v2

    new-instance v2, Lokhttp3/internal/http/RealInterceptorChain;

    move-object/from16 v18, v3

    iget-object v3, v0, Lokhttp3/internal/http/RealInterceptorChain;->a:Lokhttp3/internal/connection/RealCall;

    iget-object v0, v0, Lokhttp3/internal/http/RealInterceptorChain;->b:Ljava/util/List;

    move-object/from16 v25, v1

    move-object/from16 v19, v4

    move-object v4, v0

    invoke-direct/range {v2 .. v25}, Lokhttp3/internal/http/RealInterceptorChain;-><init>(Lokhttp3/internal/connection/RealCall;Ljava/util/List;ILokhttp3/internal/connection/Exchange;Lokhttp3/Request;IIILokhttp3/Authenticator;Lokhttp3/Cache;Lokhttp3/CertificatePinner;Lokhttp3/ConnectionPool;Lokhttp3/CookieJar;Lokhttp3/Dns;Ljavax/net/ssl/HostnameVerifier;Ljava/net/Proxy;Lokhttp3/Authenticator;Ljava/net/ProxySelector;ZLjavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;Lokhttp3/internal/tls/CertificateChainCleaner;)V

    return-object v2
.end method


# virtual methods
.method public final a(ILjava/util/concurrent/TimeUnit;)Lokhttp3/internal/http/RealInterceptorChain;
    .locals 11

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lokhttp3/internal/http/RealInterceptorChain;->d:Lokhttp3/internal/connection/Exchange;

    if-nez v0, :cond_0

    const-string v0, "connectTimeout"

    int-to-long v1, p1

    invoke-static {v0, v1, v2, p2}, Lokhttp3/internal/_UtilJvmKt;->b(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v7

    const/4 v9, 0x0

    const v10, 0x1ffff7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v10}, Lokhttp3/internal/http/RealInterceptorChain;->f(Lokhttp3/internal/http/RealInterceptorChain;ILokhttp3/internal/connection/Exchange;Lokhttp3/Request;IIII)Lokhttp3/internal/http/RealInterceptorChain;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "Timeouts can\'t be adjusted in a network interceptor"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final b(Lokhttp3/Request;)Lokhttp3/Response;
    .locals 15

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, p0, Lokhttp3/internal/http/RealInterceptorChain;->b:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    const/4 v9, 0x0

    iget v10, p0, Lokhttp3/internal/http/RealInterceptorChain;->c:I

    if-ge v10, v1, :cond_6

    iget v1, p0, Lokhttp3/internal/http/RealInterceptorChain;->x:I

    const/4 v11, 0x1

    add-int/2addr v1, v11

    iput v1, p0, Lokhttp3/internal/http/RealInterceptorChain;->x:I

    const-string v12, " must call proceed() exactly once"

    iget-object v13, p0, Lokhttp3/internal/http/RealInterceptorChain;->d:Lokhttp3/internal/connection/Exchange;

    const-string v14, "network interceptor "

    if-eqz v13, :cond_2

    iget-object v1, v13, Lokhttp3/internal/connection/Exchange;->b:Lokhttp3/internal/connection/ExchangeFinder;

    invoke-interface {v1}, Lokhttp3/internal/connection/ExchangeFinder;->b()Lokhttp3/internal/connection/RoutePlanner;

    move-result-object v1

    move-object/from16 v3, p1

    iget-object v2, v3, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    invoke-interface {v1, v2}, Lokhttp3/internal/connection/RoutePlanner;->e(Lokhttp3/HttpUrl;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lokhttp3/internal/http/RealInterceptorChain;->x:I

    if-ne v1, v11, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr v10, v11

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v14, v0, v12}, Lwp;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9

    :cond_1
    sub-int/2addr v10, v11

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, " must retain the same host and port"

    invoke-static {v14, v0, v1}, Lwp;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9

    :cond_2
    move-object/from16 v3, p1

    :goto_0
    add-int/lit8 v1, v10, 0x1

    const/4 v6, 0x0

    const v7, 0x1ffffa

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lokhttp3/internal/http/RealInterceptorChain;->f(Lokhttp3/internal/http/RealInterceptorChain;ILokhttp3/internal/connection/Exchange;Lokhttp3/Request;IIII)Lokhttp3/internal/http/RealInterceptorChain;

    move-result-object v0

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lokhttp3/Interceptor;

    invoke-interface {v2, v0}, Lokhttp3/Interceptor;->intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;

    move-result-object v3

    if-eqz v3, :cond_5

    if-eqz v13, :cond_4

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    iget v0, v0, Lokhttp3/internal/http/RealInterceptorChain;->x:I

    if-ne v0, v11, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v14, v2, v12}, Lwp;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v9

    :cond_4
    :goto_1
    return-object v3

    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "interceptor "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " returned null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const-string v0, "Check failed."

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v9
.end method

.method public final c(ILjava/util/concurrent/TimeUnit;)Lokhttp3/internal/http/RealInterceptorChain;
    .locals 11

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lokhttp3/internal/http/RealInterceptorChain;->d:Lokhttp3/internal/connection/Exchange;

    if-nez v0, :cond_0

    const-string v0, "writeTimeout"

    int-to-long v1, p1

    invoke-static {v0, v1, v2, p2}, Lokhttp3/internal/_UtilJvmKt;->b(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v9

    const v10, 0x1fffdf

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v10}, Lokhttp3/internal/http/RealInterceptorChain;->f(Lokhttp3/internal/http/RealInterceptorChain;ILokhttp3/internal/connection/Exchange;Lokhttp3/Request;IIII)Lokhttp3/internal/http/RealInterceptorChain;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "Timeouts can\'t be adjusted in a network interceptor"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final d()Lokhttp3/internal/connection/RealConnection;
    .locals 0

    iget-object p0, p0, Lokhttp3/internal/http/RealInterceptorChain;->d:Lokhttp3/internal/connection/Exchange;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lokhttp3/internal/connection/Exchange;->c()Lokhttp3/internal/connection/RealConnection;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final e(ILjava/util/concurrent/TimeUnit;)Lokhttp3/internal/http/RealInterceptorChain;
    .locals 11

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lokhttp3/internal/http/RealInterceptorChain;->d:Lokhttp3/internal/connection/Exchange;

    if-nez v0, :cond_0

    const-string v0, "readTimeout"

    int-to-long v1, p1

    invoke-static {v0, v1, v2, p2}, Lokhttp3/internal/_UtilJvmKt;->b(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v8

    const/4 v9, 0x0

    const v10, 0x1fffef

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v10}, Lokhttp3/internal/http/RealInterceptorChain;->f(Lokhttp3/internal/http/RealInterceptorChain;ILokhttp3/internal/connection/Exchange;Lokhttp3/Request;IIII)Lokhttp3/internal/http/RealInterceptorChain;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "Timeouts can\'t be adjusted in a network interceptor"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final request()Lokhttp3/Request;
    .locals 0

    iget-object p0, p0, Lokhttp3/internal/http/RealInterceptorChain;->e:Lokhttp3/Request;

    return-object p0
.end method
