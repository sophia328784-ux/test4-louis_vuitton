.class public final synthetic Lbi0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;

.field public final synthetic c:Landroidx/compose/material3/BottomSheetScaffoldState;

.field public final synthetic d:F

.field public final synthetic e:F

.field public final synthetic f:F

.field public final synthetic g:Lkotlin/jvm/functions/Function4;

.field public final synthetic h:Lcom/vuitton/android/presentation/screen/orders/models/OrderStatusUiModel;

.field public final synthetic i:Lkotlin/jvm/functions/Function2;

.field public final synthetic j:Lkotlin/jvm/functions/Function3;

.field public final synthetic k:Landroidx/compose/runtime/MutableFloatState;

.field public final synthetic l:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;Landroidx/compose/material3/BottomSheetScaffoldState;FFFLkotlin/jvm/functions/Function4;Lcom/vuitton/android/presentation/screen/orders/models/OrderStatusUiModel;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbi0;->b:Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;

    iput-object p2, p0, Lbi0;->c:Landroidx/compose/material3/BottomSheetScaffoldState;

    iput p3, p0, Lbi0;->d:F

    iput p4, p0, Lbi0;->e:F

    iput p5, p0, Lbi0;->f:F

    iput-object p6, p0, Lbi0;->g:Lkotlin/jvm/functions/Function4;

    iput-object p7, p0, Lbi0;->h:Lcom/vuitton/android/presentation/screen/orders/models/OrderStatusUiModel;

    iput-object p8, p0, Lbi0;->i:Lkotlin/jvm/functions/Function2;

    iput-object p9, p0, Lbi0;->j:Lkotlin/jvm/functions/Function3;

    iput-object p10, p0, Lbi0;->k:Landroidx/compose/runtime/MutableFloatState;

    iput-object p11, p0, Lbi0;->l:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/layout/ColumnScope;

    move-object/from16 v9, p2

    check-cast v9, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v1, v2, 0x11

    const/16 v3, 0x10

    const/4 v4, 0x1

    if-eq v1, v3, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/2addr v2, v4

    invoke-interface {v9, v2, v1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v4, v0, Lbi0;->b:Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;

    iget-boolean v2, v4, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;->g:Z

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v3, "OrderDetailScreen$lambda$15"

    invoke-direct {v1, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    iget-object v11, v0, Lbi0;->c:Landroidx/compose/material3/BottomSheetScaffoldState;

    invoke-interface {v9, v11}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    iget v12, v0, Lbi0;->d:F

    invoke-interface {v9, v12}, Landroidx/compose/runtime/Composer;->c(F)Z

    move-result v5

    or-int/2addr v3, v5

    iget v13, v0, Lbi0;->e:F

    invoke-interface {v9, v13}, Landroidx/compose/runtime/Composer;->c(F)Z

    move-result v5

    or-int/2addr v3, v5

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v3, :cond_1

    if-ne v5, v6, :cond_2

    :cond_1
    new-instance v10, Lci0;

    iget-object v14, v0, Lbi0;->k:Landroidx/compose/runtime/MutableFloatState;

    iget-object v15, v0, Lbi0;->l:Landroidx/compose/runtime/MutableState;

    invoke-direct/range {v10 .. v15}, Lci0;-><init>(Landroidx/compose/material3/BottomSheetScaffoldState;FFLandroidx/compose/runtime/MutableFloatState;Landroidx/compose/runtime/MutableState;)V

    invoke-interface {v9, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v5, v10

    :cond_2
    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v5}, Landroidx/compose/ui/layout/OnGloballyPositionedModifierKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-interface {v9, v4}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    iget-object v5, v0, Lbi0;->g:Lkotlin/jvm/functions/Function4;

    invoke-interface {v9, v5}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v1, v7

    iget-object v7, v0, Lbi0;->h:Lcom/vuitton/android/presentation/screen/orders/models/OrderStatusUiModel;

    invoke-interface {v9, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v1, v8

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v1, :cond_3

    if-ne v8, v6, :cond_4

    :cond_3
    new-instance v8, Lof0;

    const/4 v1, 0x6

    invoke-direct {v8, v4, v5, v7, v1}, Lof0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v9, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    move-object v6, v8

    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/4 v10, 0x0

    iget v5, v0, Lbi0;->f:F

    iget-object v7, v0, Lbi0;->i:Lkotlin/jvm/functions/Function2;

    iget-object v8, v0, Lbi0;->j:Lkotlin/jvm/functions/Function3;

    invoke-static/range {v2 .. v10}, Lcom/vuitton/android/presentation/screen/orders/components/detail/OrderDetailScreenKt;->b(ZLandroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;FLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1

    :cond_5
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
