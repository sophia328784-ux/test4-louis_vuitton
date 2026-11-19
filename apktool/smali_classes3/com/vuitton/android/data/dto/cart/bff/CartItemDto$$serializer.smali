.class public final synthetic Lcom/vuitton/android/data/dto/cart/bff/CartItemDto$$serializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = "$serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/internal/GeneratedSerializer<",
        "Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;",
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
        "com/vuitton/android/data/dto/cart/bff/CartItemDto.$serializer",
        "Lkotlinx/serialization/internal/GeneratedSerializer;",
        "Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;",
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
.field public static final a:Lcom/vuitton/android/data/dto/cart/bff/CartItemDto$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto$$serializer;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto$$serializer;->a:Lcom/vuitton/android/data/dto/cart/bff/CartItemDto$$serializer;

    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "com.vuitton.android.data.dto.cart.bff.CartItemDto"

    const/16 v3, 0x16

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v0, "identifier"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "productId"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "skuIdentifier"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "name"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "description"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "color"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "size"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "material"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isExclusive"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "mainImageURL"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "images"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isAvailable"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "quantity"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "priceInfo"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isBackOrder"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isPreOrder"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "disclaimers"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "commercialTag"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "bundle"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "customizations"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isQuantityEditable"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isWishlistEligible"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    sput-object v1, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public final b(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 33

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/Decoder;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object v1

    sget-object v2, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->w:[Lkotlin/Lazy;

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

    const/16 v29, 0x0

    const/16 v30, 0x0

    :goto_0
    if-eqz v18, :cond_4

    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v26

    packed-switch v26, :pswitch_data_0

    invoke-static/range {v26 .. v26}, Lb21;->l(I)V

    return-object p0

    :pswitch_0
    move-object/from16 v26, v13

    const/16 v13, 0x15

    invoke-interface {v1, v0, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v30

    const/high16 v13, 0x200000

    :goto_1
    or-int/2addr v8, v13

    :goto_2
    move-object/from16 v13, v26

    goto :goto_0

    :pswitch_1
    move-object/from16 v26, v13

    const/16 v13, 0x14

    invoke-interface {v1, v0, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v29

    const/high16 v13, 0x100000

    goto :goto_1

    :pswitch_2
    move-object/from16 v26, v13

    sget-object v13, Lcom/vuitton/android/data/dto/cart/bff/CartItemCustomizationDto$$serializer;->a:Lcom/vuitton/android/data/dto/cart/bff/CartItemCustomizationDto$$serializer;

    move-object/from16 v27, v14

    const/16 v14, 0x13

    invoke-interface {v1, v0, v14, v13, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vuitton/android/data/dto/cart/bff/CartItemCustomizationDto;

    const/high16 v13, 0x80000

    :goto_3
    or-int/2addr v8, v13

    :goto_4
    move-object/from16 v13, v26

    move-object/from16 v14, v27

    goto :goto_0

    :pswitch_3
    move-object/from16 v26, v13

    move-object/from16 v27, v14

    sget-object v13, Lcom/vuitton/android/data/dto/cart/bff/BundleDto$$serializer;->a:Lcom/vuitton/android/data/dto/cart/bff/BundleDto$$serializer;

    const/16 v14, 0x12

    invoke-interface {v1, v0, v14, v13, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vuitton/android/data/dto/cart/bff/BundleDto;

    const/high16 v13, 0x40000

    goto :goto_3

    :pswitch_4
    move-object/from16 v26, v13

    move-object/from16 v27, v14

    sget-object v13, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v14, 0x11

    invoke-interface {v1, v0, v14, v13, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/high16 v13, 0x20000

    goto :goto_3

    :pswitch_5
    move-object/from16 v26, v13

    move-object/from16 v27, v14

    sget-object v13, Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto$$serializer;->a:Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto$$serializer;

    const/16 v14, 0x10

    invoke-interface {v1, v0, v14, v13, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;

    const/high16 v13, 0x10000

    goto :goto_3

    :pswitch_6
    move-object/from16 v26, v13

    move-object/from16 v27, v14

    sget-object v13, Lkotlinx/serialization/internal/BooleanSerializer;->a:Lkotlinx/serialization/internal/BooleanSerializer;

    const/16 v14, 0xf

    invoke-interface {v1, v0, v14, v13, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    const v13, 0x8000

    goto :goto_3

    :pswitch_7
    move-object/from16 v26, v13

    move-object/from16 v27, v14

    sget-object v13, Lkotlinx/serialization/internal/BooleanSerializer;->a:Lkotlinx/serialization/internal/BooleanSerializer;

    const/16 v14, 0xe

    invoke-interface {v1, v0, v14, v13, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    or-int/lit16 v8, v8, 0x4000

    goto :goto_4

    :pswitch_8
    move-object/from16 v26, v13

    move-object/from16 v27, v14

    sget-object v13, Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto$$serializer;->a:Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto$$serializer;

    const/16 v14, 0xd

    invoke-interface {v1, v0, v14, v13, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;

    or-int/lit16 v8, v8, 0x2000

    goto :goto_4

    :pswitch_9
    move-object/from16 v26, v13

    move-object/from16 v27, v14

    const/16 v13, 0xc

    invoke-interface {v1, v0, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->j(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v25

    or-int/lit16 v8, v8, 0x1000

    goto/16 :goto_2

    :pswitch_a
    move-object/from16 v26, v13

    move-object/from16 v27, v14

    const/16 v13, 0xb

    invoke-interface {v1, v0, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v24

    or-int/lit16 v8, v8, 0x800

    goto/16 :goto_2

    :pswitch_b
    move-object/from16 v26, v13

    move-object/from16 v27, v14

    const/16 v13, 0xa

    aget-object v14, v17, v13

    invoke-interface {v14}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v1, v0, v13, v14, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    or-int/lit16 v8, v8, 0x400

    goto/16 :goto_4

    :pswitch_c
    move-object/from16 v26, v13

    move-object/from16 v27, v14

    sget-object v13, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v14, 0x9

    invoke-interface {v1, v0, v14, v13, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    or-int/lit16 v8, v8, 0x200

    goto/16 :goto_4

    :pswitch_d
    move-object/from16 v26, v13

    move-object/from16 v27, v14

    const/16 v13, 0x8

    invoke-interface {v1, v0, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v23

    or-int/lit16 v8, v8, 0x100

    goto/16 :goto_2

    :pswitch_e
    move-object/from16 v26, v13

    move-object/from16 v27, v14

    sget-object v13, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v14, 0x7

    invoke-interface {v1, v0, v14, v13, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    or-int/lit16 v8, v8, 0x80

    goto/16 :goto_4

    :pswitch_f
    move-object/from16 v26, v13

    move-object/from16 v27, v14

    sget-object v13, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v14, 0x6

    invoke-interface {v1, v0, v14, v13, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object v15, v13

    check-cast v15, Ljava/lang/String;

    or-int/lit8 v8, v8, 0x40

    goto/16 :goto_4

    :pswitch_10
    move-object/from16 v26, v13

    move-object/from16 v27, v14

    sget-object v13, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v14, 0x5

    move-object/from16 v28, v2

    move-object/from16 v2, v27

    invoke-interface {v1, v0, v14, v13, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Ljava/lang/String;

    or-int/lit8 v8, v8, 0x20

    move-object/from16 v13, v26

    :goto_5
    move-object/from16 v2, v28

    goto/16 :goto_0

    :pswitch_11
    move-object/from16 v28, v2

    move-object/from16 v26, v13

    move-object v2, v14

    sget-object v13, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v14, 0x4

    move-object/from16 v27, v2

    move-object/from16 v2, v26

    invoke-interface {v1, v0, v14, v13, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Ljava/lang/String;

    or-int/lit8 v8, v8, 0x10

    :goto_6
    move-object/from16 v14, v27

    goto :goto_5

    :pswitch_12
    move-object/from16 v28, v2

    move-object v2, v13

    move-object/from16 v27, v14

    sget-object v13, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v14, 0x3

    move-object/from16 v26, v2

    move-object/from16 v2, v22

    invoke-interface {v1, v0, v14, v13, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Ljava/lang/String;

    or-int/lit8 v8, v8, 0x8

    :goto_7
    move-object/from16 v13, v26

    goto :goto_6

    :pswitch_13
    move-object/from16 v28, v2

    move-object/from16 v26, v13

    move-object/from16 v27, v14

    move-object/from16 v2, v22

    sget-object v13, Lcom/vuitton/foundation/model/domain/model/product/SkuId$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/product/SkuId$$serializer;

    if-eqz v21, :cond_0

    new-instance v14, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    move-object/from16 v22, v2

    move-object/from16 v2, v21

    invoke-direct {v14, v2}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :cond_0
    move-object/from16 v22, v2

    move-object/from16 v14, p0

    :goto_8
    const/4 v2, 0x2

    invoke-interface {v1, v0, v2, v13, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->a:Ljava/lang/String;

    move-object/from16 v21, v2

    goto :goto_9

    :cond_1
    move-object/from16 v21, p0

    :goto_9
    or-int/lit8 v8, v8, 0x4

    goto :goto_7

    :pswitch_14
    move-object/from16 v28, v2

    move-object/from16 v26, v13

    move-object/from16 v27, v14

    move-object/from16 v2, v21

    sget-object v13, Lcom/vuitton/foundation/model/domain/model/product/ProductId$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/product/ProductId$$serializer;

    if-eqz v20, :cond_2

    new-instance v14, Lcom/vuitton/foundation/model/domain/model/product/ProductId;

    move-object/from16 v21, v2

    move-object/from16 v2, v20

    invoke-direct {v14, v2}, Lcom/vuitton/foundation/model/domain/model/product/ProductId;-><init>(Ljava/lang/String;)V

    :goto_a
    const/4 v2, 0x1

    goto :goto_b

    :cond_2
    move-object/from16 v21, v2

    move-object/from16 v14, p0

    goto :goto_a

    :goto_b
    invoke-interface {v1, v0, v2, v13, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vuitton/foundation/model/domain/model/product/ProductId;

    if-eqz v13, :cond_3

    iget-object v13, v13, Lcom/vuitton/foundation/model/domain/model/product/ProductId;->a:Ljava/lang/String;

    move-object/from16 v20, v13

    goto :goto_c

    :cond_3
    move-object/from16 v20, p0

    :goto_c
    or-int/lit8 v8, v8, 0x2

    goto :goto_7

    :pswitch_15
    move-object/from16 v28, v2

    move-object/from16 v26, v13

    move-object/from16 v27, v14

    move-object/from16 v2, v20

    const/16 v16, 0x1

    sget-object v13, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    move/from16 v14, v25

    move-object/from16 v25, v9

    move-object/from16 v9, v19

    move-object/from16 v19, v27

    move-object/from16 v27, v11

    move-object/from16 v11, v21

    move/from16 v21, v14

    const/4 v14, 0x0

    invoke-interface {v1, v0, v14, v13, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    or-int/lit8 v8, v8, 0x1

    move-object/from16 v14, v19

    move-object/from16 v13, v26

    :goto_d
    move-object/from16 v2, v28

    move-object/from16 v19, v9

    move-object/from16 v9, v25

    move/from16 v25, v21

    move-object/from16 v21, v11

    move-object/from16 v11, v27

    goto/16 :goto_0

    :pswitch_16
    move-object/from16 v28, v2

    move-object/from16 v27, v11

    move-object/from16 v26, v13

    move-object/from16 v2, v20

    move-object/from16 v11, v21

    move/from16 v21, v25

    const/16 v16, 0x1

    move-object/from16 v25, v9

    move-object/from16 v9, v19

    move-object/from16 v19, v14

    const/4 v14, 0x0

    move/from16 v18, v14

    move-object/from16 v14, v19

    goto :goto_d

    :cond_4
    move-object/from16 v28, v2

    move-object/from16 v27, v11

    move-object/from16 v26, v13

    move-object/from16 v2, v20

    move-object/from16 v11, v21

    move/from16 v21, v25

    move-object/from16 v25, v9

    move-object/from16 v9, v19

    move-object/from16 v19, v14

    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    move-object/from16 v16, v7

    new-instance v7, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v18, v5

    move/from16 v17, v23

    move/from16 v20, v24

    move-object/from16 v23, v28

    move-object/from16 v19, v4

    move-object/from16 v24, v6

    move-object/from16 v26, v10

    move-object/from16 v28, v12

    move-object/from16 v12, v22

    move-object v10, v2

    move-object/from16 v22, v3

    invoke-direct/range {v7 .. v32}, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;ZILcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/cart/bff/BundleDto;Lcom/vuitton/android/data/dto/cart/bff/CartItemCustomizationDto;ZZLkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7

    :pswitch_data_0
    .packed-switch -0x1
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
    .locals 17

    move-object/from16 v0, p2

    check-cast v0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v1, v0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->l:Z

    iget-object v2, v0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->k:Ljava/util/List;

    iget-object v3, v0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->j:Ljava/lang/String;

    iget-boolean v4, v0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->i:Z

    iget-object v5, v0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->h:Ljava/lang/String;

    iget-object v6, v0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->g:Ljava/lang/String;

    iget-object v7, v0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->f:Ljava/lang/String;

    iget-object v8, v0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->e:Ljava/lang/String;

    iget-object v9, v0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->d:Ljava/lang/String;

    iget-object v10, v0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->c:Ljava/lang/String;

    iget-object v11, v0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->b:Ljava/lang/String;

    iget-object v12, v0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->a:Ljava/lang/String;

    sget-object v13, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-object/from16 v14, p1

    invoke-interface {v14, v13}, Lkotlinx/serialization/encoding/Encoder;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object v14

    sget-object v15, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->w:[Lkotlin/Lazy;

    invoke-interface {v14, v13}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v16

    if-eqz v16, :cond_0

    :goto_0
    move-object/from16 p0, v15

    goto :goto_1

    :cond_0
    if-eqz v12, :cond_1

    goto :goto_0

    :goto_1
    sget-object v15, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 p2, v0

    const/4 v0, 0x0

    invoke-interface {v14, v13, v0, v15, v12}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    move-object/from16 p2, v0

    move-object/from16 p0, v15

    :goto_2
    invoke-interface {v14, v13}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    const/4 v15, 0x1

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    if-eqz v11, :cond_4

    :goto_3
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/product/ProductId$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/product/ProductId$$serializer;

    if-eqz v11, :cond_3

    new-instance v12, Lcom/vuitton/foundation/model/domain/model/product/ProductId;

    invoke-direct {v12, v11}, Lcom/vuitton/foundation/model/domain/model/product/ProductId;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    const/4 v12, 0x0

    :goto_4
    invoke-interface {v14, v13, v15, v0, v12}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_4
    invoke-interface {v14, v13}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_5

    :cond_5
    if-eqz v10, :cond_7

    :goto_5
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/product/SkuId$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/product/SkuId$$serializer;

    if-eqz v10, :cond_6

    new-instance v12, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    invoke-direct {v12, v10}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :cond_6
    const/4 v12, 0x0

    :goto_6
    const/4 v10, 0x2

    invoke-interface {v14, v13, v10, v0, v12}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_7
    invoke-interface {v14, v13}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_7

    :cond_8
    if-eqz v9, :cond_9

    :goto_7
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v10, 0x3

    invoke-interface {v14, v13, v10, v0, v9}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_9
    invoke-interface {v14, v13}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_8

    :cond_a
    if-eqz v8, :cond_b

    :goto_8
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v9, 0x4

    invoke-interface {v14, v13, v9, v0, v8}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_b
    invoke-interface {v14, v13}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_9

    :cond_c
    if-eqz v7, :cond_d

    :goto_9
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v8, 0x5

    invoke-interface {v14, v13, v8, v0, v7}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_d
    invoke-interface {v14, v13}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_a

    :cond_e
    if-eqz v6, :cond_f

    :goto_a
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v7, 0x6

    invoke-interface {v14, v13, v7, v0, v6}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_f
    invoke-interface {v14, v13}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_b

    :cond_10
    if-eqz v5, :cond_11

    :goto_b
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v6, 0x7

    invoke-interface {v14, v13, v6, v0, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_11
    invoke-interface {v14, v13}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_c

    :cond_12
    if-eqz v4, :cond_13

    :goto_c
    const/16 v0, 0x8

    invoke-interface {v14, v13, v0, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_13
    invoke-interface {v14, v13}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_d

    :cond_14
    if-eqz v3, :cond_15

    :goto_d
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v4, 0x9

    invoke-interface {v14, v13, v4, v0, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_15
    invoke-interface {v14, v13}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_e

    :cond_16
    if-eqz v2, :cond_17

    :goto_e
    const/16 v0, 0xa

    aget-object v3, p0, v0

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {v14, v13, v0, v3, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_17
    invoke-interface {v14, v13}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_f

    :cond_18
    if-eqz v1, :cond_19

    :goto_f
    const/16 v0, 0xb

    invoke-interface {v14, v13, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_19
    move-object/from16 v0, p2

    iget v1, v0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->m:I

    iget-boolean v2, v0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->v:Z

    iget-boolean v3, v0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->u:Z

    iget-object v4, v0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->t:Lcom/vuitton/android/data/dto/cart/bff/CartItemCustomizationDto;

    iget-object v5, v0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->s:Lcom/vuitton/android/data/dto/cart/bff/BundleDto;

    iget-object v6, v0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->r:Ljava/lang/String;

    iget-object v7, v0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->q:Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;

    iget-object v8, v0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->p:Ljava/lang/Boolean;

    iget-object v9, v0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->o:Ljava/lang/Boolean;

    const/16 v10, 0xc

    invoke-interface {v14, v10, v1, v13}, Lkotlinx/serialization/encoding/CompositeEncoder;->u(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    sget-object v1, Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto$$serializer;->a:Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto$$serializer;

    iget-object v0, v0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->n:Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto;

    const/16 v10, 0xd

    invoke-interface {v14, v13, v10, v1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    invoke-interface {v14, v13}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_10

    :cond_1a
    if-eqz v9, :cond_1b

    :goto_10
    sget-object v0, Lkotlinx/serialization/internal/BooleanSerializer;->a:Lkotlinx/serialization/internal/BooleanSerializer;

    const/16 v1, 0xe

    invoke-interface {v14, v13, v1, v0, v9}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1b
    invoke-interface {v14, v13}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_11

    :cond_1c
    if-eqz v8, :cond_1d

    :goto_11
    sget-object v0, Lkotlinx/serialization/internal/BooleanSerializer;->a:Lkotlinx/serialization/internal/BooleanSerializer;

    const/16 v1, 0xf

    invoke-interface {v14, v13, v1, v0, v8}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1d
    invoke-interface {v14, v13}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_12

    :cond_1e
    if-eqz v7, :cond_1f

    :goto_12
    sget-object v0, Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto$$serializer;->a:Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto$$serializer;

    const/16 v1, 0x10

    invoke-interface {v14, v13, v1, v0, v7}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1f
    invoke-interface {v14, v13}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_13

    :cond_20
    if-eqz v6, :cond_21

    :goto_13
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v1, 0x11

    invoke-interface {v14, v13, v1, v0, v6}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_21
    invoke-interface {v14, v13}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_22

    goto :goto_14

    :cond_22
    if-eqz v5, :cond_23

    :goto_14
    sget-object v0, Lcom/vuitton/android/data/dto/cart/bff/BundleDto$$serializer;->a:Lcom/vuitton/android/data/dto/cart/bff/BundleDto$$serializer;

    const/16 v1, 0x12

    invoke-interface {v14, v13, v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_23
    invoke-interface {v14, v13}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_15

    :cond_24
    if-eqz v4, :cond_25

    :goto_15
    sget-object v0, Lcom/vuitton/android/data/dto/cart/bff/CartItemCustomizationDto$$serializer;->a:Lcom/vuitton/android/data/dto/cart/bff/CartItemCustomizationDto$$serializer;

    const/16 v1, 0x13

    invoke-interface {v14, v13, v1, v0, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_25
    invoke-interface {v14, v13}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_26

    goto :goto_16

    :cond_26
    if-eqz v3, :cond_27

    :goto_16
    const/16 v0, 0x14

    invoke-interface {v14, v13, v0, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_27
    invoke-interface {v14, v13}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_28

    goto :goto_17

    :cond_28
    if-eq v2, v15, :cond_29

    :goto_17
    const/16 v0, 0x15

    invoke-interface {v14, v13, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_29
    invoke-interface {v14, v13}, Lkotlinx/serialization/encoding/CompositeEncoder;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public final e()[Lkotlinx/serialization/KSerializer;
    .locals 19

    sget-object v0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto;->w:[Lkotlin/Lazy;

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/product/ProductId$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/product/ProductId$$serializer;

    invoke-static {v3}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/product/SkuId$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/product/SkuId$$serializer;

    invoke-static {v4}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v4

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v5

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v6

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v7

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v8

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v9

    sget-object v10, Lkotlinx/serialization/internal/BooleanSerializer;->a:Lkotlinx/serialization/internal/BooleanSerializer;

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v11

    const/16 v12, 0xa

    aget-object v0, v0, v12

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/KSerializer;

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    invoke-static {v10}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v13

    invoke-static {v10}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v14

    sget-object v15, Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto$$serializer;->a:Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto$$serializer;

    invoke-static {v15}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v15

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    sget-object v16, Lcom/vuitton/android/data/dto/cart/bff/BundleDto$$serializer;->a:Lcom/vuitton/android/data/dto/cart/bff/BundleDto$$serializer;

    invoke-static/range {v16 .. v16}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v16

    sget-object v17, Lcom/vuitton/android/data/dto/cart/bff/CartItemCustomizationDto$$serializer;->a:Lcom/vuitton/android/data/dto/cart/bff/CartItemCustomizationDto$$serializer;

    invoke-static/range {v17 .. v17}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v17

    move/from16 p0, v12

    const/16 v12, 0x16

    new-array v12, v12, [Lkotlinx/serialization/KSerializer;

    const/16 v18, 0x0

    aput-object v2, v12, v18

    const/4 v2, 0x1

    aput-object v3, v12, v2

    const/4 v2, 0x2

    aput-object v4, v12, v2

    const/4 v2, 0x3

    aput-object v5, v12, v2

    const/4 v2, 0x4

    aput-object v6, v12, v2

    const/4 v2, 0x5

    aput-object v7, v12, v2

    const/4 v2, 0x6

    aput-object v8, v12, v2

    const/4 v2, 0x7

    aput-object v9, v12, v2

    const/16 v2, 0x8

    aput-object v10, v12, v2

    const/16 v2, 0x9

    aput-object v11, v12, v2

    aput-object v0, v12, p0

    const/16 v0, 0xb

    aput-object v10, v12, v0

    sget-object v0, Lkotlinx/serialization/internal/IntSerializer;->a:Lkotlinx/serialization/internal/IntSerializer;

    const/16 v2, 0xc

    aput-object v0, v12, v2

    sget-object v0, Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto$$serializer;->a:Lcom/vuitton/android/data/dto/cart/bff/CartPriceInformationDto$$serializer;

    const/16 v2, 0xd

    aput-object v0, v12, v2

    const/16 v0, 0xe

    aput-object v13, v12, v0

    const/16 v0, 0xf

    aput-object v14, v12, v0

    const/16 v0, 0x10

    aput-object v15, v12, v0

    const/16 v0, 0x11

    aput-object v1, v12, v0

    const/16 v0, 0x12

    aput-object v16, v12, v0

    const/16 v0, 0x13

    aput-object v17, v12, v0

    const/16 v0, 0x14

    aput-object v10, v12, v0

    const/16 v0, 0x15

    aput-object v10, v12, v0

    return-object v12
.end method
