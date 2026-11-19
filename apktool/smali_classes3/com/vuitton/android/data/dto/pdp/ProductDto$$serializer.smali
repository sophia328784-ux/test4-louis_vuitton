.class public final synthetic Lcom/vuitton/android/data/dto/pdp/ProductDto$$serializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/data/dto/pdp/ProductDto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = "$serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/internal/GeneratedSerializer<",
        "Lcom/vuitton/android/data/dto/pdp/ProductDto;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Deprecated;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c7\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "com/vuitton/android/data/dto/pdp/ProductDto.$serializer",
        "Lkotlinx/serialization/internal/GeneratedSerializer;",
        "Lcom/vuitton/android/data/dto/pdp/ProductDto;",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "descriptor",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "a",
        "()Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "data"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcom/vuitton/android/data/dto/pdp/ProductDto$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/vuitton/android/data/dto/pdp/ProductDto$$serializer;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vuitton/android/data/dto/pdp/ProductDto$$serializer;->a:Lcom/vuitton/android/data/dto/pdp/ProductDto$$serializer;

    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "com.vuitton.android.data.dto.pdp.ProductDto"

    const/16 v3, 0x2d

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v0, "sku"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "name"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "commercialTag"

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "productId"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "shortDescription"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "detailedDescription"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "webPath"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "background"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "locateInStore"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "backInStock"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "showARModel"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "hideAddToWishlist"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "sizeGuide"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "sizeGuideId"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "contextualSizingImage"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isDiamond"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isBackOrder"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "dimensions"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "tryOn"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "disclaimers"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "color"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "material"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "carat"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "size"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "language"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "edito"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "medias"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "skus"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "skuLook"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isRelatedTo"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "modelSizeVariations"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "panelInformations"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "sellableStatus"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "customization"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "packagingVariation"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "assets"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "mainAsset"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "details"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "highlights"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "editorialContents"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "finish"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isShadeFinderEnabled"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "finishVariations"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "shareUrl"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "fitInformation"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    sput-object v1, Lcom/vuitton/android/data/dto/pdp/ProductDto$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lcom/vuitton/android/data/dto/pdp/ProductDto$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public final b(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 57

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/data/dto/pdp/ProductDto$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/Decoder;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object v1

    sget-object v2, Lcom/vuitton/android/data/dto/pdp/ProductDto;->T:[Lkotlin/Lazy;

    move-object/from16 v17, v2

    const/16 p0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    :goto_0
    if-eqz v18, :cond_4

    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v52

    packed-switch v52, :pswitch_data_0

    invoke-static/range {v52 .. v52}, Lb21;->l(I)V

    return-object p0

    :pswitch_0
    move-object/from16 v52, v4

    const/16 v4, 0x2c

    move-object/from16 v53, v3

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    invoke-interface {v1, v0, v4, v3, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    or-int/lit16 v2, v2, 0x1000

    :goto_1
    move/from16 v54, v2

    :goto_2
    move-object/from16 v4, v52

    :goto_3
    move-object/from16 v3, v53

    :goto_4
    const/4 v2, 0x0

    goto/16 :goto_10

    :pswitch_1
    move-object/from16 v53, v3

    move-object/from16 v52, v4

    const/16 v3, 0x2b

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    invoke-interface {v1, v0, v3, v4, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Ljava/lang/String;

    or-int/lit16 v2, v2, 0x800

    goto :goto_1

    :pswitch_2
    move-object/from16 v53, v3

    move-object/from16 v52, v4

    const/16 v3, 0x2a

    aget-object v4, v17, v3

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v1, v0, v3, v4, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Ljava/util/List;

    or-int/lit16 v2, v2, 0x400

    goto :goto_1

    :pswitch_3
    move-object/from16 v53, v3

    move-object/from16 v52, v4

    const/16 v3, 0x29

    invoke-interface {v1, v0, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v51

    or-int/lit16 v2, v2, 0x200

    move/from16 v54, v2

    goto :goto_3

    :pswitch_4
    move-object/from16 v53, v3

    move-object/from16 v52, v4

    sget-object v3, Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto$$serializer;->a:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto$$serializer;

    const/16 v4, 0x28

    invoke-interface {v1, v0, v4, v3, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

    or-int/lit16 v2, v2, 0x100

    goto :goto_1

    :pswitch_5
    move-object/from16 v53, v3

    move-object/from16 v52, v4

    const/16 v3, 0x27

    aget-object v4, v17, v3

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v1, v0, v3, v4, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Ljava/util/List;

    or-int/lit16 v2, v2, 0x80

    goto :goto_1

    :pswitch_6
    move-object/from16 v53, v3

    move-object/from16 v52, v4

    const/16 v3, 0x26

    aget-object v4, v17, v3

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v1, v0, v3, v4, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Ljava/util/List;

    or-int/lit8 v2, v2, 0x40

    goto/16 :goto_1

    :pswitch_7
    move-object/from16 v53, v3

    move-object/from16 v52, v4

    const/16 v3, 0x25

    aget-object v4, v17, v3

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v1, v0, v3, v4, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Ljava/util/List;

    or-int/lit8 v2, v2, 0x20

    goto/16 :goto_1

    :pswitch_8
    move-object/from16 v53, v3

    move-object/from16 v52, v4

    sget-object v3, Lcom/vuitton/android/data/dto/pdp/DigitalAssetProductDto$$serializer;->a:Lcom/vuitton/android/data/dto/pdp/DigitalAssetProductDto$$serializer;

    const/16 v4, 0x24

    invoke-interface {v1, v0, v4, v3, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lcom/vuitton/android/data/dto/pdp/DigitalAssetProductDto;

    or-int/lit8 v2, v2, 0x10

    goto/16 :goto_1

    :pswitch_9
    move-object/from16 v53, v3

    move-object/from16 v52, v4

    const/16 v3, 0x23

    aget-object v4, v17, v3

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v1, v0, v3, v4, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Ljava/util/List;

    or-int/lit8 v2, v2, 0x8

    goto/16 :goto_1

    :pswitch_a
    move-object/from16 v53, v3

    move-object/from16 v52, v4

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v4, 0x22

    invoke-interface {v1, v0, v4, v3, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Ljava/lang/String;

    or-int/lit8 v2, v2, 0x4

    goto/16 :goto_1

    :pswitch_b
    move-object/from16 v53, v3

    move-object/from16 v52, v4

    sget-object v3, Lcom/vuitton/android/data/dto/pdp/ProductCustomizationDto$$serializer;->a:Lcom/vuitton/android/data/dto/pdp/ProductCustomizationDto$$serializer;

    const/16 v4, 0x21

    invoke-interface {v1, v0, v4, v3, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/vuitton/android/data/dto/pdp/ProductCustomizationDto;

    or-int/lit8 v2, v2, 0x2

    goto/16 :goto_1

    :pswitch_c
    move-object/from16 v53, v3

    move-object/from16 v52, v4

    sget-object v3, Lcom/vuitton/android/data/dto/pdp/SellableStatusDto$$serializer;->a:Lcom/vuitton/android/data/dto/pdp/SellableStatusDto$$serializer;

    const/16 v4, 0x20

    move/from16 v54, v2

    move-object/from16 v2, v53

    invoke-interface {v1, v0, v4, v3, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/vuitton/android/data/dto/pdp/SellableStatusDto;

    or-int/lit8 v2, v54, 0x1

    move/from16 v54, v2

    move-object/from16 v4, v52

    goto/16 :goto_4

    :pswitch_d
    move/from16 v54, v2

    move-object v2, v3

    move-object/from16 v52, v4

    const/16 v3, 0x1f

    aget-object v4, v17, v3

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v53, v2

    move-object/from16 v2, v52

    invoke-interface {v1, v0, v3, v4, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/util/List;

    const/high16 v2, -0x80000000

    or-int v2, v26, v2

    move/from16 v26, v2

    goto/16 :goto_3

    :pswitch_e
    move/from16 v54, v2

    move-object/from16 v53, v3

    move-object v2, v4

    const/16 v3, 0x1e

    aget-object v4, v17, v3

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v52, v2

    move-object/from16 v2, v42

    invoke-interface {v1, v0, v3, v4, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/high16 v3, 0x40000000    # 2.0f

    or-int v3, v26, v3

    move-object/from16 v42, v2

    :goto_5
    move/from16 v26, v3

    goto/16 :goto_2

    :pswitch_f
    move/from16 v54, v2

    move-object/from16 v53, v3

    move-object/from16 v52, v4

    move-object/from16 v2, v42

    const/16 v3, 0x1d

    aget-object v4, v17, v3

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v2, v41

    invoke-interface {v1, v0, v3, v4, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/high16 v3, 0x20000000

    or-int v3, v26, v3

    move-object/from16 v41, v2

    goto :goto_5

    :pswitch_10
    move/from16 v54, v2

    move-object/from16 v53, v3

    move-object/from16 v52, v4

    move-object/from16 v2, v41

    const/16 v3, 0x1c

    aget-object v4, v17, v3

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v2, v40

    invoke-interface {v1, v0, v3, v4, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/high16 v3, 0x10000000

    or-int v3, v26, v3

    move-object/from16 v40, v2

    goto :goto_5

    :pswitch_11
    move/from16 v54, v2

    move-object/from16 v53, v3

    move-object/from16 v52, v4

    move-object/from16 v2, v40

    const/16 v3, 0x1b

    aget-object v4, v17, v3

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v2, v39

    invoke-interface {v1, v0, v3, v4, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/high16 v3, 0x8000000

    or-int v3, v26, v3

    move-object/from16 v39, v2

    goto :goto_5

    :pswitch_12
    move/from16 v54, v2

    move-object/from16 v53, v3

    move-object/from16 v52, v4

    move-object/from16 v2, v39

    const/16 v3, 0x1a

    aget-object v4, v17, v3

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v2, v38

    invoke-interface {v1, v0, v3, v4, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/high16 v3, 0x4000000

    or-int v3, v26, v3

    move-object/from16 v38, v2

    goto/16 :goto_5

    :pswitch_13
    move/from16 v54, v2

    move-object/from16 v53, v3

    move-object/from16 v52, v4

    move-object/from16 v2, v38

    sget-object v3, Lcom/vuitton/android/data/dto/pdp/EditoDto$$serializer;->a:Lcom/vuitton/android/data/dto/pdp/EditoDto$$serializer;

    const/16 v4, 0x19

    move-object/from16 v2, v37

    invoke-interface {v1, v0, v4, v3, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/data/dto/pdp/EditoDto;

    const/high16 v3, 0x2000000

    or-int v3, v26, v3

    move-object/from16 v37, v2

    goto/16 :goto_5

    :pswitch_14
    move/from16 v54, v2

    move-object/from16 v53, v3

    move-object/from16 v52, v4

    move-object/from16 v2, v37

    sget-object v3, Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto$$serializer;->a:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto$$serializer;

    const/16 v4, 0x18

    move-object/from16 v2, v36

    invoke-interface {v1, v0, v4, v3, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

    const/high16 v3, 0x1000000

    or-int v3, v26, v3

    move-object/from16 v36, v2

    goto/16 :goto_5

    :pswitch_15
    move/from16 v54, v2

    move-object/from16 v53, v3

    move-object/from16 v52, v4

    move-object/from16 v2, v36

    sget-object v3, Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto$$serializer;->a:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto$$serializer;

    const/16 v4, 0x17

    move-object/from16 v2, v35

    invoke-interface {v1, v0, v4, v3, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

    const/high16 v3, 0x800000

    or-int v3, v26, v3

    move-object/from16 v35, v2

    goto/16 :goto_5

    :pswitch_16
    move/from16 v54, v2

    move-object/from16 v53, v3

    move-object/from16 v52, v4

    move-object/from16 v2, v35

    sget-object v3, Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto$$serializer;->a:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto$$serializer;

    const/16 v4, 0x16

    move-object/from16 v2, v34

    invoke-interface {v1, v0, v4, v3, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

    const/high16 v3, 0x400000

    or-int v3, v26, v3

    move-object/from16 v34, v2

    goto/16 :goto_5

    :pswitch_17
    move/from16 v54, v2

    move-object/from16 v53, v3

    move-object/from16 v52, v4

    move-object/from16 v2, v34

    sget-object v3, Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto$$serializer;->a:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto$$serializer;

    const/16 v4, 0x15

    move-object/from16 v2, v33

    invoke-interface {v1, v0, v4, v3, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

    const/high16 v3, 0x200000

    or-int v3, v26, v3

    move-object/from16 v33, v2

    goto/16 :goto_5

    :pswitch_18
    move/from16 v54, v2

    move-object/from16 v53, v3

    move-object/from16 v52, v4

    move-object/from16 v2, v33

    sget-object v3, Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto$$serializer;->a:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto$$serializer;

    const/16 v4, 0x14

    move-object/from16 v2, v32

    invoke-interface {v1, v0, v4, v3, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

    const/high16 v3, 0x100000

    or-int v3, v26, v3

    move-object/from16 v32, v2

    goto/16 :goto_5

    :pswitch_19
    move/from16 v54, v2

    move-object/from16 v53, v3

    move-object/from16 v52, v4

    move-object/from16 v2, v32

    sget-object v3, Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto$$serializer;->a:Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto$$serializer;

    const/16 v4, 0x13

    move-object/from16 v2, v31

    invoke-interface {v1, v0, v4, v3, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;

    const/high16 v3, 0x80000

    or-int v3, v26, v3

    move-object/from16 v31, v2

    goto/16 :goto_5

    :pswitch_1a
    move/from16 v54, v2

    move-object/from16 v53, v3

    move-object/from16 v52, v4

    move-object/from16 v2, v31

    sget-object v3, Lcom/vuitton/android/data/dto/product/virtualtryon/VirtualTryOnDto$$serializer;->a:Lcom/vuitton/android/data/dto/product/virtualtryon/VirtualTryOnDto$$serializer;

    const/16 v4, 0x12

    move-object/from16 v2, v30

    invoke-interface {v1, v0, v4, v3, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/vuitton/android/data/dto/product/virtualtryon/VirtualTryOnDto;

    const/high16 v2, 0x40000

    or-int v2, v26, v2

    move/from16 v26, v2

    move-object/from16 v30, v3

    goto/16 :goto_2

    :pswitch_1b
    move/from16 v54, v2

    move-object/from16 v53, v3

    move-object/from16 v52, v4

    move-object/from16 v2, v30

    sget-object v3, Lcom/vuitton/android/data/dto/pdp/DimensionsDto$$serializer;->a:Lcom/vuitton/android/data/dto/pdp/DimensionsDto$$serializer;

    const/16 v4, 0x11

    move-object/from16 v2, v29

    invoke-interface {v1, v0, v4, v3, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/vuitton/android/data/dto/pdp/DimensionsDto;

    const/high16 v2, 0x20000

    or-int v2, v26, v2

    move/from16 v26, v2

    move-object/from16 v29, v4

    goto/16 :goto_2

    :pswitch_1c
    move/from16 v54, v2

    move-object/from16 v53, v3

    move-object/from16 v52, v4

    move-object/from16 v2, v29

    sget-object v3, Lkotlinx/serialization/internal/BooleanSerializer;->a:Lkotlinx/serialization/internal/BooleanSerializer;

    const/16 v4, 0x10

    move-object/from16 v2, v28

    invoke-interface {v1, v0, v4, v3, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    const/high16 v3, 0x10000

    or-int v3, v26, v3

    move-object/from16 v28, v2

    goto/16 :goto_5

    :pswitch_1d
    move/from16 v54, v2

    move-object/from16 v53, v3

    move-object/from16 v52, v4

    move-object/from16 v2, v28

    const/16 v3, 0xf

    invoke-interface {v1, v0, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v50

    const v3, 0x8000

    or-int v3, v26, v3

    move/from16 v26, v3

    goto/16 :goto_3

    :pswitch_1e
    move/from16 v54, v2

    move-object/from16 v53, v3

    move-object/from16 v52, v4

    move-object/from16 v2, v28

    sget-object v3, Lcom/vuitton/android/data/dto/common/AssetImageDto$$serializer;->a:Lcom/vuitton/android/data/dto/common/AssetImageDto$$serializer;

    const/16 v4, 0xe

    move-object/from16 v2, v27

    invoke-interface {v1, v0, v4, v3, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/data/dto/common/AssetImageDto;

    move/from16 v4, v26

    or-int/lit16 v3, v4, 0x4000

    move-object/from16 v27, v2

    goto/16 :goto_5

    :pswitch_1f
    move/from16 v54, v2

    move-object/from16 v53, v3

    move-object/from16 v52, v4

    move/from16 v4, v26

    move-object/from16 v2, v27

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v26, v2

    const/16 v2, 0xd

    move-object/from16 v27, v5

    move-object/from16 v5, v25

    invoke-interface {v1, v0, v2, v3, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    or-int/lit16 v3, v4, 0x2000

    move-object/from16 v25, v2

    :goto_6
    move-object/from16 v5, v27

    move-object/from16 v4, v52

    const/4 v2, 0x0

    :goto_7
    move-object/from16 v27, v26

    move/from16 v26, v3

    :goto_8
    move-object/from16 v3, v53

    goto/16 :goto_10

    :pswitch_20
    move/from16 v54, v2

    move-object/from16 v53, v3

    move-object/from16 v52, v4

    move/from16 v4, v26

    move-object/from16 v26, v27

    move-object/from16 v27, v5

    move-object/from16 v5, v25

    const/16 v2, 0xc

    invoke-interface {v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v49

    or-int/lit16 v2, v4, 0x1000

    :goto_9
    move-object/from16 v5, v27

    move-object/from16 v4, v52

    move-object/from16 v27, v26

    move/from16 v26, v2

    goto/16 :goto_4

    :pswitch_21
    move/from16 v54, v2

    move-object/from16 v53, v3

    move-object/from16 v52, v4

    move/from16 v4, v26

    move-object/from16 v26, v27

    move-object/from16 v27, v5

    move-object/from16 v5, v25

    const/16 v2, 0xb

    invoke-interface {v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v48

    or-int/lit16 v2, v4, 0x800

    goto :goto_9

    :pswitch_22
    move/from16 v54, v2

    move-object/from16 v53, v3

    move-object/from16 v52, v4

    move/from16 v4, v26

    move-object/from16 v26, v27

    move-object/from16 v27, v5

    move-object/from16 v5, v25

    const/16 v2, 0xa

    invoke-interface {v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v47

    or-int/lit16 v2, v4, 0x400

    goto :goto_9

    :pswitch_23
    move/from16 v54, v2

    move-object/from16 v53, v3

    move-object/from16 v52, v4

    move/from16 v4, v26

    move-object/from16 v26, v27

    move-object/from16 v27, v5

    move-object/from16 v5, v25

    const/16 v2, 0x9

    invoke-interface {v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v46

    or-int/lit16 v2, v4, 0x200

    goto :goto_9

    :pswitch_24
    move/from16 v54, v2

    move-object/from16 v53, v3

    move-object/from16 v52, v4

    move/from16 v4, v26

    move-object/from16 v26, v27

    move-object/from16 v27, v5

    move-object/from16 v5, v25

    const/16 v2, 0x8

    invoke-interface {v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v45

    or-int/lit16 v2, v4, 0x100

    goto :goto_9

    :pswitch_25
    move/from16 v54, v2

    move-object/from16 v53, v3

    move-object/from16 v52, v4

    move/from16 v4, v26

    move-object/from16 v26, v27

    move-object/from16 v27, v5

    move-object/from16 v5, v25

    const/4 v2, 0x7

    aget-object v3, v17, v2

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v5, v24

    invoke-interface {v1, v0, v2, v3, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/data/dto/pdp/ProductBackgroundDto;

    or-int/lit16 v3, v4, 0x80

    move-object/from16 v24, v2

    goto/16 :goto_6

    :pswitch_26
    move/from16 v54, v2

    move-object/from16 v53, v3

    move-object/from16 v52, v4

    move/from16 v4, v26

    move-object/from16 v26, v27

    move-object/from16 v27, v5

    move-object/from16 v5, v24

    const/4 v2, 0x6

    invoke-interface {v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->l(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v44

    or-int/lit8 v2, v4, 0x40

    goto/16 :goto_9

    :pswitch_27
    move/from16 v54, v2

    move-object/from16 v53, v3

    move-object/from16 v52, v4

    move/from16 v4, v26

    move-object/from16 v26, v27

    move-object/from16 v27, v5

    move-object/from16 v5, v24

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v3, 0x5

    move/from16 v24, v4

    move-object/from16 v4, v23

    invoke-interface {v1, v0, v3, v2, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    or-int/lit8 v3, v24, 0x20

    move-object/from16 v23, v2

    :goto_a
    move-object/from16 v24, v5

    goto/16 :goto_6

    :pswitch_28
    move-object/from16 v52, v27

    move-object/from16 v27, v5

    move-object/from16 v5, v24

    move/from16 v24, v26

    move-object/from16 v26, v52

    move/from16 v54, v2

    move-object/from16 v53, v3

    move-object/from16 v52, v4

    move-object/from16 v4, v23

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v3, 0x4

    move-object/from16 v4, v22

    invoke-interface {v1, v0, v3, v2, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    or-int/lit8 v3, v24, 0x10

    move-object/from16 v22, v2

    goto :goto_a

    :pswitch_29
    move-object/from16 v52, v27

    move-object/from16 v27, v5

    move-object/from16 v5, v24

    move/from16 v24, v26

    move-object/from16 v26, v52

    move/from16 v54, v2

    move-object/from16 v53, v3

    move-object/from16 v52, v4

    move-object/from16 v4, v22

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/product/ProductId$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/product/ProductId$$serializer;

    if-eqz v21, :cond_0

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/product/ProductId;

    move-object/from16 v22, v4

    move-object/from16 v4, v21

    invoke-direct {v3, v4}, Lcom/vuitton/foundation/model/domain/model/product/ProductId;-><init>(Ljava/lang/String;)V

    goto :goto_b

    :cond_0
    move-object/from16 v22, v4

    move-object/from16 v3, p0

    :goto_b
    const/4 v4, 0x3

    invoke-interface {v1, v0, v4, v2, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/product/ProductId;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/product/ProductId;->a:Ljava/lang/String;

    goto :goto_c

    :cond_1
    move-object/from16 v2, p0

    :goto_c
    or-int/lit8 v3, v24, 0x8

    move-object/from16 v21, v2

    goto :goto_a

    :pswitch_2a
    move-object/from16 v52, v27

    move-object/from16 v27, v5

    move-object/from16 v5, v24

    move/from16 v24, v26

    move-object/from16 v26, v52

    move/from16 v54, v2

    move-object/from16 v53, v3

    move-object/from16 v52, v4

    move-object/from16 v4, v21

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v3, 0x2

    move-object/from16 v4, v20

    invoke-interface {v1, v0, v3, v2, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    or-int/lit8 v3, v24, 0x4

    move-object/from16 v20, v2

    goto :goto_a

    :pswitch_2b
    move-object/from16 v52, v27

    move-object/from16 v27, v5

    move-object/from16 v5, v24

    move/from16 v24, v26

    move-object/from16 v26, v52

    move/from16 v54, v2

    move-object/from16 v53, v3

    move-object/from16 v52, v4

    move-object/from16 v4, v20

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->l(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v43

    or-int/lit8 v3, v24, 0x2

    goto/16 :goto_a

    :pswitch_2c
    move-object/from16 v52, v27

    move-object/from16 v27, v5

    move-object/from16 v5, v24

    move/from16 v24, v26

    move-object/from16 v26, v52

    move/from16 v54, v2

    move-object/from16 v53, v3

    move-object/from16 v52, v4

    move-object/from16 v4, v20

    const/4 v2, 0x1

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/product/SkuId$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/product/SkuId$$serializer;

    if-eqz v19, :cond_2

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    move-object/from16 v20, v4

    move-object/from16 v4, v19

    invoke-direct {v2, v4}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    :goto_d
    const/4 v4, 0x0

    goto :goto_e

    :cond_2
    move-object/from16 v20, v4

    move-object/from16 v2, p0

    goto :goto_d

    :goto_e
    invoke-interface {v1, v0, v4, v3, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->a:Ljava/lang/String;

    goto :goto_f

    :cond_3
    move-object/from16 v2, p0

    :goto_f
    or-int/lit8 v3, v24, 0x1

    move-object/from16 v19, v2

    move v2, v4

    move-object/from16 v24, v5

    move-object/from16 v5, v27

    move-object/from16 v4, v52

    goto/16 :goto_7

    :pswitch_2d
    move-object/from16 v52, v27

    move-object/from16 v27, v5

    move-object/from16 v5, v24

    move/from16 v24, v26

    move-object/from16 v26, v52

    move/from16 v54, v2

    move-object/from16 v53, v3

    move-object/from16 v52, v4

    move-object/from16 v4, v19

    const/4 v2, 0x0

    move/from16 v3, v24

    move-object/from16 v24, v5

    move-object/from16 v5, v27

    move-object/from16 v27, v26

    move/from16 v26, v3

    move/from16 v18, v2

    move-object/from16 v4, v52

    goto/16 :goto_8

    :goto_10
    move/from16 v2, v54

    goto/16 :goto_0

    :cond_4
    move-object/from16 v52, v27

    move-object/from16 v27, v5

    move-object/from16 v5, v24

    move/from16 v24, v26

    move-object/from16 v26, v52

    move/from16 v54, v2

    move-object/from16 v53, v3

    move-object/from16 v52, v4

    move-object/from16 v4, v19

    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    move/from16 v18, v45

    move-object/from16 v45, v12

    move-object/from16 v12, v20

    move/from16 v20, v47

    move-object/from16 v47, v14

    move-object/from16 v14, v22

    move/from16 v22, v49

    move-object/from16 v49, v7

    new-instance v7, Lcom/vuitton/android/data/dto/pdp/ProductDto;

    const/16 v55, 0x0

    const/16 v56, 0x0

    move-object/from16 v17, v5

    move-object/from16 v16, v44

    move/from16 v19, v46

    move-object/from16 v44, v10

    move-object/from16 v46, v13

    move-object/from16 v13, v21

    move/from16 v21, v48

    move-object v10, v4

    move-object/from16 v48, v15

    move-object/from16 v15, v23

    move-object/from16 v23, v25

    move/from16 v25, v50

    move-object/from16 v50, v9

    move/from16 v9, v54

    move-object/from16 v54, v27

    move-object/from16 v27, v29

    move-object/from16 v29, v31

    move-object/from16 v31, v33

    move-object/from16 v33, v35

    move-object/from16 v35, v37

    move-object/from16 v37, v39

    move-object/from16 v39, v41

    move-object/from16 v41, v52

    move-object/from16 v52, v8

    move/from16 v8, v24

    move-object/from16 v24, v26

    move-object/from16 v26, v28

    move-object/from16 v28, v30

    move-object/from16 v30, v32

    move-object/from16 v32, v34

    move-object/from16 v34, v36

    move-object/from16 v36, v38

    move-object/from16 v38, v40

    move-object/from16 v40, v42

    move-object/from16 v42, v53

    move-object/from16 v53, v11

    move-object/from16 v11, v43

    move-object/from16 v43, v6

    invoke-direct/range {v7 .. v56}, Lcom/vuitton/android/data/dto/pdp/ProductDto;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/pdp/ProductBackgroundDto;ZZZZZLjava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;ZLjava/lang/Boolean;Lcom/vuitton/android/data/dto/pdp/DimensionsDto;Lcom/vuitton/android/data/dto/product/virtualtryon/VirtualTryOnDto;Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;Lcom/vuitton/android/data/dto/pdp/EditoDto;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/pdp/SellableStatusDto;Lcom/vuitton/android/data/dto/pdp/ProductCustomizationDto;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/data/dto/pdp/DigitalAssetProductDto;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
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

.method public final c(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 32

    move-object/from16 v0, p2

    check-cast v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->S:Ljava/lang/String;

    iget-object v2, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->R:Ljava/lang/String;

    iget-object v3, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->O:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

    iget-object v4, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->N:Ljava/util/List;

    iget-object v5, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->M:Ljava/util/List;

    iget-object v6, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->L:Ljava/util/List;

    iget-object v7, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->K:Lcom/vuitton/android/data/dto/pdp/DigitalAssetProductDto;

    iget-object v8, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->J:Ljava/util/List;

    iget-object v9, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->I:Ljava/lang/String;

    iget-object v10, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->H:Lcom/vuitton/android/data/dto/pdp/ProductCustomizationDto;

    sget-object v11, Lcom/vuitton/android/data/dto/pdp/ProductDto$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-object/from16 v12, p1

    invoke-interface {v12, v11}, Lkotlinx/serialization/encoding/Encoder;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object v12

    sget-object v13, Lcom/vuitton/android/data/dto/pdp/ProductDto;->T:[Lkotlin/Lazy;

    sget-object v14, Lcom/vuitton/foundation/model/domain/model/product/SkuId$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/product/SkuId$$serializer;

    iget-object v15, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->a:Ljava/lang/String;

    move-object/from16 p0, v13

    iget-object v13, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->F:Ljava/util/List;

    move-object/from16 p2, v1

    iget-object v1, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->C:Ljava/util/List;

    move-object/from16 v16, v2

    iget-object v2, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->A:Ljava/util/List;

    move-object/from16 v17, v3

    iget-object v3, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->z:Lcom/vuitton/android/data/dto/pdp/EditoDto;

    move-object/from16 v18, v4

    iget-object v4, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->y:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

    move-object/from16 v19, v5

    iget-object v5, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->x:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

    move-object/from16 v20, v6

    iget-object v6, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->w:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

    move-object/from16 v21, v7

    iget-object v7, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->v:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

    move-object/from16 v22, v8

    iget-object v8, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->u:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto;

    move-object/from16 v23, v9

    iget-object v9, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->t:Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;

    move-object/from16 v24, v10

    iget-object v10, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->s:Lcom/vuitton/android/data/dto/product/virtualtryon/VirtualTryOnDto;

    move-object/from16 p1, v13

    iget-object v13, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->r:Lcom/vuitton/android/data/dto/pdp/DimensionsDto;

    move-object/from16 v25, v1

    iget-object v1, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->q:Ljava/lang/Boolean;

    move-object/from16 v26, v2

    iget-object v2, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->o:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    move-object/from16 v27, v3

    iget-object v3, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->n:Ljava/lang/String;

    move-object/from16 v28, v4

    iget-object v4, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->f:Ljava/lang/String;

    move-object/from16 v29, v5

    iget-object v5, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->e:Ljava/lang/String;

    move-object/from16 v30, v6

    iget-object v6, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->c:Ljava/lang/String;

    move-object/from16 v31, v7

    const/4 v7, 0x0

    invoke-static {v15, v12, v11, v7, v14}, Lcj;->B(Ljava/lang/String;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;ILcom/vuitton/foundation/model/domain/model/product/SkuId$$serializer;)V

    const/4 v7, 0x1

    iget-object v14, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->b:Ljava/lang/String;

    invoke-interface {v12, v11, v7, v14}, Lkotlinx/serialization/encoding/CompositeEncoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    invoke-interface {v12, v11}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v6, :cond_1

    :goto_0
    sget-object v7, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v14, 0x2

    invoke-interface {v12, v11, v14, v7, v6}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    sget-object v6, Lcom/vuitton/foundation/model/domain/model/product/ProductId$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/product/ProductId$$serializer;

    iget-object v7, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->d:Ljava/lang/String;

    new-instance v14, Lcom/vuitton/foundation/model/domain/model/product/ProductId;

    invoke-direct {v14, v7}, Lcom/vuitton/foundation/model/domain/model/product/ProductId;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x3

    invoke-interface {v12, v11, v7, v6, v14}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    invoke-interface {v12, v11}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v5, :cond_3

    :goto_1
    sget-object v6, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v7, 0x4

    invoke-interface {v12, v11, v7, v6, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3
    invoke-interface {v12, v11}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    if-eqz v4, :cond_5

    :goto_2
    sget-object v5, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v6, 0x5

    invoke-interface {v12, v11, v6, v5, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_5
    const/4 v4, 0x6

    iget-object v5, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->g:Ljava/lang/String;

    invoke-interface {v12, v11, v4, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v4, 0x7

    aget-object v5, p0, v4

    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlinx/serialization/SerializationStrategy;

    iget-object v6, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->h:Lcom/vuitton/android/data/dto/pdp/ProductBackgroundDto;

    invoke-interface {v12, v11, v4, v5, v6}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/16 v4, 0x8

    iget-boolean v5, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->i:Z

    invoke-interface {v12, v11, v4, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v4, 0x9

    iget-boolean v5, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->j:Z

    invoke-interface {v12, v11, v4, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v4, 0xa

    iget-boolean v5, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->k:Z

    invoke-interface {v12, v11, v4, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v4, 0xb

    iget-boolean v5, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->l:Z

    invoke-interface {v12, v11, v4, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v4, 0xc

    iget-boolean v5, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->m:Z

    invoke-interface {v12, v11, v4, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    invoke-interface {v12, v11}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_3

    :cond_6
    if-eqz v3, :cond_7

    :goto_3
    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v5, 0xd

    invoke-interface {v12, v11, v5, v4, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_7
    invoke-interface {v12, v11}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_4

    :cond_8
    if-eqz v2, :cond_9

    :goto_4
    sget-object v3, Lcom/vuitton/android/data/dto/common/AssetImageDto$$serializer;->a:Lcom/vuitton/android/data/dto/common/AssetImageDto$$serializer;

    const/16 v4, 0xe

    invoke-interface {v12, v11, v4, v3, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_9
    const/16 v2, 0xf

    iget-boolean v3, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->p:Z

    invoke-interface {v12, v11, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    invoke-interface {v12, v11}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_5

    :cond_a
    if-eqz v1, :cond_b

    :goto_5
    sget-object v2, Lkotlinx/serialization/internal/BooleanSerializer;->a:Lkotlinx/serialization/internal/BooleanSerializer;

    const/16 v3, 0x10

    invoke-interface {v12, v11, v3, v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_b
    invoke-interface {v12, v11}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_6

    :cond_c
    if-eqz v13, :cond_d

    :goto_6
    sget-object v1, Lcom/vuitton/android/data/dto/pdp/DimensionsDto$$serializer;->a:Lcom/vuitton/android/data/dto/pdp/DimensionsDto$$serializer;

    const/16 v2, 0x11

    invoke-interface {v12, v11, v2, v1, v13}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_d
    invoke-interface {v12, v11}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_7

    :cond_e
    if-eqz v10, :cond_f

    :goto_7
    sget-object v1, Lcom/vuitton/android/data/dto/product/virtualtryon/VirtualTryOnDto$$serializer;->a:Lcom/vuitton/android/data/dto/product/virtualtryon/VirtualTryOnDto$$serializer;

    const/16 v2, 0x12

    invoke-interface {v12, v11, v2, v1, v10}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_f
    invoke-interface {v12, v11}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_8

    :cond_10
    if-eqz v9, :cond_11

    :goto_8
    sget-object v1, Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto$$serializer;->a:Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto$$serializer;

    const/16 v2, 0x13

    invoke-interface {v12, v11, v2, v1, v9}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_11
    invoke-interface {v12, v11}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_9

    :cond_12
    if-eqz v8, :cond_13

    :goto_9
    sget-object v1, Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto$$serializer;->a:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto$$serializer;

    const/16 v2, 0x14

    invoke-interface {v12, v11, v2, v1, v8}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_13
    invoke-interface {v12, v11}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_a

    :cond_14
    if-eqz v31, :cond_15

    :goto_a
    sget-object v1, Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto$$serializer;->a:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto$$serializer;

    const/16 v2, 0x15

    move-object/from16 v3, v31

    invoke-interface {v12, v11, v2, v1, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_15
    invoke-interface {v12, v11}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_b

    :cond_16
    if-eqz v30, :cond_17

    :goto_b
    sget-object v1, Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto$$serializer;->a:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto$$serializer;

    const/16 v2, 0x16

    move-object/from16 v3, v30

    invoke-interface {v12, v11, v2, v1, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_17
    invoke-interface {v12, v11}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_c

    :cond_18
    if-eqz v29, :cond_19

    :goto_c
    sget-object v1, Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto$$serializer;->a:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto$$serializer;

    const/16 v2, 0x17

    move-object/from16 v3, v29

    invoke-interface {v12, v11, v2, v1, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_19
    invoke-interface {v12, v11}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_d

    :cond_1a
    if-eqz v28, :cond_1b

    :goto_d
    sget-object v1, Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto$$serializer;->a:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto$$serializer;

    const/16 v2, 0x18

    move-object/from16 v3, v28

    invoke-interface {v12, v11, v2, v1, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1b
    invoke-interface {v12, v11}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_e

    :cond_1c
    if-eqz v27, :cond_1d

    :goto_e
    sget-object v1, Lcom/vuitton/android/data/dto/pdp/EditoDto$$serializer;->a:Lcom/vuitton/android/data/dto/pdp/EditoDto$$serializer;

    const/16 v2, 0x19

    move-object/from16 v3, v27

    invoke-interface {v12, v11, v2, v1, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1d
    invoke-interface {v12, v11}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_f

    :cond_1e
    if-eqz v26, :cond_1f

    :goto_f
    const/16 v1, 0x1a

    aget-object v2, p0, v1

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    move-object/from16 v3, v26

    invoke-interface {v12, v11, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1f
    const/16 v1, 0x1b

    aget-object v2, p0, v1

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->B:Ljava/util/List;

    invoke-interface {v12, v11, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    invoke-interface {v12, v11}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_10

    :cond_20
    if-eqz v25, :cond_21

    :goto_10
    const/16 v1, 0x1c

    aget-object v2, p0, v1

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    move-object/from16 v3, v25

    invoke-interface {v12, v11, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_21
    const/16 v1, 0x1d

    aget-object v2, p0, v1

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->D:Ljava/util/List;

    invoke-interface {v12, v11, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/16 v1, 0x1e

    aget-object v2, p0, v1

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->E:Ljava/util/List;

    invoke-interface {v12, v11, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    invoke-interface {v12, v11}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_22

    goto :goto_11

    :cond_22
    if-eqz p1, :cond_23

    :goto_11
    const/16 v1, 0x1f

    aget-object v2, p0, v1

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    move-object/from16 v3, p1

    invoke-interface {v12, v11, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_23
    sget-object v1, Lcom/vuitton/android/data/dto/pdp/SellableStatusDto$$serializer;->a:Lcom/vuitton/android/data/dto/pdp/SellableStatusDto$$serializer;

    iget-object v2, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->G:Lcom/vuitton/android/data/dto/pdp/SellableStatusDto;

    const/16 v3, 0x20

    invoke-interface {v12, v11, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    invoke-interface {v12, v11}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_12

    :cond_24
    if-eqz v24, :cond_25

    :goto_12
    sget-object v1, Lcom/vuitton/android/data/dto/pdp/ProductCustomizationDto$$serializer;->a:Lcom/vuitton/android/data/dto/pdp/ProductCustomizationDto$$serializer;

    const/16 v2, 0x21

    move-object/from16 v3, v24

    invoke-interface {v12, v11, v2, v1, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_25
    invoke-interface {v12, v11}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_26

    goto :goto_13

    :cond_26
    if-eqz v23, :cond_27

    :goto_13
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v2, 0x22

    move-object/from16 v3, v23

    invoke-interface {v12, v11, v2, v1, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_27
    invoke-interface {v12, v11}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_28

    goto :goto_14

    :cond_28
    if-eqz v22, :cond_29

    :goto_14
    const/16 v1, 0x23

    aget-object v2, p0, v1

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    move-object/from16 v3, v22

    invoke-interface {v12, v11, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_29
    invoke-interface {v12, v11}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_2a

    goto :goto_15

    :cond_2a
    if-eqz v21, :cond_2b

    :goto_15
    sget-object v1, Lcom/vuitton/android/data/dto/pdp/DigitalAssetProductDto$$serializer;->a:Lcom/vuitton/android/data/dto/pdp/DigitalAssetProductDto$$serializer;

    const/16 v2, 0x24

    move-object/from16 v3, v21

    invoke-interface {v12, v11, v2, v1, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_2b
    invoke-interface {v12, v11}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_2c

    goto :goto_16

    :cond_2c
    if-eqz v20, :cond_2d

    :goto_16
    const/16 v1, 0x25

    aget-object v2, p0, v1

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    move-object/from16 v3, v20

    invoke-interface {v12, v11, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_2d
    invoke-interface {v12, v11}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_2e

    goto :goto_17

    :cond_2e
    if-eqz v19, :cond_2f

    :goto_17
    const/16 v1, 0x26

    aget-object v2, p0, v1

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    move-object/from16 v3, v19

    invoke-interface {v12, v11, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_2f
    invoke-interface {v12, v11}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_30

    goto :goto_18

    :cond_30
    if-eqz v18, :cond_31

    :goto_18
    const/16 v1, 0x27

    aget-object v2, p0, v1

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    move-object/from16 v3, v18

    invoke-interface {v12, v11, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_31
    invoke-interface {v12, v11}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_32

    goto :goto_19

    :cond_32
    if-eqz v17, :cond_33

    :goto_19
    sget-object v1, Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto$$serializer;->a:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto$$serializer;

    const/16 v2, 0x28

    move-object/from16 v3, v17

    invoke-interface {v12, v11, v2, v1, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_33
    const/16 v1, 0x29

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->P:Z

    invoke-interface {v12, v11, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 v1, 0x2a

    aget-object v2, p0, v1

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v0, v0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->Q:Ljava/util/List;

    invoke-interface {v12, v11, v1, v2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    invoke-interface {v12, v11}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_34

    goto :goto_1a

    :cond_34
    if-eqz v16, :cond_35

    :goto_1a
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v1, 0x2b

    move-object/from16 v2, v16

    invoke-interface {v12, v11, v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_35
    invoke-interface {v12, v11}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_36

    goto :goto_1b

    :cond_36
    if-eqz p2, :cond_37

    :goto_1b
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v1, 0x2c

    move-object/from16 v2, p2

    invoke-interface {v12, v11, v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_37
    invoke-interface {v12, v11}, Lkotlinx/serialization/encoding/CompositeEncoder;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public final e()[Lkotlinx/serialization/KSerializer;
    .locals 6

    sget-object p0, Lcom/vuitton/android/data/dto/pdp/ProductDto;->T:[Lkotlin/Lazy;

    const/16 v0, 0x2d

    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    const/4 v1, 0x0

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/product/SkuId$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/product/SkuId$$serializer;

    aput-object v2, v0, v1

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v2, 0x2

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/product/ProductId$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/product/ProductId$$serializer;

    aput-object v3, v0, v2

    const/4 v2, 0x4

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x5

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/4 v2, 0x7

    aget-object v3, p0, v2

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    sget-object v2, Lkotlinx/serialization/internal/BooleanSerializer;->a:Lkotlinx/serialization/internal/BooleanSerializer;

    const/16 v3, 0x8

    aput-object v2, v0, v3

    const/16 v3, 0x9

    aput-object v2, v0, v3

    const/16 v3, 0xa

    aput-object v2, v0, v3

    const/16 v3, 0xb

    aput-object v2, v0, v3

    const/16 v3, 0xc

    aput-object v2, v0, v3

    const/16 v3, 0xd

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v4

    aput-object v4, v0, v3

    sget-object v3, Lcom/vuitton/android/data/dto/common/AssetImageDto$$serializer;->a:Lcom/vuitton/android/data/dto/common/AssetImageDto$$serializer;

    invoke-static {v3}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    const/16 v4, 0xe

    aput-object v3, v0, v4

    const/16 v3, 0xf

    aput-object v2, v0, v3

    const/16 v3, 0x10

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v4

    aput-object v4, v0, v3

    sget-object v3, Lcom/vuitton/android/data/dto/pdp/DimensionsDto$$serializer;->a:Lcom/vuitton/android/data/dto/pdp/DimensionsDto$$serializer;

    invoke-static {v3}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    const/16 v4, 0x11

    aput-object v3, v0, v4

    sget-object v3, Lcom/vuitton/android/data/dto/product/virtualtryon/VirtualTryOnDto$$serializer;->a:Lcom/vuitton/android/data/dto/product/virtualtryon/VirtualTryOnDto$$serializer;

    invoke-static {v3}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    const/16 v4, 0x12

    aput-object v3, v0, v4

    sget-object v3, Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto$$serializer;->a:Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto$$serializer;

    invoke-static {v3}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    const/16 v4, 0x13

    aput-object v3, v0, v4

    sget-object v3, Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto$$serializer;->a:Lcom/vuitton/android/data/dto/pdp/ProductCharacteristicsDto$$serializer;

    invoke-static {v3}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v4

    const/16 v5, 0x14

    aput-object v4, v0, v5

    const/16 v4, 0x15

    invoke-static {v3}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v5

    aput-object v5, v0, v4

    const/16 v4, 0x16

    invoke-static {v3}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v5

    aput-object v5, v0, v4

    const/16 v4, 0x17

    invoke-static {v3}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v5

    aput-object v5, v0, v4

    const/16 v4, 0x18

    invoke-static {v3}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v5

    aput-object v5, v0, v4

    sget-object v4, Lcom/vuitton/android/data/dto/pdp/EditoDto$$serializer;->a:Lcom/vuitton/android/data/dto/pdp/EditoDto$$serializer;

    invoke-static {v4}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v4

    const/16 v5, 0x19

    aput-object v4, v0, v5

    const/16 v4, 0x1a

    aget-object v5, p0, v4

    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlinx/serialization/KSerializer;

    invoke-static {v5}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v5

    aput-object v5, v0, v4

    const/16 v4, 0x1b

    aget-object v5, p0, v4

    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v0, v4

    const/16 v4, 0x1c

    aget-object v5, p0, v4

    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlinx/serialization/KSerializer;

    invoke-static {v5}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v5

    aput-object v5, v0, v4

    const/16 v4, 0x1d

    aget-object v5, p0, v4

    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v0, v4

    const/16 v4, 0x1e

    aget-object v5, p0, v4

    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v0, v4

    const/16 v4, 0x1f

    aget-object v5, p0, v4

    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlinx/serialization/KSerializer;

    invoke-static {v5}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v5

    aput-object v5, v0, v4

    const/16 v4, 0x20

    sget-object v5, Lcom/vuitton/android/data/dto/pdp/SellableStatusDto$$serializer;->a:Lcom/vuitton/android/data/dto/pdp/SellableStatusDto$$serializer;

    aput-object v5, v0, v4

    sget-object v4, Lcom/vuitton/android/data/dto/pdp/ProductCustomizationDto$$serializer;->a:Lcom/vuitton/android/data/dto/pdp/ProductCustomizationDto$$serializer;

    invoke-static {v4}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v4

    const/16 v5, 0x21

    aput-object v4, v0, v5

    const/16 v4, 0x22

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v5

    aput-object v5, v0, v4

    const/16 v4, 0x23

    aget-object v5, p0, v4

    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlinx/serialization/KSerializer;

    invoke-static {v5}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v5

    aput-object v5, v0, v4

    sget-object v4, Lcom/vuitton/android/data/dto/pdp/DigitalAssetProductDto$$serializer;->a:Lcom/vuitton/android/data/dto/pdp/DigitalAssetProductDto$$serializer;

    invoke-static {v4}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v4

    const/16 v5, 0x24

    aput-object v4, v0, v5

    const/16 v4, 0x25

    aget-object v5, p0, v4

    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlinx/serialization/KSerializer;

    invoke-static {v5}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v5

    aput-object v5, v0, v4

    const/16 v4, 0x26

    aget-object v5, p0, v4

    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlinx/serialization/KSerializer;

    invoke-static {v5}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v5

    aput-object v5, v0, v4

    const/16 v4, 0x27

    aget-object v5, p0, v4

    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlinx/serialization/KSerializer;

    invoke-static {v5}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v5

    aput-object v5, v0, v4

    const/16 v4, 0x28

    invoke-static {v3}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v0, v4

    const/16 v3, 0x29

    aput-object v2, v0, v3

    const/16 v2, 0x2a

    aget-object p0, p0, v2

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v0, v2

    const/16 p0, 0x2b

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    aput-object v2, v0, p0

    const/16 p0, 0x2c

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    aput-object v1, v0, p0

    return-object v0
.end method
