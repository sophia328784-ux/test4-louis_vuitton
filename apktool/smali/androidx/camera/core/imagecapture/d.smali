.class public final synthetic Landroidx/camera/core/imagecapture/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/camera/core/imagecapture/ProcessingNode;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/imagecapture/ProcessingNode;I)V
    .locals 0

    iput p2, p0, Landroidx/camera/core/imagecapture/d;->a:I

    iput-object p1, p0, Landroidx/camera/core/imagecapture/d;->b:Landroidx/camera/core/imagecapture/ProcessingNode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Landroidx/camera/core/imagecapture/d;->a:I

    iget-object p0, p0, Landroidx/camera/core/imagecapture/d;->b:Landroidx/camera/core/imagecapture/ProcessingNode;

    check-cast p1, Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;

    packed-switch v0, :pswitch_data_0

    move-object v0, p1

    check-cast v0, Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_InputPacket;

    iget-object v0, v0, Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_InputPacket;->a:Landroidx/camera/core/imagecapture/ProcessingRequest;

    iget-object v0, v0, Landroidx/camera/core/imagecapture/ProcessingRequest;->i:Landroidx/camera/core/imagecapture/RequestWithCallback;

    iget-boolean v0, v0, Landroidx/camera/core/imagecapture/RequestWithCallback;->g:Z

    if-eqz v0, :cond_0

    const-string p0, "ProcessingNode"

    const/4 v0, 0x5

    invoke-static {v0, p0}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    check-cast p1, Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_InputPacket;

    iget-object p0, p1, Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_InputPacket;->b:Landroidx/camera/core/ImageProxy;

    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/core/imagecapture/e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Landroidx/camera/core/imagecapture/e;-><init>(Landroidx/camera/core/imagecapture/ProcessingNode;Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :pswitch_0
    move-object v0, p1

    check-cast v0, Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_InputPacket;

    iget-object v0, v0, Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_InputPacket;->a:Landroidx/camera/core/imagecapture/ProcessingRequest;

    iget-object v0, v0, Landroidx/camera/core/imagecapture/ProcessingRequest;->i:Landroidx/camera/core/imagecapture/RequestWithCallback;

    iget-boolean v0, v0, Landroidx/camera/core/imagecapture/RequestWithCallback;->g:Z

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_InputPacket;

    iget-object p0, p1, Landroidx/camera/core/imagecapture/AutoValue_ProcessingNode_InputPacket;->b:Landroidx/camera/core/ImageProxy;

    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroidx/camera/core/imagecapture/ProcessingNode;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/camera/core/imagecapture/e;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Landroidx/camera/core/imagecapture/e;-><init>(Landroidx/camera/core/imagecapture/ProcessingNode;Landroidx/camera/core/imagecapture/ProcessingNode$InputPacket;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
