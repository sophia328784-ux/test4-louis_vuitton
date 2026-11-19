.class public final synthetic Lfa0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lfa0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 30

    move-object/from16 v0, p0

    iget v0, v0, Lfa0;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetDto;->Companion:Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetDto$Companion;

    sget-object v0, Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetTypeDto;->Companion:Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetTypeDto$Companion;

    invoke-virtual {v0}, Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetTypeDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    return-object v0

    :pswitch_1
    sget-object v0, Lcom/vuitton/android/presentation/screen/orders/models/MocksKt;->a:Lkotlin/Lazy;

    new-instance v1, Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;

    sget-object v4, Lcom/vuitton/android/presentation/screen/orders/models/CategoryTypeUiModel;->TEXT:Lcom/vuitton/android/presentation/screen/orders/models/CategoryTypeUiModel;

    new-instance v5, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;

    new-instance v6, Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;

    sget-object v10, Lcom/vuitton/android/presentation/screen/orders/models/CategoryTypeUiModel;->IMAGE:Lcom/vuitton/android/presentation/screen/orders/models/CategoryTypeUiModel;

    new-instance v11, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;

    const/4 v15, 0x1

    const/16 v16, 0x0

    const-string v12, "Beige"

    const-string v13, "M0696W"

    const-string v14, "https://us-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton-lv-initiales-30mm-reversible-belt--M0696W_PM2_Front view.jpg"

    invoke-direct/range {v11 .. v16}, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;)V

    new-instance v12, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v13, "Rose Poudre"

    const-string v14, "M0321W"

    const-string v15, "https://us-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton-lv-initiales-30mm-reversible-belt--M0321W_PM2_Front view.jpg"

    invoke-direct/range {v12 .. v17}, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;)V

    new-instance v13, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;

    const/16 v17, 0x1

    const/16 v18, 0x0

    const-string v14, "Red"

    const-string v15, "M0322W"

    const-string v16, "https://us-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton-lv-initiales-30mm-reversible-belt--M0322W_PM2_Front view.jpg"

    invoke-direct/range {v13 .. v18}, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;)V

    new-instance v14, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;

    const/16 v18, 0x1

    const/16 v19, 0x0

    const-string v15, "Brown"

    const-string v16, "M0363W"

    const-string v17, "https://us-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton-lv-initiales-30mm-reversible-belt--M0363W_PM2_Front view.jpg"

    invoke-direct/range {v14 .. v19}, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;)V

    new-instance v15, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;

    const/16 v19, 0x1

    const/16 v20, 0x0

    const-string v16, "Black"

    const-string v17, "M0565W"

    const-string v18, "https://us-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton-lv-initiales-30mm-reversible-belt--M0565W_PM2_Front view.jpg"

    invoke-direct/range {v15 .. v20}, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;)V

    new-instance v16, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-string v17, "Khaki Marine"

    const-string v18, "M8380W"

    const-string v19, "https://us-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton-lv-initiales-30mm-reversible-belt--M8380W_PM2_Front view.jpg"

    invoke-direct/range {v16 .. v21}, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;)V

    filled-new-array/range {v11 .. v16}, [Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    move-object v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-string v7, "color"

    const-string v8, "Select a color"

    invoke-direct/range {v6 .. v12}, Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/CategoryTypeUiModel;ZLjava/lang/String;Ljava/util/List;)V

    move-object v0, v9

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v10, v6

    const-string v6, "80 CM"

    const-string v7, "M0696W"

    invoke-direct/range {v5 .. v10}, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;)V

    move-object v14, v5

    new-instance v5, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;

    new-instance v7, Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;

    new-instance v8, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;

    const/4 v12, 0x1

    const/4 v13, 0x0

    const-string v9, "Beige"

    const-string v10, "M0696V"

    const-string v11, "https://us-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton-lv-initiales-30mm-reversible-belt--M0696V_PM2_Front view.jpg"

    invoke-direct/range {v8 .. v13}, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;)V

    new-instance v15, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;

    const/16 v19, 0x1

    const/16 v20, 0x0

    const-string v16, "Rose Poudre"

    const-string v17, "M0321V"

    const-string v18, "https://us-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton-lv-initiales-30mm-reversible-belt--M0321V_PM2_Front view.jpg"

    invoke-direct/range {v15 .. v20}, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;)V

    new-instance v16, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;

    const/16 v20, 0x1

    const-string v17, "Red"

    const-string v18, "M0322V"

    const-string v19, "https://us-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton-lv-initiales-30mm-reversible-belt--M0322V_PM2_Front view.jpg"

    invoke-direct/range {v16 .. v21}, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;)V

    new-instance v17, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;

    const/16 v21, 0x1

    const/16 v22, 0x0

    const-string v18, "Brown"

    const-string v19, "M0363V"

    const-string v20, "https://us-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton-lv-initiales-30mm-reversible-belt--M0363V_PM2_Front view.jpg"

    invoke-direct/range {v17 .. v22}, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;)V

    new-instance v18, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;

    const/16 v22, 0x1

    const/16 v23, 0x0

    const-string v19, "Black"

    const-string v20, "M0565V"

    const-string v21, "https://us-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton-lv-initiales-30mm-reversible-belt--M0565V_PM2_Front view.jpg"

    invoke-direct/range {v18 .. v23}, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;)V

    new-instance v19, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-string v20, "Khaki Marine"

    const-string v21, "M8380V"

    const-string v22, "https://us-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton-lv-initiales-30mm-reversible-belt--M8380V_PM2_Front view.jpg"

    invoke-direct/range {v19 .. v24}, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;)V

    move-object v9, v15

    move-object/from16 v10, v16

    move-object/from16 v11, v17

    move-object/from16 v12, v18

    move-object/from16 v13, v19

    filled-new-array/range {v8 .. v13}, [Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const/4 v11, 0x1

    const/4 v12, 0x0

    const-string v8, "color"

    const-string v9, "Select a color"

    move-object v10, v0

    invoke-direct/range {v7 .. v13}, Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/CategoryTypeUiModel;ZLjava/lang/String;Ljava/util/List;)V

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string v6, "85 CM"

    move-object v10, v7

    const-string v7, "M0696V"

    invoke-direct/range {v5 .. v10}, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;)V

    move-object v15, v5

    new-instance v5, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;

    new-instance v7, Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;

    sget-object v13, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    const/4 v11, 0x0

    const-string v8, "color"

    const-string v9, "Select a color"

    move-object v10, v0

    invoke-direct/range {v7 .. v13}, Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/CategoryTypeUiModel;ZLjava/lang/String;Ljava/util/List;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v6, "90 CM"

    move-object v10, v7

    const-string v7, "M0696U"

    invoke-direct/range {v5 .. v10}, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;)V

    move-object/from16 v16, v5

    new-instance v5, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;

    new-instance v7, Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;

    new-instance v8, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;

    const/4 v12, 0x1

    const/4 v13, 0x0

    const-string v9, "Black"

    const-string v10, "M0565Q"

    const-string v11, "https://us-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton-lv-initiales-30mm-reversible-belt--M0565Q_PM2_Front view.jpg"

    invoke-direct/range {v8 .. v13}, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;)V

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const/4 v11, 0x1

    const/4 v12, 0x0

    const-string v8, "color"

    const-string v9, "Select a color"

    move-object v10, v0

    invoke-direct/range {v7 .. v13}, Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/CategoryTypeUiModel;ZLjava/lang/String;Ljava/util/List;)V

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string v6, "110 CM"

    move-object v10, v7

    const-string v7, "M0565Q"

    invoke-direct/range {v5 .. v10}, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;)V

    move-object/from16 v17, v5

    new-instance v5, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;

    new-instance v7, Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;

    new-instance v8, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;

    const/4 v12, 0x1

    const/4 v13, 0x0

    const-string v9, "Black"

    const-string v10, "M0565S"

    const-string v11, "https://us-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton-lv-initiales-30mm-reversible-belt--M0565S_PM2_Front view.jpg"

    invoke-direct/range {v8 .. v13}, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;)V

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const/4 v11, 0x1

    const/4 v12, 0x0

    const-string v8, "color"

    const-string v9, "Select a color"

    move-object v10, v0

    invoke-direct/range {v7 .. v13}, Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/CategoryTypeUiModel;ZLjava/lang/String;Ljava/util/List;)V

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string v6, "100 CM"

    move-object v10, v7

    const-string v7, "M0565S"

    invoke-direct/range {v5 .. v10}, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;)V

    move-object/from16 v18, v5

    new-instance v5, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;

    new-instance v7, Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;

    new-instance v8, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;

    const/4 v12, 0x1

    const/4 v13, 0x0

    const-string v9, "Red"

    const-string v10, "M0322T"

    const-string v11, "https://us-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton-lv-initiales-30mm-reversible-belt--M0322T_PM2_Front view.jpg"

    invoke-direct/range {v8 .. v13}, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;)V

    new-instance v19, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;

    const/16 v23, 0x1

    const-string v20, "Black"

    const-string v21, "M0565T"

    const-string v22, "https://us-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton-lv-initiales-30mm-reversible-belt--M0565T_PM2_Front view.jpg"

    invoke-direct/range {v19 .. v24}, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;)V

    move-object/from16 v2, v19

    filled-new-array {v8, v2}, [Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const/4 v11, 0x1

    const/4 v12, 0x0

    const-string v8, "color"

    const-string v9, "Select a color"

    move-object v10, v0

    invoke-direct/range {v7 .. v13}, Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/CategoryTypeUiModel;ZLjava/lang/String;Ljava/util/List;)V

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string v6, "95 CM"

    move-object v10, v7

    const-string v7, "M0322T"

    invoke-direct/range {v5 .. v10}, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;)V

    move-object/from16 v19, v5

    new-instance v20, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;

    new-instance v2, Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;

    new-instance v5, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;

    new-instance v7, Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;

    new-instance v8, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;

    const/4 v12, 0x1

    const/4 v13, 0x0

    const-string v9, "Red"

    const-string v10, "M0322T"

    const-string v11, "https://us-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton-lv-initiales-30mm-reversible-belt--M0322T_PM2_Front view.jpg"

    invoke-direct/range {v8 .. v13}, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;)V

    new-instance v21, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;

    const/16 v25, 0x1

    const/16 v26, 0x0

    const-string v22, "Black"

    const-string v23, "M0565T"

    const-string v24, "https://us-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton-lv-initiales-30mm-reversible-belt--M0565T_PM2_Front view.jpg"

    invoke-direct/range {v21 .. v26}, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;)V

    move-object/from16 v3, v21

    filled-new-array {v8, v3}, [Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    const/4 v11, 0x1

    const/4 v12, 0x0

    const-string v8, "color"

    const-string v9, "Select a color"

    move-object v10, v0

    invoke-direct/range {v7 .. v13}, Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/CategoryTypeUiModel;ZLjava/lang/String;Ljava/util/List;)V

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string v6, "35 CM"

    move-object v10, v7

    const-string v7, "M0322X"

    invoke-direct/range {v5 .. v10}, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;)V

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v3, "thickness"

    move-object v5, v4

    const-string v4, "Select thickness"

    invoke-direct/range {v2 .. v8}, Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/CategoryTypeUiModel;ZLjava/lang/String;Ljava/util/List;)V

    move-object v4, v5

    const/4 v8, 0x0

    const-string v6, "75 CM"

    const-string v7, "M0322X"

    move-object v10, v2

    move-object/from16 v5, v20

    invoke-direct/range {v5 .. v10}, Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;)V

    move-object v11, v5

    move-object v5, v14

    move-object v6, v15

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    filled-new-array/range {v5 .. v11}, [Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const/4 v5, 0x1

    const-string v2, "size"

    const-string v3, "Select a size"

    const-string v6, "nvprod3950161v"

    invoke-direct/range {v1 .. v7}, Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/CategoryTypeUiModel;ZLjava/lang/String;Ljava/util/List;)V

    return-object v1

    :pswitch_2
    sget-object v0, Lcom/vuitton/android/presentation/screen/orders/models/MocksKt;->a:Lkotlin/Lazy;

    new-instance v1, Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;

    sget-object v4, Lcom/vuitton/android/presentation/screen/orders/models/ShippingTypeUiModel;->CLICK_COLLECT:Lcom/vuitton/android/presentation/screen/orders/models/ShippingTypeUiModel;

    invoke-static {}, Lcom/vuitton/android/presentation/screen/orders/models/MocksKt;->a()Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v2, "reprimique"

    const-string v3, "shippingGroupId"

    const/4 v5, 0x0

    const-string v7, "graeci"

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/ShippingTypeUiModel;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/DeliveryUiModel;Ljava/lang/String;Z)V

    return-object v1

    :pswitch_3
    sget-object v0, Lcom/vuitton/android/presentation/screen/orders/models/MocksKt;->a:Lkotlin/Lazy;

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    new-instance v12, Ljava/util/LinkedHashSet;

    invoke-direct {v12}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v1, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnItemUiModel;

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-string v2, "Name"

    const-string v3, "skuId"

    const-string v4, "Color"

    const-string v5, "tristique"

    const-string v6, "Image"

    const-string v7, "Amount"

    const-string v8, "shippingGroupId"

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v13}, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnItemUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/vuitton/android/presentation/screen/orders/models/OrderReturnReasonUiModel;Ljava/util/Set;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :pswitch_4
    sget-object v0, Lcom/vuitton/android/presentation/screen/orders/models/MocksKt;->a:Lkotlin/Lazy;

    new-instance v0, Lcom/vuitton/android/presentation/screen/orders/models/TimelineUiModel;

    sget-object v3, Lcom/vuitton/android/presentation/screen/orders/models/ValidationUiModel;->VALIDATED:Lcom/vuitton/android/presentation/screen/orders/models/ValidationUiModel;

    new-instance v8, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateTitle;

    const-string v4, "current"

    invoke-direct {v8, v1, v4, v2, v1}, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateTitle;-><init>(Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v10, Lcom/vuitton/android/presentation/screen/orders/models/StateUiModel;->CURRENT:Lcom/vuitton/android/presentation/screen/orders/models/StateUiModel;

    new-instance v4, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateUiModel;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x1

    const-string v5, "id"

    const/4 v6, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateUiModel;-><init>(Ljava/lang/String;ILjava/lang/Integer;Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateTitle;ZLcom/vuitton/android/presentation/screen/orders/models/StateUiModel;)V

    new-instance v9, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateTitle;

    const-string v5, "future"

    invoke-direct {v9, v1, v5, v2, v1}, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateTitle;-><init>(Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v11, Lcom/vuitton/android/presentation/screen/orders/models/StateUiModel;->FUTURE:Lcom/vuitton/android/presentation/screen/orders/models/StateUiModel;

    new-instance v5, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateUiModel;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v10, 0x0

    const-string v6, "id2"

    const/4 v7, 0x1

    invoke-direct/range {v5 .. v11}, Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateUiModel;-><init>(Ljava/lang/String;ILjava/lang/Integer;Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateTitle;ZLcom/vuitton/android/presentation/screen/orders/models/StateUiModel;)V

    filled-new-array {v4, v5}, [Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateUiModel;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/vuitton/android/presentation/screen/orders/models/TimelineUiModel;-><init>(Lcom/vuitton/android/presentation/screen/orders/models/ValidationUiModel;Ljava/util/List;)V

    return-object v0

    :pswitch_5
    sget-object v0, Lcom/vuitton/android/presentation/screen/orders/models/MocksKt;->a:Lkotlin/Lazy;

    const-string v0, "75001 Paris"

    const-string v1, "France"

    const-string v2, "Jean Dupont"

    const-string v3, "123 Rue de la Paix"

    const-string v4, "Appartement 4B"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :pswitch_6
    sget-object v0, Lcom/vuitton/android/presentation/screen/orders/models/MocksKt;->a:Lkotlin/Lazy;

    new-instance v6, Lcom/vuitton/android/presentation/screen/thankyou/models/ShippingMethodAdditionalInformationUiModel;

    const-string v0, "Information livraison"

    const-string v1, "Livraison premium avec cr\u00e9neau propos\u00e9 apr\u00e8s confirmation."

    invoke-direct {v6, v0, v1}, Lcom/vuitton/android/presentation/screen/thankyou/models/ShippingMethodAdditionalInformationUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/vuitton/android/presentation/screen/thankyou/models/ShippingMethodUiModel;

    const/16 v4, 0xa

    const/4 v5, 0x0

    const-string v2, "Standard Delivery - Estimated on 5/25"

    const-string v3, "Delivered between 9 AM - 6 PM"

    invoke-direct/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/thankyou/models/ShippingMethodUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/vuitton/android/presentation/screen/thankyou/models/ShippingMethodAdditionalInformationUiModel;)V

    return-object v1

    :pswitch_7
    sget-object v0, Lcom/vuitton/android/presentation/screen/orders/models/MocksKt;->a:Lkotlin/Lazy;

    new-instance v0, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;

    const-string v1, "199\u20ac"

    const-string v2, "EUR"

    const-wide v3, 0x4068e00000000000L    # 199.0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;-><init>(DLjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_8
    sget-object v0, Lcom/vuitton/android/presentation/screen/orders/models/MocksKt;->a:Lkotlin/Lazy;

    sget-object v4, Lcom/vuitton/android/presentation/screen/options/dispatch/models/InAppDispatchMockKt;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-static {}, Lcom/vuitton/android/presentation/screen/orders/models/MocksKt;->b()Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;

    move-result-object v0

    invoke-static {}, Lcom/vuitton/android/presentation/screen/orders/models/MocksKt;->b()Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;

    move-result-object v1

    filled-new-array {v0, v1}, [Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-static {}, Lcom/vuitton/android/presentation/screen/orders/models/MocksKt;->a()Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    move-result-object v0

    sget-object v1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-static {v0, v1}, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->a(Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;Lkotlin/collections/EmptyList;)Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    move-result-object v10

    new-instance v14, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnReasonUiModel;

    const-string v0, "code"

    const-string v1, "description"

    invoke-direct {v14, v0, v1}, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnReasonUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;

    const/16 v16, 0x20

    const/16 v17, 0x0

    const-string v11, "locationId"

    const-string v12, "shippingGroupId"

    const/4 v13, 0x1

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v17}, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;-><init>(Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/android/presentation/screen/orders/models/OrderReturnReasonUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-static {}, Lcom/vuitton/android/presentation/screen/orders/models/MocksKt;->b()Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;

    move-result-object v15

    new-instance v12, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeFeatureFlags;

    invoke-direct {v12, v2, v2, v2, v2}, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeFeatureFlags;-><init>(ZZZZ)V

    new-instance v6, Lcom/vuitton/android/presentation/screen/orders/models/VariationsResponseUiModel$Result;

    sget-object v0, Lcom/vuitton/android/presentation/screen/orders/models/MocksKt;->j:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;

    invoke-direct {v6, v0}, Lcom/vuitton/android/presentation/screen/orders/models/VariationsResponseUiModel$Result;-><init>(Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;)V

    new-instance v0, Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupResponseUiModel$Result;

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    const-string v1, "Leather"

    const-string v2, "18K"

    const-string v3, "Brown"

    const-string v5, "MM"

    filled-new-array {v3, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v20

    new-instance v16, Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupProductUiModel;

    const-string v17, "M46516"

    const-string v18, "https://en.louisvuitton.com/images/is/image/lv/1/PP_VP_L/louis-vuitton-cabas-onthego-mm-monogram-empreinte-leather-handbags--M46516_PM2_Front%20view.jpg"

    const-string v19, "Cabas OnTheGo MM"

    const/16 v21, 0x0

    invoke-direct/range {v16 .. v21}, Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupProductUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, v16

    new-instance v2, Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupShippingMethodUiModel$Standard;

    const-string v3, "Saturday Delivery - Estimated on 5/25"

    invoke-direct {v2, v3}, Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupShippingMethodUiModel$Standard;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupUiModel;

    const-string v5, "30 Rue Joannes Carret, 69009, Lyon, France"

    invoke-direct {v3, v1, v5, v2}, Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupUiModel;-><init>(Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupProductUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupShippingMethodUiModel;)V

    invoke-direct {v0, v3}, Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupResponseUiModel$Result;-><init>(Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupUiModel;)V

    new-instance v3, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;

    const v20, 0xe6ca

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v0

    invoke-direct/range {v3 .. v21}, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;-><init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/orders/models/ReasonsResponseUiModel;Lcom/vuitton/android/presentation/screen/orders/models/VariationsResponseUiModel;Lcom/vuitton/android/presentation/screen/orders/models/ConfirmReturnResponseUiModel;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lkotlinx/coroutines/flow/MutableSharedFlow;Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeFeatureFlags;Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupResponseUiModel;Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSubmitResponseUiModel;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v3

    :pswitch_9
    sget-object v0, Lcom/vuitton/android/presentation/screen/catalog/models/MocksKt;->a:Lcom/vuitton/android/presentation/screen/catalog/models/CategoryTagUiModel;

    new-instance v1, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;

    new-instance v2, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogUiModel;

    sget-object v6, Lcom/vuitton/android/presentation/screen/portal/models/MocksKt;->a:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    new-instance v0, Lcom/vuitton/android/presentation/screen/catalog/models/SectionUiModel;

    sget-object v9, Lcom/vuitton/android/presentation/screen/catalog/models/MocksKt;->c:Lcom/vuitton/android/presentation/screen/catalog/models/CategoryRedirectionUiModel;

    sget-object v8, Lcom/vuitton/android/presentation/screen/catalog/models/MocksKt;->d:Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselMUiModel;

    new-instance v3, Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;

    const/16 v10, 0x8

    const/4 v11, 0x0

    const-string v4, "1"

    const-string v5, "Women"

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v11}, Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/screen/catalog/models/CategoryTagUiModel;Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselMUiModel;Lcom/vuitton/android/presentation/screen/catalog/models/CategoryRedirectionUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v12, v3

    new-instance v3, Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;

    sget-object v7, Lcom/vuitton/android/presentation/screen/catalog/models/MocksKt;->a:Lcom/vuitton/android/presentation/screen/catalog/models/CategoryTagUiModel;

    const/16 v10, 0x10

    const-string v4, "2"

    const-string v5, "Men"

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v11}, Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/screen/catalog/models/CategoryTagUiModel;Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselMUiModel;Lcom/vuitton/android/presentation/screen/catalog/models/CategoryRedirectionUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    filled-new-array {v12, v3}, [Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;

    move-result-object v3

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v4, "1"

    invoke-direct {v0, v4, v3}, Lcom/vuitton/android/presentation/screen/catalog/models/SectionUiModel;-><init>(Ljava/lang/String;Ljava/util/List;)V

    new-instance v12, Lcom/vuitton/android/presentation/screen/catalog/models/SectionUiModel;

    new-instance v3, Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;

    const-string v4, "1"

    const-string v5, "Autres"

    invoke-direct/range {v3 .. v11}, Lcom/vuitton/android/presentation/screen/catalog/models/CategoryUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/screen/catalog/models/CategoryTagUiModel;Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$CarouselMUiModel;Lcom/vuitton/android/presentation/screen/catalog/models/CategoryRedirectionUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v4, "2"

    invoke-direct {v12, v4, v3}, Lcom/vuitton/android/presentation/screen/catalog/models/SectionUiModel;-><init>(Ljava/lang/String;Ljava/util/List;)V

    filled-new-array {v0, v12}, [Lcom/vuitton/android/presentation/screen/catalog/models/SectionUiModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v6, v0}, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogUiModel;-><init>(Lcom/vuitton/android/presentation/model/common/AssetUiModel;Ljava/util/List;)V

    new-instance v7, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    const/16 v20, 0xffe

    const/16 v21, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v7 .. v21}, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;-><init>(ZLjava/lang/String;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/chat/ChatContactUsUiModel;ZZZLcom/vuitton/android/presentation/contact/ContactUsMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v9, 0x52

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogViewState;-><init>(Lcom/vuitton/android/presentation/screen/catalog/models/CatalogUiModel;Ljava/util/List;ZZZLcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lcom/vuitton/android/presentation/model/common/A11ySettings;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :pswitch_a
    sget-object v0, Lcom/vuitton/android/presentation/screen/orders/models/MocksKt;->a:Lkotlin/Lazy;

    new-instance v3, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;

    new-instance v4, Lcom/vuitton/android/presentation/screen/orders/models/OrderPageUiModel;

    new-instance v0, Lcom/vuitton/android/presentation/screen/orders/models/PurchaseUiModel;

    new-instance v5, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;

    const-string v1, "2025-02-04T21:59:13.800Z"

    invoke-static {v1}, Lcom/vuitton/foundation/util/StringKtExtKt;->d(Ljava/lang/String;)Ljava/time/LocalDateTime;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v17, Lcom/vuitton/android/presentation/screen/orders/models/MocksKt;->i:Lkotlin/Lazy;

    invoke-interface/range {v17 .. v17}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    sget-object v24, Lcom/vuitton/android/presentation/screen/orders/models/ChannelUiModel;->WEB:Lcom/vuitton/android/presentation/screen/orders/models/ChannelUiModel;

    const/16 v15, 0x100

    const/16 v16, 0x0

    const-string v6, "2025-02-12"

    const-string v8, "expetenda"

    const-string v10, "A1"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v11, v24

    invoke-direct/range {v5 .. v16}, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;-><init>(Ljava/lang/String;Ljava/time/LocalDateTime;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/ChannelUiModel;ZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v5, v2}, Lcom/vuitton/android/presentation/screen/orders/models/PurchaseUiModel;-><init>(Ljava/util/List;I)V

    new-instance v2, Lcom/vuitton/android/presentation/screen/orders/models/PurchaseUiModel;

    new-instance v18, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;

    invoke-static {v1}, Lcom/vuitton/foundation/util/StringKtExtKt;->d(Ljava/lang/String;)Ljava/time/LocalDateTime;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface/range {v17 .. v17}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;

    invoke-interface/range {v17 .. v17}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;

    filled-new-array {v5, v6}, [Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v22

    const/16 v28, 0x100

    const/16 v29, 0x0

    const-string v19, "2025-02-12"

    const-string v21, "expetenda"

    const-string v23, "A2"

    const/16 v25, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v18 .. v29}, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;-><init>(Ljava/lang/String;Ljava/time/LocalDateTime;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/ChannelUiModel;ZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v5, v18

    new-instance v18, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;

    invoke-static {v1}, Lcom/vuitton/foundation/util/StringKtExtKt;->d(Ljava/lang/String;)Ljava/time/LocalDateTime;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface/range {v17 .. v17}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v22

    const-string v19, "2025-02-12"

    const-string v21, "expetenda"

    const-string v23, "A3"

    const/16 v25, 0x0

    invoke-direct/range {v18 .. v29}, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;-><init>(Ljava/lang/String;Ljava/time/LocalDateTime;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/ChannelUiModel;ZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, v18

    filled-new-array {v5, v1}, [Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v5, 0x2

    invoke-direct {v2, v1, v5}, Lcom/vuitton/android/presentation/screen/orders/models/PurchaseUiModel;-><init>(Ljava/util/List;I)V

    invoke-direct {v4, v0, v2}, Lcom/vuitton/android/presentation/screen/orders/models/OrderPageUiModel;-><init>(Lcom/vuitton/android/presentation/screen/orders/models/PurchaseUiModel;Lcom/vuitton/android/presentation/screen/orders/models/PurchaseUiModel;)V

    new-instance v18, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;

    sget-object v20, Ljava/time/LocalDateTime;->MAX:Ljava/time/LocalDateTime;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v22, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    const-string v19, "2025-02-12"

    const-string v21, "expetenda"

    const-string v23, "D19"

    invoke-direct/range {v18 .. v29}, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;-><init>(Ljava/lang/String;Ljava/time/LocalDateTime;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/ChannelUiModel;ZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v16, 0xffc

    const/16 v17, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x0

    move-object/from16 v5, v18

    invoke-direct/range {v3 .. v17}, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;-><init>(Lcom/vuitton/android/presentation/screen/orders/models/OrderPageUiModel;Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;ZZZZZZLcom/vuitton/android/presentation/screen/orders/models/OrderFeatureFlags;Ljava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v3

    :pswitch_b
    sget-object v0, Lcom/vuitton/android/presentation/screen/onboarding/models/MocksKt;->a:Lkotlin/Lazy;

    new-instance v1, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingViewState;

    new-instance v2, Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    const/16 v10, 0x71

    const/4 v11, 0x0

    const/4 v3, 0x0

    const-string v4, "https://search.yahoo.com/search?p=fusce"

    const-string v5, "aliquet"

    const-string v6, "elaboraret"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/time/Instant;Lcom/vuitton/foundation/model/domain/model/common/LiveVideoStatus;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v3, Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    const/16 v11, 0x71

    const/4 v12, 0x0

    const/4 v4, 0x0

    const-string v5, "https://search.yahoo.com/search?p=fermentum"

    const-string v6, "utroque"

    const-string v7, "aperiri"

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/time/Instant;Lcom/vuitton/foundation/model/domain/model/common/LiveVideoStatus;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v4, Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    const/16 v12, 0x71

    const/4 v13, 0x0

    const/4 v5, 0x0

    const-string v6, "https://duckduckgo.com/?q=eloquentiam"

    const-string v7, "non"

    const-string v8, "eruditi"

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v13}, Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/time/Instant;Lcom/vuitton/foundation/model/domain/model/common/LiveVideoStatus;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingAssets;

    invoke-direct {v0, v4, v2, v3}, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingAssets;-><init>(Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;)V

    sget-object v4, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v3, v0

    invoke-direct/range {v1 .. v7}, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingViewState;-><init>(ZLcom/vuitton/android/presentation/screen/onboarding/models/OnboardingAssets;Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :pswitch_c
    sget-object v0, Lcom/vuitton/android/data/dto/storelocator/MegatrioDto;->Companion:Lcom/vuitton/android/data/dto/storelocator/MegatrioDto$Companion;

    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v1, Lcom/vuitton/android/data/dto/common/CtaDto$$serializer;->a:Lcom/vuitton/android/data/dto/common/CtaDto$$serializer;

    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object v0

    :pswitch_d
    sget-object v0, Landroidx/compose/material3/MaterialThemeKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :pswitch_e
    invoke-static {}, Lcom/sightcall/core/experiences/Manager;->b()Lcom/sightcall/core/experiences/wrapper/LoginWrapper;

    move-result-object v0

    return-object v0

    :pswitch_f
    invoke-static {}, Lcom/sightcall/core/experiences/Manager;->a()Lcom/sightcall/core/experiences/wrapper/FeatureWrapper;

    move-result-object v0

    return-object v0

    :pswitch_10
    invoke-static {}, Lcom/sightcall/core/experiences/Manager;->e()Lcom/sightcall/core/experiences/wrapper/DebugWrapper;

    move-result-object v0

    return-object v0

    :pswitch_11
    invoke-static {}, Lcom/sightcall/core/experiences/Manager;->d()Lcom/sightcall/core/experiences/wrapper/VisualAssistanceWrapper;

    move-result-object v0

    return-object v0

    :pswitch_12
    invoke-static {}, Lcom/sightcall/core/experiences/Manager;->c()Lcom/sightcall/core/experiences/wrapper/DigitalFlowWrapper;

    move-result-object v0

    return-object v0

    :pswitch_13
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_14
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_15
    sget-object v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerComposableKt;->a:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerUiModel;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_16
    sget-object v0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerComposableKt;->a:Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/card/Lv3dCardViewerUiModel;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_17
    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/event/LoginProperties;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/event/LoginProperties$Companion;

    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v1, Lcom/dynamicyield/sdk/wrapper/core/models/event/SecondaryIdentifier$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/event/SecondaryIdentifier$$serializer;

    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object v0

    :pswitch_18
    sget-object v0, Lcom/vuitton/android/data/dto/dispatch/LocalizationDto;->Companion:Lcom/vuitton/android/data/dto/dispatch/LocalizationDto$Companion;

    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object v0

    :pswitch_19
    sget-object v0, Landroidx/savedstate/compose/LocalSavedStateRegistryOwnerKt;->a:Landroidx/compose/runtime/ProvidableCompositionLocal;

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CompositionLocal LocalSavedStateRegistryOwner not present"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1a
    sget-object v0, Landroidx/compose/runtime/retain/LocalRetainedValuesStoreKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    sget-object v0, Landroidx/compose/runtime/retain/ForgetfulRetainedValuesStore;->a:Landroidx/compose/runtime/retain/ForgetfulRetainedValuesStore;

    return-object v0

    :pswitch_1b
    sget-object v0, Landroidx/activity/compose/LocalOnBackPressedDispatcherOwner;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    return-object v1

    :pswitch_1c
    sget-object v0, Landroidx/navigation3/ui/LocalNavAnimatedContentScopeKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected access to LocalNavAnimatedContentScope. You should only access LocalNavAnimatedContentScope inside a NavEntry passed to NavDisplay. AnimatedContentScope in OverlayScenes are no-op."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
