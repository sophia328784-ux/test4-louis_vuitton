.class public final synthetic Lcom/vuitton/android/data/dto/productshort/ProductShortDto$$serializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/data/dto/productshort/ProductShortDto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = "$serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/internal/GeneratedSerializer<",
        "Lcom/vuitton/android/data/dto/productshort/ProductShortDto;",
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
        "com/vuitton/android/data/dto/productshort/ProductShortDto.$serializer",
        "Lkotlinx/serialization/internal/GeneratedSerializer;",
        "Lcom/vuitton/android/data/dto/productshort/ProductShortDto;",
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
.field public static final a:Lcom/vuitton/android/data/dto/productshort/ProductShortDto$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/vuitton/android/data/dto/productshort/ProductShortDto$$serializer;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vuitton/android/data/dto/productshort/ProductShortDto$$serializer;->a:Lcom/vuitton/android/data/dto/productshort/ProductShortDto$$serializer;

    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "com.vuitton.android.data.dto.productshort.ProductShortDto"

    const/16 v3, 0x12

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v0, "id"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "name"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "mainAsset"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "category"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "sku"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "colorVariations"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "color"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "showARModel"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "type"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "assets"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "background"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "tag"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "launchDate"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "price"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "isCustomized"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "tryOn"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "backInStock"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "shareUrl"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    sput-object v1, Lcom/vuitton/android/data/dto/productshort/ProductShortDto$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lcom/vuitton/android/data/dto/productshort/ProductShortDto$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public final b(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 29

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/data/dto/productshort/ProductShortDto$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/Decoder;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object v1

    sget-object v2, Lcom/vuitton/android/data/dto/productshort/ProductShortDto;->s:[Lkotlin/Lazy;

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

    const/16 v23, 0x0

    const/16 v25, 0x0

    :goto_0
    if-eqz v18, :cond_2

    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v22

    packed-switch v22, :pswitch_data_0

    invoke-static/range {v22 .. v22}, Lb21;->l(I)V

    return-object p0

    :pswitch_0
    move-object/from16 v22, v9

    sget-object v9, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v24, v11

    const/16 v11, 0x11

    invoke-interface {v1, v0, v11, v9, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/high16 v9, 0x20000

    :goto_1
    or-int/2addr v8, v9

    :goto_2
    move-object/from16 v9, v22

    move-object/from16 v11, v24

    goto :goto_0

    :pswitch_1
    move-object/from16 v22, v9

    move-object/from16 v24, v11

    const/16 v9, 0x10

    invoke-interface {v1, v0, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v25

    const/high16 v9, 0x10000

    or-int/2addr v8, v9

    :goto_3
    move-object/from16 v9, v22

    goto :goto_0

    :pswitch_2
    move-object/from16 v22, v9

    move-object/from16 v24, v11

    sget-object v9, Lcom/vuitton/android/data/dto/product/virtualtryon/VirtualTryOnDto$$serializer;->a:Lcom/vuitton/android/data/dto/product/virtualtryon/VirtualTryOnDto$$serializer;

    const/16 v11, 0xf

    invoke-interface {v1, v0, v11, v9, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/data/dto/product/virtualtryon/VirtualTryOnDto;

    const v9, 0x8000

    goto :goto_1

    :pswitch_3
    move-object/from16 v22, v9

    move-object/from16 v24, v11

    const/16 v9, 0xe

    invoke-interface {v1, v0, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v23

    or-int/lit16 v8, v8, 0x4000

    goto :goto_3

    :pswitch_4
    move-object/from16 v22, v9

    move-object/from16 v24, v11

    sget-object v9, Lcom/vuitton/android/data/dto/productshort/ProductShortPriceDto$$serializer;->a:Lcom/vuitton/android/data/dto/productshort/ProductShortPriceDto$$serializer;

    const/16 v11, 0xd

    invoke-interface {v1, v0, v11, v9, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/data/dto/productshort/ProductShortPriceDto;

    or-int/lit16 v8, v8, 0x2000

    goto :goto_2

    :pswitch_5
    move-object/from16 v22, v9

    move-object/from16 v24, v11

    sget-object v9, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v11, 0xc

    invoke-interface {v1, v0, v11, v9, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    or-int/lit16 v8, v8, 0x1000

    goto :goto_2

    :pswitch_6
    move-object/from16 v22, v9

    move-object/from16 v24, v11

    sget-object v9, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v11, 0xb

    invoke-interface {v1, v0, v11, v9, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    or-int/lit16 v8, v8, 0x800

    goto :goto_2

    :pswitch_7
    move-object/from16 v22, v9

    move-object/from16 v24, v11

    sget-object v9, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v11, 0xa

    invoke-interface {v1, v0, v11, v9, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Ljava/lang/String;

    or-int/lit16 v8, v8, 0x400

    goto :goto_2

    :pswitch_8
    move-object/from16 v22, v9

    move-object/from16 v24, v11

    const/16 v9, 0x9

    aget-object v11, v17, v9

    invoke-interface {v11}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v1, v0, v9, v11, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    or-int/lit16 v8, v8, 0x200

    goto/16 :goto_2

    :pswitch_9
    move-object/from16 v22, v9

    move-object/from16 v24, v11

    const/16 v9, 0x8

    invoke-interface {v1, v0, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->l(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v21

    or-int/lit16 v8, v8, 0x100

    goto/16 :goto_3

    :pswitch_a
    move-object/from16 v22, v9

    move-object/from16 v24, v11

    const/4 v9, 0x7

    invoke-interface {v1, v0, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v20

    or-int/lit16 v8, v8, 0x80

    goto/16 :goto_3

    :pswitch_b
    move-object/from16 v22, v9

    move-object/from16 v24, v11

    sget-object v9, Lcom/vuitton/android/data/dto/productshort/ProductShortCharacteristicDto$$serializer;->a:Lcom/vuitton/android/data/dto/productshort/ProductShortCharacteristicDto$$serializer;

    const/4 v11, 0x6

    invoke-interface {v1, v0, v11, v9, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v15, v9

    check-cast v15, Lcom/vuitton/android/data/dto/productshort/ProductShortCharacteristicDto;

    or-int/lit8 v8, v8, 0x40

    goto/16 :goto_2

    :pswitch_c
    move-object/from16 v22, v9

    move-object/from16 v24, v11

    const/4 v9, 0x5

    aget-object v11, v17, v9

    invoke-interface {v11}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v1, v0, v9, v11, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v14, v9

    check-cast v14, Ljava/util/List;

    or-int/lit8 v8, v8, 0x20

    goto/16 :goto_2

    :pswitch_d
    move-object/from16 v22, v9

    move-object/from16 v24, v11

    sget-object v9, Lcom/vuitton/foundation/model/domain/model/product/SkuId$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/product/SkuId$$serializer;

    if-eqz v13, :cond_0

    new-instance v11, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    invoke-direct {v11, v13}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_0
    move-object/from16 v11, p0

    :goto_4
    const/4 v13, 0x4

    invoke-interface {v1, v0, v13, v9, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    if-eqz v9, :cond_1

    iget-object v9, v9, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->a:Ljava/lang/String;

    move-object v13, v9

    goto :goto_5

    :cond_1
    move-object/from16 v13, p0

    :goto_5
    or-int/lit8 v8, v8, 0x10

    goto/16 :goto_2

    :pswitch_e
    move-object/from16 v22, v9

    move-object/from16 v24, v11

    sget-object v9, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v11, 0x3

    invoke-interface {v1, v0, v11, v9, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v12, v9

    check-cast v12, Ljava/lang/String;

    or-int/lit8 v8, v8, 0x8

    goto/16 :goto_2

    :pswitch_f
    move-object/from16 v22, v9

    move-object/from16 v24, v11

    sget-object v9, Lcom/vuitton/android/data/dto/common/AssetDto$$serializer;->a:Lcom/vuitton/android/data/dto/common/AssetDto$$serializer;

    const/4 v11, 0x2

    move-object/from16 v26, v2

    move-object/from16 v2, v24

    invoke-interface {v1, v0, v11, v9, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/vuitton/android/data/dto/common/AssetDto;

    or-int/lit8 v8, v8, 0x4

    :goto_6
    move-object/from16 v9, v22

    :goto_7
    move-object/from16 v2, v26

    goto/16 :goto_0

    :pswitch_10
    move-object/from16 v26, v2

    move-object/from16 v22, v9

    move-object v2, v11

    const/4 v9, 0x1

    invoke-interface {v1, v0, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->l(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v19

    or-int/lit8 v8, v8, 0x2

    goto :goto_6

    :pswitch_11
    move-object/from16 v26, v2

    move-object/from16 v22, v9

    move-object v2, v11

    const/4 v9, 0x1

    sget-object v11, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v24, v2

    move-object/from16 v9, v22

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2, v11, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    or-int/lit8 v8, v8, 0x1

    move-object/from16 v11, v24

    goto :goto_7

    :pswitch_12
    move-object/from16 v26, v2

    move-object/from16 v24, v11

    const/4 v2, 0x0

    move/from16 v18, v2

    goto :goto_7

    :cond_2
    move-object/from16 v26, v2

    move-object/from16 v24, v11

    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    move-object/from16 v18, v7

    new-instance v7, Lcom/vuitton/android/data/dto/productshort/ProductShortDto;

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v11, v19

    move-object/from16 v19, v10

    move-object v10, v11

    move-object/from16 v22, v3

    move/from16 v16, v20

    move-object/from16 v17, v21

    move-object/from16 v11, v24

    move-object/from16 v24, v26

    move-object/from16 v21, v4

    move-object/from16 v20, v5

    move-object/from16 v26, v6

    invoke-direct/range {v7 .. v28}, Lcom/vuitton/android/data/dto/productshort/ProductShortDto;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetDto;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/data/dto/productshort/ProductShortCharacteristicDto;ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/productshort/ProductShortPriceDto;ZLcom/vuitton/android/data/dto/product/virtualtryon/VirtualTryOnDto;ZLjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7

    nop

    :pswitch_data_0
    .packed-switch -0x1
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
    .locals 12

    check-cast p2, Lcom/vuitton/android/data/dto/productshort/ProductShortDto;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p2, Lcom/vuitton/android/data/dto/productshort/ProductShortDto;->a:Ljava/lang/String;

    sget-object v0, Lcom/vuitton/android/data/dto/productshort/ProductShortDto$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/Encoder;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object p1

    sget-object v1, Lcom/vuitton/android/data/dto/productshort/ProductShortDto;->s:[Lkotlin/Lazy;

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    :goto_0
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v3, 0x0

    invoke-interface {p1, v0, v3, v2, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    iget-object p0, p2, Lcom/vuitton/android/data/dto/productshort/ProductShortDto;->b:Ljava/lang/String;

    iget-object v2, p2, Lcom/vuitton/android/data/dto/productshort/ProductShortDto;->r:Ljava/lang/String;

    iget-object v3, p2, Lcom/vuitton/android/data/dto/productshort/ProductShortDto;->p:Lcom/vuitton/android/data/dto/product/virtualtryon/VirtualTryOnDto;

    iget-object v4, p2, Lcom/vuitton/android/data/dto/productshort/ProductShortDto;->n:Lcom/vuitton/android/data/dto/productshort/ProductShortPriceDto;

    iget-object v5, p2, Lcom/vuitton/android/data/dto/productshort/ProductShortDto;->m:Ljava/lang/String;

    iget-object v6, p2, Lcom/vuitton/android/data/dto/productshort/ProductShortDto;->l:Ljava/lang/String;

    iget-object v7, p2, Lcom/vuitton/android/data/dto/productshort/ProductShortDto;->k:Ljava/lang/String;

    iget-object v8, p2, Lcom/vuitton/android/data/dto/productshort/ProductShortDto;->g:Lcom/vuitton/android/data/dto/productshort/ProductShortCharacteristicDto;

    iget-object v9, p2, Lcom/vuitton/android/data/dto/productshort/ProductShortDto;->d:Ljava/lang/String;

    const/4 v10, 0x1

    invoke-interface {p1, v0, v10, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    sget-object p0, Lcom/vuitton/android/data/dto/common/AssetDto$$serializer;->a:Lcom/vuitton/android/data/dto/common/AssetDto$$serializer;

    iget-object v10, p2, Lcom/vuitton/android/data/dto/productshort/ProductShortDto;->c:Lcom/vuitton/android/data/dto/common/AssetDto;

    const/4 v11, 0x2

    invoke-interface {p1, v0, v11, p0, v10}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v9, :cond_3

    :goto_1
    sget-object p0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v10, 0x3

    invoke-interface {p1, v0, v10, p0, v9}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/product/SkuId$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/product/SkuId$$serializer;

    iget-object v9, p2, Lcom/vuitton/android/data/dto/productshort/ProductShortDto;->e:Ljava/lang/String;

    const/4 v10, 0x4

    invoke-static {v9, p1, v0, v10, p0}, Lcj;->B(Ljava/lang/String;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;ILcom/vuitton/foundation/model/domain/model/product/SkuId$$serializer;)V

    const/4 p0, 0x5

    aget-object v9, v1, p0

    invoke-interface {v9}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkotlinx/serialization/SerializationStrategy;

    iget-object v10, p2, Lcom/vuitton/android/data/dto/productshort/ProductShortDto;->f:Ljava/util/List;

    invoke-interface {p1, v0, p0, v9, v10}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    if-eqz v8, :cond_5

    :goto_2
    sget-object p0, Lcom/vuitton/android/data/dto/productshort/ProductShortCharacteristicDto$$serializer;->a:Lcom/vuitton/android/data/dto/productshort/ProductShortCharacteristicDto$$serializer;

    const/4 v9, 0x6

    invoke-interface {p1, v0, v9, p0, v8}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_5
    const/4 p0, 0x7

    iget-boolean v8, p2, Lcom/vuitton/android/data/dto/productshort/ProductShortDto;->h:Z

    invoke-interface {p1, v0, p0, v8}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    const/16 p0, 0x8

    iget-object v8, p2, Lcom/vuitton/android/data/dto/productshort/ProductShortDto;->i:Ljava/lang/String;

    invoke-interface {p1, v0, p0, v8}, Lkotlinx/serialization/encoding/CompositeEncoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/16 p0, 0x9

    aget-object v1, v1, p0

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v8, p2, Lcom/vuitton/android/data/dto/productshort/ProductShortDto;->j:Ljava/util/List;

    invoke-interface {p1, v0, p0, v1, v8}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_3

    :cond_6
    if-eqz v7, :cond_7

    :goto_3
    sget-object p0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v1, 0xa

    invoke-interface {p1, v0, v1, p0, v7}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_7
    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_4

    :cond_8
    if-eqz v6, :cond_9

    :goto_4
    sget-object p0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v1, 0xb

    invoke-interface {p1, v0, v1, p0, v6}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_9
    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_5

    :cond_a
    if-eqz v5, :cond_b

    :goto_5
    sget-object p0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v1, 0xc

    invoke-interface {p1, v0, v1, p0, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_b
    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p0

    if-eqz p0, :cond_c

    goto :goto_6

    :cond_c
    if-eqz v4, :cond_d

    :goto_6
    sget-object p0, Lcom/vuitton/android/data/dto/productshort/ProductShortPriceDto$$serializer;->a:Lcom/vuitton/android/data/dto/productshort/ProductShortPriceDto$$serializer;

    const/16 v1, 0xd

    invoke-interface {p1, v0, v1, p0, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_d
    const/16 p0, 0xe

    iget-boolean v1, p2, Lcom/vuitton/android/data/dto/productshort/ProductShortDto;->o:Z

    invoke-interface {p1, v0, p0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p0

    if-eqz p0, :cond_e

    goto :goto_7

    :cond_e
    if-eqz v3, :cond_f

    :goto_7
    sget-object p0, Lcom/vuitton/android/data/dto/product/virtualtryon/VirtualTryOnDto$$serializer;->a:Lcom/vuitton/android/data/dto/product/virtualtryon/VirtualTryOnDto$$serializer;

    const/16 v1, 0xf

    invoke-interface {p1, v0, v1, p0, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_f
    const/16 p0, 0x10

    iget-boolean p2, p2, Lcom/vuitton/android/data/dto/productshort/ProductShortDto;->q:Z

    invoke-interface {p1, v0, p0, p2}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p0

    if-eqz p0, :cond_10

    goto :goto_8

    :cond_10
    if-eqz v2, :cond_11

    :goto_8
    sget-object p0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 p2, 0x11

    invoke-interface {p1, v0, p2, p0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_11
    invoke-interface {p1, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public final e()[Lkotlinx/serialization/KSerializer;
    .locals 4

    sget-object p0, Lcom/vuitton/android/data/dto/productshort/ProductShortDto;->s:[Lkotlin/Lazy;

    const/16 v0, 0x12

    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/vuitton/android/data/dto/common/AssetDto$$serializer;->a:Lcom/vuitton/android/data/dto/common/AssetDto$$serializer;

    aput-object v3, v0, v2

    const/4 v2, 0x3

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/product/SkuId$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/product/SkuId$$serializer;

    aput-object v3, v0, v2

    const/4 v2, 0x5

    aget-object v3, p0, v2

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    sget-object v2, Lcom/vuitton/android/data/dto/productshort/ProductShortCharacteristicDto$$serializer;->a:Lcom/vuitton/android/data/dto/productshort/ProductShortCharacteristicDto$$serializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v0, v3

    sget-object v2, Lkotlinx/serialization/internal/BooleanSerializer;->a:Lkotlinx/serialization/internal/BooleanSerializer;

    const/4 v3, 0x7

    aput-object v2, v0, v3

    const/16 v3, 0x8

    aput-object v1, v0, v3

    const/16 v3, 0x9

    aget-object p0, p0, v3

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v0, v3

    const/16 p0, 0xa

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v0, p0

    const/16 p0, 0xb

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v0, p0

    const/16 p0, 0xc

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v0, p0

    sget-object p0, Lcom/vuitton/android/data/dto/productshort/ProductShortPriceDto$$serializer;->a:Lcom/vuitton/android/data/dto/productshort/ProductShortPriceDto$$serializer;

    invoke-static {p0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    const/16 v3, 0xd

    aput-object p0, v0, v3

    const/16 p0, 0xe

    aput-object v2, v0, p0

    sget-object p0, Lcom/vuitton/android/data/dto/product/virtualtryon/VirtualTryOnDto$$serializer;->a:Lcom/vuitton/android/data/dto/product/virtualtryon/VirtualTryOnDto$$serializer;

    invoke-static {p0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    const/16 v3, 0xf

    aput-object p0, v0, v3

    const/16 p0, 0x10

    aput-object v2, v0, p0

    const/16 p0, 0x11

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    aput-object v1, v0, p0

    return-object v0
.end method
