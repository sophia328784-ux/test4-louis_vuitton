.class final Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager$listenSensorData$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/channels/ProducerScope<",
        "-",
        "Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager$SensorData;",
        ">;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/channels/ProducerScope;",
        "Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager$SensorData;"
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
    c = "com.vuitton.android.presentation.screen.immersivearticle.immersive3D.base.SensorDataManager$listenSensorData$1"
    f = "SensorManager.kt"
    l = {
        0x37
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager$listenSensorData$1;->d:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager$listenSensorData$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager$listenSensorData$1;->d:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager$listenSensorData$1;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager$listenSensorData$1;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager$listenSensorData$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager$listenSensorData$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager$listenSensorData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager$listenSensorData$1;->c:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/channels/ProducerScope;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager$listenSensorData$1;->b:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v4, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v3

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance p1, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager$listenSensorData$1$1;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager$listenSensorData$1;->d:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager;

    invoke-direct {p1, v2, v0}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager$listenSensorData$1$1;-><init>(Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager;Lkotlinx/coroutines/channels/ProducerScope;)V

    iget-object v5, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager;->a:Landroid/content/Context;

    const-string v6, "sensor"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v5, Landroid/hardware/SensorManager;

    iput-object v5, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager;->b:Landroid/hardware/SensorManager;

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v5

    iget-object v6, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager;->b:Landroid/hardware/SensorManager;

    if-eqz v6, :cond_3

    invoke-virtual {v6, p1, v5, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iput-object p1, v2, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager;->e:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager$listenSensorData$1$1;

    new-instance p1, Lxn0;

    const/16 v5, 0x1a

    invoke-direct {p1, v2, v5}, Lxn0;-><init>(Ljava/lang/Object;I)V

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager$listenSensorData$1;->c:Ljava/lang/Object;

    iput v4, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager$listenSensorData$1;->b:I

    invoke-static {v0, p1, p0}, Lkotlinx/coroutines/channels/ProduceKt;->a(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_2

    return-object v1

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_3
    const-string p0, "sensorManager"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v3
.end method
