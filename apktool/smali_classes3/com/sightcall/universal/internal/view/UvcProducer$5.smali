.class Lcom/sightcall/universal/internal/view/UvcProducer$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/internal/view/UvcProducer;->doSnapshot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/internal/view/UvcProducer;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/internal/view/UvcProducer;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/UvcProducer$5;->this$0:Lcom/sightcall/universal/internal/view/UvcProducer;

    iput-object p2, p0, Lcom/sightcall/universal/internal/view/UvcProducer$5;->val$file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/UvcProducer$5;->this$0:Lcom/sightcall/universal/internal/view/UvcProducer;

    invoke-static {v0}, Lcom/sightcall/universal/internal/view/UvcProducer;->a(Lcom/sightcall/universal/internal/view/UvcProducer;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/UvcProducer$5;->this$0:Lcom/sightcall/universal/internal/view/UvcProducer;

    invoke-static {v0}, Lcom/sightcall/universal/internal/view/UvcProducer;->a(Lcom/sightcall/universal/internal/view/UvcProducer;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$OnCameraCallback;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/UvcProducer$5;->val$file:Ljava/io/File;

    invoke-interface {v0, p0}, Lcom/sightcall/universal/internal/view/MyVideoProducerCameraView$OnCameraCallback;->onCameraSnapshot(Ljava/io/File;)V

    :cond_0
    return-void
.end method
