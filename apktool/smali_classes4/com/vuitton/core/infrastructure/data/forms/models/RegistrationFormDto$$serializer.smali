.class public final synthetic Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto$$serializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = "$serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/internal/GeneratedSerializer<",
        "Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;",
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
        "com/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto.$serializer",
        "Lkotlinx/serialization/internal/GeneratedSerializer;",
        "Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;",
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
.field public static final a:Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto$$serializer;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto$$serializer;

    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "com.vuitton.core.infrastructure.data.forms.models.RegistrationFormDto"

    const/16 v3, 0xe

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v0, "identifier"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "email"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "password"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "confirmPassword"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "civility"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "firstName"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "lastName"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "firstName2"

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "lastName2"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "birthDate"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "country"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "phone"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "consents"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "address"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    sput-object v1, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public final b(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 23

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

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

    :goto_0
    if-eqz v17, :cond_0

    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v19

    packed-switch v19, :pswitch_data_0

    invoke-static/range {v19 .. v19}, Lb21;->l(I)V

    return-object p0

    :pswitch_0
    move-object/from16 v19, v9

    sget-object v9, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto$$serializer;

    move-object/from16 v20, v10

    const/16 v10, 0xd

    invoke-interface {v1, v0, v10, v9, v8}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;

    or-int/lit16 v7, v7, 0x2000

    :goto_1
    move-object/from16 v9, v19

    :goto_2
    move-object/from16 v10, v20

    goto :goto_0

    :pswitch_1
    move-object/from16 v19, v9

    move-object/from16 v20, v10

    sget-object v9, Lcom/vuitton/core/infrastructure/data/forms/models/RegisterConsentsFormFieldDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/RegisterConsentsFormFieldDto$$serializer;

    const/16 v10, 0xc

    invoke-interface {v1, v0, v10, v9, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/core/infrastructure/data/forms/models/RegisterConsentsFormFieldDto;

    or-int/lit16 v7, v7, 0x1000

    goto :goto_1

    :pswitch_2
    move-object/from16 v19, v9

    move-object/from16 v20, v10

    sget-object v9, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto$$serializer;

    const/16 v10, 0xb

    invoke-interface {v1, v0, v10, v9, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;

    or-int/lit16 v7, v7, 0x800

    goto :goto_1

    :pswitch_3
    move-object/from16 v19, v9

    move-object/from16 v20, v10

    sget-object v9, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;

    const/16 v10, 0xa

    invoke-interface {v1, v0, v10, v9, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    or-int/lit16 v7, v7, 0x400

    goto :goto_1

    :pswitch_4
    move-object/from16 v19, v9

    move-object/from16 v20, v10

    sget-object v9, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;

    const/16 v10, 0x9

    invoke-interface {v1, v0, v10, v9, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    or-int/lit16 v7, v7, 0x200

    goto :goto_1

    :pswitch_5
    move-object/from16 v19, v9

    move-object/from16 v20, v10

    sget-object v9, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;

    const/16 v10, 0x8

    invoke-interface {v1, v0, v10, v9, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    or-int/lit16 v7, v7, 0x100

    goto :goto_1

    :pswitch_6
    move-object/from16 v19, v9

    move-object/from16 v20, v10

    sget-object v9, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;

    const/4 v10, 0x7

    invoke-interface {v1, v0, v10, v9, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v15, v9

    check-cast v15, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    or-int/lit16 v7, v7, 0x80

    goto :goto_1

    :pswitch_7
    move-object/from16 v19, v9

    move-object/from16 v20, v10

    sget-object v9, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;

    const/4 v10, 0x6

    invoke-interface {v1, v0, v10, v9, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v14, v9

    check-cast v14, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    or-int/lit8 v7, v7, 0x40

    goto :goto_1

    :pswitch_8
    move-object/from16 v19, v9

    move-object/from16 v20, v10

    sget-object v9, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;

    const/4 v10, 0x5

    invoke-interface {v1, v0, v10, v9, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v13, v9

    check-cast v13, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    or-int/lit8 v7, v7, 0x20

    goto/16 :goto_1

    :pswitch_9
    move-object/from16 v19, v9

    move-object/from16 v20, v10

    sget-object v9, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;

    const/4 v10, 0x4

    invoke-interface {v1, v0, v10, v9, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v12, v9

    check-cast v12, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    or-int/lit8 v7, v7, 0x10

    goto/16 :goto_1

    :pswitch_a
    move-object/from16 v19, v9

    move-object/from16 v20, v10

    sget-object v9, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;

    const/4 v10, 0x3

    invoke-interface {v1, v0, v10, v9, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    or-int/lit8 v7, v7, 0x8

    goto/16 :goto_1

    :pswitch_b
    move-object/from16 v19, v9

    move-object/from16 v20, v10

    sget-object v9, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;

    const/4 v10, 0x2

    move-object/from16 v21, v2

    move-object/from16 v2, v20

    invoke-interface {v1, v0, v10, v9, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    or-int/lit8 v7, v7, 0x4

    move-object/from16 v9, v19

    :goto_3
    move-object/from16 v2, v21

    goto/16 :goto_0

    :pswitch_c
    move-object/from16 v21, v2

    move-object/from16 v19, v9

    move-object v2, v10

    sget-object v9, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;

    move-object/from16 v20, v2

    move-object/from16 v10, v19

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2, v9, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    or-int/lit8 v7, v7, 0x2

    :goto_4
    move-object/from16 v10, v20

    goto :goto_3

    :pswitch_d
    move-object/from16 v21, v2

    move-object/from16 v20, v10

    const/4 v2, 0x1

    move-object v10, v9

    const/4 v9, 0x0

    invoke-interface {v1, v0, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->l(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v18

    or-int/lit8 v7, v7, 0x1

    move-object v9, v10

    goto :goto_4

    :pswitch_e
    move-object/from16 v21, v2

    move-object/from16 v20, v10

    move-object v10, v9

    const/4 v9, 0x0

    move/from16 v17, v9

    move-object v9, v10

    goto/16 :goto_2

    :cond_0
    move-object/from16 v21, v2

    move-object/from16 v20, v10

    move-object v10, v9

    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    move-object/from16 v16, v6

    new-instance v6, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;

    const/16 v22, 0x0

    move-object/from16 v17, v4

    move-object/from16 v10, v20

    move-object/from16 v19, v21

    move-object/from16 v20, v5

    move-object/from16 v21, v8

    move-object/from16 v8, v18

    move-object/from16 v18, v3

    invoke-direct/range {v6 .. v22}, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;-><init>(ILjava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;Lcom/vuitton/core/infrastructure/data/forms/models/RegisterConsentsFormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    return-object v6

    nop

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
    .locals 6

    check-cast p2, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Encoder;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object p1

    iget-object v0, p2, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->a:Ljava/lang/String;

    iget-object v1, p2, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->n:Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto;

    iget-object v2, p2, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->i:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v3, p2, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->h:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    const/4 v4, 0x0

    invoke-interface {p1, p0, v4, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    sget-object v0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;

    iget-object v4, p2, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->b:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    const/4 v5, 0x1

    invoke-interface {p1, p0, v5, v0, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v4, 0x2

    iget-object v5, p2, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-interface {p1, p0, v4, v0, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v4, 0x3

    iget-object v5, p2, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-interface {p1, p0, v4, v0, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v4, 0x4

    iget-object v5, p2, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->e:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-interface {p1, p0, v4, v0, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v4, 0x5

    iget-object v5, p2, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->f:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-interface {p1, p0, v4, v0, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v4, 0x6

    iget-object v5, p2, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->g:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-interface {p1, p0, v4, v0, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    :goto_0
    const/4 v4, 0x7

    invoke-interface {p1, p0, v4, v0, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    :goto_1
    const/16 v3, 0x8

    invoke-interface {p1, p0, v3, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3
    const/16 v2, 0x9

    iget-object v3, p2, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->j:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-interface {p1, p0, v2, v0, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/16 v2, 0xa

    iget-object v3, p2, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->k:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-interface {p1, p0, v2, v0, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto$$serializer;

    iget-object v2, p2, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->l:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;

    const/16 v3, 0xb

    invoke-interface {p1, p0, v3, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lcom/vuitton/core/infrastructure/data/forms/models/RegisterConsentsFormFieldDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/RegisterConsentsFormFieldDto$$serializer;

    iget-object p2, p2, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationFormDto;->m:Lcom/vuitton/core/infrastructure/data/forms/models/RegisterConsentsFormFieldDto;

    const/16 v2, 0xc

    invoke-interface {p1, p0, v2, v0, p2}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    :goto_2
    sget-object p2, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto$$serializer;

    const/16 v0, 0xd

    invoke-interface {p1, p0, v0, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_5
    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public final e()[Lkotlinx/serialization/KSerializer;
    .locals 6

    sget-object p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;

    invoke-static {p0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    invoke-static {p0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    sget-object v2, Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/RegistrationAddressFormFieldDto$$serializer;

    invoke-static {v2}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/16 v3, 0xe

    new-array v3, v3, [Lkotlinx/serialization/KSerializer;

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p0, v3, v4

    const/4 v4, 0x2

    aput-object p0, v3, v4

    const/4 v4, 0x3

    aput-object p0, v3, v4

    const/4 v4, 0x4

    aput-object p0, v3, v4

    const/4 v4, 0x5

    aput-object p0, v3, v4

    const/4 v4, 0x6

    aput-object p0, v3, v4

    const/4 v4, 0x7

    aput-object v0, v3, v4

    const/16 v0, 0x8

    aput-object v1, v3, v0

    const/16 v0, 0x9

    aput-object p0, v3, v0

    const/16 v0, 0xa

    aput-object p0, v3, v0

    sget-object p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto$$serializer;

    const/16 v0, 0xb

    aput-object p0, v3, v0

    sget-object p0, Lcom/vuitton/core/infrastructure/data/forms/models/RegisterConsentsFormFieldDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/RegisterConsentsFormFieldDto$$serializer;

    const/16 v0, 0xc

    aput-object p0, v3, v0

    const/16 p0, 0xd

    aput-object v2, v3, p0

    return-object v3
.end method
