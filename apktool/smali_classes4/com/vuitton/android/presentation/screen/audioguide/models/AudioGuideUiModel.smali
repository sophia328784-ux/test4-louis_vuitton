.class public final Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideCardUiModel;,
        Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideColorsUiModel;,
        Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AvailableLanguageUiModel;,
        Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$CreditsUiModel;,
        Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$SummaryUiModel;,
        Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackStatusUiModel;,
        Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0087\u0008\u0018\u00002\u00020\u0001:\u0007\u001d\u001e\u001f !\"#B\u008b\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0011\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0011\u0012\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0019\u00a2\u0006\u0004\u0008\u001b\u0010\u001c\u00a8\u0006$"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;",
        "",
        "",
        "id",
        "title",
        "subtitle",
        "Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;",
        "image",
        "Landroidx/compose/ui/graphics/Color;",
        "backgroundColor",
        "Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;",
        "theme",
        "",
        "accessDurationHours",
        "immersiveArticleId",
        "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AvailableLanguageUiModel;",
        "selectedLanguage",
        "",
        "availableLanguages",
        "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideCardUiModel;",
        "card",
        "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$SummaryUiModel;",
        "summary",
        "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;",
        "tracks",
        "Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$CreditsUiModel;",
        "creditsInformation",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;JLcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;ILjava/lang/String;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AvailableLanguageUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideCardUiModel;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$SummaryUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$CreditsUiModel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "AudioGuideColorsUiModel",
        "AvailableLanguageUiModel",
        "AudioGuideCardUiModel",
        "SummaryUiModel",
        "TrackUiModel",
        "TrackStatusUiModel",
        "CreditsUiModel",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

.field public final e:J

.field public final f:Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;

.field public final g:I

.field public final h:Ljava/lang/String;

.field public final i:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AvailableLanguageUiModel;

.field public final j:Ljava/util/List;

.field public final k:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideCardUiModel;

.field public final l:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$SummaryUiModel;

.field public final m:Ljava/util/List;

.field public final n:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$CreditsUiModel;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;JLcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;ILjava/lang/String;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AvailableLanguageUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideCardUiModel;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$SummaryUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$CreditsUiModel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->d:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    iput-wide p5, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->e:J

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->f:Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;

    iput p8, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->g:I

    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->h:Ljava/lang/String;

    iput-object p10, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->i:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AvailableLanguageUiModel;

    iput-object p11, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->j:Ljava/util/List;

    iput-object p12, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->k:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideCardUiModel;

    iput-object p13, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->l:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$SummaryUiModel;

    iput-object p14, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->m:Ljava/util/List;

    iput-object p15, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->n:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$CreditsUiModel;

    return-void
.end method

.method public static a(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;Ljava/util/ArrayList;)Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->a:Ljava/lang/String;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->b:Ljava/lang/String;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->c:Ljava/lang/String;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->d:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    iget-wide v5, v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->e:J

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->f:Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;

    iget v8, v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->g:I

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->h:Ljava/lang/String;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->i:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AvailableLanguageUiModel;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->j:Ljava/util/List;

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->k:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideCardUiModel;

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->l:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$SummaryUiModel;

    iget-object v15, v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->n:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$CreditsUiModel;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;

    const/16 v16, 0x0

    move-object/from16 v14, p1

    invoke-direct/range {v0 .. v16}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;JLcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;ILjava/lang/String;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AvailableLanguageUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideCardUiModel;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$SummaryUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$CreditsUiModel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p0, p1, :cond_0

    goto/16 :goto_1

    :cond_0
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->d:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->d:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    iget-wide v0, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->e:J

    iget-wide v2, p1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->e:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->f:Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->f:Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;

    if-eq v0, v1, :cond_7

    goto :goto_0

    :cond_7
    iget v0, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->g:I

    iget v1, p1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->g:I

    if-eq v0, v1, :cond_8

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->h:Ljava/lang/String;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->i:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AvailableLanguageUiModel;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->i:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AvailableLanguageUiModel;

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AvailableLanguageUiModel;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->j:Ljava/util/List;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->j:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->k:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideCardUiModel;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->k:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideCardUiModel;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_0

    :cond_c
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->l:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$SummaryUiModel;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->l:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$SummaryUiModel;

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$SummaryUiModel;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_0

    :cond_d
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->m:Ljava/util/List;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->m:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_0

    :cond_e
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->n:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$CreditsUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->n:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$CreditsUiModel;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 6

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->c:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->d:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    invoke-virtual {v3}, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    sget-object v0, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    sget-object v0, Lkotlin/ULong;->c:Lkotlin/ULong$Companion;

    iget-wide v4, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->e:J

    invoke-static {v3, v1, v4, v5}, Lfc;->a(IIJ)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->f:Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget v0, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->g:I

    invoke-static {v0, v3, v1}, Ltr;->b(III)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->h:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->i:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AvailableLanguageUiModel;

    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AvailableLanguageUiModel;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->j:Ljava/util/List;

    invoke-static {v3, v1, v0}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->k:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideCardUiModel;

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideCardUiModel;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->l:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$SummaryUiModel;

    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$SummaryUiModel;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->m:Ljava/util/List;

    invoke-static {v3, v1, v0}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->n:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$CreditsUiModel;

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$CreditsUiModel;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget-wide v0, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->e:J

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, ", title="

    const-string v2, ", subtitle="

    const-string v3, "AudioGuideUiModel(id="

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->b:Ljava/lang/String;

    invoke-static {v3, v4, v1, v5, v2}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", image="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->d:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", backgroundColor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", theme="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->f:Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", accessDurationHours="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->g:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", immersiveArticleId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->h:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", selectedLanguage="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->i:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AvailableLanguageUiModel;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", availableLanguages="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->j:Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", card="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->k:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideCardUiModel;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", summary="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->l:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$SummaryUiModel;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", tracks="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->m:Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", creditsInformation="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->n:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$CreditsUiModel;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
