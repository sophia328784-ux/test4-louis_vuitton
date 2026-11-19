.class public final Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0087\u0008\u0018\u00002\u00020\u0001B]\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\r\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;",
        "",
        "",
        "purchaseFormattedDate",
        "Ljava/time/LocalDateTime;",
        "purchaseDate",
        "amountWithVat",
        "",
        "Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;",
        "transactions",
        "identifier",
        "Lcom/vuitton/android/presentation/screen/orders/models/ChannelUiModel;",
        "channel",
        "",
        "isOngoing",
        "isOrderReturnEnabled",
        "locationId",
        "<init>",
        "(Ljava/lang/String;Ljava/time/LocalDateTime;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/ChannelUiModel;ZZLjava/lang/String;)V",
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

.field public final b:Ljava/time/LocalDateTime;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/util/List;

.field public final e:Ljava/lang/String;

.field public final f:Lcom/vuitton/android/presentation/screen/orders/models/ChannelUiModel;

.field public final g:Z

.field public final h:Z

.field public final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/time/LocalDateTime;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/ChannelUiModel;ZZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/time/LocalDateTime;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/vuitton/android/presentation/screen/orders/models/ChannelUiModel;",
            "ZZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->b:Ljava/time/LocalDateTime;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->d:Ljava/util/List;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->f:Lcom/vuitton/android/presentation/screen/orders/models/ChannelUiModel;

    iput-boolean p7, p0, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->g:Z

    iput-boolean p8, p0, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->h:Z

    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->i:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/time/LocalDateTime;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/ChannelUiModel;ZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    move/from16 v0, p10

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move v10, v1

    goto :goto_0

    :cond_0
    move/from16 v10, p8

    :goto_0
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move-object v11, v0

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    goto :goto_2

    :cond_1
    move-object/from16 v11, p9

    goto :goto_1

    .line 37
    :goto_2
    invoke-direct/range {v2 .. v11}, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;-><init>(Ljava/lang/String;Ljava/time/LocalDateTime;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/ChannelUiModel;ZZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->b:Ljava/time/LocalDateTime;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->b:Ljava/time/LocalDateTime;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->d:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->d:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->f:Lcom/vuitton/android/presentation/screen/orders/models/ChannelUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->f:Lcom/vuitton/android/presentation/screen/orders/models/ChannelUiModel;

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->g:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->g:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->h:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->h:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->i:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->i:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->b:Ljava/time/LocalDateTime;

    invoke-virtual {v2}, Ljava/time/LocalDateTime;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->c:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->d:Ljava/util/List;

    invoke-static {v0, v1, v2}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->f:Lcom/vuitton/android/presentation/screen/orders/models/ChannelUiModel;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->g:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->h:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->i:Ljava/lang/String;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PurchasedOrderUiModel(purchaseFormattedDate="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", purchaseDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->b:Ljava/time/LocalDateTime;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", amountWithVat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", transactions="

    const-string v2, ", identifier="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->d:Ljava/util/List;

    invoke-static {v3, v1, v2, v0, v4}, Ld21;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/List;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", channel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->f:Lcom/vuitton/android/presentation/screen/orders/models/ChannelUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isOngoing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isOrderReturnEnabled="

    const-string v2, ", locationId="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->g:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->h:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ")"

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->i:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
