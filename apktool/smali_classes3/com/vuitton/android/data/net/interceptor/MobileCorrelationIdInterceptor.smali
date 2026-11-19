.class public final Lcom/vuitton/android/data/net/interceptor/MobileCorrelationIdInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/net/interceptor/MobileCorrelationIdInterceptor$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u0006B\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/vuitton/android/data/net/interceptor/MobileCorrelationIdInterceptor;",
        "Lokhttp3/Interceptor;",
        "Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;",
        "environmentProvider",
        "<init>",
        "(Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;)V",
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


# instance fields
.field public final a:Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/net/interceptor/MobileCorrelationIdInterceptor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/net/interceptor/MobileCorrelationIdInterceptor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/net/interceptor/MobileCorrelationIdInterceptor;->a:Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    return-void
.end method


# virtual methods
.method public final intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 2

    check-cast p1, Lokhttp3/internal/http/RealInterceptorChain;

    iget-object v0, p1, Lokhttp3/internal/http/RealInterceptorChain;->e:Lokhttp3/Request;

    iget-object v1, v0, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    iget-object v1, v1, Lokhttp3/HttpUrl;->i:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/data/net/interceptor/MobileCorrelationIdInterceptor;->a:Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    invoke-static {v1, p0}, Lcom/vuitton/android/data/extensions/StringAndroidExtKt;->a(Ljava/lang/String;Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1, v0}, Lokhttp3/internal/http/RealInterceptorChain;->b(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lokhttp3/Request$Builder;

    invoke-direct {p0, v0}, Lokhttp3/Request$Builder;-><init>(Lokhttp3/Request;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "x-mobile-correlation-id"

    invoke-virtual {p0, v1, v0}, Lokhttp3/Request$Builder;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lokhttp3/Request;

    invoke-direct {v0, p0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    invoke-virtual {p1, v0}, Lokhttp3/internal/http/RealInterceptorChain;->b(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method
