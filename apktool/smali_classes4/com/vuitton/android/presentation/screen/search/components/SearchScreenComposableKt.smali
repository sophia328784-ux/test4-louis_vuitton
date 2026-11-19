.class public abstract Lcom/vuitton/android/presentation/screen/search/components/SearchScreenComposableKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/search/components/SearchScreenComposableKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0004\u00b2\u0006\u000c\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002\u00b2\u0006\u000c\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/search/models/SearchScreenViewState;",
        "viewState",
        "Lcom/vuitton/android/presentation/compose/NestedScroll;",
        "nestedScroll",
        "presentation"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/search/SearchViewModel;Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 10

    if-eqz p0, :cond_0

    const-string v0, "SearchScreenComposable"

    invoke-static {p0, v0}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    :cond_0
    move-object v1, p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x772db0c9

    move-object/from16 v0, p8

    invoke-interface {v0, p0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x20

    goto :goto_0

    :cond_1
    const/16 v0, 0x10

    :goto_0
    or-int v0, p9, v0

    invoke-virtual {p0, p2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x100

    goto :goto_1

    :cond_2
    const/16 v2, 0x80

    :goto_1
    or-int/2addr v0, v2

    invoke-virtual {p0, p3}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x800

    goto :goto_2

    :cond_3
    const/16 v2, 0x400

    :goto_2
    or-int/2addr v0, v2

    invoke-virtual {p0, p4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v3, 0x4000

    goto :goto_3

    :cond_4
    const/16 v3, 0x2000

    :goto_3
    or-int/2addr v0, v3

    invoke-virtual {p0, p5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/high16 v3, 0x20000

    goto :goto_4

    :cond_5
    const/high16 v3, 0x10000

    :goto_4
    or-int/2addr v0, v3

    move-object/from16 v7, p6

    invoke-virtual {p0, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/high16 v3, 0x100000

    goto :goto_5

    :cond_6
    const/high16 v3, 0x80000

    :goto_5
    or-int/2addr v0, v3

    move-object/from16 v8, p7

    invoke-virtual {p0, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/high16 v3, 0x800000

    goto :goto_6

    :cond_7
    const/high16 v3, 0x400000

    :goto_6
    or-int/2addr v0, v3

    const v3, 0x492493

    and-int/2addr v3, v0

    const v5, 0x492492

    const/4 v9, 0x1

    if-eq v3, v5, :cond_8

    move v3, v9

    goto :goto_7

    :cond_8
    const/4 v3, 0x0

    :goto_7
    and-int/2addr v0, v9

    invoke-virtual {p0, v0, v3}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v0, Lcom/vuitton/android/presentation/screen/search/components/a;

    move v4, p3

    move-object v2, p4

    move-object v6, p5

    move-object v3, v1

    move-object v5, v7

    move-object v7, v8

    move-object v1, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/search/components/a;-><init>(Lcom/vuitton/android/presentation/screen/search/SearchViewModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;)V

    move-object v1, v3

    const v2, 0x1f142b1a

    invoke-static {v2, v0, p0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    const/4 v2, 0x6

    invoke-static {v0, p0, v2}, Lcom/vuitton/android/presentation/compose/components/compositionlocalprovider/LVSearchCompositionLocalProviderKt;->a(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    goto :goto_8

    :cond_9
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_8
    invoke-virtual {p0}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p0

    if-eqz p0, :cond_a

    new-instance v0, Ldm;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Ldm;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/search/SearchViewModel;Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V

    iput-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_a
    return-void
.end method

.method public static final b(Landroidx/compose/runtime/Composer;)Landroidx/compose/material3/RippleConfiguration;
    .locals 5

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {p0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->i:J

    invoke-interface {p0, v0, v1}, Landroidx/compose/runtime/Composer;->e(J)Z

    move-result v2

    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_0

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v3, v2, :cond_1

    :cond_0
    new-instance v3, Landroidx/compose/material3/RippleConfiguration;

    sget-object v2, Landroidx/compose/material3/RippleDefaults;->a:Landroidx/compose/material/ripple/RippleAlpha;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v2, v4}, Landroidx/compose/material3/RippleConfiguration;-><init>(JLandroidx/compose/material/ripple/RippleAlpha;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p0, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    check-cast v3, Landroidx/compose/material3/RippleConfiguration;

    return-object v3
.end method

.method public static final c(Lcom/vuitton/android/presentation/screen/search/SearchViewModel;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;ILcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    invoke-interface {v0, v2}, Lcom/vuitton/android/presentation/screen/search/SearchViewModel;->x7(Lcom/vuitton/android/presentation/screen/search/models/SearchTrackingUiModel;)V

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;->c:Ljava/lang/Double;

    move-object v11, v3

    goto :goto_0

    :cond_0
    move-object v11, v2

    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductShortPriceUiModel;->d:Ljava/lang/String;

    :cond_1
    move-object v6, v2

    new-instance v4, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;

    const/16 v15, 0x300

    const/16 v16, 0x0

    const-string v5, "search"

    const-string v7, "search_results"

    const-string v8, "Search results"

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v12, p4

    invoke-direct/range {v4 .. v16}, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$SelectItemClicked;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v4}, Lcom/vuitton/android/presentation/screen/search/SearchViewModel;->j(Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel;)V

    return-void
.end method
