.class public final Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Assessment"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0086\u0008\u0018\u00002\u00020\u0001BK\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;",
        "",
        "",
        "title",
        "careExpertNote",
        "Lcom/vuitton/foundation/model/domain/model/product/universal/Price;",
        "price",
        "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAddress;",
        "shippingAddress",
        "",
        "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$AssessmentItem;",
        "items",
        "",
        "showOnCareDetail",
        "disclaimer",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/Price;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAddress;Ljava/util/List;ZLjava/lang/String;)V",
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

.field public final c:Lcom/vuitton/foundation/model/domain/model/product/universal/Price;

.field public final d:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAddress;

.field public final e:Ljava/util/List;

.field public final f:Z

.field public final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/Price;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAddress;Ljava/util/List;ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/vuitton/foundation/model/domain/model/product/universal/Price;",
            "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAddress;",
            "Ljava/util/List<",
            "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$AssessmentItem;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;->c:Lcom/vuitton/foundation/model/domain/model/product/universal/Price;

    iput-object p4, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;->d:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAddress;

    iput-object p5, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;->e:Ljava/util/List;

    iput-boolean p6, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;->f:Z

    iput-object p7, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;->c:Lcom/vuitton/foundation/model/domain/model/product/universal/Price;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;->c:Lcom/vuitton/foundation/model/domain/model/product/universal/Price;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;->d:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAddress;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;->d:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAddress;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;->e:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;->e:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;->f:Z

    iget-boolean v3, p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;->f:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;->g:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;->g:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;->b:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;->c:Lcom/vuitton/foundation/model/domain/model/product/universal/Price;

    invoke-virtual {v3}, Lcom/vuitton/foundation/model/domain/model/product/universal/Price;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;->d:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAddress;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAddress;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;->e:Ljava/util/List;

    invoke-static {v3, v1, v0}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-boolean v3, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;->f:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;->g:Ljava/lang/String;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", careExpertNote="

    const-string v1, ", price="

    const-string v2, "Assessment(title="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;->c:Lcom/vuitton/foundation/model/domain/model/product/universal/Price;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shippingAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;->d:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", items="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", showOnCareDetail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", disclaimer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceDetail$Assessment;->g:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
