.class public final Lcom/perfectcorp/perfectlib/core/LivePreviewHelper;
.super Ljava/lang/Object;


# instance fields
.field public final a:Landroid/hardware/SensorManager;

.field public final b:Landroid/hardware/Sensor;

.field public final c:Landroid/view/WindowManager;

.field public final d:Ljava/lang/Object;

.field public final e:[F

.field public volatile f:Z

.field public volatile g:I

.field public volatile h:I

.field public final i:Landroid/hardware/SensorEventListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/core/LivePreviewHelper;->d:Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/core/LivePreviewHelper;->e:[F

    new-instance v0, Lcom/perfectcorp/perfectlib/core/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p0, v0, Lcom/perfectcorp/perfectlib/core/a;->b:Lcom/perfectcorp/perfectlib/core/LivePreviewHelper;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/core/LivePreviewHelper;->i:Landroid/hardware/SensorEventListener;

    invoke-static {}, Lcom/perfectcorp/common/PfCommons;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/core/LivePreviewHelper;->a:Landroid/hardware/SensorManager;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/perfectcorp/perfectlib/core/LivePreviewHelper;->b:Landroid/hardware/Sensor;

    if-nez v1, :cond_1

    const-string v0, "LivePreviewHelper"

    const-string v1, "sensor is null"

    invoke-static {v0, v1}, Lcom/perfectcorp/common/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/perfectcorp/common/PfCommons;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Can\'t get WINDOW_SERVICE."

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/core/LivePreviewHelper;->c:Landroid/view/WindowManager;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method
