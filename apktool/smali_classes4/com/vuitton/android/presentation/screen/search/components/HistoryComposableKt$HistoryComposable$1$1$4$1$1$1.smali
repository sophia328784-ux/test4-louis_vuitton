.class final Lcom/vuitton/android/presentation/screen/search/components/HistoryComposableKt$HistoryComposable$1$1$4$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel;

.field public final synthetic c:I

.field public final synthetic d:Lkotlin/jvm/functions/Function2;

.field public final synthetic e:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel;ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/search/components/HistoryComposableKt$HistoryComposable$1$1$4$1$1$1;->b:Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel;

    iput p2, p0, Lcom/vuitton/android/presentation/screen/search/components/HistoryComposableKt$HistoryComposable$1$1$4$1$1$1;->c:I

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/search/components/HistoryComposableKt$HistoryComposable$1$1$4$1$1$1;->d:Lkotlin/jvm/functions/Function2;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/search/components/HistoryComposableKt$HistoryComposable$1$1$4$1$1$1;->e:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v3, p1

    check-cast v3, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    and-int/lit8 p2, p1, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v0, :cond_0

    move p2, v2

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    and-int/2addr p1, v2

    invoke-interface {v3, p1, p2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/search/components/HistoryComposableKt$HistoryComposable$1$1$4$1$1$1;->b:Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel;

    instance-of p2, p1, Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel$HistoryProductUiModel;

    sget-object v0, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    iget v4, p0, Lcom/vuitton/android/presentation/screen/search/components/HistoryComposableKt$HistoryComposable$1$1$4$1$1$1;->c:I

    if-eqz p2, :cond_5

    const p2, -0x3277f9db

    invoke-interface {v3, p2}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v3, v4}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result p2

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez p2, :cond_1

    if-ne v5, v2, :cond_2

    :cond_1
    new-instance v5, Lcom/vuitton/android/presentation/screen/search/components/HistoryComposableKt$HistoryComposable$1$1$4$1$1$1$1$1;

    invoke-direct {v5, v4}, Lcom/vuitton/android/presentation/screen/search/components/HistoryComposableKt$HistoryComposable$1$1$4$1$1$1$1$1;-><init>(I)V

    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, v5}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel$HistoryProductUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/search/components/HistoryComposableKt$HistoryComposable$1$1$4$1$1$1;->d:Lkotlin/jvm/functions/Function2;

    invoke-interface {v3, p0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p1

    invoke-interface {v3, v4}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result p2

    or-int/2addr p1, p2

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p2

    if-nez p1, :cond_3

    if-ne p2, v2, :cond_4

    :cond_3
    new-instance p2, Lcom/vuitton/android/presentation/screen/search/components/HistoryComposableKt$HistoryComposable$1$1$4$1$1$1$2$1;

    invoke-direct {p2, v4, p0}, Lcom/vuitton/android/presentation/screen/search/components/HistoryComposableKt$HistoryComposable$1$1$4$1$1$1$2$1;-><init>(ILkotlin/jvm/functions/Function2;)V

    invoke-interface {v3, p2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    move-object v2, p2

    check-cast v2, Lkotlin/jvm/functions/Function1;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/search/components/HistoryComposableKt;->b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel$HistoryProductUiModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_1

    :cond_5
    instance-of p2, p1, Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel$HistoryResearchUiModel;

    if-eqz p2, :cond_8

    const p2, -0x326e0858    # -3.0611584E8f

    invoke-interface {v3, p2}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v3, v4}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result p2

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez p2, :cond_6

    if-ne v5, v2, :cond_7

    :cond_6
    new-instance v5, Lcom/vuitton/android/presentation/screen/search/components/HistoryComposableKt$HistoryComposable$1$1$4$1$1$1$3$1;

    invoke-direct {v5, v4}, Lcom/vuitton/android/presentation/screen/search/components/HistoryComposableKt$HistoryComposable$1$1$4$1$1$1$3$1;-><init>(I)V

    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_7
    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, v5}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel$HistoryResearchUiModel;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/search/components/HistoryComposableKt$HistoryComposable$1$1$4$1$1$1;->e:Lkotlin/jvm/functions/Function1;

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/search/components/HistoryComposableKt;->c(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel$HistoryResearchUiModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_1

    :cond_8
    const p0, -0x9e2df1e

    invoke-static {v3, p0}, Lo60;->v(Landroidx/compose/runtime/Composer;I)Lkotlin/NoWhenBranchMatchedException;

    move-result-object p0

    throw p0

    :cond_9
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
