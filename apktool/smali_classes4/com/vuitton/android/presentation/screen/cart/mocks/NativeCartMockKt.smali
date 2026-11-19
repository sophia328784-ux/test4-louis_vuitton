.class public abstract Lcom/vuitton/android/presentation/screen/cart/mocks/NativeCartMockKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
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


# static fields
.field public static final a:Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

.field public static final b:Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;


# direct methods
.method static constructor <clinit>()V
    .locals 34

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductIdUiModel$Companion;

    new-instance v1, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceInformationUiModel;

    new-instance v2, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;

    const-wide v3, 0x40b9640000000000L    # 6500.0

    const-string v0, "6500"

    const-string v5, "$"

    invoke-direct {v2, v3, v4, v0, v5}, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;-><init>(DLjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;

    const-wide/high16 v6, 0x4074000000000000L    # 320.0

    const-string v0, "320"

    invoke-direct {v3, v6, v7, v0, v5}, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;-><init>(DLjava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/vuitton/android/presentation/screen/cart/models/CartPriceInformationUiModel;-><init>(Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;Lcom/vuitton/android/presentation/screen/cart/models/CartPriceUiModel;Lcom/vuitton/android/presentation/screen/cart/models/FormattedTaxDetailsUiModel;)V

    sget-object v4, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    move-object v3, v1

    new-instance v1, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    const v32, 0xc04000

    const/16 v33, 0x0

    const-string v2, "2343BU"

    move-object/from16 v22, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string v6, "Gris"

    const-string v7, "XS"

    const/4 v8, 0x0

    const-string v9, "Dauphine MMDauphine MM"

    const-string v10, "Leather"

    const-string v11, "ABCDEF"

    const-string v12, "1234"

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-string v21, ""

    const-string v23, "50% off"

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x1

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x1

    const/16 v31, 0x1

    invoke-direct/range {v1 .. v33}, Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/cart/models/CartPriceInformationUiModel;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;ZZZZZLjava/lang/String;Ljava/util/List;Ljava/lang/String;ZZZZLcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationConfigurationUiModel;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v1, Lcom/vuitton/android/presentation/screen/cart/mocks/NativeCartMockKt;->a:Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;

    new-instance v2, Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/cart/ShoppingBag;

    const/4 v0, 0x1

    invoke-direct {v9, v0, v0}, Lcom/vuitton/foundation/model/domain/model/cart/ShoppingBag;-><init>(ZZ)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v3, "aptent"

    const/4 v4, 0x2

    const/4 v6, 0x0

    sget-object v7, Lcom/vuitton/foundation/model/domain/model/cart/GiftOption$None;->a:Lcom/vuitton/foundation/model/domain/model/cart/GiftOption$None;

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;-><init>(Ljava/lang/String;ILjava/util/List;Lcom/vuitton/android/presentation/screen/cart/models/CartPriceInformationUiModel;Lcom/vuitton/foundation/model/domain/model/cart/GiftOption;ZLcom/vuitton/foundation/model/domain/model/cart/ShoppingBag;ZLcom/vuitton/android/presentation/screen/cart/models/CartSampleUiModel;)V

    new-instance v0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;

    const v19, 0xff14

    const/16 v20, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v3, v2

    move-object/from16 v4, v22

    move-object v2, v0

    invoke-direct/range {v2 .. v20}, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;-><init>(Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;Ljava/util/List;Ljava/lang/String;ZZZZLkotlin/Pair;Lcom/vuitton/android/presentation/screen/cart/models/NativeCartFeatureFlags;Ljava/util/ArrayList;Ljava/util/List;Ljava/util/List;ZLcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lcom/vuitton/android/presentation/screen/cart/models/CartContributionUiModel;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v2, Lcom/vuitton/android/presentation/screen/cart/mocks/NativeCartMockKt;->b:Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;

    new-instance v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationConfigurationUiModel;

    new-instance v5, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;

    const-string v0, "MDXB67CD"

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdTypeUiModel;->THREEKIT:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdTypeUiModel;

    invoke-direct {v5, v0, v1}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdTypeUiModel;)V

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationInformationUiModel;

    new-instance v6, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    const/4 v10, 0x6

    const-string v7, "https://fr-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton--Men_Show_SS23_LOOK03_VISUAL4.jpg?wid={IMG_WIDTH}&hei={IMG_HEIGHT}"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v6 .. v11}, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/ScaleUiModel;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v1, "55"

    const-string v2, "Nombre"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v6, v4}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationInformationUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Ljava/lang/String;)V

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationInformationUiModel;

    new-instance v6, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    const-string v7, "https://fr-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton--Men_Show_SS23_LOOK03_VISUAL4.jpg?wid={IMG_WIDTH}&hei={IMG_HEIGHT}"

    invoke-direct/range {v6 .. v11}, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/ScaleUiModel;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v2, "Monogram Eclipse This is a long text"

    const-string v7, "Motif"

    invoke-direct {v1, v2, v7, v6, v4}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationInformationUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Ljava/lang/String;)V

    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationInformationUiModel;

    new-instance v6, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    const-string v7, "https://fr-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton--Men_Show_SS23_LOOK03_VISUAL4.jpg?wid={IMG_WIDTH}&hei={IMG_HEIGHT}"

    invoke-direct/range {v6 .. v11}, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/ScaleUiModel;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v7, "Keepall Bandouli\u00e8re"

    const-string v8, "Mod\u00e8le"

    invoke-direct {v2, v7, v8, v6, v4}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationInformationUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Ljava/lang/String;)V

    new-instance v6, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationInformationUiModel;

    new-instance v7, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    const/4 v11, 0x6

    const-string v8, "https://fr-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton--Men_Show_SS23_LOOK03_VISUAL4.jpg?wid={IMG_WIDTH}&hei={IMG_HEIGHT}"

    const/4 v10, 0x0

    invoke-direct/range {v7 .. v12}, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/ScaleUiModel;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v8, "Ribbon stripes"

    const-string v9, "Ruban"

    invoke-direct {v6, v8, v9, v7, v4}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationInformationUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Ljava/lang/String;)V

    new-instance v7, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationInformationUiModel;

    new-instance v8, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    const/4 v12, 0x6

    const-string v9, "https://fr-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton--Men_Show_SS23_LOOK03_VISUAL4.jpg?wid={IMG_WIDTH}&hei={IMG_HEIGHT}"

    const/4 v11, 0x0

    invoke-direct/range {v8 .. v13}, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/ScaleUiModel;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v9, "Blue and Yellow"

    const-string v10, "Couleurs"

    invoke-direct {v7, v9, v10, v8, v4}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationInformationUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Ljava/lang/String;)V

    filled-new-array {v0, v1, v2, v6, v7}, [Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationInformationUiModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    const-string v4, "P01900"

    const-string v6, "Personalisation"

    invoke-direct/range {v3 .. v8}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationConfigurationUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
