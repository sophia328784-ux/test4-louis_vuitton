.class Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity$5;->this$0:Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity$5;->this$0:Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;

    invoke-static {v0}, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;->w(Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;)V

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity$5;->this$0:Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;->timeout:Z

    invoke-static {p1, p2}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackDialog(Landroid/content/DialogInterface;I)V

    return-void
.end method
