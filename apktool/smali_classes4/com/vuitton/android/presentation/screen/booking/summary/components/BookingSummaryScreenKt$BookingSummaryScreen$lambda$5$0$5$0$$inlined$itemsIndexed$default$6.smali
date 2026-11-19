.class public final Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryScreenKt$BookingSummaryScreen$lambda$5$0$5$0$$inlined$itemsIndexed$default$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function4<",
        "Landroidx/compose/foundation/lazy/LazyItemScope;",
        "Ljava/lang/Integer;",
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
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState;

.field public final synthetic d:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryScreenKt$BookingSummaryScreen$lambda$5$0$5$0$$inlined$itemsIndexed$default$6;->b:Ljava/util/List;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryScreenKt$BookingSummaryScreen$lambda$5$0$5$0$$inlined$itemsIndexed$default$6;->c:Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryScreenKt$BookingSummaryScreen$lambda$5$0$5$0$$inlined$itemsIndexed$default$6;->d:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScope;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    move-object/from16 v8, p3

    check-cast v8, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p4

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    and-int/lit8 v4, v3, 0x6

    const/4 v5, 0x2

    if-nez v4, :cond_1

    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    move v1, v5

    :goto_0
    or-int/2addr v1, v3

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    and-int/lit8 v3, v3, 0x30

    const/16 v4, 0x20

    if-nez v3, :cond_3

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_2

    :cond_2
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v1, v3

    :cond_3
    and-int/lit16 v3, v1, 0x93

    const/16 v6, 0x92

    const/4 v7, 0x1

    const/4 v9, 0x0

    if-eq v3, v6, :cond_4

    move v3, v7

    goto :goto_3

    :cond_4
    move v3, v9

    :goto_3
    and-int/lit8 v6, v1, 0x1

    invoke-interface {v8, v6, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_d

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryScreenKt$BookingSummaryScreen$lambda$5$0$5$0$$inlined$itemsIndexed$default$6;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingAdditionalUiModel;

    const v6, -0x4c91ec5c

    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v6

    iget v12, v6, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->g:F

    const/4 v14, 0x0

    const/16 v15, 0xd

    sget-object v10, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    const/4 v11, 0x0

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-static {v8}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v10

    iget v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v6, v10, v11, v5}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v5

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryScreenKt$BookingSummaryScreen$lambda$5$0$5$0$$inlined$itemsIndexed$default$6;->c:Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState;

    invoke-interface {v8, v6}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v10

    and-int/lit8 v11, v1, 0x70

    xor-int/lit8 v11, v11, 0x30

    if-le v11, v4, :cond_5

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v11

    if-nez v11, :cond_7

    :cond_5
    and-int/lit8 v1, v1, 0x30

    if-ne v1, v4, :cond_6

    goto :goto_4

    :cond_6
    move v7, v9

    :cond_7
    :goto_4
    or-int v1, v10, v7

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v1, :cond_8

    if-ne v4, v7, :cond_9

    :cond_8
    new-instance v4, Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryScreenKt$BookingSummaryScreen$6$1$3$1$4$1$1;

    invoke-direct {v4, v6, v2}, Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryScreenKt$BookingSummaryScreen$6$1$3$1$4$1$1;-><init>(Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState;I)V

    invoke-interface {v8, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_9
    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-static {v5, v9, v4}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    iget-object v4, v3, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingAdditionalUiModel;->c:Ljava/lang/String;

    iget-object v2, v3, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingAdditionalUiModel;->d:Ljava/lang/String;

    if-nez v2, :cond_a

    const-string v2, ""

    :cond_a
    move-object v5, v2

    iget-object v6, v3, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingAdditionalUiModel;->e:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryScreenKt$BookingSummaryScreen$lambda$5$0$5$0$$inlined$itemsIndexed$default$6;->d:Lkotlin/jvm/functions/Function1;

    invoke-interface {v8, v0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v2, v9

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v2, :cond_b

    if-ne v9, v7, :cond_c

    :cond_b
    new-instance v9, Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryScreenKt$BookingSummaryScreen$6$1$3$1$4$2$1;

    invoke-direct {v9, v0, v3}, Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryScreenKt$BookingSummaryScreen$6$1$3$1$4$2$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/booking/list/models/BookingAdditionalUiModel;)V

    invoke-interface {v8, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_c
    move-object v7, v9

    check-cast v7, Lkotlin/jvm/functions/Function0;

    const/4 v9, 0x0

    move-object v3, v1

    invoke-static/range {v3 .. v9}, Lcom/vuitton/android/presentation/screen/booking/list/components/ExtendExperienceCardKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_5

    :cond_d
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->D()V

    :goto_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
