.class final Lcom/google/android/exoplayer2/video/spherical/OrientationListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/video/spherical/OrientationListener$Listener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final b:[F

.field public final c:[F

.field public final d:[F

.field public final e:[F

.field public final f:Landroid/view/Display;

.field public final g:[Lcom/google/android/exoplayer2/video/spherical/OrientationListener$Listener;

.field public h:Z


# direct methods
.method public varargs constructor <init>(Landroid/view/Display;[Lcom/google/android/exoplayer2/video/spherical/OrientationListener$Listener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/android/exoplayer2/video/spherical/OrientationListener;->b:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/android/exoplayer2/video/spherical/OrientationListener;->c:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/OrientationListener;->d:[F

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/OrientationListener;->e:[F

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/spherical/OrientationListener;->f:Landroid/view/Display;

    iput-object p2, p0, Lcom/google/android/exoplayer2/video/spherical/OrientationListener;->g:[Lcom/google/android/exoplayer2/video/spherical/OrientationListener$Listener;

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/OrientationListener;->b:[F

    invoke-static {v0, p1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/video/spherical/OrientationListener;->f:Landroid/view/Display;

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iget-object v6, p0, Lcom/google/android/exoplayer2/video/spherical/OrientationListener;->c:[F

    const/4 v7, 0x0

    const/4 v1, 0x2

    const/4 v8, 0x1

    if-eqz p1, :cond_3

    const/16 v2, 0x81

    if-eq p1, v8, :cond_1

    const/16 v3, 0x82

    if-eq p1, v1, :cond_2

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    move v2, v3

    move v3, v8

    goto :goto_0

    :cond_0
    invoke-static {}, Lr81;->b()V

    return-void

    :cond_1
    move v3, v2

    move v2, v1

    :cond_2
    :goto_0
    array-length p1, v6

    invoke-static {v0, v7, v6, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v6, v2, v3, v0}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    :cond_3
    const/16 p1, 0x83

    invoke-static {v0, v8, p1, v6}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    iget-object p1, p0, Lcom/google/android/exoplayer2/video/spherical/OrientationListener;->e:[F

    invoke-static {v6, p1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    aget p1, p1, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x42b40000    # 90.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/video/spherical/OrientationListener;->h:Z

    iget-object v4, p0, Lcom/google/android/exoplayer2/video/spherical/OrientationListener;->d:[F

    if-nez v1, :cond_4

    invoke-static {v4, v0}, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->a([F[F)V

    iput-boolean v8, p0, Lcom/google/android/exoplayer2/video/spherical/OrientationListener;->h:Z

    :cond_4
    array-length v1, v6

    invoke-static {v0, v7, v6, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object v2, v6

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/video/spherical/OrientationListener;->g:[Lcom/google/android/exoplayer2/video/spherical/OrientationListener$Listener;

    array-length v1, p0

    :goto_1
    if-ge v7, v1, :cond_5

    aget-object v2, p0, v7

    invoke-interface {v2, p1, v0}, Lcom/google/android/exoplayer2/video/spherical/OrientationListener$Listener;->a(F[F)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method
