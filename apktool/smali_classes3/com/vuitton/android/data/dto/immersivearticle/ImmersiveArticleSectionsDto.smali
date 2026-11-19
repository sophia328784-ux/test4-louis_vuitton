.class public abstract Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSectionsDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSectionsDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00087\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002\u0082\u0001\u0011\u0003\u0004\u0005\u0006\u0007\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010\u0011\u0012\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSectionsDto;",
        "",
        "Companion",
        "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleArticle3DSectionDto;",
        "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleAssetSectionDto;",
        "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleAuthenticationSectionDto;",
        "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCarouselSectionDto;",
        "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleCtaListDto;",
        "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleEventSectionDto;",
        "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleExpansionListDto;",
        "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleFashionShowSectionDto;",
        "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductListSectionDto;",
        "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductTabsSectionDto;",
        "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsSectionDto;",
        "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSliderSectionDto;",
        "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleTextSectionDto;",
        "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleVideoCtaSectionDto;",
        "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleVideoSectionDto;",
        "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleWallpaperSectionDto;",
        "Lcom/vuitton/android/data/dto/immersivearticle/UnknownImmersiveArticleSectionDto;",
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

.annotation runtime Lkotlinx/serialization/Serializable;
    with = Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSectionsDtoSerializer;
.end annotation


# static fields
.field public static final Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSectionsDto$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSectionsDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSectionsDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSectionsDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSectionsDto$Companion;

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
