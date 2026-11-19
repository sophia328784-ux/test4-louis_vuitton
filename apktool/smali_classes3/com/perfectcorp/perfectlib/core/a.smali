.class final Lcom/perfectcorp/perfectlib/core/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public synthetic b:Lcom/perfectcorp/perfectlib/core/LivePreviewHelper;


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/core/a;->b:Lcom/perfectcorp/perfectlib/core/LivePreviewHelper;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/core/LivePreviewHelper;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/perfectcorp/perfectlib/core/a;->b:Lcom/perfectcorp/perfectlib/core/LivePreviewHelper;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/core/LivePreviewHelper;->c:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    const/4 v5, 0x3

    if-eq v1, v5, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/core/a;->b:Lcom/perfectcorp/perfectlib/core/LivePreviewHelper;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/core/LivePreviewHelper;->e:[F

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, p1, v4

    aput v1, p0, v2

    aget v1, p1, v2

    neg-float v1, v1

    aput v1, p0, v4

    aget p1, p1, v3

    aput p1, p0, v3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/core/a;->b:Lcom/perfectcorp/perfectlib/core/LivePreviewHelper;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/core/LivePreviewHelper;->e:[F

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, p1, v2

    neg-float v1, v1

    aput v1, p0, v2

    aget v1, p1, v4

    neg-float v1, v1

    aput v1, p0, v4

    aget p1, p1, v3

    aput p1, p0, v3

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/core/a;->b:Lcom/perfectcorp/perfectlib/core/LivePreviewHelper;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/core/LivePreviewHelper;->e:[F

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, p1, v4

    neg-float v1, v1

    aput v1, p0, v2

    aget v1, p1, v2

    aput v1, p0, v4

    aget p1, p1, v3

    aput p1, p0, v3

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/core/a;->b:Lcom/perfectcorp/perfectlib/core/LivePreviewHelper;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/core/LivePreviewHelper;->e:[F

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, p1, v2

    aput v1, p0, v2

    aget v1, p1, v4

    aput v1, p0, v4

    aget p1, p1, v3

    aput p1, p0, v3

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
