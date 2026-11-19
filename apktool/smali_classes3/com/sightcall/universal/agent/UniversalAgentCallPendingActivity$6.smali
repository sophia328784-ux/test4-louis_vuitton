.class Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity$6;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


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
.method public constructor <init>(Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity$6;->this$0:Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    iget-object v0, p0, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity$6;->this$0:Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;

    iget-boolean v1, v0, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;->timeout:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/sightcall/universal/R$string;->universal_acd_timeout:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity$6;->this$0:Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
