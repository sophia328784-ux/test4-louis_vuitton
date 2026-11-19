.class public final synthetic Lcom/vuitton/android/presentation/screen/booking/summary/components/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget-object p1, Lcom/vuitton/android/presentation/screen/booking/summary/components/ComposableSingletons$BookingSummaryScreenKt;->a:Lcom/vuitton/android/presentation/screen/booking/summary/components/ComposableSingletons$BookingSummaryScreenKt;

    and-int/lit8 p1, p0, 0x3

    const/4 p2, 0x2

    const/4 v0, 0x1

    if-eq p1, p2, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    and-int/2addr p0, v0

    invoke-interface {v9, p0, p1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p0

    if-eqz p0, :cond_7

    sget-object p0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v0, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;

    sget-object v1, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookMocksKt;->b:Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;-><init>(Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v1, Landroidx/compose/material3/SnackbarHostState;

    invoke-direct {v1}, Landroidx/compose/material3/SnackbarHostState;-><init>()V

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne p0, p1, :cond_1

    new-instance p0, Lnn;

    const/16 p2, 0x13

    invoke-direct {p0, p2}, Lnn;-><init>(I)V

    invoke-interface {v9, p0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    move-object v2, p0

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p1, :cond_2

    sget-object p0, Lcom/vuitton/android/presentation/screen/booking/summary/components/ComposableSingletons$BookingSummaryScreenKt$lambda$-348931140$1$2$1;->b:Lcom/vuitton/android/presentation/screen/booking/summary/components/ComposableSingletons$BookingSummaryScreenKt$lambda$-348931140$1$2$1;

    invoke-interface {v9, p0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    move-object v4, p0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p1, :cond_3

    sget-object p0, Lcom/vuitton/android/presentation/screen/booking/summary/components/ComposableSingletons$BookingSummaryScreenKt$lambda$-348931140$1$3$1;->b:Lcom/vuitton/android/presentation/screen/booking/summary/components/ComposableSingletons$BookingSummaryScreenKt$lambda$-348931140$1$3$1;

    invoke-interface {v9, p0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3
    move-object v5, p0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p1, :cond_4

    sget-object p0, Lcom/vuitton/android/presentation/screen/booking/summary/components/ComposableSingletons$BookingSummaryScreenKt$lambda$-348931140$1$4$1;->b:Lcom/vuitton/android/presentation/screen/booking/summary/components/ComposableSingletons$BookingSummaryScreenKt$lambda$-348931140$1$4$1;

    invoke-interface {v9, p0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    move-object v6, p0

    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p1, :cond_5

    new-instance p0, Lnn;

    const/16 p2, 0x14

    invoke-direct {p0, p2}, Lnn;-><init>(I)V

    invoke-interface {v9, p0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_5
    move-object v7, p0

    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p1, :cond_6

    new-instance p0, Lkm;

    const/16 p1, 0x1d

    invoke-direct {p0, p1}, Lkm;-><init>(I)V

    invoke-interface {v9, p0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    move-object v8, p0

    check-cast v8, Lkotlin/jvm/functions/Function1;

    const v10, 0x6db6180

    const/16 v11, 0x8

    const/4 v3, 0x0

    invoke-static/range {v0 .. v11}, Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryScreenKt;->a(Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    goto :goto_1

    :cond_7
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
