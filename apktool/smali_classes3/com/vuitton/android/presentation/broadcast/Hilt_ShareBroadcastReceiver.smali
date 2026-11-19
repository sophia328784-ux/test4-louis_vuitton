.class public abstract Lcom/vuitton/android/presentation/broadcast/Hilt_ShareBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private volatile a:Z

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vuitton/android/presentation/broadcast/Hilt_ShareBroadcastReceiver;->a:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vuitton/android/presentation/broadcast/Hilt_ShareBroadcastReceiver;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 3

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/broadcast/Hilt_ShareBroadcastReceiver;->a:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/vuitton/android/presentation/broadcast/Hilt_ShareBroadcastReceiver;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/broadcast/Hilt_ShareBroadcastReceiver;->a:Z

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Ldagger/hilt/android/internal/Contexts;->a(Landroid/content/Context;)Landroid/app/Application;

    move-result-object p1

    instance-of v1, p1, Ldagger/hilt/internal/GeneratedComponentManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eqz v1, :cond_0

    check-cast p1, Ldagger/hilt/internal/GeneratedComponentManager;

    invoke-interface {p1}, Ldagger/hilt/internal/GeneratedComponentManager;->C()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/broadcast/ShareBroadcastReceiver_GeneratedInjector;

    move-object v1, p0

    check-cast v1, Lcom/vuitton/android/presentation/broadcast/ShareBroadcastReceiver;

    invoke-interface {p1, v1}, Lcom/vuitton/android/presentation/broadcast/ShareBroadcastReceiver_GeneratedInjector;->i(Lcom/vuitton/android/presentation/broadcast/ShareBroadcastReceiver;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/vuitton/android/presentation/broadcast/Hilt_ShareBroadcastReceiver;->a:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Hilt BroadcastReceiver must be attached to an @HiltAndroidApp Application. Found: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->onBroadcastReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/broadcast/Hilt_ShareBroadcastReceiver;->a(Landroid/content/Context;)V

    return-void
.end method
