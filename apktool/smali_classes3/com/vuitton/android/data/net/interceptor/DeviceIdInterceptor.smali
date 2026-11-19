.class public final Lcom/vuitton/android/data/net/interceptor/DeviceIdInterceptor;
.super Lcom/vuitton/android/data/net/interceptor/SuspendInterceptor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/net/interceptor/DeviceIdInterceptor$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/vuitton/android/data/net/interceptor/DeviceIdInterceptor;",
        "Lcom/vuitton/android/data/net/interceptor/SuspendInterceptor;",
        "Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource;",
        "deviceIdLocalDataSource",
        "<init>",
        "(Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource;)V",
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
.field public final a:Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/net/interceptor/DeviceIdInterceptor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/net/interceptor/DeviceIdInterceptor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/vuitton/android/data/net/interceptor/SuspendInterceptor;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/net/interceptor/DeviceIdInterceptor;->a:Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource;

    return-void
.end method


# virtual methods
.method public final a(Lokhttp3/internal/http/RealInterceptorChain;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/vuitton/android/data/net/interceptor/DeviceIdInterceptor$interceptSuspendable$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/net/interceptor/DeviceIdInterceptor$interceptSuspendable$1;

    iget v1, v0, Lcom/vuitton/android/data/net/interceptor/DeviceIdInterceptor$interceptSuspendable$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/net/interceptor/DeviceIdInterceptor$interceptSuspendable$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/net/interceptor/DeviceIdInterceptor$interceptSuspendable$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/net/interceptor/DeviceIdInterceptor$interceptSuspendable$1;-><init>(Lcom/vuitton/android/data/net/interceptor/DeviceIdInterceptor;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/net/interceptor/DeviceIdInterceptor$interceptSuspendable$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/net/interceptor/DeviceIdInterceptor$interceptSuspendable$1;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/vuitton/android/data/net/interceptor/DeviceIdInterceptor$interceptSuspendable$1;->b:Lokhttp3/internal/http/RealInterceptorChain;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput-object p1, v0, Lcom/vuitton/android/data/net/interceptor/DeviceIdInterceptor$interceptSuspendable$1;->b:Lokhttp3/internal/http/RealInterceptorChain;

    iput v3, v0, Lcom/vuitton/android/data/net/interceptor/DeviceIdInterceptor$interceptSuspendable$1;->e:I

    iget-object p0, p0, Lcom/vuitton/android/data/net/interceptor/DeviceIdInterceptor;->a:Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource;

    invoke-virtual {p0, v0}, Lcom/vuitton/android/data/datasource/analytic/DeviceIdLocalDataSource;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Ljava/lang/String;

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0, p0}, Lokhttp3/Request$Builder;-><init>(Lokhttp3/Request;)V

    const-string p0, "x-device-id"

    invoke-virtual {v0, p0, p2}, Lokhttp3/Request$Builder;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lokhttp3/Request;

    invoke-direct {p0, v0}, Lokhttp3/Request;-><init>(Lokhttp3/Request$Builder;)V

    invoke-interface {p1, p0}, Lokhttp3/Interceptor$Chain;->b(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method
