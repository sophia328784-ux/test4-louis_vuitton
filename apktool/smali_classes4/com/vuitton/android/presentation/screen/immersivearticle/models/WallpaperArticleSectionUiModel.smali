.class public final Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;
.super Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSectionUiModel;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001Bc\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000b\u0012\u000e\u0008\u0002\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;",
        "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSectionUiModel;",
        "",
        "key",
        "type",
        "title",
        "ctaText",
        "Lcom/vuitton/android/presentation/model/common/AssetUiModel;",
        "asset",
        "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;",
        "ratio",
        "",
        "wallpapers",
        "Landroidx/compose/runtime/MutableState;",
        "Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperDownloadStateUiModel;",
        "wallpaperDownloadState",
        "Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;",
        "mainTheme",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;Ljava/util/List;Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;)V",
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

.field public final d:Ljava/lang/String;

.field public final e:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

.field public final f:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;

.field public final g:Ljava/util/List;

.field public final h:Landroidx/compose/runtime/MutableState;

.field public final i:Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;Ljava/util/List;Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/vuitton/android/presentation/model/common/AssetUiModel;",
            "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperDownloadStateUiModel;",
            ">;",
            "Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSectionUiModel;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 43
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;->a:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;->b:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;->c:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;->d:Ljava/lang/String;

    .line 47
    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;->e:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    .line 48
    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;->f:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;

    .line 49
    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;->g:Ljava/util/List;

    .line 50
    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;->h:Landroidx/compose/runtime/MutableState;

    .line 51
    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;->i:Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;Ljava/util/List;Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    move/from16 v0, p10

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    new-instance v1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperDownloadStateUiModel;

    const/4 v5, 0x7

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperDownloadStateUiModel;-><init>(ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v0

    move-object v9, v0

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v10, p9

    goto :goto_1

    :cond_0
    move-object/from16 v9, p8

    goto :goto_0

    :goto_1
    invoke-direct/range {v1 .. v10}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;Ljava/util/List;Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;->e:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;->e:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;->f:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;->f:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;->g:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;->g:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;->h:Landroidx/compose/runtime/MutableState;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;->h:Landroidx/compose/runtime/MutableState;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;->i:Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;->i:Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;->e:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/vuitton/android/presentation/model/common/AssetUiModel;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;->f:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;->g:Ljava/util/List;

    invoke-static {v0, v1, v3}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;->h:Landroidx/compose/runtime/MutableState;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;->i:Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v3, v2

    return v3
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", type="

    const-string v1, ", title="

    const-string v2, "WallpaperArticleSectionUiModel(key="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ctaText="

    const-string v2, ", asset="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;->d:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;->e:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ratio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;->f:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", wallpapers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", wallpaperDownloadState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;->h:Landroidx/compose/runtime/MutableState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mainTheme="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/WallpaperArticleSectionUiModel;->i:Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
