.class public final synthetic Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto$$serializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = "$serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/internal/GeneratedSerializer<",
        "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;",
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
        "com/vuitton/android/data/dto/careservices/bff/CareServiceShortDto.$serializer",
        "Lkotlinx/serialization/internal/GeneratedSerializer;",
        "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;",
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
.field public static final a:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto$$serializer;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto$$serializer;->a:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto$$serializer;

    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "com.vuitton.android.data.dto.careservices.bff.CareServiceShortDto"

    const/16 v3, 0xe

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v0, "identifier"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "displayableIdentifier"

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "transactionIdentifier"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "type"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "category"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "stepTitle"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "action"

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

    const-string v0, "hotContent"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    sput-object v1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public final b(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 24

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/Decoder;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object v1

    const/16 p0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

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

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_0
    if-eqz v5, :cond_4

    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v20

    packed-switch v20, :pswitch_data_0

    invoke-static/range {v20 .. v20}, Lb21;->l(I)V

    return-object p0

    :pswitch_0
    sget-object v3, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceHotContentDto$$serializer;->a:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceHotContentDto$$serializer;

    const/16 v2, 0xd

    invoke-interface {v1, v0, v2, v3, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceHotContentDto;

    or-int/lit16 v7, v7, 0x2000

    goto :goto_0

    :pswitch_1
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v3, 0xc

    invoke-interface {v1, v0, v3, v2, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Ljava/lang/String;

    or-int/lit16 v7, v7, 0x1000

    goto :goto_0

    :pswitch_2
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v3, 0xb

    invoke-interface {v1, v0, v3, v2, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Ljava/lang/String;

    or-int/lit16 v7, v7, 0x800

    goto :goto_0

    :pswitch_3
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v3, 0xa

    invoke-interface {v1, v0, v3, v2, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Ljava/lang/String;

    or-int/lit16 v7, v7, 0x400

    goto :goto_0

    :pswitch_4
    const/16 v2, 0x9

    invoke-interface {v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->l(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v19

    or-int/lit16 v7, v7, 0x200

    goto :goto_0

    :pswitch_5
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v3, 0x8

    invoke-interface {v1, v0, v3, v2, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    or-int/lit16 v7, v7, 0x100

    goto :goto_0

    :pswitch_6
    sget-object v2, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto$$serializer;->a:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto$$serializer;

    const/4 v3, 0x7

    invoke-interface {v1, v0, v3, v2, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto;

    or-int/lit16 v7, v7, 0x80

    goto :goto_0

    :pswitch_7
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v3, 0x6

    invoke-interface {v1, v0, v3, v2, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Ljava/lang/String;

    or-int/lit8 v7, v7, 0x40

    goto :goto_0

    :pswitch_8
    const/4 v2, 0x5

    invoke-interface {v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->l(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v18

    or-int/lit8 v7, v7, 0x20

    goto :goto_0

    :pswitch_9
    const/4 v2, 0x4

    invoke-interface {v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->l(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v17

    or-int/lit8 v7, v7, 0x10

    goto/16 :goto_0

    :pswitch_a
    const/4 v2, 0x3

    invoke-interface {v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->l(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v16

    or-int/lit8 v7, v7, 0x8

    goto/16 :goto_0

    :pswitch_b
    sget-object v2, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId$$serializer;

    if-eqz v10, :cond_0

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId;

    invoke-direct {v3, v10}, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    move-object/from16 v3, p0

    :goto_1
    const/4 v10, 0x2

    invoke-interface {v1, v0, v10, v2, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId;->a:Ljava/lang/String;

    move-object v10, v2

    goto :goto_2

    :cond_1
    move-object/from16 v10, p0

    :goto_2
    or-int/lit8 v7, v7, 0x4

    goto/16 :goto_0

    :pswitch_c
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v3, 0x1

    invoke-interface {v1, v0, v3, v2, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    or-int/lit8 v7, v7, 0x2

    goto/16 :goto_0

    :pswitch_d
    const/4 v3, 0x1

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId$$serializer;

    if-eqz v8, :cond_2

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;

    invoke-direct {v3, v8}, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;-><init>(Ljava/lang/String;)V

    :goto_3
    const/4 v8, 0x0

    goto :goto_4

    :cond_2
    move-object/from16 v3, p0

    goto :goto_3

    :goto_4
    invoke-interface {v1, v0, v8, v2, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;->a:Ljava/lang/String;

    goto :goto_5

    :cond_3
    move-object/from16 v2, p0

    :goto_5
    or-int/lit8 v7, v7, 0x1

    move-object v8, v2

    goto/16 :goto_0

    :pswitch_e
    const/4 v2, 0x0

    move v5, v2

    goto/16 :goto_0

    :cond_4
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    move-object/from16 v20, v13

    move-object/from16 v13, v18

    move-object/from16 v18, v11

    move-object/from16 v11, v16

    move-object/from16 v16, v6

    new-instance v6, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v21, v19

    move-object/from16 v19, v12

    move-object/from16 v12, v17

    move-object/from16 v17, v21

    move-object/from16 v21, v4

    invoke-direct/range {v6 .. v23}, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceHotContentDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v6

    :pswitch_data_0
    .packed-switch -0x1
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

    check-cast p2, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Encoder;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object p1

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId$$serializer;

    iget-object v1, p2, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->a:Ljava/lang/String;

    iget-object v2, p2, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->n:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceHotContentDto;

    iget-object v3, p2, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->m:Ljava/lang/String;

    iget-object v4, p2, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->l:Ljava/lang/String;

    iget-object v5, p2, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->k:Ljava/lang/String;

    iget-object v6, p2, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->i:Ljava/lang/String;

    iget-object v7, p2, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->h:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto;

    iget-object v8, p2, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->g:Ljava/lang/String;

    iget-object v9, p2, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->c:Ljava/lang/String;

    iget-object v10, p2, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->b:Ljava/lang/String;

    new-instance v11, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;

    invoke-direct {v11, v1}, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-interface {p1, p0, v1, v0, v11}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v10, :cond_1

    :goto_0
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v1, 0x1

    invoke-interface {p1, p0, v1, v0, v10}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v9, :cond_4

    :goto_1
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId$$serializer;

    if-eqz v9, :cond_3

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId;

    invoke-direct {v1, v9}, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    const/4 v9, 0x2

    invoke-interface {p1, p0, v9, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_4
    const/4 v0, 0x3

    iget-object v1, p2, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->d:Ljava/lang/String;

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v0, 0x4

    iget-object v1, p2, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->e:Ljava/lang/String;

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v0, 0x5

    iget-object v1, p2, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->f:Ljava/lang/String;

    invoke-interface {p1, p0, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    if-eqz v8, :cond_6

    :goto_3
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v1, 0x6

    invoke-interface {p1, p0, v1, v0, v8}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_6
    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    if-eqz v7, :cond_8

    :goto_4
    sget-object v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto$$serializer;->a:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto$$serializer;

    const/4 v1, 0x7

    invoke-interface {p1, p0, v1, v0, v7}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_8
    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_5

    :cond_9
    if-eqz v6, :cond_a

    :goto_5
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v1, 0x8

    invoke-interface {p1, p0, v1, v0, v6}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_a
    const/16 v0, 0x9

    iget-object p2, p2, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceShortDto;->j:Ljava/lang/String;

    invoke-interface {p1, p0, v0, p2}, Lkotlinx/serialization/encoding/CompositeEncoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p2

    if-eqz p2, :cond_b

    goto :goto_6

    :cond_b
    if-eqz v5, :cond_c

    :goto_6
    sget-object p2, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v0, 0xa

    invoke-interface {p1, p0, v0, p2, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_c
    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p2

    if-eqz p2, :cond_d

    goto :goto_7

    :cond_d
    if-eqz v4, :cond_e

    :goto_7
    sget-object p2, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v0, 0xb

    invoke-interface {p1, p0, v0, p2, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_e
    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p2

    if-eqz p2, :cond_f

    goto :goto_8

    :cond_f
    if-eqz v3, :cond_10

    :goto_8
    sget-object p2, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v0, 0xc

    invoke-interface {p1, p0, v0, p2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_10
    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p2

    if-eqz p2, :cond_11

    goto :goto_9

    :cond_11
    if-eqz v2, :cond_12

    :goto_9
    sget-object p2, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceHotContentDto$$serializer;->a:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceHotContentDto$$serializer;

    const/16 v0, 0xd

    invoke-interface {p1, p0, v0, p2, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_12
    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public final e()[Lkotlinx/serialization/KSerializer;
    .locals 12

    sget-object p0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    invoke-static {p0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId$$serializer;

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    invoke-static {p0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    sget-object v3, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto$$serializer;->a:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceProductDto$$serializer;

    invoke-static {v3}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    invoke-static {p0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v4

    invoke-static {p0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v5

    invoke-static {p0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v6

    invoke-static {p0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v7

    sget-object v8, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceHotContentDto$$serializer;->a:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceHotContentDto$$serializer;

    invoke-static {v8}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v8

    const/16 v9, 0xe

    new-array v9, v9, [Lkotlinx/serialization/KSerializer;

    sget-object v10, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId$$serializer;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const/4 v10, 0x1

    aput-object v0, v9, v10

    const/4 v0, 0x2

    aput-object v1, v9, v0

    const/4 v0, 0x3

    aput-object p0, v9, v0

    const/4 v0, 0x4

    aput-object p0, v9, v0

    const/4 v0, 0x5

    aput-object p0, v9, v0

    const/4 v0, 0x6

    aput-object v2, v9, v0

    const/4 v0, 0x7

    aput-object v3, v9, v0

    const/16 v0, 0x8

    aput-object v4, v9, v0

    const/16 v0, 0x9

    aput-object p0, v9, v0

    const/16 p0, 0xa

    aput-object v5, v9, p0

    const/16 p0, 0xb

    aput-object v6, v9, p0

    const/16 p0, 0xc

    aput-object v7, v9, p0

    const/16 p0, 0xd

    aput-object v8, v9, p0

    return-object v9
.end method
