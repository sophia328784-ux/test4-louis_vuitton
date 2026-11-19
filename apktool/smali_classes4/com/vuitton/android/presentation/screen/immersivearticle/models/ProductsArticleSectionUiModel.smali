.class public final Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;
.super Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSectionUiModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ImmersiveProductUiModel;,
        Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ProductInfoUiModel;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0087\u0008\u0018\u00002\u00020\u0001:\u0002\u0011\u0012BC\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;",
        "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSectionUiModel;",
        "",
        "key",
        "",
        "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ImmersiveProductUiModel;",
        "products",
        "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductImageStyleUiModel;",
        "imageStyle",
        "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductDisplayStyleUiModel;",
        "displayStyle",
        "Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;",
        "mainTheme",
        "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;",
        "ratio",
        "<init>",
        "(Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductImageStyleUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductDisplayStyleUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;)V",
        "ImmersiveProductUiModel",
        "ProductInfoUiModel",
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

.field public final b:Ljava/util/List;

.field public final c:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductImageStyleUiModel;

.field public final d:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductDisplayStyleUiModel;

.field public final e:Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;

.field public final f:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductImageStyleUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductDisplayStyleUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel$ImmersiveProductUiModel;",
            ">;",
            "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductImageStyleUiModel;",
            "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductDisplayStyleUiModel;",
            "Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;",
            "Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSectionUiModel;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductImageStyleUiModel;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;->d:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductDisplayStyleUiModel;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;->e:Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;->f:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;

    return-void
.end method

.method public static b(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;Ljava/util/List;)Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;
    .locals 7

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductImageStyleUiModel;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;->d:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductDisplayStyleUiModel;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;->e:Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;->f:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductImageStyleUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductDisplayStyleUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;->b:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;->b:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductImageStyleUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductImageStyleUiModel;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;->d:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductDisplayStyleUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;->d:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductDisplayStyleUiModel;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;->e:Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;->e:Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;->f:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;->f:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;

    if-eq p0, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;->b:Ljava/util/List;

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductImageStyleUiModel;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;->d:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductDisplayStyleUiModel;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;->e:Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;->f:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", products="

    const-string v1, ", imageStyle="

    const-string v2, "ProductsArticleSectionUiModel(key="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;->b:Ljava/util/List;

    invoke-static {v2, v3, v0, v4, v1}, Ld21;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductImageStyleUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", displayStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;->d:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductDisplayStyleUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mainTheme="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;->e:Lcom/vuitton/android/presentation/screen/immersivearticle/models/SectionThemeUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ratio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ProductsArticleSectionUiModel;->f:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
