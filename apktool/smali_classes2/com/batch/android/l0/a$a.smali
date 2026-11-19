.class Lcom/batch/android/l0/a$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/l0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/batch/android/l0/a;


# direct methods
.method public constructor <init>(Lcom/batch/android/l0/a;)V
    .locals 0

    iput-object p1, p0, Lcom/batch/android/l0/a$a;->a:Lcom/batch/android/l0/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->onBroadcastReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/batch/android/l0/a$a;->a:Lcom/batch/android/l0/a;

    iget-boolean p1, p1, Lcom/batch/android/l0/a;->i:Z

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.batch.android.messaging.DISMISS_BANNER"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/batch/android/l0/a$a;->a:Lcom/batch/android/l0/a;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/batch/android/l0/a;->b(Z)V

    :cond_0
    return-void
.end method
