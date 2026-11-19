.class Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/universal/internal/proposition/PropositionClient$CancelCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->onDenyClicked()V
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

    iput-object p1, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment$5;->this$0:Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private reset()V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment$5;->this$0:Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;

    invoke-static {p0}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->J(Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;)V

    return-void
.end method


# virtual methods
.method public onCancelError()V
    .locals 1

    invoke-direct {p0}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment$5;->reset()V

    iget-object v0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment$5;->this$0:Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;

    invoke-static {v0}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->L(Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;)V

    iget-object p0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment$5;->this$0:Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public onCancelFailure()V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment$5;->reset()V

    iget-object p0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment$5;->this$0:Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;

    invoke-static {p0}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->P(Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;)V

    return-void
.end method

.method public onCancelSuccess()V
    .locals 2

    invoke-direct {p0}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment$5;->reset()V

    iget-object v0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment$5;->this$0:Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;

    invoke-static {v0}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->q(Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;)Lcom/sightcall/universal/internal/proposition/Proposition;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sightcall/universal/internal/proposition/Proposition;->isDenied:Z

    iget-object v0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment$5;->this$0:Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;

    invoke-static {v0}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->L(Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;)V

    iget-object p0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment$5;->this$0:Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method
