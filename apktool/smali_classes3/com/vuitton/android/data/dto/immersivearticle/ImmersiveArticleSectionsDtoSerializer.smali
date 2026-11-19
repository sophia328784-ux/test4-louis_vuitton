.class public final Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSectionsDtoSerializer;
.super Lkotlinx/serialization/json/JsonContentPolymorphicSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/serialization/json/JsonContentPolymorphicSerializer<",
        "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSectionsDto;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSectionsDtoSerializer;",
        "Lkotlinx/serialization/json/JsonContentPolymorphicSerializer;",
        "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSectionsDto;",
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
.field public static final c:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSectionsDtoSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSectionsDtoSerializer;

    const-class v1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSectionsDto;

    sget-object v2, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlinx/serialization/json/JsonContentPolymorphicSerializer;-><init>(Lkotlin/reflect/KClass;)V

    sput-object v0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSectionsDtoSerializer;->c:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSectionsDtoSerializer;

    return-void
.end method


# virtual methods
.method public final f(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/DeserializationStrategy;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lkotlinx/serialization/json/JsonElementKt;->c(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonObject;

    move-result-object p0

    const-string p1, "type"

    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/JsonObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/json/JsonElement;

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lkotlinx/serialization/json/JsonElementKt;->d(Lkotlinx/serialization/json/JsonElement;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p0

    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonPrimitive;->f()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    if-eqz p0, :cond_1

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    sparse-switch p0, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string p0, "expansion-panel-list"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_1

    :cond_2
    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleExpansionListDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleExpansionListDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleExpansionListDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/DeserializationStrategy;

    return-object p0

    :sswitch_1
    const-string p0, "wallpaper"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_1

    :cond_3
    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleWallpaperSectionDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleWallpaperSectionDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleWallpaperSectionDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/DeserializationStrategy;

    return-object p0

    :sswitch_2
    const-string p0, "video-cta"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto/16 :goto_1

    :sswitch_3
    const-string p0, "product-tabs"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_1

    :cond_4
    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductTabsSectionDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductTabsSectionDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductTabsSectionDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/DeserializationStrategy;

    return-object p0

    :sswitch_4
    const-string p0, "product-list"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_1

    :cond_5
    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductListSectionDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductListSectionDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductListSectionDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/DeserializationStrategy;

    return-object p0

    :sswitch_5
    const-string p0, "deep-link-cta"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto/16 :goto_1

    :sswitch_6
    const-string p0, "authentication"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_1

    :cond_6
    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleAuthenticationSectionDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleAuthenticationSectionDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleAuthenticationSectionDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/DeserializationStrategy;

    return-object p0

    :sswitch_7
    const-string p0, "event"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_1

    :cond_7
    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventSectionDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventSectionDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventSectionDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/DeserializationStrategy;

    return-object p0

    :sswitch_8
    const-string p0, "text"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_1

    :cond_8
    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextSectionDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextSectionDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextSectionDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/DeserializationStrategy;

    return-object p0

    :sswitch_9
    const-string p0, "carousel"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_1

    :cond_9
    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCarouselSectionDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCarouselSectionDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCarouselSectionDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/DeserializationStrategy;

    return-object p0

    :sswitch_a
    const-string p0, "cta-list"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_1

    :cond_a
    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaListDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaListDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaListDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/DeserializationStrategy;

    return-object p0

    :sswitch_b
    const-string p0, "slider"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_1

    :cond_b
    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSliderSectionDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSliderSectionDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSliderSectionDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/DeserializationStrategy;

    return-object p0

    :sswitch_c
    const-string p0, "products"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_1

    :cond_c
    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsSectionDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsSectionDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsSectionDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/DeserializationStrategy;

    return-object p0

    :sswitch_d
    const-string p0, "product3d"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_1

    :cond_d
    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleArticle3DSectionDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleArticle3DSectionDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleArticle3DSectionDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/DeserializationStrategy;

    return-object p0

    :sswitch_e
    const-string p0, "fashion-show"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto :goto_1

    :cond_e
    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowSectionDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowSectionDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowSectionDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/DeserializationStrategy;

    return-object p0

    :sswitch_f
    const-string p0, "assets"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto :goto_1

    :cond_f
    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleAssetSectionDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleAssetSectionDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleAssetSectionDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/DeserializationStrategy;

    return-object p0

    :sswitch_10
    const-string p0, "video-only"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto :goto_1

    :cond_10
    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleVideoSectionDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleVideoSectionDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleVideoSectionDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/DeserializationStrategy;

    return-object p0

    :sswitch_11
    const-string p0, "look-cta"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto :goto_1

    :cond_11
    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleVideoCtaSectionDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleVideoCtaSectionDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleVideoCtaSectionDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/DeserializationStrategy;

    return-object p0

    :cond_12
    :goto_1
    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/UnknownImmersiveArticleSectionDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/UnknownImmersiveArticleSectionDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/immersivearticle/UnknownImmersiveArticleSectionDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/DeserializationStrategy;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x79c9aa1e -> :sswitch_11
        -0x63313e42 -> :sswitch_10
        -0x53ef8c7d -> :sswitch_f
        -0x42314e0e -> :sswitch_e
        -0x3eb1ac40 -> :sswitch_d
        -0x3bd42e9c -> :sswitch_c
        -0x359f871f -> :sswitch_b
        -0x3365e5c5 -> :sswitch_a
        0x2c6160 -> :sswitch_9
        0x36452d -> :sswitch_8
        0x5c6729a -> :sswitch_7
        0x19a7e278 -> :sswitch_6
        0x29c4697e -> :sswitch_5
        0x39b4c2bc -> :sswitch_4
        0x39b8459c -> :sswitch_3
        0x4f6155be -> :sswitch_2
        0x57e60e02 -> :sswitch_1
        0x7913ec95 -> :sswitch_0
    .end sparse-switch
.end method
