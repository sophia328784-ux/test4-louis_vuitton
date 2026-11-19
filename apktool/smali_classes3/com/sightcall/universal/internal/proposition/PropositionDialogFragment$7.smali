.class Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/universal/internal/proposition/PropositionClient$SignCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->onConfirmClicked()V
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

    iput-object p1, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment$7;->this$0:Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private reset()V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment$7;->this$0:Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;

    invoke-static {p0}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->K(Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;)V

    return-void
.end method


# virtual methods
.method public onSignError()V
    .locals 1

    invoke-direct {p0}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment$7;->reset()V

    iget-object v0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment$7;->this$0:Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;

    invoke-static {v0}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->L(Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;)V

    iget-object p0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment$7;->this$0:Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public onSignFailure()V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment$7;->reset()V

    iget-object p0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment$7;->this$0:Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;

    invoke-static {p0}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->P(Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;)V

    return-void
.end method

.method public onSignSuccess()V
    .locals 1

    invoke-direct {p0}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment$7;->reset()V

    iget-object v0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment$7;->this$0:Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;

    invoke-static {v0}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->L(Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;)V

    iget-object p0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment$7;->this$0:Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method
