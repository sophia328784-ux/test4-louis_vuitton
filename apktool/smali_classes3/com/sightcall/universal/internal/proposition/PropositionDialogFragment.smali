.class public Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;
.super Lcom/sightcall/universal/internal/ui/BaseDialogFragment;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/universal/internal/proposition/SignatureView$SignatureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment$OnPropositionDialogListener;
    }
.end annotation


# static fields
.field private static final ARG_PROPOSITION:Ljava/lang/String; = "proposition"

.field private static final TAG:Ljava/lang/String; = "PropositionDialogFragment"


# instance fields
.field private accept:Landroid/widget/Button;

.field private acceptCall:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "*>;"
        }
    .end annotation
.end field

.field private cancelCall:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "*>;"
        }
    .end annotation
.end field

.field private confirm:Landroid/widget/Button;

.field private deny:Landroid/widget/Button;

.field private listener:Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment$OnPropositionDialogListener;

.field private message:Landroid/widget/TextView;

.field private messageRoot:Landroid/view/View;

.field private progress:Lcom/sightcall/universal/ui/IndeterminateImageView;

.field private proposition:Lcom/sightcall/universal/internal/proposition/Proposition;

.field private reset:Landroid/widget/ImageButton;

.field private root:Landroid/view/View;

.field private session:Lcom/sightcall/universal/model/Session;

.field private signCall:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "*>;"
        }
    .end annotation
.end field

.field private signature:Lcom/sightcall/universal/internal/proposition/SignatureView;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/ui/BaseDialogFragment;-><init>()V

    return-void
.end method

