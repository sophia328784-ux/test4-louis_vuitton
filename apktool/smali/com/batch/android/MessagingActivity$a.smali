.class Lcom/batch/android/MessagingActivity$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/MessagingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/batch/android/MessagingActivity;


# direct methods
.method public constructor <init>(Lcom/batch/android/MessagingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/batch/android/MessagingActivity$a;->a:Lcom/batch/android/MessagingActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->onBroadcastReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.batch.android.messaging.DISMISS_INTERSTITIAL"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/batch/android/MessagingActivity$a;->a:Lcom/batch/android/MessagingActivity;

    invoke-virtual {p0}, Lcom/batch/android/MessagingActivity;->finish()V

    :cond_0
    return-void
.end method
