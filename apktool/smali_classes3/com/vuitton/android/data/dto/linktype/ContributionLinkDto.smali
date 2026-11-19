.class public abstract Lcom/vuitton/android/data/dto/linktype/ContributionLinkDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/linktype/ContributionLinkDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00087\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002\u0082\u0001\u0017\u0003\u0004\u0005\u0006\u0007\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/linktype/ContributionLinkDto;",
        "",
        "Companion",
        "Lcom/vuitton/android/data/dto/linktype/ContributionLinkAICompanionDto;",
        "Lcom/vuitton/android/data/dto/linktype/ContributionLinkAppointmentCreateDto;",
        "Lcom/vuitton/android/data/dto/linktype/ContributionLinkAudioGuideDto;",
        "Lcom/vuitton/android/data/dto/linktype/ContributionLinkBookingFormDto;",
        "Lcom/vuitton/android/data/dto/linktype/ContributionLinkCareServiceCreateDto;",
        "Lcom/vuitton/android/data/dto/linktype/ContributionLinkCategoryDto;",
        "Lcom/vuitton/android/data/dto/linktype/ContributionLinkExclusiveOfferDto;",
        "Lcom/vuitton/android/data/dto/linktype/ContributionLinkImmersiveArticleDto;",
        "Lcom/vuitton/android/data/dto/linktype/ContributionLinkMonogramDto;",
        "Lcom/vuitton/android/data/dto/linktype/ContributionLinkMyLvDto;",
        "Lcom/vuitton/android/data/dto/linktype/ContributionLinkNativeStoryDto;",
        "Lcom/vuitton/android/data/dto/linktype/ContributionLinkOtherDto;",
        "Lcom/vuitton/android/data/dto/linktype/ContributionLinkPortalDto;",
        "Lcom/vuitton/android/data/dto/linktype/ContributionLinkProductDto;",
        "Lcom/vuitton/android/data/dto/linktype/ContributionLinkProductListDto;",
        "Lcom/vuitton/android/data/dto/linktype/ContributionLinkPushNotificationDto;",
        "Lcom/vuitton/android/data/dto/linktype/ContributionLinkSeoLandingPageDto;",
        "Lcom/vuitton/android/data/dto/linktype/ContributionLinkShadeFinderDto;",
        "Lcom/vuitton/android/data/dto/linktype/ContributionLinkSpotlightDto;",
        "Lcom/vuitton/android/data/dto/linktype/ContributionLinkUnknownDto;",
        "Lcom/vuitton/android/data/dto/linktype/ContributionLinkWebViewDto;",
        "Lcom/vuitton/android/data/dto/linktype/ContributionLinkWishlistDto;",
        "Lcom/vuitton/android/data/dto/linktype/ContributionLinkWishlistSharedDto;",
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
    with = Lcom/vuitton/android/data/dto/linktype/ContributionLinkDtoSerializer;
.end annotation


# static fields
.field public static final Companion:Lcom/vuitton/android/data/dto/linktype/ContributionLinkDto$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/linktype/ContributionLinkDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/linktype/ContributionLinkDto;->Companion:Lcom/vuitton/android/data/dto/linktype/ContributionLinkDto$Companion;

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
