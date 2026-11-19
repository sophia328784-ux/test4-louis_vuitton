.class public final synthetic Lcom/vuitton/android/presentation/screen/search/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/search/SearchActivity;

.field public final synthetic c:Landroidx/navigation3/runtime/NavBackStack;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/search/SearchActivity;Landroidx/navigation3/runtime/NavBackStack;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/search/b;->b:Lcom/vuitton/android/presentation/screen/search/SearchActivity;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/search/b;->c:Landroidx/navigation3/runtime/NavBackStack;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    check-cast v13, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/search/SearchActivity;->y:Lcom/vuitton/android/presentation/screen/search/SearchActivity$Companion;

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/2addr v1, v3

    invoke-interface {v13, v1, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/search/b;->b:Lcom/vuitton/android/presentation/screen/search/SearchActivity;

    iget-boolean v2, v1, Lcom/vuitton/android/presentation/screen/search/SearchActivity;->s:Z

    iget-object v5, v1, Lcom/vuitton/android/presentation/screen/search/SearchActivity;->t:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {v5}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/search/SearchViewModel;

    iget-object v6, v1, Lcom/vuitton/android/presentation/screen/search/SearchActivity;->u:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {v6}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PSPViewModel;

    iget-object v7, v1, Lcom/vuitton/android/presentation/screen/search/SearchActivity;->v:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {v7}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;

    move v8, v2

    move-object v2, v5

    iget-object v5, v1, Lcom/vuitton/android/presentation/screen/search/SearchActivity;->w:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    if-eqz v5, :cond_d

    iget-object v9, v1, Lcom/vuitton/android/presentation/screen/search/SearchActivity;->q:Lkotlin/Lazy;

    invoke-interface {v9}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Ljava/lang/String;

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v9, :cond_1

    if-ne v10, v12, :cond_2

    :cond_1
    new-instance v10, Lcom/vuitton/android/presentation/screen/search/SearchActivity$onCreate$2$1$3$1$1;

    invoke-direct {v10, v1}, Lcom/vuitton/android/presentation/screen/search/SearchActivity$onCreate$2$1$3$1$1;-><init>(Lcom/vuitton/android/presentation/screen/search/SearchActivity;)V

    invoke-interface {v13, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    check-cast v10, Lkotlin/jvm/functions/Function1;

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v9, :cond_3

    if-ne v14, v12, :cond_4

    :cond_3
    new-instance v14, Lmu0;

    const/4 v9, 0x7

    invoke-direct {v14, v1, v9}, Lmu0;-><init>(Lcom/vuitton/android/presentation/screen/search/SearchActivity;I)V

    invoke-interface {v13, v14}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    check-cast v14, Lkotlin/jvm/functions/Function0;

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v15

    if-nez v9, :cond_5

    if-ne v15, v12, :cond_6

    :cond_5
    new-instance v15, Lmu0;

    invoke-direct {v15, v1, v3}, Lmu0;-><init>(Lcom/vuitton/android/presentation/screen/search/SearchActivity;I)V

    invoke-interface {v13, v15}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    check-cast v15, Lkotlin/jvm/functions/Function0;

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v3, :cond_7

    if-ne v9, v12, :cond_8

    :cond_7
    new-instance v9, Lmu0;

    invoke-direct {v9, v1, v4}, Lmu0;-><init>(Lcom/vuitton/android/presentation/screen/search/SearchActivity;I)V

    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_8
    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_9

    if-ne v4, v12, :cond_a

    :cond_9
    new-instance v4, Lmu0;

    const/4 v3, 0x3

    invoke-direct {v4, v1, v3}, Lmu0;-><init>(Lcom/vuitton/android/presentation/screen/search/SearchActivity;I)V

    invoke-interface {v13, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_a
    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    move-object/from16 p1, v2

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v3, :cond_b

    if-ne v2, v12, :cond_c

    :cond_b
    new-instance v2, Lmu0;

    const/4 v3, 0x4

    invoke-direct {v2, v1, v3}, Lmu0;-><init>(Lcom/vuitton/android/presentation/screen/search/SearchActivity;I)V

    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_c
    move-object v12, v2

    check-cast v12, Lkotlin/jvm/functions/Function0;

    sget-object v1, Landroidx/navigation3/runtime/NavBackStack;->Companion:Landroidx/navigation3/runtime/NavBackStack$Companion;

    move-object v3, v6

    move-object v6, v10

    move-object v10, v4

    move-object v4, v7

    move-object v7, v14

    const/4 v14, 0x0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/search/b;->c:Landroidx/navigation3/runtime/NavBackStack;

    move-object/from16 v2, p1

    move v1, v8

    move-object v8, v15

    invoke-static/range {v0 .. v14}, Lcom/vuitton/android/presentation/screen/search/components/SearchNavDisplayKt;->a(Landroidx/navigation3/runtime/NavBackStack;ZLcom/vuitton/android/presentation/screen/search/SearchViewModel;Lcom/vuitton/android/presentation/screen/plp/viewmodels/PSPViewModel;Lcom/vuitton/android/presentation/screen/filter/quickaccess/QuickAccessFiltersViewModel;Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1

    :cond_d
    const-string v0, "contributionLinkNavigator"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_e
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
