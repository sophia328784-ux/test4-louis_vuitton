.class Lcom/batch/android/v0/f$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/v0/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/batch/android/v0/f;


# direct methods
.method public constructor <init>(Lcom/batch/android/v0/f;)V
    .locals 0

    iput-object p1, p0, Lcom/batch/android/v0/f$a;->a:Lcom/batch/android/v0/f;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->onBroadcastReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.batch.android.runtime.session.new"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/batch/android/v0/f$a;->a:Lcom/batch/android/v0/f;

    invoke-static {p1}, Lcom/batch/android/v0/f;->a(Lcom/batch/android/v0/f;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p0, p0, Lcom/batch/android/v0/f$a;->a:Lcom/batch/android/v0/f;

    new-instance p1, Lcom/batch/android/x/b;

    invoke-direct {p1}, Lcom/batch/android/x/b;-><init>()V

    invoke-virtual {p0, p1}, Lcom/batch/android/v0/f;->e(Lcom/batch/android/x/d;)V

    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object p0

    invoke-static {p0}, Lcom/batch/android/a/m;->a(Lcom/batch/android/j1/e;)Z

    :cond_0
    return-void
.end method
