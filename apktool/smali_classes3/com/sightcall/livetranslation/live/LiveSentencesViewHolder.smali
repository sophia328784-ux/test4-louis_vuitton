.class public final Lcom/sightcall/livetranslation/live/LiveSentencesViewHolder;
.super Lcom/sightcall/libraries/archi/nucleus/NucleusViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sightcall/libraries/archi/nucleus/NucleusViewHolder<",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$State;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0008\u0010\u0012\u001a\u00020\u000eH\u0014R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R*\u0010\u000c\u001a\u0018\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000e0\rj\u0008\u0012\u0004\u0012\u00020\u0003`\u000fX\u0094\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/sightcall/livetranslation/live/LiveSentencesViewHolder;",
        "Lcom/sightcall/libraries/archi/nucleus/NucleusViewHolder;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$State;",
        "rootView",
        "Landroid/view/ViewGroup;",
        "interactor",
        "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;",
        "<init>",
        "(Landroid/view/ViewGroup;Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;)V",
        "adapter",
        "Lcom/sightcall/livetranslation/live/LiveSentencesAdapter;",
        "render",
        "Lkotlin/Function1;",
        "",
        "Lcom/sightcall/libraries/archi/nucleus/Renderer;",
        "getRender",
        "()Lkotlin/jvm/functions/Function1;",
        "buildContentView",
        "livetranslation_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final adapter:Lcom/sightcall/livetranslation/live/LiveSentencesAdapter;

.field private final render:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$State;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusInteractor<",
            "Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$State;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Lcom/sightcall/livetranslation/R$layout;->live_sentences:I

    invoke-direct {p0, p1, v0, p2}, Lcom/sightcall/libraries/archi/nucleus/NucleusViewHolder;-><init>(Landroid/view/ViewGroup;ILcom/sightcall/libraries/archi/nucleus/NucleusInteractor;)V

    new-instance p1, Lcom/sightcall/livetranslation/live/LiveSentencesAdapter;

    invoke-direct {p1}, Lcom/sightcall/livetranslation/live/LiveSentencesAdapter;-><init>()V

    iput-object p1, p0, Lcom/sightcall/livetranslation/live/LiveSentencesViewHolder;->adapter:Lcom/sightcall/livetranslation/live/LiveSentencesAdapter;

    new-instance p1, Ll00;

    const/16 p2, 0x1b

    invoke-direct {p1, p0, p2}, Ll00;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcom/sightcall/livetranslation/live/LiveSentencesViewHolder;->render:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public static synthetic b(Lcom/sightcall/livetranslation/live/LiveSentencesViewHolder;Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$State;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/sightcall/livetranslation/live/LiveSentencesViewHolder;->render$lambda$0(Lcom/sightcall/livetranslation/live/LiveSentencesViewHolder;Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$State;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final render$lambda$0(Lcom/sightcall/livetranslation/live/LiveSentencesViewHolder;Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$State;)Lkotlin/Unit;
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/sightcall/livetranslation/live/LiveSentencesViewHolder;->adapter:Lcom/sightcall/livetranslation/live/LiveSentencesAdapter;

    invoke-static {p1}, Lcom/sightcall/livetranslation/live/LiveSentencesViewHolderKt;->access$mapToAdapter(Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$State;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sightcall/livetranslation/live/LiveSentencesAdapter;->setItems(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-double v3, v1

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    div-double/2addr v3, v5

    invoke-virtual {p1}, Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$State;->getContainerHeight()Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Height;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sightcall/livetranslation/domain/LiveTranslationSettings$Enabled$Height;->getValue()I

    move-result p1

    int-to-double v5, p1

    mul-double/2addr v3, v5

    double-to-int p1, v3

    invoke-virtual {p0}, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->getContentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eq v1, p1, :cond_2

    invoke-virtual {p0}, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->getContentView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_1

    move-object v2, p0

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    :cond_1
    if-eqz v2, :cond_2

    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result p0

    sub-int/2addr p0, p1

    iput p0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public buildContentView()V
    .locals 3

    invoke-super {p0}, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->buildContentView()V

    sget v0, Lcom/sightcall/livetranslation/R$id;->sentences:I

    invoke-virtual {p0, v0}, Lcom/sightcall/libraries/archi/nucleus/ViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->n1(Z)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p0, p0, Lcom/sightcall/livetranslation/live/LiveSentencesViewHolder;->adapter:Lcom/sightcall/livetranslation/live/LiveSentencesAdapter;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public getRender()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/sightcall/livetranslation/live/LiveSentencesInteractor$State;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/livetranslation/live/LiveSentencesViewHolder;->render:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method
