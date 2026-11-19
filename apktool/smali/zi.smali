.class public final synthetic Lzi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/core/impl/CameraPresenceProvider;Ljava/lang/String;)V
    .locals 0

    const/4 p2, 0x0

    iput p2, p0, Lzi;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzi;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 9
    iput p2, p0, Lzi;->b:I

    iput-object p1, p0, Lzi;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lzi;->b:I

    iget-object p0, p0, Lzi;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Ltb0;

    invoke-virtual {p0, p1}, Ltb0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_0
    check-cast p0, Landroidx/camera/core/impl/LiveDataObservable;

    check-cast p1, Landroidx/camera/core/impl/LiveDataObservable$Result;

    iget-object v0, p0, Landroidx/camera/core/impl/LiveDataObservable;->b:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    iget-object p0, p0, Landroidx/camera/core/impl/LiveDataObservable;->b:Ljava/util/HashMap;

    invoke-direct {v1, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    new-instance v2, Ljr;

    const/16 v3, 0x1d

    invoke-direct {v2, v0, p1, v3}, Ljr;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_1
    check-cast p0, Landroidx/compose/runtime/MutableState;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void

    :pswitch_2
    check-cast p0, Lkotlinx/coroutines/channels/ProducerScope;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_3
    check-cast p0, Landroidx/camera/core/impl/CameraPresenceProvider;

    check-cast p1, Landroidx/camera/core/CameraState;

    const-string v0, "CameraPresencePrvdr"

    iget-object v1, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p0, 0x3

    invoke-static {p0, v0}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/camera/core/CameraState;->c()Landroidx/camera/core/CameraState$StateError;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object v2, v1

    :goto_1
    if-nez v2, :cond_4

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/camera/core/CameraState;->d()Landroidx/camera/core/CameraState$Type;

    move-result-object v1

    :cond_3
    sget-object v2, Landroidx/camera/core/CameraState$Type;->CLOSED:Landroidx/camera/core/CameraState$Type;

    if-ne v1, v2, :cond_5

    :cond_4
    invoke-virtual {p1}, Landroidx/camera/core/CameraState;->d()Landroidx/camera/core/CameraState$Type;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    const/4 p1, 0x5

    invoke-static {p1, v0}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    iget-object p0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->e:Landroidx/camera/core/impl/Observable;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Landroidx/camera/core/impl/Observable;->a()Lcom/google/common/util/concurrent/ListenableFuture;

    :cond_5
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
