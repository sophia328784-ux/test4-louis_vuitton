.class public final Lcom/vuitton/android/presentation/screen/orders/models/OrderStatusUiModel$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/orders/models/OrderStatusUiModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/orders/models/OrderStatusUiModel$Companion$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/orders/models/OrderStatusUiModel$Companion;",
        "",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/vuitton/android/presentation/screen/orders/models/TimelineUiModel;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Landroidx/compose/runtime/Composer;I)Lcom/vuitton/android/presentation/screen/orders/models/OrderStatusUiModel;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x2

    and-int/lit8 v3, p3, 0x2

    if-eqz v3, :cond_0

    sget-object v3, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;->DEFAULT:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    goto :goto_0

    :cond_0
    move-object/from16 v3, p1

    :goto_0
    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const/4 v4, 0x0

    if-nez v0, :cond_1

    const v0, -0x1d79c3c8

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->F()V

    goto/16 :goto_f

    :cond_1
    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/orders/models/TimelineUiModel;->b:Lcom/vuitton/android/presentation/screen/orders/models/ValidationUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/orders/models/TimelineUiModel;->c:Ljava/util/List;

    const v6, -0x1d79c3c7

    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v6

    iget-object v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->v:J

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x0

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateUiModel;

    iget-object v10, v10, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateUiModel;->g:Lcom/vuitton/android/presentation/screen/orders/models/StateUiModel;

    sget-object v11, Lcom/vuitton/android/presentation/screen/orders/models/StateUiModel;->CURRENT:Lcom/vuitton/android/presentation/screen/orders/models/StateUiModel;

    if-ne v10, v11, :cond_2

    :goto_2
    move v14, v9

    goto :goto_3

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    const/4 v9, -0x1

    goto :goto_2

    :goto_3
    invoke-static {v14, v0}, Lkotlin/collections/CollectionsKt;->G(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateUiModel;

    if-eqz v8, :cond_4

    iget-object v9, v8, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateUiModel;->e:Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateTitle;

    goto :goto_4

    :cond_4
    move-object v9, v4

    :goto_4
    if-nez v9, :cond_5

    const v9, 0x2433e574

    invoke-interface {v1, v9}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->F()V

    move-object v9, v4

    goto :goto_5

    :cond_5
    const v10, -0x6a2fdfd3

    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-virtual {v9, v1}, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateTitle;->a(Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->F()V

    :goto_5
    const/4 v10, 0x1

    if-eqz v9, :cond_8

    sget-object v11, Lcom/vuitton/android/presentation/screen/orders/models/ValidationUiModel;->VALIDATED:Lcom/vuitton/android/presentation/screen/orders/models/ValidationUiModel;

    if-ne v5, v11, :cond_8

    const v5, 0x24360053

    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object v5, Lcom/vuitton/android/presentation/screen/orders/models/OrderStatusUiModel$Companion$WhenMappings;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v5, v3

    if-eq v3, v10, :cond_7

    if-ne v3, v2, :cond_6

    const v2, -0x6a2fb7fd

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v2

    iget-object v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->w:J

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->F()V

    :goto_6
    move-wide v6, v2

    goto :goto_7

    :cond_6
    const v0, -0x6a2fce71

    invoke-static {v1, v0}, Lo60;->v(Landroidx/compose/runtime/Composer;I)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_7
    const v2, -0x6a2fc337

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v2

    iget-object v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->A:J

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_6

    :goto_7
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->F()V

    :goto_8
    move-wide v12, v6

    goto :goto_b

    :cond_8
    if-eqz v9, :cond_b

    sget-object v11, Lcom/vuitton/android/presentation/screen/orders/models/ValidationUiModel;->PENDING:Lcom/vuitton/android/presentation/screen/orders/models/ValidationUiModel;

    if-ne v5, v11, :cond_b

    const v5, 0x243a702f

    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object v5, Lcom/vuitton/android/presentation/screen/orders/models/OrderStatusUiModel$Companion$WhenMappings;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v5, v3

    if-eq v3, v10, :cond_a

    if-ne v3, v2, :cond_9

    const v2, -0x6a2f931b

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v2

    iget-object v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->v:J

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->F()V

    :goto_9
    move-wide v6, v2

    goto :goto_a

    :cond_9
    const v0, -0x6a2fa9cd

    invoke-static {v1, v0}, Lo60;->v(Landroidx/compose/runtime/Composer;I)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_a
    const v2, -0x6a2f9e95

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v2

    iget-object v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->z:J

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_9

    :goto_a
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_8

    :cond_b
    const v2, -0x6a2f8c98

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_8

    :goto_b
    if-nez v9, :cond_c

    const v2, -0x6a2f8028

    const v3, 0x7f140cd5

    invoke-static {v1, v2, v3, v1}, Lo60;->k(Landroidx/compose/runtime/Composer;IILandroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v2

    move-object v11, v2

    goto :goto_c

    :cond_c
    const v2, -0x6a2f81da

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->F()V

    move-object v11, v9

    :goto_c
    const v2, -0x5bc98c18

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->L(I)V

    check-cast v0, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateUiModel;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateUiModel;->e:Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateTitle;

    invoke-virtual {v3, v1}, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateTitle;->a(Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_e
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->F()V

    if-eqz v9, :cond_f

    move-object v15, v2

    goto :goto_e

    :cond_f
    move-object v15, v4

    :goto_e
    if-eqz v8, :cond_10

    iget-object v4, v8, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateUiModel;->b:Ljava/lang/String;

    :cond_10
    move-object/from16 v16, v4

    new-instance v10, Lcom/vuitton/android/presentation/screen/orders/models/OrderStatusUiModel;

    const/16 v17, 0x0

    invoke-direct/range {v10 .. v17}, Lcom/vuitton/android/presentation/screen/orders/models/OrderStatusUiModel;-><init>(Ljava/lang/String;JILjava/util/List;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->F()V

    move-object v4, v10

    :goto_f
    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    return-object v4
.end method
