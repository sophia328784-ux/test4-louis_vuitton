.class public final Lcom/vuitton/foundation/model/domain/model/catalog/Category;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/catalog/Category;",
        "",
        "",
        "id",
        "title",
        "Lcom/vuitton/foundation/model/domain/model/common/Asset;",
        "asset",
        "Lcom/vuitton/foundation/model/domain/model/catalog/CategoryTag;",
        "tag",
        "Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselMedium;",
        "carousel",
        "Lcom/vuitton/foundation/model/domain/model/catalog/CategoryRedirection;",
        "redirection",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/Asset;Lcom/vuitton/foundation/model/domain/model/catalog/CategoryTag;Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselMedium;Lcom/vuitton/foundation/model/domain/model/catalog/CategoryRedirection;)V",
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

.field public final c:Lcom/vuitton/foundation/model/domain/model/common/Asset;

.field public final d:Lcom/vuitton/foundation/model/domain/model/catalog/CategoryTag;

.field public final e:Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselMedium;

.field public final f:Lcom/vuitton/foundation/model/domain/model/catalog/CategoryRedirection;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/Asset;Lcom/vuitton/foundation/model/domain/model/catalog/CategoryTag;Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselMedium;Lcom/vuitton/foundation/model/domain/model/catalog/CategoryRedirection;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/catalog/Category;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/foundation/model/domain/model/catalog/Category;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/foundation/model/domain/model/catalog/Category;->c:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    iput-object p4, p0, Lcom/vuitton/foundation/model/domain/model/catalog/Category;->d:Lcom/vuitton/foundation/model/domain/model/catalog/CategoryTag;

    iput-object p5, p0, Lcom/vuitton/foundation/model/domain/model/catalog/Category;->e:Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselMedium;

    iput-object p6, p0, Lcom/vuitton/foundation/model/domain/model/catalog/Category;->f:Lcom/vuitton/foundation/model/domain/model/catalog/CategoryRedirection;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/Asset;Lcom/vuitton/foundation/model/domain/model/catalog/CategoryTag;Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselMedium;Lcom/vuitton/foundation/model/domain/model/catalog/CategoryRedirection;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p7, 0x8

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move-object p4, v0

    :cond_0
    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_1

    move-object p5, v0

    .line 28
    :cond_1
    invoke-direct/range {p0 .. p6}, Lcom/vuitton/foundation/model/domain/model/catalog/Category;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/Asset;Lcom/vuitton/foundation/model/domain/model/catalog/CategoryTag;Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselMedium;Lcom/vuitton/foundation/model/domain/model/catalog/CategoryRedirection;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/foundation/model/domain/model/catalog/Category;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/catalog/Category;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/catalog/Category;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/catalog/Category;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/catalog/Category;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/catalog/Category;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/catalog/Category;->c:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/catalog/Category;->c:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/catalog/Category;->d:Lcom/vuitton/foundation/model/domain/model/catalog/CategoryTag;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/catalog/Category;->d:Lcom/vuitton/foundation/model/domain/model/catalog/CategoryTag;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/catalog/Category;->e:Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselMedium;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/catalog/Category;->e:Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselMedium;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/catalog/Category;->f:Lcom/vuitton/foundation/model/domain/model/catalog/CategoryRedirection;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/catalog/Category;->f:Lcom/vuitton/foundation/model/domain/model/catalog/CategoryRedirection;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/catalog/Category;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/catalog/Category;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/catalog/Category;->c:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    invoke-virtual {v2}, Lcom/vuitton/foundation/model/domain/model/common/Asset;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/catalog/Category;->d:Lcom/vuitton/foundation/model/domain/model/catalog/CategoryTag;

    if-nez v3, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    iget-object v3, v3, Lcom/vuitton/foundation/model/domain/model/catalog/CategoryTag;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    mul-int/2addr v2, v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/catalog/Category;->e:Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselMedium;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselMedium;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/catalog/Category;->f:Lcom/vuitton/foundation/model/domain/model/catalog/CategoryRedirection;

    invoke-virtual {p0}, Lcom/vuitton/foundation/model/domain/model/catalog/CategoryRedirection;->hashCode()I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", title="

    const-string v1, ", asset="

    const-string v2, "Category(id="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/catalog/Category;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/catalog/Category;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/catalog/Category;->c:Lcom/vuitton/foundation/model/domain/model/common/Asset;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/catalog/Category;->d:Lcom/vuitton/foundation/model/domain/model/catalog/CategoryTag;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", carousel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/catalog/Category;->e:Lcom/vuitton/foundation/model/domain/model/common/editorial/EditorialModule$CarouselMedium;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", redirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/catalog/Category;->f:Lcom/vuitton/foundation/model/domain/model/catalog/CategoryRedirection;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
