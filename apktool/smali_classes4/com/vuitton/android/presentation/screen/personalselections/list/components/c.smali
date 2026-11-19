.class public final synthetic Lcom/vuitton/android/presentation/screen/personalselections/list/components/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:Lkotlin/jvm/functions/Function2;

.field public final synthetic g:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(ZZLjava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/components/c;->b:Z

    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/components/c;->c:Z

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/components/c;->d:Ljava/util/List;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/components/c;->e:Ljava/util/List;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/components/c;->f:Lkotlin/jvm/functions/Function2;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/components/c;->g:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/layout/PaddingValues;

    move-object v5, p2

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 p2, p1, 0x6

    if-nez p2, :cond_1

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    :goto_0
    or-int/2addr p1, p2

    :cond_1
    and-int/lit8 p2, p1, 0x13

    const/16 p3, 0x12

    if-eq p2, p3, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    and-int/lit8 p3, p1, 0x1

    invoke-interface {v5, p3, p2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_9

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-boolean p2, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/components/c;->b:Z

    iget-boolean p3, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/components/c;->c:Z

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/components/c;->d:Ljava/util/List;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/components/c;->e:Ljava/util/List;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/components/c;->f:Lkotlin/jvm/functions/Function2;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/components/c;->g:Lkotlin/jvm/functions/Function1;

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    const p0, 0x24ddebc7

    invoke-interface {v5, p0}, Landroidx/compose/runtime/Composer;->L(I)V

    and-int/lit8 v6, p1, 0xe

    invoke-static/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/personalselections/list/components/PersonalSelectionsListScreenKt;->e(Landroidx/compose/foundation/layout/PaddingValues;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_4

    :cond_3
    const p0, 0x24e4654f

    invoke-interface {v5, p0}, Landroidx/compose/runtime/Composer;->L(I)V

    if-eqz p2, :cond_4

    new-instance p0, Lkotlin/Pair;

    const-string v6, "my_personal_in_store_selection"

    sget-object v7, Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListTrackingUiModel$InStoreScreen;->a:Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListTrackingUiModel$InStoreScreen;

    invoke-direct {p0, v6, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    new-instance p0, Lkotlin/Pair;

    const-string v6, "my_personal_advisor_curation"

    sget-object v7, Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListTrackingUiModel$AdvisorCurationScreen;->a:Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListTrackingUiModel$AdvisorCurationScreen;

    invoke-direct {p0, v6, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    iget-object v6, p0, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object p0, p0, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListTrackingUiModel;

    sget-object v7, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v5, v4}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v8

    invoke-interface {v5, p0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v8, v9

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v8, :cond_5

    sget-object v8, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v9, v8, :cond_6

    :cond_5
    new-instance v9, Lcom/vuitton/android/presentation/screen/personalselections/list/components/PersonalSelectionsListScreenKt$PersonalSelectionsListScreen$1$1$1;

    const/4 v8, 0x0

    invoke-direct {v9, v4, p0, v8}, Lcom/vuitton/android/presentation/screen/personalselections/list/components/PersonalSelectionsListScreenKt$PersonalSelectionsListScreen$1$1$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListTrackingUiModel;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v5, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    check-cast v9, Lkotlin/jvm/functions/Function2;

    invoke-static {v5, v7, v9}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    if-eqz p2, :cond_7

    goto :goto_3

    :cond_7
    if-eqz p3, :cond_8

    move-object v1, v2

    goto :goto_3

    :cond_8
    sget-object v1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :goto_3
    and-int/lit8 p0, p1, 0xe

    move-object v2, v6

    move v6, p0

    invoke-static/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/personalselections/list/components/PersonalSelectionsListScreenKt;->c(Landroidx/compose/foundation/layout/PaddingValues;Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_4

    :cond_9
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->D()V

    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
