.class final Lcom/sightcall/gpslocation/GpsRepositoryImpl$locations$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/gpslocation/GpsRepositoryImpl;-><init>(Lcom/sightcall/gpslocation/datasource/GpsDatasource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/channels/ProducerScope<",
        "-",
        "Lcom/sightcall/pratik/Result<",
        "Landroid/location/Location;",
        "Ljava/lang/Exception;",
        ">;>;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0008\u0012\u00060\u0005j\u0002`\u00060\u00030\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/channels/ProducerScope;",
        "Lcom/sightcall/pratik/Result;",
        "Landroid/location/Location;",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.sightcall.gpslocation.GpsRepositoryImpl$locations$1"
    f = "GpsRepositoryImpl.kt"
    l = {
        0x1a
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/sightcall/gpslocation/GpsRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/sightcall/gpslocation/GpsRepositoryImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/gpslocation/GpsRepositoryImpl;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/sightcall/gpslocation/GpsRepositoryImpl$locations$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/gpslocation/GpsRepositoryImpl$locations$1;->this$0:Lcom/sightcall/gpslocation/GpsRepositoryImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method

.method public static synthetic b(Lcom/sightcall/gpslocation/GpsRepositoryImpl;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/sightcall/gpslocation/GpsRepositoryImpl$locations$1;->invokeSuspend$lambda$2(Lcom/sightcall/gpslocation/GpsRepositoryImpl;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lkotlinx/coroutines/channels/ProducerScope;Ljava/lang/Exception;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/sightcall/gpslocation/GpsRepositoryImpl$locations$1;->invokeSuspend$lambda$1(Lkotlinx/coroutines/channels/ProducerScope;Ljava/lang/Exception;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lkotlinx/coroutines/channels/ProducerScope;Landroid/location/Location;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/sightcall/gpslocation/GpsRepositoryImpl$locations$1;->invokeSuspend$lambda$0(Lkotlinx/coroutines/channels/ProducerScope;Landroid/location/Location;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final invokeSuspend$lambda$0(Lkotlinx/coroutines/channels/ProducerScope;Landroid/location/Location;)Lkotlin/Unit;
    .locals 1

    new-instance v0, Lcom/sightcall/pratik/Result$Success;

    invoke-direct {v0, p1}, Lcom/sightcall/pratik/Result$Success;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invokeSuspend$lambda$1(Lkotlinx/coroutines/channels/ProducerScope;Ljava/lang/Exception;)Lkotlin/Unit;
    .locals 1

    new-instance v0, Lcom/sightcall/pratik/Result$Error;

    invoke-direct {v0, p1}, Lcom/sightcall/pratik/Result$Error;-><init>(Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method private static final invokeSuspend$lambda$2(Lcom/sightcall/gpslocation/GpsRepositoryImpl;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/sightcall/gpslocation/GpsRepositoryImpl;->access$getGpsDataSource$p(Lcom/sightcall/gpslocation/GpsRepositoryImpl;)Lcom/sightcall/gpslocation/datasource/GpsDatasource;

    move-result-object p0

    invoke-interface {p0}, Lcom/sightcall/gpslocation/datasource/GpsDatasource;->stopGps()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sightcall/gpslocation/GpsRepositoryImpl$locations$1;

    iget-object p0, p0, Lcom/sightcall/gpslocation/GpsRepositoryImpl$locations$1;->this$0:Lcom/sightcall/gpslocation/GpsRepositoryImpl;

    invoke-direct {v0, p0, p2}, Lcom/sightcall/gpslocation/GpsRepositoryImpl$locations$1;-><init>(Lcom/sightcall/gpslocation/GpsRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/sightcall/gpslocation/GpsRepositoryImpl$locations$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 13
    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/sightcall/gpslocation/GpsRepositoryImpl$locations$1;->invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope<",
            "-",
            "Lcom/sightcall/pratik/Result<",
            "Landroid/location/Location;",
            "Ljava/lang/Exception;",
            ">;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sightcall/gpslocation/GpsRepositoryImpl$locations$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/sightcall/gpslocation/GpsRepositoryImpl$locations$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/sightcall/gpslocation/GpsRepositoryImpl$locations$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/sightcall/gpslocation/GpsRepositoryImpl$locations$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/channels/ProducerScope;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, p0, Lcom/sightcall/gpslocation/GpsRepositoryImpl$locations$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sightcall/gpslocation/GpsRepositoryImpl$locations$1;->this$0:Lcom/sightcall/gpslocation/GpsRepositoryImpl;

    invoke-static {p1}, Lcom/sightcall/gpslocation/GpsRepositoryImpl;->access$getGpsDataSource$p(Lcom/sightcall/gpslocation/GpsRepositoryImpl;)Lcom/sightcall/gpslocation/datasource/GpsDatasource;

    move-result-object p1

    new-instance v2, Lcom/sightcall/gpslocation/a;

    const/4 v4, 0x0

    invoke-direct {v2, v0, v4}, Lcom/sightcall/gpslocation/a;-><init>(Lkotlinx/coroutines/channels/ProducerScope;I)V

    new-instance v4, Lcom/sightcall/gpslocation/a;

    const/4 v5, 0x1

    invoke-direct {v4, v0, v5}, Lcom/sightcall/gpslocation/a;-><init>(Lkotlinx/coroutines/channels/ProducerScope;I)V

    invoke-interface {p1, v2, v4}, Lcom/sightcall/gpslocation/datasource/GpsDatasource;->startGps(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    iget-object p1, p0, Lcom/sightcall/gpslocation/GpsRepositoryImpl$locations$1;->this$0:Lcom/sightcall/gpslocation/GpsRepositoryImpl;

    new-instance v2, Lcom/sightcall/gpslocation/b;

    invoke-direct {v2, p1}, Lcom/sightcall/gpslocation/b;-><init>(Lcom/sightcall/gpslocation/GpsRepositoryImpl;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sightcall/gpslocation/GpsRepositoryImpl$locations$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcom/sightcall/gpslocation/GpsRepositoryImpl$locations$1;->label:I

    invoke-static {v0, v2, p0}, Lkotlinx/coroutines/channels/ProduceKt;->a(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_2

    return-object v1

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
