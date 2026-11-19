.class public Lcom/batch/android/b/h;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/UserActionRunnable;


# static fields
.field private static final a:Ljava/lang/String; = "SmartReOptInAction"

.field public static final b:Ljava/lang/String; = "batch.android_smart_reoptin"

.field public static final c:Ljava/lang/String; = "batch.smart_reoptin"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.APP_NOTIFICATION_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.provider.extra.APP_PACKAGE"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-static {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->onBroadcastReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    const-string v0, "permission"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "result"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "should_redirect_settings"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p1}, Lcom/batch/android/e/w;->b(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/batch/android/n/o;->a(Landroid/content/Context;)Lcom/batch/android/d/a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/batch/android/d/a;->a(Landroid/content/BroadcastReceiver;)V

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/batch/android/b/h;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public performAction(Landroid/content/Context;Ljava/lang/String;Lcom/batch/android/json/JSONObject;Lcom/batch/android/UserActionSource;)V
    .locals 0

    const-string p2, "SmartReOptInAction"

    if-nez p1, :cond_0

    const-string p0, "Tried to perform a smart reoptin action, but no context was available"

    invoke-static {p2, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x21

    if-ge p3, p4, :cond_1

    return-void

    :cond_1
    new-instance p3, Lcom/batch/android/e/x;

    const/4 p4, 0x0

    invoke-direct {p3, p4}, Lcom/batch/android/e/x;-><init>(Lcom/batch/android/BatchPermissionListener;)V

    invoke-virtual {p3, p1}, Lcom/batch/android/e/x;->a(Landroid/content/Context;)Z

    move-result p4

    if-eqz p4, :cond_2

    const-string p0, "Notification permission is already granted, aborting."

    invoke-static {p2, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {p1}, Lcom/batch/android/e/o;->b(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p3, p1}, Lcom/batch/android/e/x;->b(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-direct {p0, p1}, Lcom/batch/android/b/h;->a(Landroid/content/Context;)V

    return-void

    :cond_3
    invoke-virtual {p3, p1}, Lcom/batch/android/e/x;->c(Landroid/content/Context;)V

    return-void

    :cond_4
    const/4 p2, 0x0

    invoke-virtual {p3, p1, p2, p0}, Lcom/batch/android/e/x;->a(Landroid/content/Context;ZLandroid/content/BroadcastReceiver;)V

    return-void
.end method
