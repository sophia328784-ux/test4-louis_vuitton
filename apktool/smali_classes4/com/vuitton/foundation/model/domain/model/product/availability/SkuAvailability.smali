.class public final Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001By\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;",
        "",
        "Lcom/vuitton/foundation/model/domain/model/product/SkuId;",
        "sku",
        "",
        "inStock",
        "isBackOrder",
        "isPreOrder",
        "Lcom/vuitton/foundation/model/domain/model/product/ProductDisclaimer;",
        "disclaimer",
        "",
        "minValue",
        "maxValue",
        "minLeadTime",
        "maxLeadTime",
        "Lcom/vuitton/foundation/model/domain/model/product/availability/AvailabilityTimeFormat;",
        "leadTimeFormat",
        "<init>",
        "(Ljava/lang/String;ZZZLcom/vuitton/foundation/model/domain/model/product/ProductDisclaimer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vuitton/foundation/model/domain/model/product/availability/AvailabilityTimeFormat;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
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

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Lcom/vuitton/foundation/model/domain/model/product/ProductDisclaimer;

.field public final f:Ljava/lang/Integer;

.field public final g:Ljava/lang/Integer;

.field public final h:Ljava/lang/Integer;

.field public final i:Ljava/lang/Integer;

.field public final j:Lcom/vuitton/foundation/model/domain/model/product/availability/AvailabilityTimeFormat;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ZZZLcom/vuitton/foundation/model/domain/model/product/ProductDisclaimer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vuitton/foundation/model/domain/model/product/availability/AvailabilityTimeFormat;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    and-int/lit8 p12, p11, 0x1

    const/4 v0, 0x0

    if-eqz p12, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p12, p11, 0x2

    const/4 v1, 0x0

    if-eqz p12, :cond_1

    move p2, v1

    :cond_1
    and-int/lit8 p12, p11, 0x4

    if-eqz p12, :cond_2

    move p3, v1

    :cond_2
    and-int/lit8 p12, p11, 0x8

    if-eqz p12, :cond_3

    move p4, v1

    :cond_3
    and-int/lit8 p12, p11, 0x10

    if-eqz p12, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p12, p11, 0x20

    if-eqz p12, :cond_5

    move-object p6, v0

    :cond_5
    and-int/lit8 p12, p11, 0x40

    if-eqz p12, :cond_6

    move-object p7, v0

    :cond_6
    and-int/lit16 p12, p11, 0x80

    if-eqz p12, :cond_7

    move-object p8, v0

    :cond_7
    and-int/lit16 p12, p11, 0x100

    if-eqz p12, :cond_8

    move-object p9, v0

    :cond_8
    and-int/lit16 p11, p11, 0x200

    if-eqz p11, :cond_9

    move-object p10, v0

    :cond_9
    const/4 p11, 0x0

    invoke-direct/range {p0 .. p11}, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;-><init>(Ljava/lang/String;ZZZLcom/vuitton/foundation/model/domain/model/product/ProductDisclaimer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vuitton/foundation/model/domain/model/product/availability/AvailabilityTimeFormat;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZZLcom/vuitton/foundation/model/domain/model/product/ProductDisclaimer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vuitton/foundation/model/domain/model/product/availability/AvailabilityTimeFormat;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;->a:Ljava/lang/String;

    .line 59
    iput-boolean p2, p0, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;->b:Z

    .line 60
    iput-boolean p3, p0, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;->c:Z

    .line 61
    iput-boolean p4, p0, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;->d:Z

    .line 62
    iput-object p5, p0, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;->e:Lcom/vuitton/foundation/model/domain/model/product/ProductDisclaimer;

    .line 63
    iput-object p6, p0, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;->f:Ljava/lang/Integer;

    .line 64
    iput-object p7, p0, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;->g:Ljava/lang/Integer;

    .line 65
    iput-object p8, p0, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;->h:Ljava/lang/Integer;

    .line 66
    iput-object p9, p0, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;->i:Ljava/lang/Integer;

    .line 67
    iput-object p10, p0, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;->j:Lcom/vuitton/foundation/model/domain/model/product/availability/AvailabilityTimeFormat;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;

    iget-object v1, p1, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;->a:Ljava/lang/String;

    if-nez v3, :cond_3

    if-nez v1, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v2

    goto :goto_1

    :cond_3
    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;->b:Z

    iget-boolean v3, p1, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;->b:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;->c:Z

    iget-boolean v3, p1, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;->c:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;->d:Z

    iget-boolean v3, p1, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;->d:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;->e:Lcom/vuitton/foundation/model/domain/model/product/ProductDisclaimer;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;->e:Lcom/vuitton/foundation/model/domain/model/product/ProductDisclaimer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;->f:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;->f:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;->g:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;->g:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;->h:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;->h:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;->i:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;->i:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;->j:Lcom/vuitton/foundation/model/domain/model/product/availability/AvailabilityTimeFormat;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;->j:Lcom/vuitton/foundation/model/domain/model/product/availability/AvailabilityTimeFormat;

    if-eq p0, p1, :cond_e

    return v2

    :cond_e
    return v0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v1, v2

    iget-boolean v3, p0, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;->b:Z

    invoke-static {v1, v2, v3}, Lo60;->b(IIZ)I

    move-result v1

    iget-boolean v3, p0, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;->c:Z

    invoke-static {v1, v2, v3}, Lo60;->b(IIZ)I

    move-result v1

    iget-boolean v3, p0, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;->d:Z

    invoke-static {v1, v2, v3}, Lo60;->b(IIZ)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;->e:Lcom/vuitton/foundation/model/domain/model/product/ProductDisclaimer;

    if-nez v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/vuitton/foundation/model/domain/model/product/ProductDisclaimer;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;->f:Ljava/lang/Integer;

    if-nez v3, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;->g:Ljava/lang/Integer;

    if-nez v3, :cond_3

    move v3, v0

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;->h:Ljava/lang/Integer;

    if-nez v3, :cond_4

    move v3, v0

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;->i:Ljava/lang/Integer;

    if-nez v3, :cond_5

    move v3, v0

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;->j:Lcom/vuitton/foundation/model/domain/model/product/availability/AvailabilityTimeFormat;

    if-nez p0, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    :goto_0
    const-string v1, ", inStock="

    const-string v2, ", isBackOrder="

    const-string v3, "SkuAvailability(sku="

    iget-boolean v4, p0, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;->b:Z

    invoke-static {v3, v0, v1, v2, v4}, Ld21;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isPreOrder="

    const-string v2, ", disclaimer="

    iget-boolean v3, p0, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;->c:Z

    iget-boolean v4, p0, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;->d:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;->e:Lcom/vuitton/foundation/model/domain/model/product/ProductDisclaimer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", minValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;->f:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;->g:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", minLeadTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;->h:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxLeadTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;->i:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", leadTimeFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;->j:Lcom/vuitton/foundation/model/domain/model/product/availability/AvailabilityTimeFormat;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