.method public static bridge synthetic J(Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->cancelCall:Lretrofit2/Call;

    return-void
.end method

.method public static bridge synthetic K(Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->signCall:Lretrofit2/Call;

    return-void
.end method

.method public static bridge synthetic L(Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->clearProposition()V

    return-void
.end method

.method public static bridge synthetic M(Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->onAcceptClicked()V

    return-void
.end method

.method public static bridge synthetic N(Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->onConfirmClicked()V

    return-void
.end method

.method public static bridge synthetic O(Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->onDenyClicked()V

    return-void
.end method

.method public static bridge synthetic P(Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->updateUi()V

    return-void
.end method

.method private buildMessage(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 12

    new-instance v0, Lcom/sightcall/universal/util/Truss;

    invoke-direct {v0}, Lcom/sightcall/universal/util/Truss;-><init>()V

    iget-object v1, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->proposition:Lcom/sightcall/universal/internal/proposition/Proposition;

    iget-object v1, v1, Lcom/sightcall/universal/internal/proposition/Proposition;->fields:[Lcom/sightcall/universal/internal/proposition/Proposition$KeyValuePair;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    array-length v4, v1

    if-lez v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    const-string v5, ": "

    const/16 v6, 0xa

    if-eqz v4, :cond_2

    array-length v7, v1

    move v8, v2

    move v9, v3

    :goto_1
    if-ge v8, v7, :cond_2

    aget-object v10, v1, v8

    if-eqz v9, :cond_1

    move v9, v2

    goto :goto_2

    :cond_1
    invoke-virtual {v0, v6}, Lcom/sightcall/universal/util/Truss;->append(C)Lcom/sightcall/universal/util/Truss;

    :goto_2
    iget-object v11, v10, Lcom/sightcall/universal/internal/proposition/Proposition$KeyValuePair;->key:Ljava/lang/String;

    invoke-virtual {v0, v11}, Lcom/sightcall/universal/util/Truss;->append(Ljava/lang/String;)Lcom/sightcall/universal/util/Truss;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/sightcall/universal/util/Truss;->append(Ljava/lang/String;)Lcom/sightcall/universal/util/Truss;

    move-result-object v11

    iget-object v10, v10, Lcom/sightcall/universal/internal/proposition/Proposition$KeyValuePair;->value:Ljava/lang/String;

    invoke-virtual {v11, v10}, Lcom/sightcall/universal/util/Truss;->append(Ljava/lang/String;)Lcom/sightcall/universal/util/Truss;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->proposition:Lcom/sightcall/universal/internal/proposition/Proposition;

    iget-object v1, v1, Lcom/sightcall/universal/internal/proposition/Proposition;->extras:[Lcom/sightcall/universal/internal/proposition/Proposition$KeyValuePair;

    if-eqz v1, :cond_6

    array-length v1, v1

    if-lez v1, :cond_6

    if-eqz v4, :cond_3

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Lcom/sightcall/universal/util/Truss;->append(Ljava/lang/String;)Lcom/sightcall/universal/util/Truss;

    :cond_3
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    sget v4, Lcom/sightcall/graphik/R$color;->universal_colorPropositionExtras:I

    invoke-static {p1, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-direct {v1, p1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/sightcall/universal/util/Truss;->pushSpan(Ljava/lang/Object;)Lcom/sightcall/universal/util/Truss;

    move-result-object p1

    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p1, v1}, Lcom/sightcall/universal/util/Truss;->pushSpan(Ljava/lang/Object;)Lcom/sightcall/universal/util/Truss;

    iget-object p0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->proposition:Lcom/sightcall/universal/internal/proposition/Proposition;

    iget-object p0, p0, Lcom/sightcall/universal/internal/proposition/Proposition;->extras:[Lcom/sightcall/universal/internal/proposition/Proposition$KeyValuePair;

    array-length p1, p0

    move v1, v2

    :goto_3
    if-ge v1, p1, :cond_5

    aget-object v4, p0, v1

    if-eqz v3, :cond_4

    move v3, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v0, v6}, Lcom/sightcall/universal/util/Truss;->append(C)Lcom/sightcall/universal/util/Truss;

    :goto_4
    iget-object v7, v4, Lcom/sightcall/universal/internal/proposition/Proposition$KeyValuePair;->key:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/sightcall/universal/util/Truss;->append(Ljava/lang/String;)Lcom/sightcall/universal/util/Truss;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/sightcall/universal/util/Truss;->append(Ljava/lang/String;)Lcom/sightcall/universal/util/Truss;

    move-result-object v7

    iget-object v4, v4, Lcom/sightcall/universal/internal/proposition/Proposition$KeyValuePair;->value:Ljava/lang/String;

    invoke-virtual {v7, v4}, Lcom/sightcall/universal/util/Truss;->append(Ljava/lang/String;)Lcom/sightcall/universal/util/Truss;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Lcom/sightcall/universal/util/Truss;->popSpan()Lcom/sightcall/universal/util/Truss;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sightcall/universal/util/Truss;->popSpan()Lcom/sightcall/universal/util/Truss;

    :cond_6
    invoke-virtual {v0}, Lcom/sightcall/universal/util/Truss;->build()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private cancelApiCalls()V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->cancelCall:Lretrofit2/Call;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    iput-object v1, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->cancelCall:Lretrofit2/Call;

    :cond_0
    iget-object v0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->acceptCall:Lretrofit2/Call;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    iput-object v1, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->acceptCall:Lretrofit2/Call;

    :cond_1
    iget-object v0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->signCall:Lretrofit2/Call;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lretrofit2/Call;->cancel()V

    iput-object v1, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->signCall:Lretrofit2/Call;

    :cond_2
    return-void
.end method

.method private clearProposition()V
    .locals 1

    iget-object p0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->session:Lcom/sightcall/universal/model/Session;

    iget-object p0, p0, Lcom/sightcall/universal/model/Session;->parameters:Lcom/sightcall/universal/model/CallParameters;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sightcall/universal/model/CallParameters;->pendingProposition:Lcom/sightcall/universal/internal/proposition/Proposition;

    return-void
.end method

.method private static createTag(Lcom/sightcall/universal/internal/proposition/Proposition;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    sget-object p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->TAG:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sightcall/universal/internal/proposition/Proposition;->id:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initUi(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->root:Landroid/view/View;

    sget v1, Lcom/sightcall/universal/R$id;->universal_proposition_progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sightcall/universal/ui/IndeterminateImageView;

    iput-object v0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->progress:Lcom/sightcall/universal/ui/IndeterminateImageView;

    iget-object v0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->root:Landroid/view/View;

    sget v1, Lcom/sightcall/universal/R$id;->universal_proposition_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->title:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->root:Landroid/view/View;

    sget v1, Lcom/sightcall/universal/R$id;->universal_proposition_reset:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->reset:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment$1;-><init>(Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->root:Landroid/view/View;

    sget v1, Lcom/sightcall/universal/R$id;->universal_proposition_message_root:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->messageRoot:Landroid/view/View;

    iget-object v0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->root:Landroid/view/View;

    sget v1, Lcom/sightcall/universal/R$id;->universal_proposition_message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->message:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->buildMessage(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->root:Landroid/view/View;

    sget v1, Lcom/sightcall/universal/R$id;->universal_proposition_accept:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->accept:Landroid/widget/Button;

    iget-object v0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->proposition:Lcom/sightcall/universal/internal/proposition/Proposition;

    iget-object v0, v0, Lcom/sightcall/universal/internal/proposition/Proposition;->template:Lcom/sightcall/session/Reference$UseCase$PropositionTemplate;

    iget-object v0, v0, Lcom/sightcall/session/Reference$UseCase$PropositionTemplate;->button:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->accept:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->proposition:Lcom/sightcall/universal/internal/proposition/Proposition;

    iget-object v1, v1, Lcom/sightcall/universal/internal/proposition/Proposition;->template:Lcom/sightcall/session/Reference$UseCase$PropositionTemplate;

    iget-object v1, v1, Lcom/sightcall/session/Reference$UseCase$PropositionTemplate;->button:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->accept:Landroid/widget/Button;

    new-instance v1, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment$2;

    invoke-direct {v1, p0}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment$2;-><init>(Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->root:Landroid/view/View;

    sget v1, Lcom/sightcall/universal/R$id;->universal_proposition_confirm:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->confirm:Landroid/widget/Button;

    new-instance v1, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment$3;

    invoke-direct {v1, p0}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment$3;-><init>(Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->root:Landroid/view/View;

    sget v1, Lcom/sightcall/universal/R$id;->universal_proposition_deny:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->deny:Landroid/widget/Button;

    new-instance v1, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment$4;

    invoke-direct {v1, p0}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment$4;-><init>(Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->root:Landroid/view/View;

    sget v1, Lcom/sightcall/universal/R$id;->universal_proposition_signature:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sightcall/universal/internal/proposition/SignatureView;

    iput-object v0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->signature:Lcom/sightcall/universal/internal/proposition/SignatureView;

    invoke-virtual {v0, p0}, Lcom/sightcall/universal/internal/proposition/SignatureView;->addListener(Lcom/sightcall/universal/internal/proposition/SignatureView$SignatureListener;)V

    iget-object p0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->signature:Lcom/sightcall/universal/internal/proposition/SignatureView;

    sget v0, Lcom/sightcall/graphik/R$color;->universal_colorPropositionSignature:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/internal/proposition/SignatureView;->setColor(I)V

    return-void
.end method

.method private isLoading()Z
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->acceptCall:Lretrofit2/Call;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->cancelCall:Lretrofit2/Call;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->signCall:Lretrofit2/Call;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private isPropositionAccepted()Z
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->proposition:Lcom/sightcall/universal/internal/proposition/Proposition;

    iget-boolean p0, p0, Lcom/sightcall/universal/internal/proposition/Proposition;->isAccepted:Z

    return p0
.end method

.method private log(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " -> "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Lcom/sightcall/pratik/logs/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private onAcceptClicked()V
    .locals 3

    iget-object v0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->session:Lcom/sightcall/universal/model/Session;

    iget-object v1, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->proposition:Lcom/sightcall/universal/internal/proposition/Proposition;

    new-instance v2, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment$6;

    invoke-direct {v2, p0}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment$6;-><init>(Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;)V

    invoke-static {v0, v1, v2}, Lcom/sightcall/universal/internal/proposition/PropositionClient;->accept(Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/internal/proposition/Proposition;Lcom/sightcall/universal/internal/proposition/PropositionClient$AcceptCallback;)Lretrofit2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->acceptCall:Lretrofit2/Call;

    invoke-direct {p0}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->updateUi()V

    return-void
.end method

.method private onConfirmClicked()V
    .locals 4

    iget-object v0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->signature:Lcom/sightcall/universal/internal/proposition/SignatureView;

    invoke-virtual {v0}, Lcom/sightcall/universal/internal/proposition/SignatureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->session:Lcom/sightcall/universal/model/Session;

    iget-object v2, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->proposition:Lcom/sightcall/universal/internal/proposition/Proposition;

    new-instance v3, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment$7;

    invoke-direct {v3, p0}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment$7;-><init>(Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;)V

    invoke-static {v1, v2, v0, v3}, Lcom/sightcall/universal/internal/proposition/PropositionClient;->sign(Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/internal/proposition/Proposition;Landroid/graphics/Bitmap;Lcom/sightcall/universal/internal/proposition/PropositionClient$SignCallback;)Lretrofit2/Call;

    move-result-object v1

    iput-object v1, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->signCall:Lretrofit2/Call;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->updateUi()V

    return-void
.end method

.method private onDenyClicked()V
    .locals 3

    iget-object v0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->session:Lcom/sightcall/universal/model/Session;

    iget-object v1, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->proposition:Lcom/sightcall/universal/internal/proposition/Proposition;

    new-instance v2, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment$5;

    invoke-direct {v2, p0}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment$5;-><init>(Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;)V

    invoke-static {v0, v1, v2}, Lcom/sightcall/universal/internal/proposition/PropositionClient;->cancel(Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/internal/proposition/Proposition;Lcom/sightcall/universal/internal/proposition/PropositionClient$CancelCallback;)Lretrofit2/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->cancelCall:Lretrofit2/Call;

    invoke-direct {p0}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->updateUi()V

    return-void
.end method

.method public static bridge synthetic q(Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;)Lcom/sightcall/universal/internal/proposition/Proposition;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->proposition:Lcom/sightcall/universal/internal/proposition/Proposition;

    return-object p0
.end method

.method public static bridge synthetic r(Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;)Lcom/sightcall/universal/internal/proposition/SignatureView;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->signature:Lcom/sightcall/universal/internal/proposition/SignatureView;

    return-object p0
.end method

.method public static bridge synthetic s(Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->acceptCall:Lretrofit2/Call;

    return-void
.end method

.method public static show(Landroidx/fragment/app/FragmentManager;Lcom/sightcall/universal/internal/proposition/Proposition;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->d()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-static {p1}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->createTag(Lcom/sightcall/universal/internal/proposition/Proposition;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentManager;->G(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;

    invoke-direct {p0}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v3, "proposition"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-static {p1}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->createTag(Lcom/sightcall/universal/internal/proposition/Proposition;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0, p1, v2}, Landroidx/fragment/app/FragmentTransaction;->i(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->f()I

    return-void
.end method

.method private updatePropositionScreen()V
    .locals 7

    invoke-direct {p0}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->isLoading()Z

    move-result v0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->isPropositionAccepted()Z

    move-result v1

    iget-object v2, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->message:Landroid/widget/TextView;

    const/4 v3, 0x4

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    move v6, v3

    goto :goto_0

    :cond_0
    move v6, v5

    goto :goto_0

    :cond_1
    move v6, v4

    :goto_0
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->messageRoot:Landroid/view/View;

    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v3, v5

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->deny:Landroid/widget/Button;

    xor-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v2, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->accept:Landroid/widget/Button;

    if-nez v1, :cond_4

    move v4, v5

    :cond_4
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->accept:Landroid/widget/Button;

    if-nez v0, :cond_5

    if-nez v1, :cond_5

    const/4 v5, 0x1

    :cond_5
    invoke-virtual {p0, v5}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private updateSignatureScreen()V
    .locals 9

    invoke-direct {p0}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->isLoading()Z

    move-result v0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->isPropositionAccepted()Z

    move-result v1

    iget-object v2, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->signature:Lcom/sightcall/universal/internal/proposition/SignatureView;

    invoke-virtual {v2}, Lcom/sightcall/universal/internal/proposition/SignatureView;->hasSignature()Z

    move-result v2

    iget-object v3, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->signature:Lcom/sightcall/universal/internal/proposition/SignatureView;

    const/16 v4, 0x8

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    move v7, v5

    goto :goto_0

    :cond_0
    move v7, v6

    goto :goto_0

    :cond_1
    move v7, v4

    :goto_0
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->signature:Lcom/sightcall/universal/internal/proposition/SignatureView;

    const/4 v7, 0x1

    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    move v8, v7

    goto :goto_1

    :cond_2
    move v8, v6

    :goto_1
    invoke-virtual {v3, v8}, Landroid/view/View;->setEnabled(Z)V

    iget-object v3, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->deny:Landroid/widget/Button;

    xor-int/lit8 v8, v0, 0x1

    invoke-virtual {v3, v8}, Landroid/view/View;->setEnabled(Z)V

    iget-object v3, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->confirm:Landroid/widget/Button;

    if-eqz v1, :cond_3

    move v4, v6

    :cond_3
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->confirm:Landroid/widget/Button;

    if-nez v0, :cond_4

    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    move v4, v7

    goto :goto_2

    :cond_4
    move v4, v6

    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    iget-object v3, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->reset:Landroid/widget/ImageButton;

    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    move v5, v6

    :cond_5
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->reset:Landroid/widget/ImageButton;

    if-nez v0, :cond_6

    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    move v6, v7

    :cond_6
    invoke-virtual {v3, v6}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->reset:Landroid/widget/ImageButton;

    if-nez v0, :cond_7

    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_7
    const v0, 0x3e4ccccd    # 0.2f

    :goto_3
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private updateUi()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->isLoading()Z

    move-result v0

    iget-object v1, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->progress:Lcom/sightcall/universal/ui/IndeterminateImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/sightcall/universal/ui/IndeterminateImageView;->show()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/sightcall/universal/ui/IndeterminateImageView;->hide(Z)V

    :goto_0
    iget-object v0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->proposition:Lcom/sightcall/universal/internal/proposition/Proposition;

    iget-boolean v2, v1, Lcom/sightcall/universal/internal/proposition/Proposition;->isAccepted:Z

    if-eqz v2, :cond_2

    sget v1, Lcom/sightcall/universal/R$string;->universal_proposition_title_signature:I

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget-object v1, v1, Lcom/sightcall/universal/internal/proposition/Proposition;->template:Lcom/sightcall/session/Reference$UseCase$PropositionTemplate;

    iget-object v1, v1, Lcom/sightcall/session/Reference$UseCase$PropositionTemplate;->title:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->updatePropositionScreen()V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->updateSignatureScreen()V

    return-void
.end method


# virtual methods
.method public onAttachToContext(Landroid/content/Context;)V
    .locals 1

    instance-of v0, p1, Lcom/sightcall/universal/internal/ui/ChangeCameraSourceDialog$OnRequestCameraSourceListener;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment$OnPropositionDialogListener;

    iput-object p1, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->listener:Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment$OnPropositionDialogListener;

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "onCreate"

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->log(Ljava/lang/String;)V

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object p1

    invoke-virtual {p1}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lnet/rtccloud/sdk/event/EventBus;->register(Ljava/lang/Object;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    sget v0, Lcom/sightcall/universal/R$style;->universal_Theme_Dialog_MinWidth:I

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "proposition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/sightcall/universal/internal/proposition/Proposition;

    iput-object p1, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->proposition:Lcom/sightcall/universal/internal/proposition/Proposition;

    invoke-static {}, Lcom/sightcall/universal/model/Session;->get()Lcom/sightcall/universal/model/Session;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->session:Lcom/sightcall/universal/model/Session;

    iget-object v0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->proposition:Lcom/sightcall/universal/internal/proposition/Proposition;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/sightcall/universal/internal/proposition/Proposition;->template:Lcom/sightcall/session/Reference$UseCase$PropositionTemplate;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "onCreateView"

    invoke-direct {p0, p3}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->log(Ljava/lang/String;)V

    sget p3, Lcom/sightcall/universal/R$layout;->universal_dialog_proposition:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->root:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->initUi(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->updateUi()V

    iget-object p0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->root:Landroid/view/View;

    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/rtccloud/sdk/event/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getRetainInstance()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDetach()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->listener:Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment$OnPropositionDialogListener;

    return-void
.end method

.method public onPropositionEvent(Lcom/sightcall/universal/internal/proposition/Proposition;)V
    .locals 2
    .annotation runtime Lnet/rtccloud/sdk/event/Event;
    .end annotation

    iget-object v0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->proposition:Lcom/sightcall/universal/internal/proposition/Proposition;

    iget-object v0, v0, Lcom/sightcall/universal/internal/proposition/Proposition;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/sightcall/universal/internal/proposition/Proposition;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/sightcall/universal/internal/proposition/Proposition$State;->CREATED:Lcom/sightcall/universal/internal/proposition/Proposition$State;

    invoke-virtual {p1, v1}, Lcom/sightcall/universal/internal/proposition/Proposition;->is(Lcom/sightcall/universal/internal/proposition/Proposition$State;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->cancelApiCalls()V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    return-void

    :cond_1
    sget-object v1, Lcom/sightcall/universal/internal/proposition/Proposition$State;->DELETED:Lcom/sightcall/universal/internal/proposition/Proposition$State;

    invoke-virtual {p1, v1}, Lcom/sightcall/universal/internal/proposition/Proposition;->is(Lcom/sightcall/universal/internal/proposition/Proposition$State;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->cancelApiCalls()V

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSignatureClear()V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->updateSignatureScreen()V

    return-void
.end method

.method public onSignatureDraw()V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->updateSignatureScreen()V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    iget-object p0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->listener:Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment$OnPropositionDialogListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment$OnPropositionDialogListener;->onPropositionDialogShown()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStop()V

    iget-object p0, p0, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->listener:Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment$OnPropositionDialogListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment$OnPropositionDialogListener;->onPropositionDialogDismissed()V

    :cond_0
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/proposition/PropositionDialogFragment;->updateUi()V

    return-void
.end method
