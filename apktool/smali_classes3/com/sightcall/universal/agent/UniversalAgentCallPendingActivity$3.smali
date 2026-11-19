.class Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    iput-object p1, p0, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity$3;->this$0:Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity$3;->this$0:Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;->timeout:Z

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity$3;->this$0:Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;->finish()V

    :cond_0
    return-void
.end method
