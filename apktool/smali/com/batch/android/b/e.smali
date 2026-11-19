.class public Lcom/batch/android/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/UserActionRunnable;


# static fields
.field private static final a:Ljava/lang/String; = "NotificationPermissionAction"

.field public static final b:Ljava/lang/String; = "batch.android_request_notifications"

.field public static final c:Ljava/lang/String; = "batch.request_notifications"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public performAction(Landroid/content/Context;Ljava/lang/String;Lcom/batch/android/json/JSONObject;Lcom/batch/android/UserActionSource;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p0, "NotificationPermissionAction"

    const-string p1, "Tried to perform a notif. permission request action, but no context was available"

    invoke-static {p0, p1}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Lcom/batch/android/e/x;

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lcom/batch/android/e/x;-><init>(Lcom/batch/android/BatchPermissionListener;)V

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p3, p2}, Lcom/batch/android/e/x;->a(Landroid/content/Context;ZLandroid/content/BroadcastReceiver;)V

    return-void
.end method
