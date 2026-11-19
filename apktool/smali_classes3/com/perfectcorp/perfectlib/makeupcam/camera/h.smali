.class final Lcom/perfectcorp/perfectlib/makeupcam/camera/h;
.super Ljava/util/TimerTask;


# instance fields
.field private synthetic a:Lcom/perfectcorp/perfectlib/makeupcam/camera/g;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/makeupcam/camera/g;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/h;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/g;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/h;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/g;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/g;->a:Landroid/os/Handler;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/g;->b:Lf31;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
