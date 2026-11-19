.class public final Lokhttp3/OkHttpClient$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003B\u0011\u0008\u0010\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0002\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lokhttp3/OkHttpClient$Builder;",
        "",
        "<init>",
        "()V",
        "Lokhttp3/OkHttpClient;",
        "okHttpClient",
        "(Lokhttp3/OkHttpClient;)V",
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
.field public final A:I

.field public final B:J

.field public C:Lokhttp3/internal/connection/RouteDatabase;

.field public final D:Lokhttp3/internal/concurrent/TaskRunner;

.field public final a:Lokhttp3/Dispatcher;

.field public b:Lokhttp3/ConnectionPool;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/ArrayList;

.field public e:Lokhttp3/EventListener$Factory;

.field public final f:Z

.field public final g:Z

.field public h:Lokhttp3/Authenticator;

.field public final i:Z

.field public final j:Z

.field public k:Lokhttp3/CookieJar;

.field public l:Lokhttp3/Cache;

.field public final m:Lokhttp3/Dns;

.field public final n:Ljava/net/ProxySelector;

.field public final o:Lokhttp3/Authenticator;

.field public final p:Ljavax/net/SocketFactory;

.field public q:Ljavax/net/ssl/SSLSocketFactory;

.field public r:Ljavax/net/ssl/X509TrustManager;

.field public final s:Ljava/util/List;

.field public t:Ljava/util/List;

.field public u:Ljavax/net/ssl/HostnameVerifier;

.field public final v:Lokhttp3/CertificatePinner;

