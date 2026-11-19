.class public final synthetic Lcom/vuitton/core/infrastructure/data/forms/models/BookingPersonalInfoFormDto$$serializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/core/infrastructure/data/forms/models/BookingPersonalInfoFormDto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = "$serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/internal/GeneratedSerializer<",
        "Lcom/vuitton/core/infrastructure/data/forms/models/BookingPersonalInfoFormDto;",
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
        "com/vuitton/core/infrastructure/data/forms/models/BookingPersonalInfoFormDto.$serializer",
        "Lkotlinx/serialization/internal/GeneratedSerializer;",
        "Lcom/vuitton/core/infrastructure/data/forms/models/BookingPersonalInfoFormDto;",
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
.field public static final a:Lcom/vuitton/core/infrastructure/data/forms/models/BookingPersonalInfoFormDto$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/vuitton/core/infrastructure/data/forms/models/BookingPersonalInfoFormDto$$serializer;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vuitton/core/infrastructure/data/forms/models/BookingPersonalInfoFormDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/BookingPersonalInfoFormDto$$serializer;

    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "com.vuitton.core.infrastructure.data.forms.models.BookingPersonalInfoFormDto"

    const/16 v3, 0xb

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v0, "identifier"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "civility"

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "firstName"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "lastName"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "firstName2"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "lastName2"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "country"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "email"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "phone"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "marketingEmailsConsent"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "personalDataCollectionConsent"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    sput-object v1, Lcom/vuitton/core/infrastructure/data/forms/models/BookingPersonalInfoFormDto$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lcom/vuitton/core/infrastructure/data/forms/models/BookingPersonalInfoFormDto$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public final b(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 20

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/core/infrastructure/data/forms/models/BookingPersonalInfoFormDto$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/Decoder;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object v1

    const/16 p0, 0x0

    const/4 v3, 0x0

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

    :goto_0
    if-eqz v5, :cond_0

    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v16

    packed-switch v16, :pswitch_data_0

    invoke-static/range {v16 .. v16}, Lb21;->l(I)V

    return-object p0

    :pswitch_0
    sget-object v2, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;

    move/from16 v17, v5

    const/16 v5, 0xa

    invoke-interface {v1, v0, v5, v2, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    or-int/lit16 v7, v7, 0x400

    :goto_1
    move/from16 v5, v17

    goto :goto_0

    :pswitch_1
    move/from16 v17, v5

    sget-object v2, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;

    const/16 v5, 0x9

    invoke-interface {v1, v0, v5, v2, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    or-int/lit16 v7, v7, 0x200

    goto :goto_1

    :pswitch_2
    move/from16 v17, v5

    sget-object v2, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto$$serializer;

    const/16 v5, 0x8

    invoke-interface {v1, v0, v5, v2, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;

    or-int/lit16 v7, v7, 0x100

    goto :goto_1

    :pswitch_3
    move/from16 v17, v5

    sget-object v2, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;

    const/4 v5, 0x7

    invoke-interface {v1, v0, v5, v2, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    or-int/lit16 v7, v7, 0x80

    goto :goto_1

    :pswitch_4
    move/from16 v17, v5

    sget-object v2, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;

    const/4 v5, 0x6

    invoke-interface {v1, v0, v5, v2, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    or-int/lit8 v7, v7, 0x40

    goto :goto_1

    :pswitch_5
    move/from16 v17, v5

    sget-object v2, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;

    const/4 v5, 0x5

    invoke-interface {v1, v0, v5, v2, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    or-int/lit8 v7, v7, 0x20

    goto :goto_1

    :pswitch_6
    move/from16 v17, v5

    sget-object v2, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;

    const/4 v5, 0x4

    invoke-interface {v1, v0, v5, v2, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    or-int/lit8 v7, v7, 0x10

    goto :goto_1

    :pswitch_7
    move/from16 v17, v5

    sget-object v2, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;

    const/4 v5, 0x3

    invoke-interface {v1, v0, v5, v2, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    or-int/lit8 v7, v7, 0x8

    goto :goto_1

    :pswitch_8
    move/from16 v17, v5

    sget-object v2, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;

    const/4 v5, 0x2

    invoke-interface {v1, v0, v5, v2, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    or-int/lit8 v7, v7, 0x4

    goto :goto_1

    :pswitch_9
    move/from16 v17, v5

    sget-object v2, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;

    const/4 v5, 0x1

    invoke-interface {v1, v0, v5, v2, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    or-int/lit8 v7, v7, 0x2

    goto/16 :goto_1

    :pswitch_a
    move/from16 v17, v5

    const/4 v2, 0x0

    const/4 v5, 0x1

    invoke-interface {v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->l(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v8

    or-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :pswitch_b
    const/4 v2, 0x0

    const/4 v5, 0x1

    move v5, v2

    goto/16 :goto_0

    :cond_0
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    move-object/from16 v16, v6

    new-instance v6, Lcom/vuitton/core/infrastructure/data/forms/models/BookingPersonalInfoFormDto;

    const/16 v19, 0x0

    move-object/from16 v18, v3

    move-object/from16 v17, v4

    invoke-direct/range {v6 .. v19}, Lcom/vuitton/core/infrastructure/data/forms/models/BookingPersonalInfoFormDto;-><init>(ILjava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    return-object v6

    nop

    :pswitch_data_0
    .packed-switch -0x1
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
    .locals 7

    check-cast p2, Lcom/vuitton/core/infrastructure/data/forms/models/BookingPersonalInfoFormDto;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/vuitton/core/infrastructure/data/forms/models/BookingPersonalInfoFormDto$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Encoder;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object p1

    iget-object v0, p2, Lcom/vuitton/core/infrastructure/data/forms/models/BookingPersonalInfoFormDto;->a:Ljava/lang/String;

    iget-object v1, p2, Lcom/vuitton/core/infrastructure/data/forms/models/BookingPersonalInfoFormDto;->k:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v2, p2, Lcom/vuitton/core/infrastructure/data/forms/models/BookingPersonalInfoFormDto;->g:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v3, p2, Lcom/vuitton/core/infrastructure/data/forms/models/BookingPersonalInfoFormDto;->f:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v4, p2, Lcom/vuitton/core/infrastructure/data/forms/models/BookingPersonalInfoFormDto;->e:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v5, p2, Lcom/vuitton/core/infrastructure/data/forms/models/BookingPersonalInfoFormDto;->b:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    const/4 v6, 0x0

    invoke-interface {p1, p0, v6, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v5, :cond_1

    :goto_0
    sget-object v0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;

    const/4 v6, 0x1

    invoke-interface {p1, p0, v6, v0, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    sget-object v0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;

    iget-object v5, p2, Lcom/vuitton/core/infrastructure/data/forms/models/BookingPersonalInfoFormDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    const/4 v6, 0x2

    invoke-interface {p1, p0, v6, v0, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v5, 0x3

    iget-object v6, p2, Lcom/vuitton/core/infrastructure/data/forms/models/BookingPersonalInfoFormDto;->d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-interface {p1, p0, v5, v0, v6}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v4, :cond_3

    :goto_1
    const/4 v5, 0x4

    invoke-interface {p1, p0, v5, v0, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3
    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    if-eqz v3, :cond_5

    :goto_2
    const/4 v4, 0x5

    invoke-interface {p1, p0, v4, v0, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_5
    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_3

    :cond_6
    if-eqz v2, :cond_7

    :goto_3
    const/4 v3, 0x6

    invoke-interface {p1, p0, v3, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_7
    const/4 v2, 0x7

    iget-object v3, p2, Lcom/vuitton/core/infrastructure/data/forms/models/BookingPersonalInfoFormDto;->h:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-interface {p1, p0, v2, v0, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v2, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto$$serializer;

    iget-object v3, p2, Lcom/vuitton/core/infrastructure/data/forms/models/BookingPersonalInfoFormDto;->i:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto;

    const/16 v4, 0x8

    invoke-interface {p1, p0, v4, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/16 v2, 0x9

    iget-object p2, p2, Lcom/vuitton/core/infrastructure/data/forms/models/BookingPersonalInfoFormDto;->j:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-interface {p1, p0, v2, v0, p2}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_4

    :cond_8
    if-eqz v1, :cond_9

    :goto_4
    const/16 p2, 0xa

    invoke-interface {p1, p0, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_9
    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public final e()[Lkotlinx/serialization/KSerializer;
    .locals 8

    sget-object p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;

    invoke-static {p0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    invoke-static {p0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    invoke-static {p0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v2

    invoke-static {p0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    invoke-static {p0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v4

    const/16 v5, 0xb

    new-array v5, v5, [Lkotlinx/serialization/KSerializer;

    sget-object v6, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v0, 0x2

    aput-object p0, v5, v0

    const/4 v0, 0x3

    aput-object p0, v5, v0

    const/4 v0, 0x4

    aput-object v1, v5, v0

    const/4 v0, 0x5

    aput-object v2, v5, v0

    const/4 v0, 0x6

    aput-object v3, v5, v0

    const/4 v0, 0x7

    aput-object p0, v5, v0

    sget-object v0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldPhoneDto$$serializer;

    const/16 v1, 0x8

    aput-object v0, v5, v1

    const/16 v0, 0x9

    aput-object p0, v5, v0

    const/16 p0, 0xa

    aput-object v4, v5, p0

    return-object v5
.end method
