.class public final synthetic Lcom/vuitton/android/data/dto/careservices/CareServicesDto$$serializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/data/dto/careservices/CareServicesDto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = "$serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/internal/GeneratedSerializer<",
        "Lcom/vuitton/android/data/dto/careservices/CareServicesDto;",
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
        "com/vuitton/android/data/dto/careservices/CareServicesDto.$serializer",
        "Lkotlinx/serialization/internal/GeneratedSerializer;",
        "Lcom/vuitton/android/data/dto/careservices/CareServicesDto;",
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
.field public static final a:Lcom/vuitton/android/data/dto/careservices/CareServicesDto$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto$$serializer;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto$$serializer;->a:Lcom/vuitton/android/data/dto/careservices/CareServicesDto$$serializer;

    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "com.vuitton.android.data.dto.careservices.CareServicesDto"

    const/16 v3, 0x19

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v0, "id"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "recordType"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "transactionId"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "myLV_Care_Status"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "storeName"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "storeRetailCode"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "createdDate"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "myRepair_CreatedDate"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "lastModifiedDate"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "last_MyRepair_Status_Changed_Date"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "currencyCode"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "type_of_Repair"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "totalAmount"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "totalAmount_Updated"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "delivery_Date"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "updated_Delivery_Date"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "sku"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "is_Generic_SKU"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "product_Name"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "product_Sku_unknown"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "product_Family"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "product_Image"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "is_Not_Repaired"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "appointement_DateTime"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "origin"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    sput-object v1, Lcom/vuitton/android/data/dto/careservices/CareServicesDto$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public final b(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 36

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/Decoder;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object v1

    sget-object v2, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->z:[Lkotlin/Lazy;

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

    const/16 v16, 0x1

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

    const/16 v31, 0x0

    :goto_0
    if-eqz v18, :cond_4

    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v30

    packed-switch v30, :pswitch_data_0

    invoke-static/range {v30 .. v30}, Lb21;->l(I)V

    return-object p0

    :pswitch_0
    move-object/from16 v30, v3

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    move-object/from16 v32, v2

    const/16 v2, 0x18

    invoke-interface {v1, v0, v2, v3, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    const/high16 v2, 0x1000000

    :goto_1
    or-int/2addr v8, v2

    :goto_2
    move-object/from16 v3, v30

    :goto_3
    move-object/from16 v2, v32

    goto :goto_0

    :pswitch_1
    move-object/from16 v32, v2

    move-object/from16 v30, v3

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v3, 0x17

    invoke-interface {v1, v0, v3, v2, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    const/high16 v2, 0x800000

    goto :goto_1

    :pswitch_2
    move-object/from16 v32, v2

    move-object/from16 v30, v3

    const/16 v2, 0x16

    invoke-interface {v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v31

    const/high16 v2, 0x400000

    :goto_4
    or-int/2addr v8, v2

    goto :goto_3

    :pswitch_3
    move-object/from16 v32, v2

    move-object/from16 v30, v3

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v3, 0x15

    invoke-interface {v1, v0, v3, v2, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    const/high16 v2, 0x200000

    goto :goto_1

    :pswitch_4
    move-object/from16 v32, v2

    move-object/from16 v30, v3

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v3, 0x14

    invoke-interface {v1, v0, v3, v2, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Ljava/lang/String;

    const/high16 v2, 0x100000

    goto :goto_1

    :pswitch_5
    move-object/from16 v32, v2

    move-object/from16 v30, v3

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v3, 0x13

    invoke-interface {v1, v0, v3, v2, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Ljava/lang/String;

    const/high16 v2, 0x80000

    goto :goto_1

    :pswitch_6
    move-object/from16 v32, v2

    move-object/from16 v30, v3

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v3, 0x12

    invoke-interface {v1, v0, v3, v2, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Ljava/lang/String;

    const/high16 v2, 0x40000

    goto :goto_1

    :pswitch_7
    move-object/from16 v32, v2

    move-object/from16 v30, v3

    const/16 v2, 0x11

    invoke-interface {v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v29

    const/high16 v2, 0x20000

    goto :goto_4

    :pswitch_8
    move-object/from16 v32, v2

    move-object/from16 v30, v3

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/product/SkuId$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/product/SkuId$$serializer;

    if-eqz v12, :cond_0

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    invoke-direct {v3, v12}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_0
    move-object/from16 v3, p0

    :goto_5
    const/16 v12, 0x10

    invoke-interface {v1, v0, v12, v2, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->a:Ljava/lang/String;

    move-object v12, v2

    goto :goto_6

    :cond_1
    move-object/from16 v12, p0

    :goto_6
    const/high16 v2, 0x10000

    goto/16 :goto_1

    :pswitch_9
    move-object/from16 v32, v2

    move-object/from16 v30, v3

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v3, 0xf

    invoke-interface {v1, v0, v3, v2, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Ljava/lang/String;

    const v2, 0x8000

    goto/16 :goto_1

    :pswitch_a
    move-object/from16 v32, v2

    move-object/from16 v30, v3

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v3, 0xe

    invoke-interface {v1, v0, v3, v2, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Ljava/lang/String;

    or-int/lit16 v8, v8, 0x4000

    goto/16 :goto_2

    :pswitch_b
    move-object/from16 v32, v2

    move-object/from16 v30, v3

    sget-object v2, Lkotlinx/serialization/internal/FloatSerializer;->a:Lkotlinx/serialization/internal/FloatSerializer;

    const/16 v3, 0xd

    invoke-interface {v1, v0, v3, v2, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/lang/Float;

    or-int/lit16 v8, v8, 0x2000

    goto/16 :goto_2

    :pswitch_c
    move-object/from16 v32, v2

    move-object/from16 v30, v3

    sget-object v2, Lkotlinx/serialization/internal/FloatSerializer;->a:Lkotlinx/serialization/internal/FloatSerializer;

    const/16 v3, 0xc

    invoke-interface {v1, v0, v3, v2, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/Float;

    or-int/lit16 v8, v8, 0x1000

    goto/16 :goto_2

    :pswitch_d
    move-object/from16 v32, v2

    move-object/from16 v30, v3

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v3, 0xb

    move-object/from16 v33, v4

    move-object/from16 v4, v32

    invoke-interface {v1, v0, v3, v2, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    or-int/lit16 v8, v8, 0x800

    move-object/from16 v3, v30

    :goto_7
    move-object/from16 v4, v33

    goto/16 :goto_0

    :pswitch_e
    move-object/from16 v30, v3

    move-object/from16 v33, v4

    move-object v4, v2

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v3, 0xa

    move-object/from16 v32, v4

    move-object/from16 v4, v30

    invoke-interface {v1, v0, v3, v2, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    or-int/lit16 v8, v8, 0x400

    :goto_8
    move-object/from16 v2, v32

    goto :goto_7

    :pswitch_f
    move-object/from16 v32, v2

    move-object/from16 v33, v4

    move-object v4, v3

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v3, 0x9

    move-object/from16 v30, v4

    move-object/from16 v4, v28

    invoke-interface {v1, v0, v3, v2, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v28, v2

    check-cast v28, Ljava/lang/String;

    or-int/lit16 v8, v8, 0x200

    :goto_9
    move-object/from16 v3, v30

    goto :goto_8

    :pswitch_10
    move-object/from16 v32, v2

    move-object/from16 v30, v3

    move-object/from16 v33, v4

    move-object/from16 v4, v28

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v3, 0x8

    move-object/from16 v4, v27

    invoke-interface {v1, v0, v3, v2, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v27, v2

    check-cast v27, Ljava/lang/String;

    or-int/lit16 v8, v8, 0x100

    goto :goto_9

    :pswitch_11
    move-object/from16 v32, v2

    move-object/from16 v30, v3

    move-object/from16 v33, v4

    move-object/from16 v4, v27

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v3, 0x7

    move-object/from16 v4, v26

    invoke-interface {v1, v0, v3, v2, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v26, v2

    check-cast v26, Ljava/lang/String;

    or-int/lit16 v8, v8, 0x80

    goto :goto_9

    :pswitch_12
    move-object/from16 v32, v2

    move-object/from16 v30, v3

    move-object/from16 v33, v4

    move-object/from16 v4, v26

    sget-object v2, Lcom/vuitton/android/core/platform/serialization/FullDateSerializer;->b:Lcom/vuitton/android/core/platform/serialization/FullDateSerializer;

    const/4 v3, 0x6

    move-object/from16 v4, v25

    invoke-interface {v1, v0, v3, v2, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, Ljava/util/Date;

    or-int/lit8 v8, v8, 0x40

    goto :goto_9

    :pswitch_13
    move-object/from16 v32, v2

    move-object/from16 v30, v3

    move-object/from16 v33, v4

    move-object/from16 v4, v25

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v3, 0x5

    move-object/from16 v4, v24

    invoke-interface {v1, v0, v3, v2, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Ljava/lang/String;

    or-int/lit8 v8, v8, 0x20

    goto :goto_9

    :pswitch_14
    move-object/from16 v32, v2

    move-object/from16 v30, v3

    move-object/from16 v33, v4

    move-object/from16 v4, v24

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v3, 0x4

    move-object/from16 v4, v23

    invoke-interface {v1, v0, v3, v2, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Ljava/lang/String;

    or-int/lit8 v8, v8, 0x10

    goto :goto_9

    :pswitch_15
    move-object/from16 v32, v2

    move-object/from16 v30, v3

    move-object/from16 v33, v4

    move-object/from16 v4, v23

    const/4 v2, 0x3

    aget-object v3, v17, v2

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v4, v22

    invoke-interface {v1, v0, v2, v3, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    or-int/lit8 v8, v8, 0x8

    goto/16 :goto_9

    :pswitch_16
    move-object/from16 v32, v2

    move-object/from16 v30, v3

    move-object/from16 v33, v4

    move-object/from16 v4, v22

    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v3, 0x2

    move-object/from16 v4, v21

    invoke-interface {v1, v0, v3, v2, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Ljava/lang/String;

    or-int/lit8 v8, v8, 0x4

    goto/16 :goto_9

    :pswitch_17
    move-object/from16 v32, v2

    move-object/from16 v30, v3

    move-object/from16 v33, v4

    move-object/from16 v4, v21

    aget-object v2, v17, v16

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    move/from16 v3, v16

    move-object/from16 v16, v4

    move v4, v3

    move-object/from16 v3, v20

    invoke-interface {v1, v0, v4, v2, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Lcom/vuitton/android/data/dto/repair/RepairTypeDto;

    or-int/lit8 v8, v8, 0x2

    move-object/from16 v21, v16

    move-object/from16 v3, v30

    move-object/from16 v2, v32

    move/from16 v16, v4

    goto/16 :goto_7

    :pswitch_18
    move-object/from16 v32, v2

    move-object/from16 v30, v3

    move-object/from16 v33, v4

    move/from16 v4, v16

    move-object/from16 v3, v20

    move-object/from16 v16, v21

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId$$serializer;

    if-eqz v19, :cond_2

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;

    move-object/from16 v21, v3

    move-object/from16 v3, v19

    invoke-direct {v4, v3}, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;-><init>(Ljava/lang/String;)V

    :goto_a
    const/4 v3, 0x0

    goto :goto_b

    :cond_2
    move-object/from16 v21, v3

    move-object/from16 v4, p0

    goto :goto_a

    :goto_b
    invoke-interface {v1, v0, v3, v2, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;->a:Ljava/lang/String;

    move-object/from16 v19, v2

    goto :goto_c

    :cond_3
    move-object/from16 v19, p0

    :goto_c
    or-int/lit8 v8, v8, 0x1

    move-object/from16 v20, v21

    move-object/from16 v3, v30

    move-object/from16 v2, v32

    move-object/from16 v4, v33

    :goto_d
    move-object/from16 v21, v16

    const/16 v16, 0x1

    goto/16 :goto_0

    :pswitch_19
    move-object/from16 v32, v2

    move-object/from16 v30, v3

    move-object/from16 v33, v4

    move-object/from16 v3, v19

    move-object/from16 v16, v21

    const/4 v2, 0x0

    move-object/from16 v21, v20

    move/from16 v18, v2

    move-object/from16 v3, v30

    move-object/from16 v2, v32

    goto :goto_d

    :cond_4
    move-object/from16 v32, v2

    move-object/from16 v30, v3

    move-object/from16 v33, v4

    move-object/from16 v3, v19

    move-object/from16 v16, v21

    move-object/from16 v21, v20

    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    move-object/from16 v19, v30

    move-object/from16 v30, v7

    new-instance v7, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v17, v27

    move-object/from16 v18, v28

    move-object/from16 v20, v32

    move-object/from16 v32, v5

    move-object/from16 v27, v13

    move-object/from16 v28, v14

    move-object/from16 v13, v23

    move-object/from16 v14, v24

    move-object/from16 v23, v10

    move-object/from16 v24, v11

    move-object/from16 v11, v16

    move-object/from16 v10, v21

    move-object/from16 v16, v26

    move/from16 v26, v29

    move-object/from16 v21, v6

    move-object/from16 v29, v15

    move-object/from16 v15, v25

    move-object/from16 v25, v12

    move-object/from16 v12, v22

    move-object/from16 v22, v9

    move-object v9, v3

    invoke-direct/range {v7 .. v35}, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;-><init>(ILjava/lang/String;Lcom/vuitton/android/data/dto/repair/RepairTypeDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/repair/RepairStatusDto;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7

    nop

    :pswitch_data_0
    .packed-switch -0x1
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
    .locals 22

    move-object/from16 v0, p2

    check-cast v0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->q:Ljava/lang/String;

    iget-object v2, v0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->p:Ljava/lang/String;

    iget-object v3, v0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->o:Ljava/lang/String;

    iget-object v4, v0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->n:Ljava/lang/Float;

    iget-object v5, v0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->m:Ljava/lang/Float;

    iget-object v6, v0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->l:Ljava/lang/String;

    iget-object v7, v0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->k:Ljava/lang/String;

    iget-object v8, v0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->j:Ljava/lang/String;

    iget-object v9, v0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->i:Ljava/lang/String;

    iget-object v10, v0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->h:Ljava/lang/String;

    iget-object v11, v0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->g:Ljava/util/Date;

    iget-object v12, v0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->f:Ljava/lang/String;

    iget-object v13, v0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->e:Ljava/lang/String;

    iget-object v14, v0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->d:Lcom/vuitton/android/data/dto/repair/RepairStatusDto;

    iget-object v15, v0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->c:Ljava/lang/String;

    move-object/from16 p0, v1

    iget-object v1, v0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->b:Lcom/vuitton/android/data/dto/repair/RepairTypeDto;

    move-object/from16 p2, v2

    iget-object v2, v0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->a:Ljava/lang/String;

    move-object/from16 v16, v0

    sget-object v0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-object/from16 v17, v3

    move-object/from16 v3, p1

    invoke-interface {v3, v0}, Lkotlinx/serialization/encoding/Encoder;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object v3

    sget-object v18, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->z:[Lkotlin/Lazy;

    invoke-interface {v3, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v19

    const/16 v20, 0x0

    if-eqz v19, :cond_0

    :goto_0
    move-object/from16 v19, v4

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_2

    goto :goto_0

    :goto_1
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId$$serializer;

    move-object/from16 v21, v5

    if-eqz v2, :cond_1

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;

    invoke-direct {v5, v2}, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    move-object/from16 v5, v20

    :goto_2
    const/4 v2, 0x0

    invoke-interface {v3, v0, v2, v4, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    move-object/from16 v19, v4

    move-object/from16 v21, v5

    :goto_3
    invoke-interface {v3, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_4

    :cond_3
    if-eqz v1, :cond_4

    :goto_4
    const/4 v2, 0x1

    aget-object v4, v18, v2

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {v3, v0, v2, v4, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_4
    invoke-interface {v3, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_5

    :cond_5
    if-eqz v15, :cond_6

    :goto_5
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v2, 0x2

    invoke-interface {v3, v0, v2, v1, v15}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_6
    invoke-interface {v3, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_6

    :cond_7
    if-eqz v14, :cond_8

    :goto_6
    const/4 v1, 0x3

    aget-object v2, v18, v1

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {v3, v0, v1, v2, v14}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_8
    invoke-interface {v3, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_7

    :cond_9
    if-eqz v13, :cond_a

    :goto_7
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v2, 0x4

    invoke-interface {v3, v0, v2, v1, v13}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_a
    invoke-interface {v3, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_8

    :cond_b
    if-eqz v12, :cond_c

    :goto_8
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v2, 0x5

    invoke-interface {v3, v0, v2, v1, v12}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_c
    invoke-interface {v3, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_9

    :cond_d
    if-eqz v11, :cond_e

    :goto_9
    sget-object v1, Lcom/vuitton/android/core/platform/serialization/FullDateSerializer;->b:Lcom/vuitton/android/core/platform/serialization/FullDateSerializer;

    const/4 v2, 0x6

    invoke-interface {v3, v0, v2, v1, v11}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_e
    invoke-interface {v3, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_a

    :cond_f
    if-eqz v10, :cond_10

    :goto_a
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v2, 0x7

    invoke-interface {v3, v0, v2, v1, v10}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_10
    invoke-interface {v3, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_b

    :cond_11
    if-eqz v9, :cond_12

    :goto_b
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v2, 0x8

    invoke-interface {v3, v0, v2, v1, v9}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_12
    invoke-interface {v3, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_c

    :cond_13
    if-eqz v8, :cond_14

    :goto_c
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v2, 0x9

    invoke-interface {v3, v0, v2, v1, v8}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_14
    invoke-interface {v3, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_d

    :cond_15
    if-eqz v7, :cond_16

    :goto_d
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v2, 0xa

    invoke-interface {v3, v0, v2, v1, v7}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_16
    invoke-interface {v3, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_e

    :cond_17
    if-eqz v6, :cond_18

    :goto_e
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v2, 0xb

    invoke-interface {v3, v0, v2, v1, v6}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_18
    invoke-interface {v3, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_f

    :cond_19
    if-eqz v21, :cond_1a

    :goto_f
    sget-object v1, Lkotlinx/serialization/internal/FloatSerializer;->a:Lkotlinx/serialization/internal/FloatSerializer;

    const/16 v2, 0xc

    move-object/from16 v4, v21

    invoke-interface {v3, v0, v2, v1, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1a
    invoke-interface {v3, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_10

    :cond_1b
    if-eqz v19, :cond_1c

    :goto_10
    sget-object v1, Lkotlinx/serialization/internal/FloatSerializer;->a:Lkotlinx/serialization/internal/FloatSerializer;

    const/16 v2, 0xd

    move-object/from16 v4, v19

    invoke-interface {v3, v0, v2, v1, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1c
    invoke-interface {v3, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_11

    :cond_1d
    if-eqz v17, :cond_1e

    :goto_11
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v2, 0xe

    move-object/from16 v4, v17

    invoke-interface {v3, v0, v2, v1, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1e
    invoke-interface {v3, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_1f

    goto :goto_12

    :cond_1f
    if-eqz p2, :cond_20

    :goto_12
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v2, 0xf

    move-object/from16 v4, p2

    invoke-interface {v3, v0, v2, v1, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_20
    invoke-interface {v3, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_21

    goto :goto_13

    :cond_21
    if-eqz p0, :cond_23

    :goto_13
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/product/SkuId$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/product/SkuId$$serializer;

    if-eqz p0, :cond_22

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    move-object/from16 v4, p0

    invoke-direct {v2, v4}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    goto :goto_14

    :cond_22
    move-object/from16 v2, v20

    :goto_14
    const/16 v4, 0x10

    invoke-interface {v3, v0, v4, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_23
    move-object/from16 v1, v16

    iget-boolean v2, v1, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->r:Z

    iget-object v4, v1, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->y:Ljava/lang/String;

    iget-object v5, v1, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->x:Ljava/lang/String;

    iget-object v6, v1, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->v:Ljava/lang/String;

    iget-object v7, v1, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->u:Ljava/lang/String;

    iget-object v8, v1, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->t:Ljava/lang/String;

    iget-object v9, v1, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->s:Ljava/lang/String;

    const/16 v10, 0x11

    invoke-interface {v3, v0, v10, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    invoke-interface {v3, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_24

    goto :goto_15

    :cond_24
    if-eqz v9, :cond_25

    :goto_15
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v10, 0x12

    invoke-interface {v3, v0, v10, v2, v9}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_25
    invoke-interface {v3, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_26

    goto :goto_16

    :cond_26
    if-eqz v8, :cond_27

    :goto_16
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v9, 0x13

    invoke-interface {v3, v0, v9, v2, v8}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_27
    invoke-interface {v3, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_28

    goto :goto_17

    :cond_28
    if-eqz v7, :cond_29

    :goto_17
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v8, 0x14

    invoke-interface {v3, v0, v8, v2, v7}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_29
    invoke-interface {v3, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_2a

    goto :goto_18

    :cond_2a
    if-eqz v6, :cond_2b

    :goto_18
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v7, 0x15

    invoke-interface {v3, v0, v7, v2, v6}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_2b
    const/16 v2, 0x16

    iget-boolean v1, v1, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->w:Z

    invoke-interface {v3, v0, v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    invoke-interface {v3, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_2c

    goto :goto_19

    :cond_2c
    if-eqz v5, :cond_2d

    :goto_19
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v2, 0x17

    invoke-interface {v3, v0, v2, v1, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_2d
    invoke-interface {v3, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_2e

    goto :goto_1a

    :cond_2e
    if-eqz v4, :cond_2f

    :goto_1a
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v2, 0x18

    invoke-interface {v3, v0, v2, v1, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_2f
    invoke-interface {v3, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public final e()[Lkotlinx/serialization/KSerializer;
    .locals 26

    sget-object v0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto;->z:[Lkotlin/Lazy;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId$$serializer;

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v3, v0, v2

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/serialization/KSerializer;

    invoke-static {v3}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    invoke-static {v4}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v5

    const/4 v6, 0x3

    aget-object v0, v0, v6

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/KSerializer;

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    invoke-static {v4}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v7

    invoke-static {v4}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v8

    sget-object v9, Lcom/vuitton/android/core/platform/serialization/FullDateSerializer;->b:Lcom/vuitton/android/core/platform/serialization/FullDateSerializer;

    invoke-static {v9}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v9

    invoke-static {v4}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v10

    invoke-static {v4}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v11

    invoke-static {v4}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v12

    invoke-static {v4}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v13

    invoke-static {v4}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v14

    sget-object v15, Lkotlinx/serialization/internal/FloatSerializer;->a:Lkotlinx/serialization/internal/FloatSerializer;

    invoke-static {v15}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v16

    invoke-static {v15}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v15

    invoke-static {v4}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v17

    invoke-static {v4}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v18

    sget-object v19, Lcom/vuitton/foundation/model/domain/model/product/SkuId$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/product/SkuId$$serializer;

    invoke-static/range {v19 .. v19}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v19

    invoke-static {v4}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v20

    invoke-static {v4}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v21

    invoke-static {v4}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v22

    invoke-static {v4}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v23

    invoke-static {v4}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v24

    invoke-static {v4}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v4

    move/from16 p0, v2

    const/16 v2, 0x19

    new-array v2, v2, [Lkotlinx/serialization/KSerializer;

    const/16 v25, 0x0

    aput-object v1, v2, v25

    aput-object v3, v2, p0

    const/4 v1, 0x2

    aput-object v5, v2, v1

    aput-object v0, v2, v6

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v8, v2, v0

    const/4 v0, 0x6

    aput-object v9, v2, v0

    const/4 v0, 0x7

    aput-object v10, v2, v0

    const/16 v0, 0x8

    aput-object v11, v2, v0

    const/16 v0, 0x9

    aput-object v12, v2, v0

    const/16 v0, 0xa

    aput-object v13, v2, v0

    const/16 v0, 0xb

    aput-object v14, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v15, v2, v0

    const/16 v0, 0xe

    aput-object v17, v2, v0

    const/16 v0, 0xf

    aput-object v18, v2, v0

    const/16 v0, 0x10

    aput-object v19, v2, v0

    sget-object v0, Lkotlinx/serialization/internal/BooleanSerializer;->a:Lkotlinx/serialization/internal/BooleanSerializer;

    const/16 v1, 0x11

    aput-object v0, v2, v1

    const/16 v1, 0x12

    aput-object v20, v2, v1

    const/16 v1, 0x13

    aput-object v21, v2, v1

    const/16 v1, 0x14

    aput-object v22, v2, v1

    const/16 v1, 0x15

    aput-object v23, v2, v1

    const/16 v1, 0x16

    aput-object v0, v2, v1

    const/16 v0, 0x17

    aput-object v24, v2, v0

    const/16 v0, 0x18

    aput-object v4, v2, v0

    return-object v2
.end method