.field public w:Lokhttp3/internal/tls/CertificateChainCleaner;

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v0, Lokhttp3/Dispatcher;

    invoke-direct {v0}, Lokhttp3/Dispatcher;-><init>()V

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->a:Lokhttp3/Dispatcher;

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->c:Ljava/util/ArrayList;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->d:Ljava/util/ArrayList;

    .line 141
    sget-object v0, Lokhttp3/EventListener;->NONE:Lokhttp3/EventListener;

    sget-object v1, Lokhttp3/internal/_UtilJvmKt;->a:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    new-instance v1, Ls71;

    invoke-direct {v1, v0}, Ls71;-><init>(Lokhttp3/EventListener;)V

    .line 143
    iput-object v1, p0, Lokhttp3/OkHttpClient$Builder;->e:Lokhttp3/EventListener$Factory;

    const/4 v0, 0x1

    .line 144
    iput-boolean v0, p0, Lokhttp3/OkHttpClient$Builder;->f:Z

    .line 145
    iput-boolean v0, p0, Lokhttp3/OkHttpClient$Builder;->g:Z

    .line 146
    sget-object v1, Lokhttp3/Authenticator;->a:Lokhttp3/Authenticator;

    iput-object v1, p0, Lokhttp3/OkHttpClient$Builder;->h:Lokhttp3/Authenticator;

    .line 147
    iput-boolean v0, p0, Lokhttp3/OkHttpClient$Builder;->i:Z

    .line 148
    iput-boolean v0, p0, Lokhttp3/OkHttpClient$Builder;->j:Z

    .line 149
    sget-object v0, Lokhttp3/CookieJar;->a:Lokhttp3/CookieJar;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->k:Lokhttp3/CookieJar;

    .line 150
    sget-object v0, Lokhttp3/Dns;->d:Lokhttp3/Dns;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->m:Lokhttp3/Dns;

    .line 151
    iput-object v1, p0, Lokhttp3/OkHttpClient$Builder;->o:Lokhttp3/Authenticator;

    .line 152
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->p:Ljavax/net/SocketFactory;

    .line 153
    sget-object v0, Lokhttp3/OkHttpClient;->E:Lokhttp3/OkHttpClient$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    sget-object v0, Lokhttp3/OkHttpClient;->G:Ljava/util/List;

    .line 155
    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->s:Ljava/util/List;

    .line 156
    sget-object v0, Lokhttp3/OkHttpClient;->F:Ljava/util/List;

    .line 157
    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->t:Ljava/util/List;

    .line 158
    sget-object v0, Lokhttp3/internal/tls/OkHostnameVerifier;->a:Lokhttp3/internal/tls/OkHostnameVerifier;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->u:Ljavax/net/ssl/HostnameVerifier;

    .line 159
    sget-object v0, Lokhttp3/CertificatePinner;->d:Lokhttp3/CertificatePinner;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->v:Lokhttp3/CertificatePinner;

    const/16 v0, 0x2710

    .line 160
    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->x:I

    .line 161
    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->y:I

    .line 162
    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->z:I

    const v0, 0xea60

    .line 163
    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->A:I

    const-wide/16 v0, 0x400

    .line 164
    iput-wide v0, p0, Lokhttp3/OkHttpClient$Builder;->B:J

    return-void
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    iget-object v0, p1, Lokhttp3/OkHttpClient;->a:Lokhttp3/Dispatcher;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->a:Lokhttp3/Dispatcher;

    iget-object v0, p1, Lokhttp3/OkHttpClient;->D:Lokhttp3/ConnectionPool;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->b:Lokhttp3/ConnectionPool;

    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->c:Ljava/util/ArrayList;

    iget-object v1, p1, Lokhttp3/OkHttpClient;->b:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->j(Ljava/util/Collection;Ljava/lang/Iterable;)V

    iget-object v0, p0, Lokhttp3/OkHttpClient$Builder;->d:Ljava/util/ArrayList;

    iget-object v1, p1, Lokhttp3/OkHttpClient;->c:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->j(Ljava/util/Collection;Ljava/lang/Iterable;)V

    iget-object v0, p1, Lokhttp3/OkHttpClient;->d:Lokhttp3/EventListener$Factory;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->e:Lokhttp3/EventListener$Factory;

    iget-boolean v0, p1, Lokhttp3/OkHttpClient;->e:Z

    iput-boolean v0, p0, Lokhttp3/OkHttpClient$Builder;->f:Z

    iget-boolean v0, p1, Lokhttp3/OkHttpClient;->f:Z

    iput-boolean v0, p0, Lokhttp3/OkHttpClient$Builder;->g:Z

    iget-object v0, p1, Lokhttp3/OkHttpClient;->g:Lokhttp3/Authenticator;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->h:Lokhttp3/Authenticator;

    iget-boolean v0, p1, Lokhttp3/OkHttpClient;->h:Z

    iput-boolean v0, p0, Lokhttp3/OkHttpClient$Builder;->i:Z

    iget-boolean v0, p1, Lokhttp3/OkHttpClient;->i:Z

    iput-boolean v0, p0, Lokhttp3/OkHttpClient$Builder;->j:Z

    iget-object v0, p1, Lokhttp3/OkHttpClient;->j:Lokhttp3/CookieJar;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->k:Lokhttp3/CookieJar;

    iget-object v0, p1, Lokhttp3/OkHttpClient;->k:Lokhttp3/Cache;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->l:Lokhttp3/Cache;

    iget-object v0, p1, Lokhttp3/OkHttpClient;->l:Lokhttp3/Dns;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->m:Lokhttp3/Dns;

    iget-object v0, p1, Lokhttp3/OkHttpClient;->m:Ljava/net/ProxySelector;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->n:Ljava/net/ProxySelector;

    iget-object v0, p1, Lokhttp3/OkHttpClient;->n:Lokhttp3/Authenticator;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->o:Lokhttp3/Authenticator;

    iget-object v0, p1, Lokhttp3/OkHttpClient;->o:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->p:Ljavax/net/SocketFactory;

    iget-object v0, p1, Lokhttp3/OkHttpClient;->p:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->q:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v0, p1, Lokhttp3/OkHttpClient;->q:Ljavax/net/ssl/X509TrustManager;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->r:Ljavax/net/ssl/X509TrustManager;

    iget-object v0, p1, Lokhttp3/OkHttpClient;->r:Ljava/util/List;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->s:Ljava/util/List;

    iget-object v0, p1, Lokhttp3/OkHttpClient;->s:Ljava/util/List;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->t:Ljava/util/List;

    iget-object v0, p1, Lokhttp3/OkHttpClient;->t:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->u:Ljavax/net/ssl/HostnameVerifier;

    iget-object v0, p1, Lokhttp3/OkHttpClient;->u:Lokhttp3/CertificatePinner;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->v:Lokhttp3/CertificatePinner;

    iget-object v0, p1, Lokhttp3/OkHttpClient;->v:Lokhttp3/internal/tls/CertificateChainCleaner;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->w:Lokhttp3/internal/tls/CertificateChainCleaner;

    iget v0, p1, Lokhttp3/OkHttpClient;->w:I

    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->x:I

    iget v0, p1, Lokhttp3/OkHttpClient;->x:I

    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->y:I

    iget v0, p1, Lokhttp3/OkHttpClient;->y:I

    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->z:I

    iget v0, p1, Lokhttp3/OkHttpClient;->z:I

    iput v0, p0, Lokhttp3/OkHttpClient$Builder;->A:I

    iget-wide v0, p1, Lokhttp3/OkHttpClient;->A:J

    iput-wide v0, p0, Lokhttp3/OkHttpClient$Builder;->B:J

    iget-object v0, p1, Lokhttp3/OkHttpClient;->B:Lokhttp3/internal/connection/RouteDatabase;

    iput-object v0, p0, Lokhttp3/OkHttpClient$Builder;->C:Lokhttp3/internal/connection/RouteDatabase;

    iget-object p1, p1, Lokhttp3/OkHttpClient;->C:Lokhttp3/internal/concurrent/TaskRunner;

    iput-object p1, p0, Lokhttp3/OkHttpClient$Builder;->D:Lokhttp3/internal/concurrent/TaskRunner;

    return-void
.end method


# virtual methods
.method public final a(Lokhttp3/Interceptor;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lokhttp3/OkHttpClient$Builder;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(J)V
    .locals 2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "timeout"

    invoke-static {v1, p1, p2, v0}, Lokhttp3/internal/_UtilJvmKt;->b(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lokhttp3/OkHttpClient$Builder;->x:I

    return-void
.end method

.method public final c(J)V
    .locals 2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "timeout"

    invoke-static {v1, p1, p2, v0}, Lokhttp3/internal/_UtilJvmKt;->b(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lokhttp3/OkHttpClient$Builder;->y:I

    return-void
.end method

.method public final d(J)V
    .locals 2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "timeout"

    invoke-static {v1, p1, p2, v0}, Lokhttp3/internal/_UtilJvmKt;->b(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lokhttp3/OkHttpClient$Builder;->z:I

    return-void
.end method
