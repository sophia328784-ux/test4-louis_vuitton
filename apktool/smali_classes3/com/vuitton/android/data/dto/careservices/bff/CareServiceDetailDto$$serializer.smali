.class public final synthetic Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$$serializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = "$serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/internal/GeneratedSerializer<",
        "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;",
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
        "com/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto.$serializer",
        "Lkotlinx/serialization/internal/GeneratedSerializer;",
        "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;",
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
.field public static final a:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$$serializer;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$$serializer;->a:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$$serializer;

    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "com.vuitton.android.data.dto.careservices.bff.CareServiceDetailDto"

    const/16 v3, 0x19

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v0, "identifier"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "displayableIdentifier"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "transactionIdentifier"

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "description"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "email"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "phone"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "type"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "category"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "steps"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "action"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "store"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "product"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "trackingURL"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "creationDate"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "deliveryDate"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "updatedDeliveryDate"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "restitutionHistoryDate"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "appointmentId"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "payByLinkURL"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "preliminaryAssessmentInformation"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "contactMethod"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "cancellationReasons"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "inStoreInformation"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "appointmentInformation"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "shippingInformation"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    sput-object v1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public final b(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 36

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/Decoder;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object v1

    sget-object v2, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->z:[Lkotlin/Lazy;

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

    :goto_0
    if-eqz v18, :cond_4

    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v31

    packed-switch v31, :pswitch_data_0

    invoke-static/range {v31 .. v31}, Lb21;->l(I)V

    return-object p0

    :pswitch_0
    move-object/from16 v31, v5

    sget-object v5, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ShippingInformation$$serializer;->a:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ShippingInformation$$serializer;

    move-object/from16 v32, v4

    const/16 v4, 0x18

    invoke-interface {v1, v0, v4, v5, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ShippingInformation;

    const/high16 v4, 0x1000000

    :goto_1
    or-int/2addr v8, v4

    :goto_2
    move-object/from16 v5, v31

    :goto_3
    move-object/from16 v4, v32

    goto :goto_0

    :pswitch_1
    move-object/from16 v32, v4

    move-object/from16 v31, v5

    sget-object v4, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentInformation$$serializer;->a:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentInformation$$serializer;

    const/16 v5, 0x17

    invoke-interface {v1, v0, v5, v4, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentInformation;

    const/high16 v4, 0x800000

    goto :goto_1

    :pswitch_2
    move-object/from16 v32, v4

    move-object/from16 v31, v5

    const/16 v4, 0x16

    aget-object v5, v17, v4

    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v1, v0, v4, v5, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Ljava/util/List;

    const/high16 v4, 0x400000

    goto :goto_1

    :pswitch_3
    move-object/from16 v32, v4

    move-object/from16 v31, v5

    const/16 v4, 0x15

    aget-object v5, v17, v4

    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v1, v0, v4, v5, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Ljava/util/List;

    const/high16 v4, 0x200000

    goto :goto_1

    :pswitch_4
    move-object/from16 v32, v4

    move-object/from16 v31, v5

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v5, 0x14

    invoke-interface {v1, v0, v5, v4, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Ljava/lang/String;

    const/high16 v4, 0x100000

    goto :goto_1

    :pswitch_5
    move-object/from16 v32, v4

    move-object/from16 v31, v5

    sget-object v4, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment$$serializer;->a:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment$$serializer;

    const/16 v5, 0x13

    invoke-interface {v1, v0, v5, v4, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;

    const/high16 v4, 0x80000

    goto :goto_1

    :pswitch_6
    move-object/from16 v32, v4

    move-object/from16 v31, v5

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v5, 0x12

    invoke-interface {v1, v0, v5, v4, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Ljava/lang/String;

    const/high16 v4, 0x40000

    goto :goto_1

    :pswitch_7
    move-object/from16 v32, v4

    move-object/from16 v31, v5

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v5, 0x11

    invoke-interface {v1, v0, v5, v4, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Ljava/lang/String;

    const/high16 v4, 0x20000

    goto/16 :goto_1

    :pswitch_8
    move-object/from16 v32, v4

    move-object/from16 v31, v5

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v5, 0x10

    invoke-interface {v1, v0, v5, v4, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    const/high16 v4, 0x10000

    goto/16 :goto_1

    :pswitch_9
    move-object/from16 v32, v4

    move-object/from16 v31, v5

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v5, 0xf

    invoke-interface {v1, v0, v5, v4, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const v4, 0x8000

    goto/16 :goto_1

    :pswitch_a
    move-object/from16 v32, v4

    move-object/from16 v31, v5

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v5, 0xe

    invoke-interface {v1, v0, v5, v4, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    or-int/lit16 v8, v8, 0x4000

    goto/16 :goto_2

    :pswitch_b
    move-object/from16 v32, v4

    move-object/from16 v31, v5

    const/16 v4, 0xd

    invoke-interface {v1, v0, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->l(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v30

    or-int/lit16 v8, v8, 0x2000

    goto/16 :goto_3

    :pswitch_c
    move-object/from16 v32, v4

    move-object/from16 v31, v5

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v5, 0xc

    move-object/from16 v33, v2

    move-object/from16 v2, v32

    invoke-interface {v1, v0, v5, v4, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    or-int/lit16 v8, v8, 0x1000

    move-object/from16 v5, v31

    :goto_4
    move-object/from16 v2, v33

    goto/16 :goto_0

    :pswitch_d
    move-object/from16 v33, v2

    move-object v2, v4

    move-object/from16 v31, v5

    sget-object v4, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto$$serializer;->a:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto$$serializer;

    const/16 v5, 0xb

    move-object/from16 v32, v2

    move-object/from16 v2, v31

    invoke-interface {v1, v0, v5, v4, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto;

    or-int/lit16 v8, v8, 0x800

    :goto_5
    move-object/from16 v4, v32

    goto :goto_4

    :pswitch_e
    move-object/from16 v33, v2

    move-object/from16 v32, v4

    move-object v2, v5

    sget-object v4, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Store$$serializer;->a:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Store$$serializer;

    const/16 v5, 0xa

    move-object/from16 v31, v2

    move-object/from16 v2, v26

    invoke-interface {v1, v0, v5, v4, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v26, v2

    check-cast v26, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Store;

    or-int/lit16 v8, v8, 0x400

    :goto_6
    move-object/from16 v5, v31

    goto :goto_5

    :pswitch_f
    move-object/from16 v33, v2

    move-object/from16 v32, v4

    move-object/from16 v31, v5

    move-object/from16 v2, v26

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v5, 0x9

    move-object/from16 v2, v25

    invoke-interface {v1, v0, v5, v4, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v25, v2

    check-cast v25, Ljava/lang/String;

    or-int/lit16 v8, v8, 0x200

    goto :goto_6

    :pswitch_10
    move-object/from16 v33, v2

    move-object/from16 v32, v4

    move-object/from16 v31, v5

    move-object/from16 v2, v25

    const/16 v4, 0x8

    aget-object v5, v17, v4

    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlinx/serialization/DeserializationStrategy;

    move-object/from16 v2, v24

    invoke-interface {v1, v0, v4, v5, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Ljava/util/List;

    or-int/lit16 v8, v8, 0x100

    goto :goto_6

    :pswitch_11
    move-object/from16 v33, v2

    move-object/from16 v32, v4

    move-object/from16 v31, v5

    move-object/from16 v2, v24

    const/4 v4, 0x7

    invoke-interface {v1, v0, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->l(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v29

    or-int/lit16 v8, v8, 0x80

    goto :goto_5

    :pswitch_12
    move-object/from16 v33, v2

    move-object/from16 v32, v4

    move-object/from16 v31, v5

    move-object/from16 v2, v24

    const/4 v4, 0x6

    invoke-interface {v1, v0, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->l(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v28

    or-int/lit8 v8, v8, 0x40

    goto :goto_5

    :pswitch_13
    move-object/from16 v33, v2

    move-object/from16 v32, v4

    move-object/from16 v31, v5

    move-object/from16 v2, v24

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v5, 0x5

    move-object/from16 v2, v23

    invoke-interface {v1, v0, v5, v4, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Ljava/lang/String;

    or-int/lit8 v8, v8, 0x20

    goto :goto_6

    :pswitch_14
    move-object/from16 v33, v2

    move-object/from16 v32, v4

    move-object/from16 v31, v5

    move-object/from16 v2, v23

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v5, 0x4

    move-object/from16 v2, v22

    invoke-interface {v1, v0, v5, v4, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Ljava/lang/String;

    or-int/lit8 v8, v8, 0x10

    goto/16 :goto_6

    :pswitch_15
    move-object/from16 v33, v2

    move-object/from16 v32, v4

    move-object/from16 v31, v5

    move-object/from16 v2, v22

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v5, 0x3

    move-object/from16 v2, v21

    invoke-interface {v1, v0, v5, v4, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Ljava/lang/String;

    or-int/lit8 v8, v8, 0x8

    goto/16 :goto_6

    :pswitch_16
    move-object/from16 v33, v2

    move-object/from16 v32, v4

    move-object/from16 v31, v5

    move-object/from16 v2, v21

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId$$serializer;

    if-eqz v20, :cond_0

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId;

    move-object/from16 v21, v2

    move-object/from16 v2, v20

    invoke-direct {v5, v2}, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :cond_0
    move-object/from16 v21, v2

    move-object/from16 v5, p0

    :goto_7
    const/4 v2, 0x2

    invoke-interface {v1, v0, v2, v4, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId;->a:Ljava/lang/String;

    move-object/from16 v20, v2

    goto :goto_8

    :cond_1
    move-object/from16 v20, p0

    :goto_8
    or-int/lit8 v8, v8, 0x4

    goto/16 :goto_6

    :pswitch_17
    move-object/from16 v33, v2

    move-object/from16 v32, v4

    move-object/from16 v31, v5

    move-object/from16 v2, v20

    const/4 v4, 0x1

    invoke-interface {v1, v0, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->l(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v27

    or-int/lit8 v8, v8, 0x2

    goto/16 :goto_5

    :pswitch_18
    move-object/from16 v33, v2

    move-object/from16 v32, v4

    move-object/from16 v31, v5

    move-object/from16 v2, v20

    const/4 v4, 0x1

    sget-object v5, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId$$serializer;

    if-eqz v19, :cond_2

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;

    move-object/from16 v20, v2

    move-object/from16 v2, v19

    invoke-direct {v4, v2}, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;-><init>(Ljava/lang/String;)V

    :goto_9
    const/4 v2, 0x0

    goto :goto_a

    :cond_2
    move-object/from16 v20, v2

    move-object/from16 v4, p0

    goto :goto_9

    :goto_a
    invoke-interface {v1, v0, v2, v5, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;

    if-eqz v4, :cond_3

    iget-object v4, v4, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;->a:Ljava/lang/String;

    move-object/from16 v19, v4

    goto :goto_b

    :cond_3
    move-object/from16 v19, p0

    :goto_b
    or-int/lit8 v8, v8, 0x1

    goto/16 :goto_6

    :pswitch_19
    move-object/from16 v33, v2

    move-object/from16 v32, v4

    move-object/from16 v31, v5

    move-object/from16 v2, v19

    const/4 v4, 0x0

    move/from16 v18, v4

    goto/16 :goto_5

    :cond_4
    move-object/from16 v33, v2

    move-object/from16 v32, v4

    move-object/from16 v31, v5

    move-object/from16 v2, v19

    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    move-object/from16 v17, v24

    move-object/from16 v24, v33

    move-object/from16 v33, v15

    move-object/from16 v15, v28

    move-object/from16 v28, v12

    move-object/from16 v12, v21

    move-object/from16 v21, v32

    move-object/from16 v32, v10

    move-object/from16 v10, v27

    move-object/from16 v27, v11

    move-object/from16 v11, v20

    move-object/from16 v20, v31

    move-object/from16 v31, v7

    new-instance v7, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v18, v25

    move-object/from16 v19, v26

    move-object/from16 v16, v29

    move-object/from16 v25, v6

    move-object/from16 v26, v9

    move-object/from16 v29, v13

    move-object/from16 v13, v22

    move-object/from16 v22, v30

    move-object v9, v2

    move-object/from16 v30, v14

    move-object/from16 v14, v23

    move-object/from16 v23, v3

    invoke-direct/range {v7 .. v35}, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Store;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentInformation;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ShippingInformation;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7

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

    check-cast v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-object/from16 v2, p1

    invoke-interface {v2, v1}, Lkotlinx/serialization/encoding/Encoder;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object v2

    sget-object v3, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->z:[Lkotlin/Lazy;

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId$$serializer;

    iget-object v5, v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->a:Ljava/lang/String;

    iget-object v6, v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->y:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ShippingInformation;

    iget-object v7, v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->x:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentInformation;

    iget-object v8, v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->w:Ljava/util/List;

    iget-object v9, v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->v:Ljava/util/List;

    iget-object v10, v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->u:Ljava/lang/String;

    iget-object v11, v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->t:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;

    iget-object v12, v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->s:Ljava/lang/String;

    iget-object v13, v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->r:Ljava/lang/String;

    iget-object v14, v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->q:Ljava/lang/String;

    iget-object v15, v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->p:Ljava/lang/String;

    move-object/from16 p0, v3

    iget-object v3, v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->o:Ljava/lang/String;

    move-object/from16 p1, v6

    iget-object v6, v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->m:Ljava/lang/String;

    move-object/from16 p2, v7

    iget-object v7, v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->l:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto;

    move-object/from16 v16, v8

    iget-object v8, v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->k:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Store;

    move-object/from16 v17, v9

    iget-object v9, v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->j:Ljava/lang/String;

    move-object/from16 v18, v10

    iget-object v10, v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->i:Ljava/util/List;

    move-object/from16 v19, v11

    iget-object v11, v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->d:Ljava/lang/String;

    move-object/from16 v20, v12

    iget-object v12, v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->c:Ljava/lang/String;

    move-object/from16 v21, v13

    new-instance v13, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;

    invoke-direct {v13, v5}, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-interface {v2, v1, v5, v4, v13}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v4, 0x1

    iget-object v5, v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->b:Ljava/lang/String;

    invoke-interface {v2, v1, v4, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    invoke-interface {v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v12, :cond_2

    :goto_0
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId$$serializer;

    if-eqz v12, :cond_1

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId;

    invoke-direct {v5, v12}, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    const/4 v12, 0x2

    invoke-interface {v2, v1, v12, v4, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_2
    invoke-interface {v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    if-eqz v11, :cond_4

    :goto_2
    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v5, 0x3

    invoke-interface {v2, v1, v5, v4, v11}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_4
    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    iget-object v5, v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->e:Ljava/lang/String;

    const/4 v11, 0x4

    invoke-interface {v2, v1, v11, v4, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v5, 0x5

    iget-object v11, v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->f:Ljava/lang/String;

    invoke-interface {v2, v1, v5, v4, v11}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v5, 0x6

    iget-object v11, v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->g:Ljava/lang/String;

    invoke-interface {v2, v1, v5, v11}, Lkotlinx/serialization/encoding/CompositeEncoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v5, 0x7

    iget-object v11, v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->h:Ljava/lang/String;

    invoke-interface {v2, v1, v5, v11}, Lkotlinx/serialization/encoding/CompositeEncoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    invoke-interface {v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_3

    :cond_5
    sget-object v5, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-static {v10, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    :goto_3
    const/16 v5, 0x8

    aget-object v11, p0, v5

    invoke-interface {v11}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {v2, v1, v5, v11, v10}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_6
    invoke-interface {v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_4

    :cond_7
    if-eqz v9, :cond_8

    :goto_4
    const/16 v5, 0x9

    invoke-interface {v2, v1, v5, v4, v9}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_8
    invoke-interface {v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_5

    :cond_9
    if-eqz v8, :cond_a

    :goto_5
    sget-object v5, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Store$$serializer;->a:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Store$$serializer;

    const/16 v9, 0xa

    invoke-interface {v2, v1, v9, v5, v8}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_a
    invoke-interface {v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_6

    :cond_b
    if-eqz v7, :cond_c

    :goto_6
    sget-object v5, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto$$serializer;->a:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto$$serializer;

    const/16 v8, 0xb

    invoke-interface {v2, v1, v8, v5, v7}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_c
    invoke-interface {v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v5

    if-eqz v5, :cond_d

    goto :goto_7

    :cond_d
    if-eqz v6, :cond_e

    :goto_7
    const/16 v5, 0xc

    invoke-interface {v2, v1, v5, v4, v6}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_e
    const/16 v5, 0xd

    iget-object v0, v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->n:Ljava/lang/String;

    invoke-interface {v2, v1, v5, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    invoke-interface {v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_8

    :cond_f
    if-eqz v3, :cond_10

    :goto_8
    const/16 v0, 0xe

    invoke-interface {v2, v1, v0, v4, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_10
    invoke-interface {v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_9

    :cond_11
    if-eqz v15, :cond_12

    :goto_9
    const/16 v0, 0xf

    invoke-interface {v2, v1, v0, v4, v15}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_12
    invoke-interface {v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_a

    :cond_13
    if-eqz v14, :cond_14

    :goto_a
    const/16 v0, 0x10

    invoke-interface {v2, v1, v0, v4, v14}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_14
    invoke-interface {v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_b

    :cond_15
    if-eqz v21, :cond_16

    :goto_b
    const/16 v0, 0x11

    move-object/from16 v3, v21

    invoke-interface {v2, v1, v0, v4, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_16
    invoke-interface {v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_c

    :cond_17
    if-eqz v20, :cond_18

    :goto_c
    const/16 v0, 0x12

    move-object/from16 v3, v20

    invoke-interface {v2, v1, v0, v4, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_18
    invoke-interface {v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_d

    :cond_19
    if-eqz v19, :cond_1a

    :goto_d
    sget-object v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment$$serializer;->a:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment$$serializer;

    const/16 v3, 0x13

    move-object/from16 v5, v19

    invoke-interface {v2, v1, v3, v0, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1a
    invoke-interface {v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_e

    :cond_1b
    if-eqz v18, :cond_1c

    :goto_e
    const/16 v0, 0x14

    move-object/from16 v3, v18

    invoke-interface {v2, v1, v0, v4, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1c
    invoke-interface {v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_1d

    move-object/from16 v3, v17

    goto :goto_f

    :cond_1d
    sget-object v0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    move-object/from16 v3, v17

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    :goto_f
    const/16 v0, 0x15

    aget-object v4, p0, v0

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {v2, v1, v0, v4, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1e
    invoke-interface {v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_1f

    move-object/from16 v3, v16

    goto :goto_10

    :cond_1f
    sget-object v0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    move-object/from16 v3, v16

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    :goto_10
    const/16 v0, 0x16

    aget-object v4, p0, v0

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlinx/serialization/SerializationStrategy;

    invoke-interface {v2, v1, v0, v4, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_20
    invoke-interface {v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_11

    :cond_21
    if-eqz p2, :cond_22

    :goto_11
    sget-object v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentInformation$$serializer;->a:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentInformation$$serializer;

    const/16 v3, 0x17

    move-object/from16 v4, p2

    invoke-interface {v2, v1, v3, v0, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_22
    invoke-interface {v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_12

    :cond_23
    if-eqz p1, :cond_24

    :goto_12
    sget-object v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ShippingInformation$$serializer;->a:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ShippingInformation$$serializer;

    const/16 v3, 0x18

    move-object/from16 v4, p1

    invoke-interface {v2, v1, v3, v0, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_24
    invoke-interface {v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public final e()[Lkotlinx/serialization/KSerializer;
    .locals 4

    sget-object p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->z:[Lkotlin/Lazy;

    const/16 v0, 0x19

    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    const/4 v1, 0x0

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId$$serializer;

    aput-object v2, v0, v1

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId$$serializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    const/4 v2, 0x3

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

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

    aput-object v1, v0, v2

    const/16 v2, 0x8

    aget-object v3, p0, v2

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x9

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v0, v2

    sget-object v2, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Store$$serializer;->a:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Store$$serializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/16 v3, 0xa

    aput-object v2, v0, v3

    sget-object v2, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto$$serializer;->a:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto$$serializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/16 v3, 0xb

    aput-object v2, v0, v3

    const/16 v2, 0xc

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const/16 v2, 0xe

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0xf

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x10

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x11

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x12

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v0, v2

    sget-object v2, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment$$serializer;->a:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment$$serializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/16 v3, 0x13

    aput-object v2, v0, v3

    const/16 v2, 0x14

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    aput-object v1, v0, v2

    const/16 v1, 0x15

    aget-object v2, p0, v1

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x16

    aget-object p0, p0, v1

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v0, v1

    sget-object p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentInformation$$serializer;->a:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AppointmentInformation$$serializer;

    invoke-static {p0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    const/16 v1, 0x17

    aput-object p0, v0, v1

    sget-object p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ShippingInformation$$serializer;->a:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ShippingInformation$$serializer;

    invoke-static {p0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    const/16 v1, 0x18

    aput-object p0, v0, v1

    return-object v0
.end method
