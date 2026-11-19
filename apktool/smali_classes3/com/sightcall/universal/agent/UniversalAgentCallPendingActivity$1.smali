.class Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity$1;->this$0:Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->onBroadcastReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity$1;->this$0:Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "extra_data"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    iget-object p2, p0, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity$1;->this$0:Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;

    invoke-static {p2}, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;->v(Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;)Landroid/os/Parcelable;

    move-result-object p2

    instance-of p2, p2, Lcom/sightcall/universal/fcm/messages/GuestReady;

    if-eqz p2, :cond_0

    instance-of p2, p1, Lcom/sightcall/universal/fcm/messages/GuestReady;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity$1;->this$0:Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;

    invoke-static {p2}, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;->v(Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/sightcall/universal/fcm/messages/GuestReady;

    check-cast p1, Lcom/sightcall/universal/fcm/messages/GuestReady;

    invoke-virtual {p2, p1}, Lcom/sightcall/universal/fcm/messages/GuestReady;->correspondsTo(Lcom/sightcall/universal/fcm/messages/GuestReady;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity$1;->this$0:Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;->finish()V

    :cond_0
    return-void
.end method
