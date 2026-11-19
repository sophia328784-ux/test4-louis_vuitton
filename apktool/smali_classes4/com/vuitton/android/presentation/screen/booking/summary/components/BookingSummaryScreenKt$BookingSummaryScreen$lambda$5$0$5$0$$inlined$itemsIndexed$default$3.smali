.class public final Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryScreenKt$BookingSummaryScreen$lambda$5$0$5$0$$inlined$itemsIndexed$default$3;
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

.field public final synthetic c:Lkotlin/jvm/functions/Function2;

.field public final synthetic d:Lkotlin/jvm/functions/Function1;

.field public final synthetic e:Lkotlin/jvm/functions/Function2;

.field public final synthetic f:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Ljava/util/List;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryScreenKt$BookingSummaryScreen$lambda$5$0$5$0$$inlined$itemsIndexed$default$3;->b:Ljava/util/List;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryScreenKt$BookingSummaryScreen$lambda$5$0$5$0$$inlined$itemsIndexed$default$3;->c:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryScreenKt$BookingSummaryScreen$lambda$5$0$5$0$$inlined$itemsIndexed$default$3;->d:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryScreenKt$BookingSummaryScreen$lambda$5$0$5$0$$inlined$itemsIndexed$default$3;->e:Lkotlin/jvm/functions/Function2;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryScreenKt$BookingSummaryScreen$lambda$5$0$5$0$$inlined$itemsIndexed$default$3;->f:Landroidx/compose/runtime/MutableState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/lazy/LazyItemScope;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    move-object/from16 v10, p3

    check-cast v10, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p4

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    and-int/lit8 v4, v3, 0x6

    const/4 v5, 0x2

    if-nez v4, :cond_1

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

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

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->d(I)Z

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

    const/4 v8, 0x0

    if-eq v3, v6, :cond_4

    move v3, v7

    goto :goto_3

    :cond_4
    move v3, v8

    :goto_3
    and-int/lit8 v6, v1, 0x1

    invoke-interface {v10, v6, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_f

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryScreenKt$BookingSummaryScreen$lambda$5$0$5$0$$inlined$itemsIndexed$default$3;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookUiModel;

    const v6, -0x27534be6

    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v6

    iget v13, v6, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 v15, 0x0

    const/16 v16, 0xd

    sget-object v11, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    const/4 v12, 0x0

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object v6

    invoke-static {v10}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v9

    iget v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 v11, 0x0

    invoke-static {v6, v9, v11, v5}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v5

    and-int/lit8 v6, v1, 0x70

    xor-int/lit8 v6, v6, 0x30

    if-le v6, v4, :cond_5

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v6

    if-nez v6, :cond_7

    :cond_5
    and-int/lit8 v1, v1, 0x30

    if-ne v1, v4, :cond_6

    goto :goto_4

    :cond_6
    move v7, v8

    :cond_7
    :goto_4
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v7, :cond_8

    if-ne v1, v4, :cond_9

    :cond_8
    new-instance v1, Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryScreenKt$BookingSummaryScreen$6$1$3$1$2$1$1;

    invoke-direct {v1, v2}, Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryScreenKt$BookingSummaryScreen$6$1$3$1$2$1$1;-><init>(I)V

    invoke-interface {v10, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_9
    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v5, v8, v1}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    iget-object v2, v3, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookUiModel;->a:Ljava/lang/String;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryScreenKt$BookingSummaryScreen$lambda$5$0$5$0$$inlined$itemsIndexed$default$3;->f:Landroidx/compose/runtime/MutableState;

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/foundation/model/domain/model/booking/PreBookId;

    if-eqz v6, :cond_a

    iget-object v6, v6, Lcom/vuitton/foundation/model/domain/model/booking/PreBookId;->a:Ljava/lang/String;

    goto :goto_5

    :cond_a
    const/4 v6, 0x0

    :goto_5
    if-nez v6, :cond_b

    goto :goto_6

    :cond_b
    sget-object v7, Lcom/vuitton/foundation/model/domain/model/booking/PreBookId;->Companion:Lcom/vuitton/foundation/model/domain/model/booking/PreBookId$Companion;

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    :goto_6
    invoke-interface {v10, v3}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryScreenKt$BookingSummaryScreen$lambda$5$0$5$0$$inlined$itemsIndexed$default$3;->d:Lkotlin/jvm/functions/Function1;

    invoke-interface {v10, v6}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v2, v7

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v2, :cond_c

    if-ne v7, v4, :cond_d

    :cond_c
    new-instance v7, Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryScreenKt$BookingSummaryScreen$6$1$3$1$2$2$1;

    invoke-direct {v7, v3, v6, v5}, Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryScreenKt$BookingSummaryScreen$6$1$3$1$2$2$1;-><init>(Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookUiModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;)V

    invoke-interface {v10, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_d
    check-cast v7, Lkotlin/jvm/functions/Function0;

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_e

    new-instance v2, Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryScreenKt$BookingSummaryScreen$6$1$3$1$2$3$1;

    invoke-direct {v2, v5}, Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryScreenKt$BookingSummaryScreen$6$1$3$1$2$3$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    invoke-interface {v10, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_e
    check-cast v2, Lkotlin/jvm/functions/Function0;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryScreenKt$BookingSummaryScreen$lambda$5$0$5$0$$inlined$itemsIndexed$default$3;->e:Lkotlin/jvm/functions/Function2;

    const/high16 v11, 0x30000

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryScreenKt$BookingSummaryScreen$lambda$5$0$5$0$$inlined$itemsIndexed$default$3;->c:Lkotlin/jvm/functions/Function2;

    move-object v4, v3

    move v5, v8

    move-object v3, v1

    move-object v8, v2

    invoke-static/range {v3 .. v11}, Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryCardKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookUiModel;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_7

    :cond_f
    invoke-interface {v10}, Landroidx/compose/runtime/Composer;->D()V

    :goto_7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
