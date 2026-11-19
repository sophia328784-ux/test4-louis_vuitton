.class public final Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0087\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\u000c\u001a\u00020\u0004\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0012\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0012\u0012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0012\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017\u00a2\u0006\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;",
        "",
        "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;",
        "id",
        "",
        "displayableId",
        "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId;",
        "transactionId",
        "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;",
        "type",
        "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;",
        "category",
        "stepTitle",
        "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;",
        "action",
        "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceProduct;",
        "product",
        "trackingURL",
        "Lkotlinx/datetime/Instant;",
        "creationDate",
        "deliveryDate",
        "updatedDeliveryDate",
        "restitutionHistoryDate",
        "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceHotContent;",
        "hotContent",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceProduct;Ljava/lang/String;Lkotlinx/datetime/Instant;Lkotlinx/datetime/Instant;Lkotlinx/datetime/Instant;Lkotlinx/datetime/Instant;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceHotContent;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
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

.field public final d:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;

.field public final e:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;

.field public final f:Ljava/lang/String;

.field public final g:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;

.field public final h:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceProduct;

.field public final i:Ljava/lang/String;

.field public final j:Lkotlinx/datetime/Instant;

.field public final k:Lkotlinx/datetime/Instant;

.field public final l:Lkotlinx/datetime/Instant;

.field public final m:Lkotlinx/datetime/Instant;

.field public final n:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceHotContent;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceProduct;Ljava/lang/String;Lkotlinx/datetime/Instant;Lkotlinx/datetime/Instant;Lkotlinx/datetime/Instant;Lkotlinx/datetime/Instant;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceHotContent;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->d:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;

    iput-object p5, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->e:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;

    iput-object p6, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->g:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;

    iput-object p8, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->h:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceProduct;

    iput-object p9, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->i:Ljava/lang/String;

    iput-object p10, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->j:Lkotlinx/datetime/Instant;

    iput-object p11, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->k:Lkotlinx/datetime/Instant;

    iput-object p12, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->l:Lkotlinx/datetime/Instant;

    iput-object p13, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->m:Lkotlinx/datetime/Instant;

    iput-object p14, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->n:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceHotContent;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    goto/16 :goto_3

    :cond_0
    instance-of v1, p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    goto/16 :goto_2

    :cond_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;

    iget-object v1, p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->a:Ljava/lang/String;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;->Companion:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId$Companion;

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->a:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_2

    :cond_3
    iget-object v1, p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->c:Ljava/lang/String;

    if-nez v3, :cond_5

    if-nez v1, :cond_4

    move v1, v0

    goto :goto_1

    :cond_4
    :goto_0
    move v1, v2

    goto :goto_1

    :cond_5
    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId;->Companion:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId$Companion;

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    if-nez v1, :cond_7

    goto/16 :goto_2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->d:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->d:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;

    if-eq v1, v3, :cond_8

    goto/16 :goto_2

    :cond_8
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->e:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->e:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;

    if-eq v1, v3, :cond_9

    goto :goto_2

    :cond_9
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_2

    :cond_a
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->g:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->g:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;

    if-eq v1, v3, :cond_b

    goto :goto_2

    :cond_b
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->h:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceProduct;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->h:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceProduct;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_2

    :cond_c
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->i:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_2

    :cond_d
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->j:Lkotlinx/datetime/Instant;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->j:Lkotlinx/datetime/Instant;

    invoke-virtual {v1, v3}, Lkotlinx/datetime/Instant;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_2

    :cond_e
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->k:Lkotlinx/datetime/Instant;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->k:Lkotlinx/datetime/Instant;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_2

    :cond_f
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->l:Lkotlinx/datetime/Instant;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->l:Lkotlinx/datetime/Instant;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_2

    :cond_10
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->m:Lkotlinx/datetime/Instant;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->m:Lkotlinx/datetime/Instant;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_2

    :cond_11
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->n:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceHotContent;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->n:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceHotContent;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    :goto_2
    return v2

    :cond_12
    :goto_3
    return v0
.end method

.method public final hashCode()I
    .locals 5

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;->Companion:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId$Companion;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->c:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId;->Companion:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId$Companion;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->d:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->e:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->f:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->g:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->h:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceProduct;

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceProduct;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->i:Ljava/lang/String;

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->j:Lkotlinx/datetime/Instant;

    iget-object v3, v3, Lkotlinx/datetime/Instant;->b:Ljava/time/Instant;

    invoke-virtual {v3}, Ljava/time/Instant;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->k:Lkotlinx/datetime/Instant;

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_4

    :cond_4
    iget-object v0, v0, Lkotlinx/datetime/Instant;->b:Ljava/time/Instant;

    invoke-virtual {v0}, Ljava/time/Instant;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->l:Lkotlinx/datetime/Instant;

    if-nez v0, :cond_5

    move v0, v2

    goto :goto_5

    :cond_5
    iget-object v0, v0, Lkotlinx/datetime/Instant;->b:Ljava/time/Instant;

    invoke-virtual {v0}, Ljava/time/Instant;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->m:Lkotlinx/datetime/Instant;

    if-nez v0, :cond_6

    move v0, v2

    goto :goto_6

    :cond_6
    iget-object v0, v0, Lkotlinx/datetime/Instant;->b:Ljava/time/Instant;

    invoke-virtual {v0}, Ljava/time/Instant;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->n:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceHotContent;

    if-nez p0, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {p0}, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceHotContent;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v3, v2

    return v3
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;->Companion:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId$Companion;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId;->Companion:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceTransactionId$Companion;

    :goto_0
    const-string v1, ", displayableId="

    const-string v2, ", transactionId="

    const-string v3, "CareServiceShort(id="

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->b:Ljava/lang/String;

    invoke-static {v3, v4, v1, v5, v2}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", type="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->d:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceType;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", category="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->e:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCategory;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", stepTitle="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->f:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", action="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->g:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", product="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->h:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceProduct;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", trackingURL="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->i:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", creationDate="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->j:Lkotlinx/datetime/Instant;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", deliveryDate="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->k:Lkotlinx/datetime/Instant;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", updatedDeliveryDate="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->l:Lkotlinx/datetime/Instant;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", restitutionHistoryDate="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->m:Lkotlinx/datetime/Instant;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", hotContent="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceShort;->n:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceHotContent;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
