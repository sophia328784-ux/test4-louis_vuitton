.class public final synthetic Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$$serializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = "$serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/internal/GeneratedSerializer<",
        "Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;",
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
        "com/vuitton/android/data/dto/audioguide/AudioGuideDto.$serializer",
        "Lkotlinx/serialization/internal/GeneratedSerializer;",
        "Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;",
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
.field public static final a:Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$$serializer;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$$serializer;->a:Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$$serializer;

    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "com.vuitton.android.data.dto.audioguide.AudioGuideDto"

    const/16 v3, 0xe

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v0, "id"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "title"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "subtitle"

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "image"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "backgroundColor"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "theme"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "accessDurationHours"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "immersiveArticleId"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "selectedLanguageCode"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "availableLanguages"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "card"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "summary"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "tracks"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "creditsInformation"

    invoke-virtual {v1, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    sput-object v1, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public final b(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 24

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/Decoder;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object v1

    sget-object v2, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->o:[Lkotlin/Lazy;

    move-object/from16 v18, v2

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

    const/16 v17, 0x0

    const/16 v19, 0x1

    :goto_0
    if-eqz v19, :cond_0

    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v20

    packed-switch v20, :pswitch_data_0

    invoke-static/range {v20 .. v20}, Lb21;->l(I)V

    return-object p0

    :pswitch_0
    move-object/from16 v20, v9

    sget-object v9, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$CreditsDto$$serializer;->a:Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$CreditsDto$$serializer;

    move-object/from16 v21, v10

    const/16 v10, 0xd

    invoke-interface {v1, v0, v10, v9, v6}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$CreditsDto;

    or-int/lit16 v8, v8, 0x2000

    :goto_1
    move-object/from16 v9, v20

    :goto_2
    move-object/from16 v10, v21

    goto :goto_0

    :pswitch_1
    move-object/from16 v20, v9

    move-object/from16 v21, v10

    const/16 v9, 0xc

    aget-object v10, v18, v9

    invoke-interface {v10}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v1, v0, v9, v10, v2}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    or-int/lit16 v8, v8, 0x1000

    goto :goto_1

    :pswitch_2
    move-object/from16 v20, v9

    move-object/from16 v21, v10

    sget-object v9, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$SummaryDto$$serializer;->a:Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$SummaryDto$$serializer;

    const/16 v10, 0xb

    invoke-interface {v1, v0, v10, v9, v3}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$SummaryDto;

    or-int/lit16 v8, v8, 0x800

    goto :goto_1

    :pswitch_3
    move-object/from16 v20, v9

    move-object/from16 v21, v10

    sget-object v9, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$AudioGuideCardDto$$serializer;->a:Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$AudioGuideCardDto$$serializer;

    const/16 v10, 0xa

    invoke-interface {v1, v0, v10, v9, v4}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$AudioGuideCardDto;

    or-int/lit16 v8, v8, 0x400

    goto :goto_1

    :pswitch_4
    move-object/from16 v20, v9

    move-object/from16 v21, v10

    const/16 v9, 0x9

    aget-object v10, v18, v9

    invoke-interface {v10}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v1, v0, v9, v10, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    or-int/lit16 v8, v8, 0x200

    goto :goto_1

    :pswitch_5
    move-object/from16 v20, v9

    move-object/from16 v21, v10

    const/16 v9, 0x8

    invoke-interface {v1, v0, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->l(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v17

    or-int/lit16 v8, v8, 0x100

    :goto_3
    move-object/from16 v9, v20

    goto/16 :goto_0

    :pswitch_6
    move-object/from16 v20, v9

    move-object/from16 v21, v10

    sget-object v9, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v10, 0x7

    invoke-interface {v1, v0, v10, v9, v7}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    or-int/lit16 v8, v8, 0x80

    goto :goto_1

    :pswitch_7
    move-object/from16 v20, v9

    move-object/from16 v21, v10

    const/4 v9, 0x6

    invoke-interface {v1, v0, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->j(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v15

    or-int/lit8 v8, v8, 0x40

    goto :goto_3

    :pswitch_8
    move-object/from16 v20, v9

    move-object/from16 v21, v10

    const/4 v9, 0x5

    aget-object v10, v18, v9

    invoke-interface {v10}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v1, v0, v9, v10, v14}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v14, v9

    check-cast v14, Lcom/vuitton/android/data/dto/common/FeatureThemeDto;

    or-int/lit8 v8, v8, 0x20

    goto/16 :goto_1

    :pswitch_9
    move-object/from16 v20, v9

    move-object/from16 v21, v10

    const/4 v9, 0x4

    invoke-interface {v1, v0, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->l(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v13

    or-int/lit8 v8, v8, 0x10

    goto :goto_3

    :pswitch_a
    move-object/from16 v20, v9

    move-object/from16 v21, v10

    sget-object v9, Lcom/vuitton/android/data/dto/common/AssetImageDto$$serializer;->a:Lcom/vuitton/android/data/dto/common/AssetImageDto$$serializer;

    const/4 v10, 0x3

    invoke-interface {v1, v0, v10, v9, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v12, v9

    check-cast v12, Lcom/vuitton/android/data/dto/common/AssetImageDto;

    or-int/lit8 v8, v8, 0x8

    goto/16 :goto_1

    :pswitch_b
    move-object/from16 v20, v9

    move-object/from16 v21, v10

    sget-object v9, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v10, 0x2

    invoke-interface {v1, v0, v10, v9, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Ljava/lang/String;

    or-int/lit8 v8, v8, 0x4

    goto/16 :goto_1

    :pswitch_c
    move-object/from16 v20, v9

    const/4 v9, 0x1

    invoke-interface {v1, v0, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->l(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v10

    or-int/lit8 v8, v8, 0x2

    goto :goto_3

    :pswitch_d
    move-object/from16 v21, v10

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-interface {v1, v0, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->l(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v16

    or-int/lit8 v8, v8, 0x1

    move-object/from16 v9, v16

    goto/16 :goto_2

    :pswitch_e
    move-object/from16 v20, v9

    move-object/from16 v21, v10

    const/4 v10, 0x0

    move/from16 v19, v10

    goto/16 :goto_2

    :cond_0
    move-object/from16 v20, v9

    move-object/from16 v21, v10

    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    move-object/from16 v16, v7

    new-instance v7, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;

    const/16 v23, 0x0

    move-object/from16 v19, v4

    move-object/from16 v18, v5

    move-object/from16 v22, v6

    move-object/from16 v21, v2

    move-object/from16 v20, v3

    invoke-direct/range {v7 .. v23}, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/FeatureThemeDto;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$AudioGuideCardDto;Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$SummaryDto;Ljava/util/List;Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$CreditsDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    return-object v7

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
    .locals 7

    check-cast p2, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Encoder;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object p1

    sget-object v0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->o:[Lkotlin/Lazy;

    iget-object v1, p2, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->a:Ljava/lang/String;

    iget-object v2, p2, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->n:Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$CreditsDto;

    iget-object v3, p2, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->k:Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$AudioGuideCardDto;

    iget-object v4, p2, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->h:Ljava/lang/String;

    iget-object v5, p2, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->c:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {p1, p0, v6, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v1, 0x1

    iget-object v6, p2, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->b:Ljava/lang/String;

    invoke-interface {p1, p0, v1, v6}, Lkotlinx/serialization/encoding/CompositeEncoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v5, :cond_1

    :goto_0
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v6, 0x2

    invoke-interface {p1, p0, v6, v1, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    sget-object v1, Lcom/vuitton/android/data/dto/common/AssetImageDto$$serializer;->a:Lcom/vuitton/android/data/dto/common/AssetImageDto$$serializer;

    iget-object v5, p2, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->d:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    const/4 v6, 0x3

    invoke-interface {p1, p0, v6, v1, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x4

    iget-object v5, p2, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->e:Ljava/lang/String;

    invoke-interface {p1, p0, v1, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v1, 0x5

    aget-object v5, v0, v1

    invoke-interface {v5}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlinx/serialization/SerializationStrategy;

    iget-object v6, p2, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->f:Lcom/vuitton/android/data/dto/common/FeatureThemeDto;

    invoke-interface {p1, p0, v1, v5, v6}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x6

    iget v5, p2, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->g:I

    invoke-interface {p1, v1, v5, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->u(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v4, :cond_3

    :goto_1
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v5, 0x7

    invoke-interface {p1, p0, v5, v1, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3
    const/16 v1, 0x8

    iget-object v4, p2, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->i:Ljava/lang/String;

    invoke-interface {p1, p0, v1, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/16 v1, 0x9

    aget-object v4, v0, v1

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlinx/serialization/SerializationStrategy;

    iget-object v5, p2, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->j:Ljava/util/List;

    invoke-interface {p1, p0, v1, v4, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    if-eqz v3, :cond_5

    :goto_2
    sget-object v1, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$AudioGuideCardDto$$serializer;->a:Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$AudioGuideCardDto$$serializer;

    const/16 v4, 0xa

    invoke-interface {p1, p0, v4, v1, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_5
    sget-object v1, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$SummaryDto$$serializer;->a:Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$SummaryDto$$serializer;

    iget-object v3, p2, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->l:Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$SummaryDto;

    const/16 v4, 0xb

    invoke-interface {p1, p0, v4, v1, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/16 v1, 0xc

    aget-object v0, v0, v1

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object p2, p2, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->m:Ljava/util/List;

    invoke-interface {p1, p0, v1, v0, p2}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_3

    :cond_6
    if-eqz v2, :cond_7

    :goto_3
    sget-object p2, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$CreditsDto$$serializer;->a:Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$CreditsDto$$serializer;

    const/16 v0, 0xd

    invoke-interface {p1, p0, v0, p2, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_7
    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public final e()[Lkotlinx/serialization/KSerializer;
    .locals 4

    sget-object p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;->o:[Lkotlin/Lazy;

    const/16 v0, 0xe

    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v2, 0x2

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/vuitton/android/data/dto/common/AssetImageDto$$serializer;->a:Lcom/vuitton/android/data/dto/common/AssetImageDto$$serializer;

    aput-object v3, v0, v2

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/4 v2, 0x5

    aget-object v3, p0, v2

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x6

    sget-object v3, Lkotlinx/serialization/internal/IntSerializer;->a:Lkotlinx/serialization/internal/IntSerializer;

    aput-object v3, v0, v2

    const/4 v2, 0x7

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const/16 v1, 0x9

    aget-object v2, p0, v1

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v1, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$AudioGuideCardDto$$serializer;->a:Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$AudioGuideCardDto$$serializer;

    invoke-static {v1}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const/16 v1, 0xb

    sget-object v2, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$SummaryDto$$serializer;->a:Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$SummaryDto$$serializer;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    aget-object p0, p0, v1

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v0, v1

    sget-object p0, Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$CreditsDto$$serializer;->a:Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto$CreditsDto$$serializer;

    invoke-static {p0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    const/16 v1, 0xd

    aput-object p0, v0, v1

    return-object v0
.end method
