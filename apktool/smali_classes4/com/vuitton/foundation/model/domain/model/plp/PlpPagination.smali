.class public final Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0086\u0008\u0018\u00002\u00020\u0001BU\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\r\u001a\u00020\u000b\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;",
        "",
        "",
        "id",
        "name",
        "trackingPageName",
        "",
        "Lcom/vuitton/foundation/model/domain/model/plp/PlpSection;",
        "sectionList",
        "Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductListOption;",
        "optionList",
        "",
        "totalCount",
        "currentPage",
        "nextPage",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductListOption;IILjava/lang/Integer;)V",
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

.field public final d:Ljava/util/List;

.field public final e:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductListOption;

.field public final f:I

.field public final g:I

.field public final h:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductListOption;IILjava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/vuitton/foundation/model/domain/model/plp/PlpSection;",
            ">;",
            "Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductListOption;",
            "II",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->d:Ljava/util/List;

    iput-object p5, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->e:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductListOption;

    iput p6, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->f:I

    iput p7, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->g:I

    iput-object p8, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->h:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->d:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->d:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->e:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductListOption;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->e:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductListOption;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->f:I

    iget v3, p1, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->f:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->g:I

    iget v3, p1, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->g:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->h:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->h:Ljava/lang/Integer;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->b:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->c:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->d:Ljava/util/List;

    invoke-static {v1, v2, v3}, Ln00;->a(IILjava/util/List;)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->e:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductListOption;

    invoke-virtual {v3}, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductListOption;->hashCode()I

    move-result v3

    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget v1, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->f:I

    invoke-static {v1, v3, v2}, Ltr;->b(III)I

    move-result v1

    iget v3, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->g:I

    invoke-static {v3, v1, v2}, Ltr;->b(III)I

    move-result v1

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->h:Ljava/lang/Integer;

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", name="

    const-string v1, ", trackingPageName="

    const-string v2, "PlpPagination(id="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sectionList="

    const-string v2, ", optionList="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->d:Ljava/util/List;

    invoke-static {v3, v1, v2, v0, v4}, Ld21;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/List;)V

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->e:Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductListOption;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", totalCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currentPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", nextPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;->h:Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
