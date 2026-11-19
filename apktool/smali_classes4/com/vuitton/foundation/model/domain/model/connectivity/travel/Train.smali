.class public final Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;
.super Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Travel;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0086\u0008\u0018\u00002\u00020\u0001BW\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;",
        "Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Travel;",
        "",
        "booking",
        "trainNumber",
        "Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Station;",
        "departureStation",
        "Ljava/util/Date;",
        "departureTime",
        "arrivalStation",
        "arrivalTime",
        "coach",
        "seat",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Station;Ljava/util/Date;Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Station;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V",
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
.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Station;

.field public final f:Ljava/util/Date;

.field public final g:Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Station;

.field public final h:Ljava/util/Date;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Station;Ljava/util/Date;Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Station;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/TravelType;->TRAIN:Lcom/vuitton/foundation/model/domain/model/connectivity/travel/TravelType;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Travel;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/connectivity/travel/TravelType;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;->e:Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Station;

    iput-object p4, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;->f:Ljava/util/Date;

    iput-object p5, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;->g:Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Station;

    iput-object p6, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;->h:Ljava/util/Date;

    iput-object p7, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;->i:Ljava/lang/String;

    iput-object p8, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;->e:Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Station;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;->e:Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Station;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;->f:Ljava/util/Date;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;->f:Ljava/util/Date;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;->g:Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Station;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;->g:Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Station;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;->h:Ljava/util/Date;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;->h:Ljava/util/Date;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;->i:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;->j:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;->j:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;->d:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;->e:Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Station;

    if-nez v2, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Station;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;->f:Ljava/util/Date;

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;->g:Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Station;

    if-nez v2, :cond_4

    move v2, v0

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Station;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;->h:Ljava/util/Date;

    if-nez v2, :cond_5

    move v2, v0

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;->i:Ljava/lang/String;

    if-nez v2, :cond_6

    move v2, v0

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;->j:Ljava/lang/String;

    if-nez p0, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", trainNumber="

    const-string v1, ", departureStation="

    const-string v2, "Train(booking="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;->d:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;->e:Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Station;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", departureTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;->f:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", arrivalStation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;->g:Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Station;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", arrivalTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;->h:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", coach="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", seat="

    const-string v2, ")"

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;->i:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;->j:Ljava/lang/String;

    invoke-static {v0, v3, v1, p0, v2}, Ltr;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
