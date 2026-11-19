.class public Lcom/otaliastudios/cameraview/internal/OrientationHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/cameraview/internal/OrientationHelper$Callback;
    }
.end annotation


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Landroid/content/Context;

.field public final c:Lcom/otaliastudios/cameraview/internal/OrientationHelper$Callback;

.field public final d:Landroid/view/OrientationEventListener;

.field public e:I

.field public final f:Landroid/hardware/display/DisplayManager$DisplayListener;

.field public g:I

.field public h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/otaliastudios/cameraview/internal/OrientationHelper$Callback;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->a:Landroid/os/Handler;

    const/4 v0, -0x1

    iput v0, p0, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->e:I

    iput v0, p0, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->g:I

    iput-object p1, p0, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->c:Lcom/otaliastudios/cameraview/internal/OrientationHelper$Callback;

    new-instance p2, Lcom/otaliastudios/cameraview/internal/OrientationHelper$1;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/otaliastudios/cameraview/internal/OrientationHelper$1;-><init>(Lcom/otaliastudios/cameraview/internal/OrientationHelper;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->d:Landroid/view/OrientationEventListener;

    new-instance p1, Lcom/otaliastudios/cameraview/internal/OrientationHelper$2;

    invoke-direct {p1, p0}, Lcom/otaliastudios/cameraview/internal/OrientationHelper$2;-><init>(Lcom/otaliastudios/cameraview/internal/OrientationHelper;)V

    iput-object p1, p0, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->f:Landroid/hardware/display/DisplayManager$DisplayListener;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object p0, p0, Lcom/otaliastudios/cameraview/internal/OrientationHelper;->b:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x10e

    return p0

    :cond_1
    const/16 p0, 0xb4

    return p0

    :cond_2
    const/16 p0, 0x5a

    return p0
.end method
