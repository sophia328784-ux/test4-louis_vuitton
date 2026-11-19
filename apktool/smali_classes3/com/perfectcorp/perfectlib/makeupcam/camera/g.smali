.class public final Lcom/perfectcorp/perfectlib/makeupcam/camera/g;
.super Ljava/lang/Object;


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Lf31;

.field public c:Landroid/widget/TextView;

.field public d:Ljava/util/Timer;

.field public e:F

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/g;->a:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/g;->e:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/g;->f:Z

    new-instance v0, Lf31;

    const/16 v1, 0x12

    invoke-direct {v0, p0, v1}, Lf31;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/g;->b:Lf31;

    return-void
.end method
