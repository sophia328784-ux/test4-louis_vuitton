.class public final synthetic Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto$$serializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = "$serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/internal/GeneratedSerializer<",
        "Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;",
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
        "com/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto.$serializer",
        "Lkotlinx/serialization/internal/GeneratedSerializer;",
        "Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;",
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
.field public static final a:Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto$$serializer;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto$$serializer;

    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "com.vuitton.core.infrastructure.data.forms.models.CompleteProfileFormDto"

    const/16 v3, 0x8

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v0, "identifier"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "email"

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

    const-string v0, "consents"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    sput-object v1, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public final b(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 17

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/Decoder;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v2

    move v7, v3

    move-object v8, v4

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    :goto_0
    if-eqz v5, :cond_0

    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    invoke-static {v6}, Lb21;->l(I)V

    return-object v4

    :pswitch_0
    sget-object v6, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileConsentsFormFieldDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileConsentsFormFieldDto$$serializer;

    const/4 v4, 0x7

    invoke-interface {v1, v0, v4, v6, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileConsentsFormFieldDto;

    or-int/lit16 v7, v7, 0x80

    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    :pswitch_1
    sget-object v4, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;

    const/4 v6, 0x6

    invoke-interface {v1, v0, v6, v4, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    or-int/lit8 v7, v7, 0x40

    goto :goto_1

    :pswitch_2
    sget-object v4, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;

    const/4 v6, 0x5

    invoke-interface {v1, v0, v6, v4, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    or-int/lit8 v7, v7, 0x20

    goto :goto_1

    :pswitch_3
    sget-object v4, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;

    const/4 v6, 0x4

    invoke-interface {v1, v0, v6, v4, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    or-int/lit8 v7, v7, 0x10

    goto :goto_1

    :pswitch_4
    sget-object v4, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;

    const/4 v6, 0x3

    invoke-interface {v1, v0, v6, v4, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    or-int/lit8 v7, v7, 0x8

    goto :goto_1

    :pswitch_5
    sget-object v4, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;

    const/4 v6, 0x2

    invoke-interface {v1, v0, v6, v4, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    or-int/lit8 v7, v7, 0x4

    goto :goto_1

    :pswitch_6
    sget-object v4, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;

    invoke-interface {v1, v0, v2, v4, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    or-int/lit8 v7, v7, 0x2

    goto :goto_1

    :pswitch_7
    invoke-interface {v1, v0, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->l(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v8

    or-int/lit8 v7, v7, 0x1

    goto :goto_1

    :pswitch_8
    move v5, v3

    goto :goto_0

    :cond_0
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v6, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;

    const/16 v16, 0x0

    invoke-direct/range {v6 .. v16}, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;-><init>(ILjava/lang/String;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileConsentsFormFieldDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    return-object v6

    :pswitch_data_0
    .packed-switch -0x1
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
    .locals 5

    check-cast p2, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Encoder;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object p1

    iget-object v0, p2, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->a:Ljava/lang/String;

    iget-object v1, p2, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->g:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    iget-object v2, p2, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->f:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    const/4 v3, 0x0

    invoke-interface {p1, p0, v3, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    sget-object v0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;

    iget-object v3, p2, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->b:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    const/4 v4, 0x1

    invoke-interface {p1, p0, v4, v0, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v3, 0x2

    iget-object v4, p2, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->c:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-interface {p1, p0, v3, v0, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v3, 0x3

    iget-object v4, p2, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->d:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-interface {p1, p0, v3, v0, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v3, 0x4

    iget-object v4, p2, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->e:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto;

    invoke-interface {p1, p0, v3, v0, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    :goto_0
    const/4 v3, 0x5

    invoke-interface {p1, p0, v3, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    :goto_1
    const/4 v2, 0x6

    invoke-interface {p1, p0, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3
    sget-object v0, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileConsentsFormFieldDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileConsentsFormFieldDto$$serializer;

    iget-object p2, p2, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileFormDto;->h:Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileConsentsFormFieldDto;

    const/4 v1, 0x7

    invoke-interface {p1, p0, v1, v0, p2}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public final e()[Lkotlinx/serialization/KSerializer;
    .locals 5

    sget-object p0, Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/FormFieldDto$$serializer;

    invoke-static {p0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    invoke-static {p0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    const/16 v2, 0x8

    new-array v2, v2, [Lkotlinx/serialization/KSerializer;

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p0, v2, v3

    const/4 v3, 0x2

    aput-object p0, v2, v3

    const/4 v3, 0x3

    aput-object p0, v2, v3

    const/4 v3, 0x4

    aput-object p0, v2, v3

    const/4 p0, 0x5

    aput-object v0, v2, p0

    const/4 p0, 0x6

    aput-object v1, v2, p0

    sget-object p0, Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileConsentsFormFieldDto$$serializer;->a:Lcom/vuitton/core/infrastructure/data/forms/models/CompleteProfileConsentsFormFieldDto$$serializer;

    const/4 v0, 0x7

    aput-object p0, v2, v0

    return-object v2
.end method
