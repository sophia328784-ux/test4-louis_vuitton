.class public final Lcom/vuitton/android/data/net/interceptor/UserAgentInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/net/interceptor/UserAgentInterceptor$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u0008B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/vuitton/android/data/net/interceptor/UserAgentInterceptor;",
        "Lokhttp3/Interceptor;",
        "Landroid/content/Context;",
        "context",
        "Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;",
        "buildConfigProvider",
        "<init>",
        "(Landroid/content/Context;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;)V",
        "Companion",
        "data"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final c:Lcom/vuitton/android/data/net/interceptor/UserAgentInterceptor$Companion;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/net/interceptor/UserAgentInterceptor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/net/interceptor/UserAgentInterceptor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/net/interceptor/UserAgentInterceptor;->c:Lcom/vuitton/android/data/net/interceptor/UserAgentInterceptor$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/net/interceptor/UserAgentInterceptor;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/vuitton/android/data/net/interceptor/UserAgentInterceptor;->b:Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

    return-void
.end method


# virtual methods
.method public final intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 2

    check-cast p1, Lokhttp3/internal/http/RealInterceptorChain;

    iget-object v0, p1, Lokhttp3/internal/http/RealInterceptorChain;->e:Lokhttp3/Request;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1, v0}, Lokhttp3/Request$Builder;-><init>(Lokhttp3/Request;)V

    iget-object v0, p0, Lcom/vuitton/android/data/net/interceptor/UserAgentInterceptor;->b:Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/data/net/interceptor/UserAgentInterceptor;->c:Lcom/vuitton/android/data/net/interceptor/UserAgentInterceptor$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/data/net/interceptor/UserAgentInterceptor;->a:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/vuitton/android/data/net/interceptor/UserAgentInterceptor$Companion;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p0

    const-string v0, "User-Agent"

    invoke-virtual {v1, v0, p0}, Lokhttp3/Request$Builder;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lokhttp3/Request;

    invoke-direct {p0, v1}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    invoke-virtual {p1, p0}, Lokhttp3/internal/http/RealInterceptorChain;->b(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method
