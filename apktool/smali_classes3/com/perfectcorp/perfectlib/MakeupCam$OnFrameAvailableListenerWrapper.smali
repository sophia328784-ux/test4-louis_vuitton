.class final Lcom/perfectcorp/perfectlib/MakeupCam$OnFrameAvailableListenerWrapper;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyberlink/clgpuimage/GPUImageRenderer$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/MakeupCam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OnFrameAvailableListenerWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/cyberlink/clgpuimage/GPUImageRenderer$OnFrameAvailableListener<",
        "Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/ConcurrentLinkedQueue;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/MakeupCam$OnFrameAvailableListenerWrapper;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/cyberlink/clgpuimage/GPUImageRenderer$YUVBuffer;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCam$OnFrameAvailableListenerWrapper;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cyberlink/clgpuimage/GPUImageRenderer$OnFrameAvailableListener;

    invoke-interface {v0, p1}, Lcom/cyberlink/clgpuimage/GPUImageRenderer$OnFrameAvailableListener;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
