.class Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/universal/internal/proposition/PropositionClient$AcceptCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->onAcceptClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment$6;->this$0:Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private reset()V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment$6;->this$0:Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;

    invoke-static {p0}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->s(Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;)V

    return-void
.end method


# virtual methods
.method public onAcceptError()V
    .locals 1

    invoke-direct {p0}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment$6;->reset()V

    iget-object v0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment$6;->this$0:Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;

    invoke-static {v0}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->L(Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;)V

    iget-object p0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment$6;->this$0:Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public onAcceptFailure()V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment$6;->reset()V

    iget-object p0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment$6;->this$0:Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;

    invoke-static {p0}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->P(Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;)V

    return-void
.end method

.method public onAcceptSuccess()V
    .locals 2

    invoke-direct {p0}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment$6;->reset()V

    iget-object v0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment$6;->this$0:Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;

    invoke-static {v0}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->q(Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;)Lcom/sightcall/universal/internal/proposition/Proposition;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sightcall/universal/internal/proposition/Proposition;->isAccepted:Z

    iget-object v0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment$6;->this$0:Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;

    invoke-static {v0}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->q(Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;)Lcom/sightcall/universal/internal/proposition/Proposition;

    move-result-object v0

    iget-object v0, v0, Lcom/sightcall/universal/internal/proposition/Proposition;->template:Lcom/sightcall/session/Reference$UseCase$PropositionTemplate;

    iget-object v0, v0, Lcom/sightcall/session/Reference$UseCase$PropositionTemplate;->signature:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment$6;->this$0:Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->P(Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;)V

    return-void

    :cond_0
    invoke-static {v1}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->L(Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;)V

    iget-object p0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment$6;->this$0:Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method
