.class final Lcom/google/ar/core/ad;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/ar/core/w;


# direct methods
.method public constructor <init>(Lcom/google/ar/core/y;Lcom/google/ar/core/w;)V
    .locals 0

    iput-object p2, p0, Lcom/google/ar/core/ad;->a:Lcom/google/ar/core/w;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->onBroadcastReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    const-string p1, "com.google.android.play.core.install.ACTION_INSTALL_STATUS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    const-string p1, "install.status"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    iget-object p0, p0, Lcom/google/ar/core/ad;->a:Lcom/google/ar/core/w;

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    const/4 p2, 0x6

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/google/ar/core/x;->b:Lcom/google/ar/core/x;

    invoke-virtual {p0, p1}, Lcom/google/ar/core/w;->a(Lcom/google/ar/core/x;)V

    return-void

    :cond_1
    sget-object p1, Lcom/google/ar/core/x;->c:Lcom/google/ar/core/x;

    invoke-virtual {p0, p1}, Lcom/google/ar/core/w;->a(Lcom/google/ar/core/x;)V

    return-void

    :cond_2
    sget-object p1, Lcom/google/ar/core/x;->a:Lcom/google/ar/core/x;

    invoke-virtual {p0, p1}, Lcom/google/ar/core/w;->a(Lcom/google/ar/core/x;)V

    :cond_3
    :goto_0
    return-void
.end method
