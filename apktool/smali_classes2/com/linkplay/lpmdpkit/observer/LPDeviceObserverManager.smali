.class public Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/linkplay/lpmdpkit/observer/LPDeviceSubjectListener;


# static fields
.field private static instance:Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;


# instance fields
.field listenerList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/linkplay/lpmdpkit/observer/LPDeviceBaseObservable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->listenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public static getInstance()Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;
    .locals 2

    sget-object v0, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->instance:Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->instance:Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;

    invoke-direct {v1}, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;-><init>()V

    sput-object v1, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->instance:Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->instance:Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;

    return-object v0
.end method


# virtual methods
.method public notifyAccountStatusObserver(Lcom/linkplay/lpmdpkit/observer/LPNotification;)V
    .locals 2

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->listenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/linkplay/lpmdpkit/observer/LPDeviceBaseObservable;

    instance-of v1, v0, Lcom/linkplay/lpmdpkit/observer/LPDeviceAccountStatusObservable;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/linkplay/lpmdpkit/observer/LPDeviceAccountStatusObservable;

    invoke-interface {v0, p1}, Lcom/linkplay/lpmdpkit/observer/LPDeviceAccountStatusObservable;->updateAccountStatus(Lcom/linkplay/lpmdpkit/observer/LPNotification;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public notifyDataObserver(Lcom/linkplay/lpmdpkit/observer/LPNotification;)V
    .locals 2

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->listenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/linkplay/lpmdpkit/observer/LPDeviceBaseObservable;

    instance-of v1, v0, Lcom/linkplay/lpmdpkit/observer/LPDeviceDataObservable;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/linkplay/lpmdpkit/observer/LPDeviceDataObservable;

    invoke-interface {v0, p1}, Lcom/linkplay/lpmdpkit/observer/LPDeviceDataObservable;->updateData(Lcom/linkplay/lpmdpkit/observer/LPNotification;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public notifyDeviceInfoObserver(Lcom/linkplay/lpmdpkit/observer/LPNotification;)V
    .locals 2

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->listenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/linkplay/lpmdpkit/observer/LPDeviceBaseObservable;

    instance-of v1, v0, Lcom/linkplay/lpmdpkit/observer/LPDeviceInfoObservable;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/linkplay/lpmdpkit/observer/LPDeviceInfoObservable;

    invoke-interface {v0, p1}, Lcom/linkplay/lpmdpkit/observer/LPDeviceInfoObservable;->updateDeviceInfo(Lcom/linkplay/lpmdpkit/observer/LPNotification;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public notifyInternetStatusObserver(Lcom/linkplay/lpmdpkit/observer/LPNotification;)V
    .locals 2

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->listenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/linkplay/lpmdpkit/observer/LPDeviceBaseObservable;

    instance-of v1, v0, Lcom/linkplay/lpmdpkit/observer/LPInternetAccessChangeObservable;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/linkplay/lpmdpkit/observer/LPInternetAccessChangeObservable;

    invoke-interface {v0, p1}, Lcom/linkplay/lpmdpkit/observer/LPInternetAccessChangeObservable;->updateInternetStatus(Lcom/linkplay/lpmdpkit/observer/LPNotification;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public notifyMediaInfoObserver(Lcom/linkplay/lpmdpkit/observer/LPNotification;)V
    .locals 2

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->listenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/linkplay/lpmdpkit/observer/LPDeviceBaseObservable;

    instance-of v1, v0, Lcom/linkplay/lpmdpkit/observer/LPDeviceMediaInfoObservable;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/linkplay/lpmdpkit/observer/LPDeviceMediaInfoObservable;

    invoke-interface {v0, p1}, Lcom/linkplay/lpmdpkit/observer/LPDeviceMediaInfoObservable;->updateMediaInfo(Lcom/linkplay/lpmdpkit/observer/LPNotification;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public notifyPassthroughObserver(Lcom/linkplay/lpmdpkit/observer/LPNotification;)V
    .locals 2

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->listenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/linkplay/lpmdpkit/observer/LPDeviceBaseObservable;

    instance-of v1, v0, Lcom/linkplay/lpmdpkit/observer/LPDevicePassthroughObservable;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/linkplay/lpmdpkit/observer/LPDevicePassthroughObservable;

    invoke-interface {v0, p1}, Lcom/linkplay/lpmdpkit/observer/LPDevicePassthroughObservable;->updatePassthrough(Lcom/linkplay/lpmdpkit/observer/LPNotification;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public register(Lcom/linkplay/lpmdpkit/observer/LPDeviceBaseObservable;)V
    .locals 1

    iget-object v0, p0, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->listenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->listenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    :cond_0
    iget-object v0, p0, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->listenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->listenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public unregister(Lcom/linkplay/lpmdpkit/observer/LPDeviceBaseObservable;)V
    .locals 1

    iget-object v0, p0, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->listenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->listenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/observer/LPDeviceObserverManager;->listenerList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method
