.class public final Lokhttp3/JavaNetCookieJar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/CookieJar;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lokhttp3/JavaNetCookieJar;",
        "Lokhttp3/CookieJar;",
        "Ljava/net/CookieHandler;",
        "cookieHandler",
        "<init>",
        "(Ljava/net/CookieHandler;)V",
        "okhttp-urlconnection"
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
.field public final synthetic b:Lokhttp3/java/net/cookiejar/JavaNetCookieJar;


# direct methods
.method public constructor <init>(Ljava/net/CookieHandler;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lokhttp3/java/net/cookiejar/JavaNetCookieJar;

    invoke-direct {v0, p1}, Lokhttp3/java/net/cookiejar/JavaNetCookieJar;-><init>(Ljava/net/CookieHandler;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lokhttp3/JavaNetCookieJar;->b:Lokhttp3/java/net/cookiejar/JavaNetCookieJar;

    return-void
.end method


# virtual methods
.method public final a(Lokhttp3/HttpUrl;)Ljava/util/List;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lokhttp3/JavaNetCookieJar;->b:Lokhttp3/java/net/cookiejar/JavaNetCookieJar;

    invoke-virtual {p0, p1}, Lokhttp3/java/net/cookiejar/JavaNetCookieJar;->a(Lokhttp3/HttpUrl;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lokhttp3/HttpUrl;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lokhttp3/JavaNetCookieJar;->b:Lokhttp3/java/net/cookiejar/JavaNetCookieJar;

    invoke-virtual {p0, p1, p2}, Lokhttp3/java/net/cookiejar/JavaNetCookieJar;->b(Lokhttp3/HttpUrl;Ljava/util/List;)V

    return-void
.end method
