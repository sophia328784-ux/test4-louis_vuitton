.class public final Lcom/vuitton/android/data/dto/common/editorial/EditorialSectionDtoSerializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/KSerializer<",
        "Lcom/vuitton/android/data/dto/common/editorial/EditorialSectionDto;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/common/editorial/EditorialSectionDtoSerializer;",
        "Lkotlinx/serialization/KSerializer;",
        "Lcom/vuitton/android/data/dto/common/editorial/EditorialSectionDto;",
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
.field public static final a:Lcom/vuitton/android/data/dto/common/editorial/EditorialSectionDtoSerializer;

.field public static final b:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialSectionDtoSerializer;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialSectionDtoSerializer;->a:Lcom/vuitton/android/data/dto/common/editorial/EditorialSectionDtoSerializer;

    const/4 v0, 0x0

    new-array v0, v0, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    const-string v1, "FeedSectionDto"

    invoke-static {v1, v0}, Lkotlinx/serialization/descriptors/SerialDescriptorsKt;->d(Ljava/lang/String;[Lkotlinx/serialization/descriptors/SerialDescriptor;)Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialSectionDtoSerializer;->b:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialSectionDtoSerializer;->b:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    return-object p0
.end method

.method public final b(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lkotlinx/serialization/json/JsonDecoder;

    if-eqz p0, :cond_13

    check-cast p1, Lkotlinx/serialization/json/JsonDecoder;

    invoke-interface {p1}, Lkotlinx/serialization/json/JsonDecoder;->h()Lkotlinx/serialization/json/JsonElement;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/serialization/json/JsonElementKt;->c(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonObject;

    move-result-object p0

    const-string v0, "id"

    invoke-virtual {p0, v0}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/json/JsonElement;

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlinx/serialization/json/JsonElementKt;->d(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonPrimitive;->f()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    :cond_1
    const-string v2, "type"

    invoke-virtual {p0, v2}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/json/JsonElement;

    if-eqz v2, :cond_3

    invoke-static {v2}, Lkotlinx/serialization/json/JsonElementKt;->d(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v2

    invoke-virtual {v2}, Lkotlinx/serialization/json/JsonPrimitive;->f()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, v2

    :cond_3
    :goto_0
    const-string v2, "data"

    invoke-virtual {p0, v2}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/json/JsonElement;

    if-nez p0, :cond_4

    new-instance p0, Lkotlinx/serialization/json/JsonObject;

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v2}, Lkotlinx/serialization/json/JsonObject;-><init>(Ljava/util/Map;)V

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v2, "carouselSmall"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto/16 :goto_1

    :cond_5
    sget-object v2, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselSmallSectionDto;->Companion:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselSmallSectionDto$Companion;

    invoke-virtual {v2}, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselSmallSectionDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    goto/16 :goto_2

    :sswitch_1
    const-string v2, "pushCard"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto/16 :goto_1

    :cond_6
    sget-object v2, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto;->Companion:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto$Companion;

    invoke-virtual {v2}, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    goto/16 :goto_2

    :sswitch_2
    const-string v2, "carouselLargeMultiple"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto/16 :goto_1

    :cond_7
    sget-object v2, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeMultipleSectionDto;->Companion:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeMultipleSectionDto$Companion;

    invoke-virtual {v2}, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeMultipleSectionDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    goto/16 :goto_2

    :sswitch_3
    const-string v2, "highlightCard"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto/16 :goto_1

    :cond_8
    sget-object v2, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$HighlightCardSectionDto;->Companion:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$HighlightCardSectionDto$Companion;

    invoke-virtual {v2}, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$HighlightCardSectionDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    goto/16 :goto_2

    :sswitch_4
    const-string v2, "gridSmall"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto/16 :goto_1

    :cond_9
    sget-object v2, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$GridSmallSectionDto;->Companion:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$GridSmallSectionDto$Companion;

    invoke-virtual {v2}, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$GridSmallSectionDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    goto/16 :goto_2

    :sswitch_5
    const-string v2, "notification"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto/16 :goto_1

    :cond_a
    sget-object v2, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$NotificationSectionDto;->Companion:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$NotificationSectionDto$Companion;

    invoke-virtual {v2}, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$NotificationSectionDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    goto/16 :goto_2

    :sswitch_6
    const-string v2, "authentication"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto/16 :goto_1

    :cond_b
    sget-object v2, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$AuthenticationSectionDto;->Companion:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$AuthenticationSectionDto$Companion;

    invoke-virtual {v2}, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$AuthenticationSectionDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    goto/16 :goto_2

    :sswitch_7
    const-string v2, "productCarousel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_1

    :cond_c
    sget-object v2, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$ProductCarouselSectionDto;->Companion:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$ProductCarouselSectionDto$Companion;

    invoke-virtual {v2}, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$ProductCarouselSectionDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    goto/16 :goto_2

    :sswitch_8
    const-string v2, "event"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_1

    :cond_d
    sget-object v2, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto;->Companion:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto$Companion;

    invoke-virtual {v2}, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    goto :goto_2

    :sswitch_9
    const-string v2, "live"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_1

    :cond_e
    sget-object v2, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$LiveSectionDto;->Companion:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$LiveSectionDto$Companion;

    invoke-virtual {v2}, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$LiveSectionDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    goto :goto_2

    :sswitch_a
    const-string v2, "card"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_1

    :cond_f
    sget-object v2, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CardSectionDto;->Companion:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CardSectionDto$Companion;

    invoke-virtual {v2}, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CardSectionDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    goto :goto_2

    :sswitch_b
    const-string v2, "slideshow"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    goto :goto_1

    :cond_10
    sget-object v2, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$SlideShowSectionDto;->Companion:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$SlideShowSectionDto$Companion;

    invoke-virtual {v2}, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$SlideShowSectionDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    goto :goto_2

    :sswitch_c
    const-string v2, "carouselMedium"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_1

    :cond_11
    sget-object v2, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselMediumSectionDto;->Companion:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselMediumSectionDto$Companion;

    invoke-virtual {v2}, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselMediumSectionDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    goto :goto_2

    :sswitch_d
    const-string v2, "carouselLargeSingle"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    :goto_1
    sget-object v2, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$UnknownSectionDto;->Companion:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$UnknownSectionDto$Companion;

    invoke-virtual {v2}, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$UnknownSectionDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    goto :goto_2

    :cond_12
    sget-object v2, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeSingleSectionDto;->Companion:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeSingleSectionDto$Companion;

    invoke-virtual {v2}, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeSingleSectionDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    :goto_2
    invoke-interface {p1}, Lkotlinx/serialization/json/JsonDecoder;->A()Lkotlinx/serialization/json/Json;

    move-result-object p1

    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p0, v2}, Lkotlinx/serialization/json/internal/TreeJsonDecoderKt;->a(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonElement;Lkotlinx/serialization/DeserializationStrategy;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto;

    new-instance p1, Lcom/vuitton/android/data/dto/common/editorial/EditorialSectionDto;

    invoke-direct {p1, v0, v1, p0}, Lcom/vuitton/android/data/dto/common/editorial/EditorialSectionDto;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto;)V

    return-object p1

    :cond_13
    const-string p0, "Failed requirement."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5926c21d -> :sswitch_d
        -0x34e6ab0b -> :sswitch_c
        -0x2f6b27d2 -> :sswitch_b
        0x2e7b10 -> :sswitch_a
        0x32b0ec -> :sswitch_9
        0x5c6729a -> :sswitch_8
        0x8ec336f -> :sswitch_7
        0x19a7e278 -> :sswitch_6
        0x237a88eb -> :sswitch_5
        0x4ba63561 -> :sswitch_4
        0x5bc801e4 -> :sswitch_3
        0x5e5164eb -> :sswitch_2
        0x69d3814a -> :sswitch_1
        0x69fe1f87 -> :sswitch_0
    .end sparse-switch
.end method

.method public final c(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/vuitton/android/data/dto/common/editorial/EditorialSectionDto;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lkotlin/NotImplementedError;

    const-string p1, "Serialization not implemented"

    invoke-direct {p0, p1}, Lkotlin/NotImplementedError;-><init>(Ljava/lang/String;)V

    throw p0
.end method
