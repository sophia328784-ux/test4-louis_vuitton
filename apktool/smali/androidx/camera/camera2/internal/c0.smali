.class public final synthetic Landroidx/camera/camera2/internal/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;


# instance fields
.field public final synthetic b:Landroidx/camera/camera2/internal/TorchControl;

.field public final synthetic c:I

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/camera2/internal/TorchControl;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/camera/camera2/internal/c0;->b:Landroidx/camera/camera2/internal/TorchControl;

    iput p2, p0, Landroidx/camera/camera2/internal/c0;->c:I

    iput-boolean p3, p0, Landroidx/camera/camera2/internal/c0;->d:Z

    return-void
.end method


# virtual methods
.method public final i(Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Landroidx/camera/camera2/internal/c0;->b:Landroidx/camera/camera2/internal/TorchControl;

    iget-object v1, v0, Landroidx/camera/camera2/internal/TorchControl;->e:Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/camera/camera2/internal/e0;

    iget v3, p0, Landroidx/camera/camera2/internal/c0;->c:I

    invoke-direct {v2, v0, p1, v3}, Landroidx/camera/camera2/internal/e0;-><init>(Landroidx/camera/camera2/internal/TorchControl;Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "enableTorch: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Landroidx/camera/camera2/internal/c0;->d:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
