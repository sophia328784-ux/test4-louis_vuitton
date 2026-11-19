.class public final Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0086\u0008\u0018\u00002\u00020\u0001Ba\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\u0004\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e\u0012\u0006\u0010\u0011\u001a\u00020\t\u0012\u0006\u0010\u0012\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;",
        "",
        "Lcom/vuitton/foundation/model/domain/model/product/SkuId;",
        "sku",
        "",
        "vtoId",
        "Lcom/vuitton/foundation/model/domain/model/product/vto/BeautyProductType;",
        "type",
        "stackingType",
        "",
        "isDualEnabled",
        "name",
        "Lcom/vuitton/foundation/model/domain/model/product/vto/Color;",
        "color",
        "",
        "Lcom/vuitton/foundation/model/domain/model/product/vto/Look;",
        "looks",
        "hasTutorial",
        "isLimitedEdition",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/vto/BeautyProductType;Lcom/vuitton/foundation/model/domain/model/product/vto/BeautyProductType;ZLjava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/vto/Color;Ljava/util/List;ZZLkotlin/jvm/internal/DefaultConstructorMarker;)V",
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

.field public final c:Lcom/vuitton/foundation/model/domain/model/product/vto/BeautyProductType;

.field public final d:Lcom/vuitton/foundation/model/domain/model/product/vto/BeautyProductType;

.field public final e:Z

.field public final f:Ljava/lang/String;

.field public final g:Lcom/vuitton/foundation/model/domain/model/product/vto/Color;

.field public final h:Ljava/util/List;

.field public final i:Z

.field public final j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/vto/BeautyProductType;Lcom/vuitton/foundation/model/domain/model/product/vto/BeautyProductType;ZLjava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/vto/Color;Ljava/util/List;ZZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;->c:Lcom/vuitton/foundation/model/domain/model/product/vto/BeautyProductType;

    iput-object p4, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;->d:Lcom/vuitton/foundation/model/domain/model/product/vto/BeautyProductType;

    iput-boolean p5, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;->e:Z

    iput-object p6, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;->g:Lcom/vuitton/foundation/model/domain/model/product/vto/Color;

    iput-object p8, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;->h:Ljava/util/List;

    iput-boolean p9, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;->i:Z

    iput-boolean p10, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;->j:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto/16 :goto_1

    :cond_0
    instance-of v0, p1, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;

    iget-object v0, p1, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;->a:Ljava/lang/String;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;->c:Lcom/vuitton/foundation/model/domain/model/product/vto/BeautyProductType;

    iget-object v1, p1, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;->c:Lcom/vuitton/foundation/model/domain/model/product/vto/BeautyProductType;

    if-eq v0, v1, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;->d:Lcom/vuitton/foundation/model/domain/model/product/vto/BeautyProductType;

    iget-object v1, p1, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;->d:Lcom/vuitton/foundation/model/domain/model/product/vto/BeautyProductType;

    if-eq v0, v1, :cond_5

    goto :goto_0

    :cond_5
    iget-boolean v0, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;->e:Z

    iget-boolean v1, p1, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;->e:Z

    if-eq v0, v1, :cond_6

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;->f:Ljava/lang/String;

    iget-object v1, p1, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;->g:Lcom/vuitton/foundation/model/domain/model/product/vto/Color;

    iget-object v1, p1, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;->g:Lcom/vuitton/foundation/model/domain/model/product/vto/Color;

    invoke-virtual {v0, v1}, Lcom/vuitton/foundation/model/domain/model/product/vto/Color;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;->h:Ljava/util/List;

    iget-object v1, p1, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;->h:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    iget-boolean v0, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;->i:Z

    iget-boolean v1, p1, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;->i:Z

    if-eq v0, v1, :cond_a

    goto :goto_0

    :cond_a
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;->j:Z

    iget-boolean p1, p1, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;->j:Z

    if-eq p0, p1, :cond_b

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 4

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;->c:Lcom/vuitton/foundation/model/domain/model/product/vto/BeautyProductType;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;->d:Lcom/vuitton/foundation/model/domain/model/product/vto/BeautyProductType;

    if-nez v3, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    mul-int/2addr v2, v1

    iget-boolean v3, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;->e:Z

    invoke-static {v2, v1, v3}, Lo60;->b(IIZ)I

    move-result v2

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;->f:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;->g:Lcom/vuitton/foundation/model/domain/model/product/vto/Color;

    invoke-virtual {v3}, Lcom/vuitton/foundation/model/domain/model/product/vto/Color;->hashCode()I

    move-result v3

    add-int/2addr v3, v2

    mul-int/2addr v3, v1

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;->h:Ljava/util/List;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-boolean v0, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;->i:Z

    invoke-static {v3, v1, v0}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;->j:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    const-string v0, ", vtoId="

    const-string v1, ", type="

    const-string v2, "TryOnProduct(sku="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;->c:Lcom/vuitton/foundation/model/domain/model/product/vto/BeautyProductType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", stackingType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;->d:Lcom/vuitton/foundation/model/domain/model/product/vto/BeautyProductType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isDualEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    const-string v2, ", color="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;->f:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;->e:Z

    invoke-static {v1, v3, v2, v0, v4}, Lcj;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;->g:Lcom/vuitton/foundation/model/domain/model/product/vto/Color;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", looks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;->h:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hasTutorial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isLimitedEdition="

    const-string v2, ")"

    iget-boolean v3, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;->i:Z

    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/product/vto/TryOnProduct;->j:Z

    invoke-static {v0, v3, v1, p0, v2}, Lpq0;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
