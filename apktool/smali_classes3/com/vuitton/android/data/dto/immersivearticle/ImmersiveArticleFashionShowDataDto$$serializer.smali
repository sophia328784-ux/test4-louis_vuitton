.class public final synthetic Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowDataDto$$serializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/internal/GeneratedSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowDataDto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = "$serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/internal/GeneratedSerializer<",
        "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowDataDto;",
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
        "com/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowDataDto.$serializer",
        "Lkotlinx/serialization/internal/GeneratedSerializer;",
        "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowDataDto;",
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
.field public static final a:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowDataDto$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowDataDto$$serializer;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowDataDto$$serializer;->a:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowDataDto$$serializer;

    new-instance v1, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const-string v2, "com.vuitton.android.data.dto.immersivearticle.ImmersiveArticleFashionShowDataDto"

    const/4 v3, 0x7

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V

    const-string v0, "titlesDuringLive"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "titlesDuringReplay"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "asset"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "ratio"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "video"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "format"

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    const-string v0, "content"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    sput-object v1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowDataDto$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowDataDto$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public final b(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 17

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowDataDto$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/Decoder;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeDecoder;

    move-result-object v1

    sget-object v2, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowDataDto;->h:[Lkotlin/Lazy;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v3

    move v8, v4

    move-object v9, v5

    move-object v10, v9

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v14, v13

    move-object v15, v14

    :goto_0
    if-eqz v6, :cond_0

    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    invoke-static {v7}, Lb21;->l(I)V

    return-object v5

    :pswitch_0
    sget-object v7, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowContentDto$$serializer;->a:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowContentDto$$serializer;

    const/4 v5, 0x6

    invoke-interface {v1, v0, v5, v7, v15}, Lkotlinx/serialization/encoding/CompositeDecoder;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v15, v5

    check-cast v15, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowContentDto;

    or-int/lit8 v8, v8, 0x40

    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v5, 0x5

    invoke-interface {v1, v0, v5}, Lkotlinx/serialization/encoding/CompositeDecoder;->l(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v14

    or-int/lit8 v8, v8, 0x20

    goto :goto_1

    :pswitch_2
    sget-object v5, Lcom/vuitton/android/data/dto/common/AssetVideoDto$$serializer;->a:Lcom/vuitton/android/data/dto/common/AssetVideoDto$$serializer;

    const/4 v7, 0x4

    invoke-interface {v1, v0, v7, v5, v13}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Lcom/vuitton/android/data/dto/common/AssetVideoDto;

    or-int/lit8 v8, v8, 0x10

    goto :goto_1

    :pswitch_3
    const/4 v5, 0x3

    aget-object v7, v2, v5

    invoke-interface {v7}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlinx/serialization/DeserializationStrategy;

    invoke-interface {v1, v0, v5, v7, v12}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;

    or-int/lit8 v8, v8, 0x8

    goto :goto_1

    :pswitch_4
    sget-object v5, Lcom/vuitton/android/data/dto/common/AssetDto$$serializer;->a:Lcom/vuitton/android/data/dto/common/AssetDto$$serializer;

    const/4 v7, 0x2

    invoke-interface {v1, v0, v7, v5, v11}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Lcom/vuitton/android/data/dto/common/AssetDto;

    or-int/lit8 v8, v8, 0x4

    goto :goto_1

    :pswitch_5
    sget-object v5, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto$$serializer;->a:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto$$serializer;

    invoke-interface {v1, v0, v3, v5, v10}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto;

    or-int/lit8 v8, v8, 0x2

    goto :goto_1

    :pswitch_6
    sget-object v5, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto$$serializer;->a:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto$$serializer;

    invoke-interface {v1, v0, v4, v5, v9}, Lkotlinx/serialization/encoding/CompositeDecoder;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto;

    or-int/lit8 v8, v8, 0x1

    goto :goto_1

    :pswitch_7
    move v6, v4

    goto :goto_0

    :cond_0
    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/CompositeDecoder;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v7, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowDataDto;

    const/16 v16, 0x0

    invoke-direct/range {v7 .. v16}, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowDataDto;-><init>(ILcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto;Lcom/vuitton/android/data/dto/common/AssetDto;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;Lcom/vuitton/android/data/dto/common/AssetVideoDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowContentDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V

    return-object v7

    :pswitch_data_0
    .packed-switch -0x1
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

    check-cast p2, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowDataDto;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowDataDto$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Encoder;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/encoding/CompositeEncoder;

    move-result-object p1

    sget-object v0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowDataDto;->h:[Lkotlin/Lazy;

    sget-object v1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto$$serializer;->a:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto$$serializer;

    iget-object v2, p2, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowDataDto;->a:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto;

    iget-object v3, p2, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowDataDto;->g:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowContentDto;

    const/4 v4, 0x0

    invoke-interface {p1, p0, v4, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v2, 0x1

    iget-object v4, p2, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowDataDto;->b:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto;

    invoke-interface {p1, p0, v2, v1, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v1, Lcom/vuitton/android/data/dto/common/AssetDto$$serializer;->a:Lcom/vuitton/android/data/dto/common/AssetDto$$serializer;

    iget-object v2, p2, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowDataDto;->c:Lcom/vuitton/android/data/dto/common/AssetDto;

    const/4 v4, 0x2

    invoke-interface {p1, p0, v4, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p2, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowDataDto;->d:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSizeCardDto;

    invoke-interface {p1, p0, v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    sget-object v0, Lcom/vuitton/android/data/dto/common/AssetVideoDto$$serializer;->a:Lcom/vuitton/android/data/dto/common/AssetVideoDto$$serializer;

    iget-object v1, p2, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowDataDto;->e:Lcom/vuitton/android/data/dto/common/AssetVideoDto;

    const/4 v2, 0x4

    invoke-interface {p1, p0, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->A(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v0, 0x5

    iget-object p2, p2, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowDataDto;->f:Ljava/lang/String;

    invoke-interface {p1, p0, v0, p2}, Lkotlinx/serialization/encoding/CompositeEncoder;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_1

    :goto_0
    sget-object p2, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowContentDto$$serializer;->a:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowContentDto$$serializer;

    const/4 v0, 0x6

    invoke-interface {p1, p0, v0, p2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1
    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public final e()[Lkotlinx/serialization/KSerializer;
    .locals 3

    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowDataDto;->h:[Lkotlin/Lazy;

    const/4 v0, 0x7

    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    sget-object v1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto$$serializer;->a:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTitlesDto$$serializer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    sget-object v2, Lcom/vuitton/android/data/dto/common/AssetDto$$serializer;->a:Lcom/vuitton/android/data/dto/common/AssetDto$$serializer;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aget-object p0, p0, v1

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v0, v1

    const/4 p0, 0x4

    sget-object v1, Lcom/vuitton/android/data/dto/common/AssetVideoDto$$serializer;->a:Lcom/vuitton/android/data/dto/common/AssetVideoDto$$serializer;

    aput-object v1, v0, p0

    const/4 p0, 0x5

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    aput-object v1, v0, p0

    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowContentDto$$serializer;->a:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowContentDto$$serializer;

    invoke-static {p0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->d(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;

    move-result-object p0

    const/4 v1, 0x6

    aput-object p0, v0, v1

    return-object v0
.end method
