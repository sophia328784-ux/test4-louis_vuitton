.class public final Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$AudioGuideCard;,
        Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$AvailableLanguage;,
        Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$Credits;,
        Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$Summary;,
        Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$Track;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u0005\u001c\u001d\u001e\u001f B\u008b\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u000f\u0012\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0018\u00a2\u0006\u0004\u0008\u001a\u0010\u001b\u00a8\u0006!"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;",
        "",
        "",
        "id",
        "title",
        "subtitle",
        "Lcom/vuitton/foundation/model/domain/model/common/AssetImage;",
        "image",
        "backgroundColor",
        "Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;",
        "theme",
        "",
        "accessDurationHours",
        "immersiveArticleId",
        "selectedLanguageCode",
        "",
        "Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$AvailableLanguage;",
        "availableLanguages",
        "Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$AudioGuideCard;",
        "card",
        "Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$Summary;",
        "summary",
        "Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$Track;",
        "tracks",
        "Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$Credits;",
        "creditsInformation",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$AudioGuideCard;Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$Summary;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$Credits;)V",
        "AvailableLanguage",
        "AudioGuideCard",
        "Summary",
        "Track",
        "Credits",
        "domain"
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

.field public final d:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

.field public final e:Ljava/lang/String;

.field public final f:Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;

.field public final g:I

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/util/List;

.field public final k:Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$AudioGuideCard;

.field public final l:Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$Summary;

.field public final m:Ljava/util/List;

.field public final n:Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$Credits;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$AudioGuideCard;Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$Summary;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$Credits;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/vuitton/foundation/model/domain/model/common/AssetImage;",
            "Ljava/lang/String;",
            "Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$AvailableLanguage;",
            ">;",
            "Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$AudioGuideCard;",
            "Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$Summary;",
            "Ljava/util/List<",
            "Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$Track;",
            ">;",
            "Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$Credits;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->d:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    iput-object p5, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->f:Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;

    iput p7, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->g:I

    iput-object p8, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->h:Ljava/lang/String;

    iput-object p9, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->i:Ljava/lang/String;

    iput-object p10, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->j:Ljava/util/List;

    iput-object p11, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->k:Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$AudioGuideCard;

    iput-object p12, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->l:Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$Summary;

    iput-object p13, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->m:Ljava/util/List;

    iput-object p14, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->n:Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$Credits;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->d:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->d:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->f:Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->f:Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->g:I

    iget v3, p1, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->g:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->h:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->i:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->j:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->j:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->k:Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$AudioGuideCard;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->k:Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$AudioGuideCard;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->l:Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$Summary;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->l:Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$Summary;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->m:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->m:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->n:Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$Credits;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->n:Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$Credits;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    return v2

    :cond_f
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->c:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->d:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    invoke-virtual {v3}, Lcom/vuitton/foundation/model/domain/model/common/AssetImage;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->e:Ljava/lang/String;

    invoke-static {v3, v1, v0}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->f:Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget v0, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->g:I

    invoke-static {v0, v3, v1}, Ltr;->b(III)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->h:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->i:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->j:Ljava/util/List;

    invoke-static {v0, v1, v3}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->k:Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$AudioGuideCard;

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$AudioGuideCard;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->l:Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$Summary;

    invoke-virtual {v3}, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$Summary;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->m:Ljava/util/List;

    invoke-static {v3, v1, v0}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->n:Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$Credits;

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$Credits;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", title="

    const-string v1, ", subtitle="

    const-string v2, "AudioGuide(id="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", image="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->d:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", theme="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->f:Lcom/vuitton/foundation/model/domain/model/common/FeatureTheme;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", accessDurationHours="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", immersiveArticleId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", selectedLanguageCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", availableLanguages="

    const-string v2, ", card="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->i:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->j:Ljava/util/List;

    invoke-static {v3, v1, v2, v0, v4}, Ld21;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/List;)V

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->k:Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$AudioGuideCard;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", summary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->l:Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$Summary;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tracks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->m:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", creditsInformation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide;->n:Lcom/vuitton/foundation/model/domain/model/audioguide/AudioGuide$Credits;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
