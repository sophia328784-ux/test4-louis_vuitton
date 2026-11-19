.class public final Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager$listenSensorData$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager$listenSensorData$1$1",
        "Landroid/hardware/SensorEventListener;",
        "presentation"
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
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager;

.field public final synthetic c:Lkotlinx/coroutines/channels/ProducerScope;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager;Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager$listenSensorData$1$1;->b:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager$listenSensorData$1$1;->c:Lkotlinx/coroutines/channels/ProducerScope;

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x9

    new-array v0, v0, [F

    invoke-static {v0, p1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    const/4 p1, 0x3

    new-array p1, p1, [F

    invoke-static {v0, p1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    const/4 v0, 0x2

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x0

    aget p1, p1, v2

    new-instance v2, Lcom/google/android/filament/utils/Float3;

    invoke-direct {v2, v0, v1, p1}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager$listenSensorData$1$1;->b:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager;

    iget-object v0, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager;->c:Lcom/google/android/filament/utils/Float3;

    if-nez v0, :cond_0

    iput-object v2, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager;->c:Lcom/google/android/filament/utils/Float3;

    :cond_0
    iget-object v0, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager;->c:Lcom/google/android/filament/utils/Float3;

    if-eqz v0, :cond_6

    new-instance v1, Lcom/google/android/filament/utils/Float3;

    iget v3, v2, Lcom/google/android/filament/utils/Float3;->a:F

    iget v4, v0, Lcom/google/android/filament/utils/Float3;->a:F

    sub-float/2addr v3, v4

    iget v4, v2, Lcom/google/android/filament/utils/Float3;->b:F

    iget v5, v0, Lcom/google/android/filament/utils/Float3;->b:F

    sub-float/2addr v4, v5

    iget v2, v2, Lcom/google/android/filament/utils/Float3;->c:F

    iget v0, v0, Lcom/google/android/filament/utils/Float3;->c:F

    sub-float/2addr v2, v0

    invoke-direct {v1, v3, v4, v2}, Lcom/google/android/filament/utils/Float3;-><init>(FFF)V

    iget v0, v1, Lcom/google/android/filament/utils/Float3;->a:F

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v0, v2

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v0, v2

    iget v1, v1, Lcom/google/android/filament/utils/Float3;->b:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x41700000    # 15.0f

    cmpl-float v3, v0, v2

    const/high16 v4, -0x3e900000    # -15.0f

    if-lez v3, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    cmpg-float v3, v0, v4

    if-gez v3, :cond_2

    move v0, v4

    :cond_2
    :goto_0
    cmpl-float v3, v1, v2

    if-lez v3, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    cmpg-float v2, v1, v4

    if-gez v2, :cond_4

    move v1, v4

    :cond_4
    :goto_1
    iget v2, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager;->d:F

    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v3, v0

    cmpg-float v3, v2, v3

    if-nez v3, :cond_5

    move v0, v2

    :cond_5
    iput v0, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager;->d:F

    new-instance p1, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager$SensorData;

    const/4 v2, 0x0

    invoke-direct {p1, v2, v1, v0}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager$SensorData;-><init>(FFF)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager$listenSensorData$1$1;->c:Lkotlinx/coroutines/channels/ProducerScope;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlinx/coroutines/channels/ChannelResult;->b:Lkotlinx/coroutines/channels/ChannelResult$Companion;

    :cond_6
    return-void
.end method
