.class Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    iput-object p1, p0, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity$2;->this$0:Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity$2;->this$0:Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;->timeout:Z

    invoke-static {p0}, Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;->x(Lcom/sightcall/universal/agent/UniversalAgentCallPendingActivity;)V

    return-void
.end method
