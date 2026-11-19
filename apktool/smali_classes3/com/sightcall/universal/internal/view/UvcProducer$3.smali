.class Lcom/sightcall/universal/internal/view/UvcProducer$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/internal/view/UvcProducer;->doResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/internal/view/UvcProducer;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/internal/view/UvcProducer;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/UvcProducer$3;->this$0:Lcom/sightcall/universal/internal/view/UvcProducer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/UvcProducer$3;->this$0:Lcom/sightcall/universal/internal/view/UvcProducer;

    invoke-static {v0}, Lcom/sightcall/universal/internal/view/UvcProducer;->a(Lcom/sightcall/universal/internal/view/UvcProducer;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/UvcProducer$3;->this$0:Lcom/sightcall/universal/internal/view/UvcProducer;

    invoke-static {p0}, Lcom/sightcall/universal/internal/view/UvcProducer;->a(Lcom/sightcall/universal/internal/view/UvcProducer;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$OnCameraCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lnet/rtccloud/sdk/internal/view/VideoProducerCameraView$OnCameraCallback;->onCameraResume()V

    :cond_0
    return-void
.end method
