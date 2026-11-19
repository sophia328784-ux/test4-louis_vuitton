.class public final Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Flight;
.super Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Travel;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0086\u0008\u0018\u00002\u00020\u0001B9\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Flight;",
        "Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Travel;",
        "",
        "booking",
        "Lcom/vuitton/foundation/model/domain/model/connectivity/travel/FlightAirport;",
        "departure",
        "arrival",
        "flightCode",
        "seat",
        "<init>",
        "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/connectivity/travel/FlightAirport;Lcom/vuitton/foundation/model/domain/model/connectivity/travel/FlightAirport;Ljava/lang/String;Ljava/lang/String;)V",
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

.field public final d:Lcom/vuitton/foundation/model/domain/model/connectivity/travel/FlightAirport;

.field public final e:Lcom/vuitton/foundation/model/domain/model/connectivity/travel/FlightAirport;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/connectivity/travel/FlightAirport;Lcom/vuitton/foundation/model/domain/model/connectivity/travel/FlightAirport;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/TravelType;->FLIGHT:Lcom/vuitton/foundation/model/domain/model/connectivity/travel/TravelType;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Travel;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/connectivity/travel/TravelType;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Flight;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Flight;->d:Lcom/vuitton/foundation/model/domain/model/connectivity/travel/FlightAirport;

    iput-object p3, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Flight;->e:Lcom/vuitton/foundation/model/domain/model/connectivity/travel/FlightAirport;

    iput-object p4, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Flight;->f:Ljava/lang/String;

    iput-object p5, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Flight;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Flight;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Flight;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Flight;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Flight;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Flight;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Flight;->d:Lcom/vuitton/foundation/model/domain/model/connectivity/travel/FlightAirport;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Flight;->d:Lcom/vuitton/foundation/model/domain/model/connectivity/travel/FlightAirport;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Flight;->e:Lcom/vuitton/foundation/model/domain/model/connectivity/travel/FlightAirport;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Flight;->e:Lcom/vuitton/foundation/model/domain/model/connectivity/travel/FlightAirport;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Flight;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Flight;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Flight;->g:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Flight;->g:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Flight;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Flight;->d:Lcom/vuitton/foundation/model/domain/model/connectivity/travel/FlightAirport;

    if-nez v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/FlightAirport;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Flight;->e:Lcom/vuitton/foundation/model/domain/model/connectivity/travel/FlightAirport;

    if-nez v2, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/FlightAirport;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Flight;->f:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Flight;->g:Ljava/lang/String;

    if-nez p0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Flight(booking="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Flight;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", departure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Flight;->d:Lcom/vuitton/foundation/model/domain/model/connectivity/travel/FlightAirport;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", arrival="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Flight;->e:Lcom/vuitton/foundation/model/domain/model/connectivity/travel/FlightAirport;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", flightCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Flight;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", seat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Flight;->g:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
