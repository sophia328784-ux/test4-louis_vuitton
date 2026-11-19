.class public final synthetic Lwy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;ZI)V
    .locals 0

    iput p3, p0, Lwy;->b:I

    iput-object p1, p0, Lwy;->c:Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;

    iput-boolean p2, p0, Lwy;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 31

    move-object/from16 v0, p0

    iget v1, v0, Lwy;->b:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-boolean v6, v0, Lwy;->d:Z

    iget-object v0, v0, Lwy;->c:Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;

    sget-object v7, Landroidx/compose/foundation/layout/RowScopeInstance;->a:Landroidx/compose/foundation/layout/RowScopeInstance;

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v8, p2

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    and-int/lit8 v9, v8, 0x3

    if-eq v9, v3, :cond_0

    move v4, v5

    :cond_0
    and-int/2addr v8, v5

    invoke-interface {v1, v8, v4}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const-string v4, "FindInStoreRow$lambda$3$2$0$0$0"

    invoke-static {v4, v7, v2, v5}, Lcj;->b(Ljava/lang/String;Landroidx/compose/foundation/layout/RowScopeInstance;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v9

    iget-object v2, v0, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->c:Lcom/vuitton/android/presentation/model/storelocator/StoreTypeUIModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->e:Lcom/vuitton/android/presentation/model/storelocator/StoreAddressUiModel;

    sget-object v4, Lcom/vuitton/android/presentation/screen/pdp/components/findinstore/FindInStoreRowKt$WhenMappings;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v4, v2

    if-eq v2, v5, :cond_2

    if-ne v2, v3, :cond_1

    const v2, 0x5b3581d6

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->F()V

    iget-object v0, v0, Lcom/vuitton/android/presentation/model/storelocator/StoreAddressUiModel;->d:Ljava/lang/String;

    :goto_0
    move-object v8, v0

    goto :goto_1

    :cond_1
    const v0, -0x1e175a70

    invoke-static {v1, v0}, Lo60;->v(Landroidx/compose/runtime/Composer;I)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_2
    const v2, 0x5b2d38e1

    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->L(I)V

    iget-object v2, v0, Lcom/vuitton/android/presentation/model/storelocator/StoreAddressUiModel;->a:Ljava/lang/String;

    iget-object v3, v0, Lcom/vuitton/android/presentation/model/storelocator/StoreAddressUiModel;->e:Ljava/lang/String;

    iget-object v4, v0, Lcom/vuitton/android/presentation/model/storelocator/StoreAddressUiModel;->b:Ljava/lang/String;

    iget-object v5, v0, Lcom/vuitton/android/presentation/model/storelocator/StoreAddressUiModel;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/android/presentation/model/storelocator/StoreAddressUiModel;->d:Ljava/lang/String;

    filled-new-array {v2, v3, v4, v5, v0}, [Ljava/lang/Object;

    move-result-object v0

    const v2, 0x7f1412c6

    invoke-static {v2, v0, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->b(I[Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_0

    :goto_1
    invoke-static {v1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->m:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v2

    iget-object v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v10, v2, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    sget-object v2, Landroidx/compose/ui/text/style/TextAlign;->b:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v6, :cond_3

    sget v2, Landroidx/compose/ui/text/style/TextAlign;->h:I

    goto :goto_2

    :cond_3
    sget v2, Landroidx/compose/ui/text/style/TextAlign;->g:I

    :goto_2
    new-instance v3, Landroidx/compose/ui/text/style/TextAlign;

    invoke-direct {v3, v2}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    const/16 v29, 0x0

    const v30, 0x1fbf8

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v28, 0x0

    move-object/from16 v26, v0

    move-object/from16 v27, v1

    move-object/from16 v18, v3

    invoke-static/range {v8 .. v30}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    goto :goto_3

    :cond_4
    move-object/from16 v27, v1

    invoke-interface/range {v27 .. v27}, Landroidx/compose/runtime/Composer;->D()V

    :goto_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v8, p2

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    and-int/lit8 v9, v8, 0x3

    if-eq v9, v3, :cond_5

    move v4, v5

    :cond_5
    and-int/lit8 v3, v8, 0x1

    invoke-interface {v1, v3, v4}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const-string v3, "FindInStoreRow$lambda$3$1$0$0"

    invoke-static {v3, v7, v2, v5}, Lcj;->b(Ljava/lang/String;Landroidx/compose/foundation/layout/RowScopeInstance;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v2

    iget-object v0, v0, Lcom/vuitton/android/presentation/model/storelocator/StoreUiModel;->b:Ljava/lang/String;

    sget-object v3, Landroidx/compose/ui/text/style/TextOverflow;->a:Landroidx/compose/ui/text/style/TextOverflow$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v14, Landroidx/compose/ui/text/style/TextOverflow;->c:I

    invoke-static {v1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->j:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v4

    iget-object v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    if-eqz v6, :cond_6

    sget-object v6, Landroidx/compose/ui/text/style/TextAlign;->b:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v6, Landroidx/compose/ui/text/style/TextAlign;->h:I

    goto :goto_4

    :cond_6
    sget-object v6, Landroidx/compose/ui/text/style/TextAlign;->b:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v6, Landroidx/compose/ui/text/style/TextAlign;->g:I

    :goto_4
    new-instance v11, Landroidx/compose/ui/text/style/TextAlign;

    invoke-direct {v11, v6}, Landroidx/compose/ui/text/style/TextAlign;-><init>(I)V

    const/16 v22, 0x180

    const v23, 0x1ebf8

    move-object/from16 v19, v3

    move-wide v3, v4

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x0

    move-object/from16 v20, v1

    move-object v1, v0

    invoke-static/range {v1 .. v23}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    goto :goto_5

    :cond_7
    move-object/from16 v20, v1

    invoke-interface/range {v20 .. v20}, Landroidx/compose/runtime/Composer;->D()V

    :goto_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
