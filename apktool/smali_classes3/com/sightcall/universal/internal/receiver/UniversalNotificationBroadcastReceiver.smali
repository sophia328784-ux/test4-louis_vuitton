.class public Lcom/sightcall/universal/internal/receiver/UniversalNotificationBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/internal/receiver/UniversalNotificationBroadcastReceiver$Action;
    }
.end annotation


# static fields
.field private static final EXTRA_ACTION:Ljava/lang/String; = "extra_action"

.field private static final EXTRA_DATA:Ljava/lang/String; = "extra_data"


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

    const-string p0, "extra_action"

    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/sightcall/universal/internal/receiver/UniversalNotificationBroadcastReceiver$Action;->valueOf(Ljava/lang/String;)Lcom/sightcall/universal/internal/receiver/UniversalNotificationBroadcastReceiver$Action;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "extra_data"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    sget-object p2, Lcom/sightcall/universal/internal/receiver/UniversalNotificationBroadcastReceiver$1;->$SwitchMap$com$sightcall$universal$internal$receiver$UniversalNotificationBroadcastReceiver$Action:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p2, p0

    const/4 p2, 0x1

    if-eq p0, p2, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    goto :goto_0

    :cond_1
    instance-of p0, p1, Lcom/sightcall/universal/fcm/messages/GuestReady;

    if-eqz p0, :cond_3

    sput-boolean p2, Lcom/sightcall/universal/scenario/steps/ConnectionStep;->declined:Z

    invoke-static {}, Lcom/sightcall/universal/Universal;->agent()Lcom/sightcall/universal/agent/UniversalAgent;

    move-result-object p0

    check-cast p1, Lcom/sightcall/universal/fcm/messages/GuestReady;

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/agent/UniversalAgent;->onGuestReadyDenied(Lcom/sightcall/universal/fcm/messages/GuestReady;)V

    return-void

    :cond_2
    instance-of p0, p1, Lcom/sightcall/universal/fcm/messages/GuestReady;

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/sightcall/universal/Universal;->agent()Lcom/sightcall/universal/agent/UniversalAgent;

    move-result-object p0

    check-cast p1, Lcom/sightcall/universal/fcm/messages/GuestReady;

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/agent/UniversalAgent;->onGuestReadyAccepted(Lcom/sightcall/universal/fcm/messages/GuestReady;)V

    :cond_3
    :goto_0
    return-void

    :catch_0
    invoke-static {}, Lcom/sightcall/universal/Universal;->logger()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object p1

    const-string p2, "Unknown action: "

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;)V

    return-void
.end method
