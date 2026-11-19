.class public final synthetic Lcom/perfectcorp/perfectlib/makeupcam/camera/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/q;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/q;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/q;->b:I

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/q;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$d;

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$d;->b(Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$d;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->k:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$d;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread;->quit()Z

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->k:Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl$d;

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/Uninterruptibles;->b(Ljava/lang/Thread;)V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->c1:Lcom/perfectcorp/perfectlib/makeupcam/camera/i;

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/i;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;

    iget-object v2, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;

    iget-object v4, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->i:Lcom/perfectcorp/perfectlib/makeupcam/camera/Decoder$ApngDecoder;

    iget v3, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->c:I

    invoke-virtual {v4, v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/Decoder$ApngDecoder;->a(I)Z

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;

    iget-object v3, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->i:Lcom/perfectcorp/perfectlib/makeupcam/camera/Decoder$ApngDecoder;

    iget v2, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/d;->c:I

    invoke-virtual {v3, v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/Decoder$ApngDecoder;->a(I)Z

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/i;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/i;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/i;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;->a(Lcom/perfectcorp/perfectlib/makeupcam/camera/i$a;)V

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/i;->c:Lcom/perfectcorp/perfectlib/core/BaseVenus;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/i;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/perfectcorp/perfectlib/core/BaseVenus;->s(I)V

    :cond_3
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/LiveMakeupCtrl;->d1:Lcom/perfectcorp/perfectlib/makeupcam/camera/c;

    if-eqz p0, :cond_7

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/c;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a;

    iget-object v1, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/a;

    iget-object v3, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/a;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/Decoder$ApngDecoder;

    iget v2, v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/a;->b:I

    invoke-virtual {v3, v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/Decoder$ApngDecoder;->a(I)Z

    goto :goto_2

    :cond_4
    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/a;

    iget-object v2, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/a;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/Decoder$ApngDecoder;

    iget v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/a;->b:I

    invoke-virtual {v2, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/Decoder$ApngDecoder;->a(I)Z

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/c;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/c;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/c;->g:Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a;

    invoke-static {v0, p0}, Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a;->a(Lcom/perfectcorp/perfectlib/makeupcam/camera/c$a;Lcom/perfectcorp/perfectlib/makeupcam/camera/c;)V

    :cond_7
    return-void

    :pswitch_1
    check-cast p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EarringsConfiguration;

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EarringsConfiguration;->B:Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl;->e:Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/ApplyEffectCtrl$EarringsConfiguration;->A:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Lcom/cyberlink/clgpuimage/cosmetic/CLMakeupLiveFilter;->X(Ljava/util/List;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
