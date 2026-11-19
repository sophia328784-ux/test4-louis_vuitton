.class public Lcom/sightcall/universal/media/offline/OfflineMediaService$OfflineNotificationActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/media/offline/OfflineMediaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OfflineNotificationActionReceiver"
.end annotation


# static fields
.field public static final OFFLINE_UPLOAD_CANCEL:Ljava/lang/String; = "OFFLINE_UPLOAD_CANCEL"

.field public static final OFFLINE_UPLOAD_PAUSE:Ljava/lang/String; = "OFFLINE_UPLOAD_PAUSE"

.field public static final OFFLINE_UPLOAD_RESUME:Ljava/lang/String; = "OFFLINE_UPLOAD_RESUME"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->onBroadcastReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v0, -0x1

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p2, "OFFLINE_UPLOAD_RESUME"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string p2, "OFFLINE_UPLOAD_CANCEL"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string p2, "OFFLINE_UPLOAD_PAUSE"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-static {p1}, Lcom/sightcall/universal/media/offline/OfflineMediaService;->resumeServiceUpload(Landroid/content/Context;)V

    return-void

    :pswitch_1
    invoke-static {p1}, Lcom/sightcall/universal/media/offline/OfflineMediaService;->cancelServiceUpload(Landroid/content/Context;)V

    return-void

    :pswitch_2
    invoke-static {p1}, Lcom/sightcall/universal/media/offline/OfflineMediaService;->pauseServiceUpload(Landroid/content/Context;)V

    :cond_3
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0xef6acec -> :sswitch_2
        0x19eea4fc -> :sswitch_1
        0x33c23eaf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
