.class public final Lcom/vuitton/android/presentation/screen/feed/models/uimodels/AudioGuideBannerUiModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0087\u0008\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/feed/models/uimodels/AudioGuideBannerUiModel;",
        "",
        "",
        "id",
        "Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;",
        "theme",
        "Landroidx/compose/ui/graphics/Color;",
        "backgroundColor",
        "title",
        "imageUrl",
        "<init>",
        "(Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;JLjava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
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

.field public final b:Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;

.field public final c:J

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;JLjava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/AudioGuideBannerUiModel;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/AudioGuideBannerUiModel;->b:Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;

    iput-wide p3, p0, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/AudioGuideBannerUiModel;->c:J

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/AudioGuideBannerUiModel;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/AudioGuideBannerUiModel;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/AudioGuideBannerUiModel;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/AudioGuideBannerUiModel;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/AudioGuideBannerUiModel;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/AudioGuideBannerUiModel;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/AudioGuideBannerUiModel;->b:Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/AudioGuideBannerUiModel;->b:Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_3
    iget-wide v0, p0, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/AudioGuideBannerUiModel;->c:J

    iget-wide v2, p1, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/AudioGuideBannerUiModel;->c:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/AudioGuideBannerUiModel;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/AudioGuideBannerUiModel;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/AudioGuideBannerUiModel;->e:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/AudioGuideBannerUiModel;->e:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_6
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/AudioGuideBannerUiModel;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/AudioGuideBannerUiModel;->b:Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    sget-object v0, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    sget-object v0, Lkotlin/ULong;->c:Lkotlin/ULong$Companion;

    iget-wide v3, p0, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/AudioGuideBannerUiModel;->c:J

    invoke-static {v2, v1, v3, v4}, Lfc;->a(IIJ)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/AudioGuideBannerUiModel;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/AudioGuideBannerUiModel;->e:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-wide v0, p0, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/AudioGuideBannerUiModel;->c:J

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->i(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AudioGuideBannerUiModel(id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/AudioGuideBannerUiModel;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", theme="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/AudioGuideBannerUiModel;->b:Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", backgroundColor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", title="

    const-string v3, ", imageUrl="

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/AudioGuideBannerUiModel;->d:Ljava/lang/String;

    invoke-static {v1, v0, v2, v4, v3}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ")"

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/feed/models/uimodels/AudioGuideBannerUiModel;->e:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
