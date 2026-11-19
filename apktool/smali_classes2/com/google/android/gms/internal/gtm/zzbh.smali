.class final Lcom/google/android/gms/internal/gtm/zzbh;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final synthetic b:I


# instance fields
.field public final a:Lcom/google/android/gms/internal/gtm/zzbx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzbx;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzbh;->a:Lcom/google/android/gms/internal/gtm/zzbx;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzbh;->a:Lcom/google/android/gms/internal/gtm/zzbx;

    const-string p1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "noConnectivity"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/2addr p1, v1

    move-object v2, p0

    check-cast v2, Lcom/google/android/gms/internal/gtm/zzce;

    monitor-enter v2

    :try_start_0
    iget-boolean p0, v2, Lcom/google/android/gms/internal/gtm/zzce;->j:Z

    invoke-virtual {v2, p0, p1}, Lcom/google/android/gms/internal/gtm/zzce;->b(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    const-string p1, "com.google.analytics.RADIO_POWERED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "com.google.android.gms.internal.gtm.zzbh"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzce;

    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzce;->c()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzce;->h:Lcom/google/android/gms/internal/gtm/zzca;

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzcc;

    iget-object p2, p1, Lcom/google/android/gms/internal/gtm/zzcc;->a:Lcom/google/android/gms/internal/gtm/zzw;

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzce;->l:Ljava/lang/Object;

    invoke-virtual {p2, v1, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/gtm/zzcc;->a:Lcom/google/android/gms/internal/gtm/zzw;

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-void

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_3
    return-void
.end method
