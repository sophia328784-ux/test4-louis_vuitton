.class public final Lcom/vuitton/android/data/dto/plp/ProductListSectionDtoSerializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/KSerializer<",
        "Lcom/vuitton/android/data/dto/plp/ProductListSectionDto;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/plp/ProductListSectionDtoSerializer;",
        "Lkotlinx/serialization/KSerializer;",
        "Lcom/vuitton/android/data/dto/plp/ProductListSectionDto;",
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
.field public static final a:Lcom/vuitton/android/data/dto/plp/ProductListSectionDtoSerializer;

.field public static final b:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDtoSerializer;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDtoSerializer;->a:Lcom/vuitton/android/data/dto/plp/ProductListSectionDtoSerializer;

    const/4 v0, 0x0

    new-array v0, v0, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    const-string v1, "ProductListSectionDto"

    invoke-static {v1, v0}, Lkotlinx/serialization/descriptors/SerialDescriptorsKt;->d(Ljava/lang/String;[Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDtoSerializer;->b:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDtoSerializer;->b:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    return-object p0
.end method

.method public final b(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lkotlinx/serialization/json/JsonDecoder;

    const/4 v0, 0x0

    if-eqz p0, :cond_b

    check-cast p1, Lkotlinx/serialization/json/JsonDecoder;

    invoke-interface {p1}, Lkotlinx/serialization/json/JsonDecoder;->h()Lkotlinx/serialization/json/JsonElement;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/serialization/json/JsonElementKt;->c(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonObject;

    move-result-object p0

    const-string v1, "type"

    invoke-virtual {p0, v1}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/json/JsonElement;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lkotlinx/serialization/json/JsonElementKt;->d(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonPrimitive;->f()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    const-string v2, ""

    if-nez v1, :cond_1

    move-object v1, v2

    :cond_1
    const-string v3, "data"

    invoke-virtual {p0, v3}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/serialization/json/JsonElement;

    if-nez v3, :cond_2

    new-instance v3, Lkotlinx/serialization/json/JsonObject;

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v3, v4}, Lkotlinx/serialization/json/JsonObject;-><init>(Ljava/util/Map;)V

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v4, "curatedText"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    sget-object v4, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto;->Companion:Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto$Companion;

    invoke-virtual {v4}, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v4

    goto :goto_2

    :sswitch_1
    const-string v4, "productSlider"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    sget-object v4, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductSliderDto;->Companion:Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductSliderDto$Companion;

    invoke-virtual {v4}, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductSliderDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v4

    goto :goto_2

    :sswitch_2
    const-string v4, "productHighlight"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    sget-object v4, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductHighlightDto;->Companion:Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductHighlightDto$Companion;

    invoke-virtual {v4}, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductHighlightDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v4

    goto :goto_2

    :sswitch_3
    const-string v4, "productFullscreen"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_1

    :cond_6
    sget-object v4, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductFullscreenDto;->Companion:Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductFullscreenDto$Companion;

    invoke-virtual {v4}, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductFullscreenDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v4

    goto :goto_2

    :sswitch_4
    const-string v4, "products"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductsDto;->Companion:Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductsDto$Companion;

    invoke-virtual {v4}, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductsDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v4

    goto :goto_2

    :sswitch_5
    const-string v4, "halfEdito"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    :cond_7
    :goto_1
    sget-object v4, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$UnknownSectionDataDto;->INSTANCE:Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$UnknownSectionDataDto;

    invoke-virtual {v4}, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$UnknownSectionDataDto;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v4

    goto :goto_2

    :cond_8
    sget-object v4, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto;->Companion:Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto$Companion;

    invoke-virtual {v4}, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v4

    :goto_2
    new-instance v5, Lcom/vuitton/android/data/dto/plp/ProductListSectionDto;

    const-string v6, "id"

    invoke-virtual {p0, v6}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/json/JsonElement;

    if-eqz p0, :cond_9

    invoke-static {p0}, Lkotlinx/serialization/json/JsonElementKt;->d(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonPrimitive;->f()Ljava/lang/String;

    move-result-object v0

    :cond_9
    if-nez v0, :cond_a

    goto :goto_3

    :cond_a
    move-object v2, v0

    :goto_3
    invoke-interface {p1}, Lkotlinx/serialization/json/JsonDecoder;->A()Lkotlinx/serialization/json/Json;

    move-result-object p0

    check-cast v4, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v3, v4}, Lkotlinx/serialization/json/internal/TreeJsonDecoderKt;->a(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonElement;Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto;

    invoke-direct {v5, v2, v1, p0}, Lcom/vuitton/android/data/dto/plp/ProductListSectionDto;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto;)V

    return-object v5

    :cond_b
    const-string p0, "Failed requirement."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x64b634ce -> :sswitch_5
        -0x3bd42e9c -> :sswitch_4
        -0x215cf9f6 -> :sswitch_3
        -0x1960037b -> :sswitch_2
        0x3dbb82b0 -> :sswitch_1
        0x47227a9f -> :sswitch_0
    .end sparse-switch
.end method

.method public final c(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/vuitton/android/data/dto/plp/ProductListSectionDto;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lkotlin/NotImplementedError;

    const-string p1, "Serialization not implemented"

    invoke-direct {p0, p1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw p0
.end method
