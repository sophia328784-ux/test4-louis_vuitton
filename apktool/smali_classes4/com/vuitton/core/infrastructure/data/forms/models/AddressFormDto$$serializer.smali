.class public final synthetic Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto$$serializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = "$serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/internal/GeneratedSerializer<",
        "Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;",
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
        "com/vuitton/core/infrastructure/data/forms/models/AddressFormDto.$serializer",
        "Lkotlinx/serialization/internal/GeneratedSerializer;",
        "Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "descriptor",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "a",
        "()Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "forms"
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
.field public static final a:Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto$$serializer;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto$$serializer;

    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "com.vuitton.core.infrastructure.data.forms.models.AddressFormDto"

    const/16 v3, 0x13

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v0, "identifier"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "address1"

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "address2"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "address3"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "city"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "civility"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "companyName"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "country"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "county"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "description"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "firstName"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "firstName2"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "lastName"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "lastName2"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "phones"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "postalCode"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "state"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "street"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "streetNumber"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    sput-object v1, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public final b(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 28

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/Decoder;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object v1

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

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    :goto_0
    if-eqz v17, :cond_0

    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v24

    packed-switch v24, :pswitch_data_0

    invoke-static/range {v24 .. v24}, Lb21;->l(I)V

    return-object p0

    :pswitch_0
    move-object/from16 v24, v14

    sget-object v14, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;

    move-object/from16 v25, v15

    const/16 v15, 0x12

    invoke-interface {v1, v0, v15, v14, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    const/high16 v14, 0x40000

    :goto_1
    or-int/2addr v7, v14

    :goto_2
    move-object/from16 v14, v24

    move-object/from16 v15, v25

    goto :goto_0

    :pswitch_1
    move-object/from16 v24, v14

    move-object/from16 v25, v15

    sget-object v14, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;

    const/16 v15, 0x11

    invoke-interface {v1, v0, v15, v14, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    const/high16 v14, 0x20000

    goto :goto_1

    :pswitch_2
    move-object/from16 v24, v14

    move-object/from16 v25, v15

    sget-object v14, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;

    const/16 v15, 0x10

    invoke-interface {v1, v0, v15, v14, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    const/high16 v14, 0x10000

    goto :goto_1

    :pswitch_3
    move-object/from16 v24, v14

    move-object/from16 v25, v15

    sget-object v14, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;

    const/16 v15, 0xf

    invoke-interface {v1, v0, v15, v14, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    const v14, 0x8000

    goto :goto_1

    :pswitch_4
    move-object/from16 v24, v14

    move-object/from16 v25, v15

    sget-object v14, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto$$serializer;

    const/16 v15, 0xe

    invoke-interface {v1, v0, v15, v14, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;

    or-int/lit16 v7, v7, 0x4000

    goto :goto_2

    :pswitch_5
    move-object/from16 v24, v14

    move-object/from16 v25, v15

    sget-object v14, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;

    const/16 v15, 0xd

    invoke-interface {v1, v0, v15, v14, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    or-int/lit16 v7, v7, 0x2000

    goto :goto_2

    :pswitch_6
    move-object/from16 v24, v14

    move-object/from16 v25, v15

    sget-object v14, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;

    const/16 v15, 0xc

    invoke-interface {v1, v0, v15, v14, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    or-int/lit16 v7, v7, 0x1000

    goto :goto_2

    :pswitch_7
    move-object/from16 v24, v14

    move-object/from16 v25, v15

    sget-object v14, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;

    const/16 v15, 0xb

    invoke-interface {v1, v0, v15, v14, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    or-int/lit16 v7, v7, 0x800

    goto :goto_2

    :pswitch_8
    move-object/from16 v24, v14

    move-object/from16 v25, v15

    sget-object v14, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;

    const/16 v15, 0xa

    invoke-interface {v1, v0, v15, v14, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    or-int/lit16 v7, v7, 0x400

    goto/16 :goto_2

    :pswitch_9
    move-object/from16 v24, v14

    move-object/from16 v25, v15

    sget-object v14, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;

    const/16 v15, 0x9

    invoke-interface {v1, v0, v15, v14, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    or-int/lit16 v7, v7, 0x200

    goto/16 :goto_2

    :pswitch_a
    move-object/from16 v24, v14

    move-object/from16 v25, v15

    sget-object v14, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;

    const/16 v15, 0x8

    invoke-interface {v1, v0, v15, v14, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    or-int/lit16 v7, v7, 0x100

    goto/16 :goto_2

    :pswitch_b
    move-object/from16 v24, v14

    move-object/from16 v25, v15

    sget-object v14, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;

    const/4 v15, 0x7

    move-object/from16 v26, v2

    move-object/from16 v2, v25

    invoke-interface {v1, v0, v15, v14, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    or-int/lit16 v7, v7, 0x80

    move-object/from16 v14, v24

    :goto_3
    move-object/from16 v2, v26

    goto/16 :goto_0

    :pswitch_c
    move-object/from16 v26, v2

    move-object/from16 v24, v14

    move-object v2, v15

    sget-object v14, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;

    const/4 v15, 0x6

    move-object/from16 v25, v2

    move-object/from16 v2, v24

    invoke-interface {v1, v0, v15, v14, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    or-int/lit8 v7, v7, 0x40

    :goto_4
    move-object/from16 v15, v25

    goto :goto_3

    :pswitch_d
    move-object/from16 v26, v2

    move-object v2, v14

    move-object/from16 v25, v15

    sget-object v14, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;

    const/4 v15, 0x5

    move-object/from16 v24, v2

    move-object/from16 v2, v23

    invoke-interface {v1, v0, v15, v14, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    or-int/lit8 v7, v7, 0x20

    :goto_5
    move-object/from16 v14, v24

    goto :goto_4

    :pswitch_e
    move-object/from16 v26, v2

    move-object/from16 v24, v14

    move-object/from16 v25, v15

    move-object/from16 v2, v23

    sget-object v14, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;

    const/4 v15, 0x4

    move-object/from16 v2, v22

    invoke-interface {v1, v0, v15, v14, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    or-int/lit8 v7, v7, 0x10

    goto :goto_5

    :pswitch_f
    move-object/from16 v26, v2

    move-object/from16 v24, v14

    move-object/from16 v25, v15

    move-object/from16 v2, v22

    sget-object v14, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;

    const/4 v15, 0x3

    move-object/from16 v2, v21

    invoke-interface {v1, v0, v15, v14, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    or-int/lit8 v7, v7, 0x8

    goto :goto_5

    :pswitch_10
    move-object/from16 v26, v2

    move-object/from16 v24, v14

    move-object/from16 v25, v15

    move-object/from16 v2, v21

    sget-object v14, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;

    const/4 v15, 0x2

    move-object/from16 v2, v20

    invoke-interface {v1, v0, v15, v14, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    or-int/lit8 v7, v7, 0x4

    goto :goto_5

    :pswitch_11
    move-object/from16 v26, v2

    move-object/from16 v24, v14

    move-object/from16 v25, v15

    move-object/from16 v2, v20

    sget-object v14, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;

    move-object/from16 v16, v2

    move-object/from16 v15, v19

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2, v14, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v19, v14

    check-cast v19, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    or-int/lit8 v7, v7, 0x2

    move-object/from16 v20, v16

    goto :goto_5

    :pswitch_12
    move-object/from16 v26, v2

    move-object/from16 v24, v14

    move-object/from16 v25, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v20

    const/4 v2, 0x1

    const/4 v14, 0x0

    invoke-interface {v1, v0, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->l(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v18

    or-int/lit8 v7, v7, 0x1

    goto :goto_5

    :pswitch_13
    move-object/from16 v26, v2

    move-object/from16 v24, v14

    move-object/from16 v25, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v20

    const/4 v2, 0x1

    const/4 v14, 0x0

    move/from16 v17, v14

    goto/16 :goto_5

    :cond_0
    move-object/from16 v26, v2

    move-object/from16 v24, v14

    move-object/from16 v25, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v20

    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    move-object/from16 v2, v16

    move-object/from16 v16, v6

    new-instance v6, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;

    const/16 v27, 0x0

    move-object/from16 v14, v22

    move-object/from16 v22, v9

    move-object v9, v15

    move-object/from16 v15, v25

    move-object/from16 v25, v12

    move-object v12, v14

    move-object/from16 v17, v4

    move-object/from16 v20, v5

    move-object/from16 v14, v24

    move-object/from16 v19, v26

    move-object/from16 v24, v11

    move-object/from16 v26, v13

    move-object/from16 v11, v21

    move-object/from16 v13, v23

    move-object/from16 v21, v8

    move-object/from16 v23, v10

    move-object/from16 v8, v18

    move-object v10, v2

    move-object/from16 v18, v3

    invoke-direct/range {v6 .. v27}, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;-><init>(ILjava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    return-object v6

    :pswitch_data_0
    .packed-switch -0x1
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
    .locals 16

    move-object/from16 v0, p2

    check-cast v0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-object/from16 v2, p1

    invoke-interface {v2, v1}, Lkotlinx/serialization/encoding/Encoder;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object v2

    iget-object v3, v0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->a:Ljava/lang/String;

    iget-object v4, v0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->s:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v5, v0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->r:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v6, v0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->q:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v7, v0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->p:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v8, v0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->n:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v9, v0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->m:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v10, v0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->l:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v11, v0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->k:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v12, v0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->j:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v13, v0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->i:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v14, v0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->g:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v15, v0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->f:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    move-object/from16 p0, v4

    iget-object v4, v0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    move-object/from16 p1, v5

    iget-object v5, v0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->b:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    move-object/from16 p2, v6

    const/4 v6, 0x0

    invoke-interface {v2, v1, v6, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    invoke-interface {v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v5, :cond_1

    :goto_0
    sget-object v3, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;

    const/4 v6, 0x1

    invoke-interface {v2, v1, v6, v3, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    sget-object v3, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;

    iget-object v5, v0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    const/4 v6, 0x2

    invoke-interface {v2, v1, v6, v3, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    invoke-interface {v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v4, :cond_3

    :goto_1
    const/4 v5, 0x3

    invoke-interface {v2, v1, v5, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3
    const/4 v4, 0x4

    iget-object v5, v0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->e:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-interface {v2, v1, v4, v3, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    invoke-interface {v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    if-eqz v15, :cond_5

    :goto_2
    const/4 v4, 0x5

    invoke-interface {v2, v1, v4, v3, v15}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_5
    invoke-interface {v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_3

    :cond_6
    if-eqz v14, :cond_7

    :goto_3
    const/4 v4, 0x6

    invoke-interface {v2, v1, v4, v3, v14}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_7
    const/4 v4, 0x7

    iget-object v5, v0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->h:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-interface {v2, v1, v4, v3, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    invoke-interface {v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_4

    :cond_8
    if-eqz v13, :cond_9

    :goto_4
    const/16 v4, 0x8

    invoke-interface {v2, v1, v4, v3, v13}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_9
    invoke-interface {v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_5

    :cond_a
    if-eqz v12, :cond_b

    :goto_5
    const/16 v4, 0x9

    invoke-interface {v2, v1, v4, v3, v12}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_b
    invoke-interface {v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v4

    if-eqz v4, :cond_c

    goto :goto_6

    :cond_c
    if-eqz v11, :cond_d

    :goto_6
    const/16 v4, 0xa

    invoke-interface {v2, v1, v4, v3, v11}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_d
    invoke-interface {v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v4

    if-eqz v4, :cond_e

    goto :goto_7

    :cond_e
    if-eqz v10, :cond_f

    :goto_7
    const/16 v4, 0xb

    invoke-interface {v2, v1, v4, v3, v10}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_f
    invoke-interface {v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v4

    if-eqz v4, :cond_10

    goto :goto_8

    :cond_10
    if-eqz v9, :cond_11

    :goto_8
    const/16 v4, 0xc

    invoke-interface {v2, v1, v4, v3, v9}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_11
    invoke-interface {v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v4

    if-eqz v4, :cond_12

    goto :goto_9

    :cond_12
    if-eqz v8, :cond_13

    :goto_9
    const/16 v4, 0xd

    invoke-interface {v2, v1, v4, v3, v8}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_13
    sget-object v4, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto$$serializer;

    iget-object v0, v0, Lcom/vuitton/core/infrastructure/data/forms/models/AddressFormDto;->o:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;

    const/16 v5, 0xe

    invoke-interface {v2, v1, v5, v4, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    invoke-interface {v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_a

    :cond_14
    if-eqz v7, :cond_15

    :goto_a
    const/16 v0, 0xf

    invoke-interface {v2, v1, v0, v3, v7}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_15
    invoke-interface {v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_b

    :cond_16
    if-eqz p2, :cond_17

    :goto_b
    const/16 v0, 0x10

    move-object/from16 v4, p2

    invoke-interface {v2, v1, v0, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_17
    invoke-interface {v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_c

    :cond_18
    if-eqz p1, :cond_19

    :goto_c
    const/16 v0, 0x11

    move-object/from16 v4, p1

    invoke-interface {v2, v1, v0, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_19
    invoke-interface {v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_d

    :cond_1a
    if-eqz p0, :cond_1b

    :goto_d
    const/16 v0, 0x12

    move-object/from16 v4, p0

    invoke-interface {v2, v1, v0, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1b
    invoke-interface {v2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public final e()[Lkotlinx/serialization/KSerializer;
    .locals 18

    sget-object v0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v4

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v5

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v6

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v7

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v8

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v9

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v10

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v11

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v12

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v13

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v14

    const/16 v15, 0x13

    new-array v15, v15, [Lkotlinx/serialization/KSerializer;

    sget-object v16, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/16 v17, 0x0

    aput-object v16, v15, v17

    const/16 v16, 0x1

    aput-object v1, v15, v16

    const/4 v1, 0x2

    aput-object v0, v15, v1

    const/4 v1, 0x3

    aput-object v2, v15, v1

    const/4 v1, 0x4

    aput-object v0, v15, v1

    const/4 v1, 0x5

    aput-object v3, v15, v1

    const/4 v1, 0x6

    aput-object v4, v15, v1

    const/4 v1, 0x7

    aput-object v0, v15, v1

    const/16 v0, 0x8

    aput-object v5, v15, v0

    const/16 v0, 0x9

    aput-object v6, v15, v0

    const/16 v0, 0xa

    aput-object v7, v15, v0

    const/16 v0, 0xb

    aput-object v8, v15, v0

    const/16 v0, 0xc

    aput-object v9, v15, v0

    const/16 v0, 0xd

    aput-object v10, v15, v0

    sget-object v0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto$$serializer;

    const/16 v1, 0xe

    aput-object v0, v15, v1

    const/16 v0, 0xf

    aput-object v11, v15, v0

    const/16 v0, 0x10

    aput-object v12, v15, v0

    const/16 v0, 0x11

    aput-object v13, v15, v0

    const/16 v0, 0x12

    aput-object v14, v15, v0

    return-object v15
.end method
