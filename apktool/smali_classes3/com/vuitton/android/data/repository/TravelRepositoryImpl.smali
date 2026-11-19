.class public final Lcom/vuitton/android/data/repository/TravelRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/repository/TravelRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/vuitton/android/data/repository/TravelRepositoryImpl;",
        "Lcom/vuitton/android/domain/repository/TravelRepository;",
        "Lcom/vuitton/android/data/api/connectivity/WatchApiV2;",
        "watchApiV2",
        "Lcom/vuitton/android/domain/repository/AuthTokenRepository;",
        "authTokenRepository",
        "<init>",
        "(Lcom/vuitton/android/data/api/connectivity/WatchApiV2;Lcom/vuitton/android/domain/repository/AuthTokenRepository;)V",
        "data"
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
.field public final a:Lcom/vuitton/android/data/api/connectivity/WatchApiV2;

.field public final b:Lcom/vuitton/android/domain/repository/AuthTokenRepository;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/data/api/connectivity/WatchApiV2;Lcom/vuitton/android/domain/repository/AuthTokenRepository;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl;->a:Lcom/vuitton/android/data/api/connectivity/WatchApiV2;

    iput-object p2, p0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl;->b:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    return-void
.end method

.method public static e(Lcom/vuitton/android/data/dto/travel/TravelDto;)Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Travel;
    .locals 14

    instance-of v0, p0, Lcom/vuitton/android/data/dto/travel/FlightTravelDto;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Flight;

    check-cast p0, Lcom/vuitton/android/data/dto/travel/FlightTravelDto;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/travel/FlightTravelDto;->e:Ljava/util/List;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/travel/FlightTravelDto;->a:Ljava/lang/String;

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/FlightAirport;

    iget-object v6, p0, Lcom/vuitton/android/data/dto/travel/FlightTravelDto;->c:Lcom/vuitton/android/data/dto/travel/Airport;

    if-eqz v6, :cond_0

    iget-object v7, v6, Lcom/vuitton/android/data/dto/travel/Airport;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v7, v2

    :goto_0
    if-eqz v6, :cond_1

    iget-object v8, v6, Lcom/vuitton/android/data/dto/travel/Airport;->c:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v8, v2

    :goto_1
    if-eqz v6, :cond_2

    iget-object v9, v6, Lcom/vuitton/android/data/dto/travel/Airport;->a:Ljava/util/Date;

    goto :goto_2

    :cond_2
    move-object v9, v2

    :goto_2
    if-eqz v6, :cond_3

    iget-object v10, v6, Lcom/vuitton/android/data/dto/travel/Airport;->d:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v10, v2

    :goto_3
    if-eqz v6, :cond_4

    iget-object v6, v6, Lcom/vuitton/android/data/dto/travel/Airport;->e:Ljava/lang/String;

    move-object v13, v10

    move-object v10, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v13

    goto :goto_4

    :cond_4
    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v2

    :goto_4
    invoke-direct/range {v5 .. v10}, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/FlightAirport;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/FlightAirport;

    iget-object v7, p0, Lcom/vuitton/android/data/dto/travel/FlightTravelDto;->d:Lcom/vuitton/android/data/dto/travel/Airport;

    if-eqz v7, :cond_5

    iget-object v8, v7, Lcom/vuitton/android/data/dto/travel/Airport;->b:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object v8, v2

    :goto_5
    if-eqz v7, :cond_6

    iget-object v9, v7, Lcom/vuitton/android/data/dto/travel/Airport;->c:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object v9, v2

    :goto_6
    if-eqz v7, :cond_7

    iget-object v10, v7, Lcom/vuitton/android/data/dto/travel/Airport;->a:Ljava/util/Date;

    goto :goto_7

    :cond_7
    move-object v10, v2

    :goto_7
    if-eqz v7, :cond_8

    iget-object v11, v7, Lcom/vuitton/android/data/dto/travel/Airport;->d:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object v11, v2

    :goto_8
    if-eqz v7, :cond_9

    iget-object v7, v7, Lcom/vuitton/android/data/dto/travel/Airport;->e:Ljava/lang/String;

    move-object v13, v11

    move-object v11, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v13

    goto :goto_9

    :cond_9
    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v2

    :goto_9
    invoke-direct/range {v6 .. v11}, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/FlightAirport;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/vuitton/android/data/dto/travel/FlightTravelDto;->b:Ljava/lang/String;

    move-object p0, v0

    check-cast p0, Ljava/util/Collection;

    if-eqz p0, :cond_b

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_a

    :cond_a
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/dto/travel/Passenger;

    iget-object v2, p0, Lcom/vuitton/android/data/dto/travel/Passenger;->a:Ljava/lang/String;

    :cond_b
    :goto_a
    move-object v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Flight;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/connectivity/travel/FlightAirport;Lcom/vuitton/foundation/model/domain/model/connectivity/travel/FlightAirport;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_c
    instance-of v0, p0, Lcom/vuitton/android/data/dto/travel/HotelTravelDto;

    if-eqz v0, :cond_f

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Hotel;

    check-cast p0, Lcom/vuitton/android/data/dto/travel/HotelTravelDto;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/travel/HotelTravelDto;->a:Ljava/lang/String;

    iget-object v5, p0, Lcom/vuitton/android/data/dto/travel/HotelTravelDto;->c:Ljava/lang/String;

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/HotelPlace;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/travel/HotelTravelDto;->g:Lcom/vuitton/android/data/dto/travel/CoordinatesDto;

    if-eqz v0, :cond_d

    iget-object v1, v0, Lcom/vuitton/android/data/dto/travel/CoordinatesDto;->a:Ljava/lang/Double;

    goto :goto_b

    :cond_d
    move-object v1, v2

    :goto_b
    if-eqz v0, :cond_e

    iget-object v2, v0, Lcom/vuitton/android/data/dto/travel/CoordinatesDto;->b:Ljava/lang/Double;

    :cond_e
    iget-object v0, p0, Lcom/vuitton/android/data/dto/travel/HotelTravelDto;->d:Ljava/lang/String;

    iget-object v7, p0, Lcom/vuitton/android/data/dto/travel/HotelTravelDto;->b:Ljava/lang/String;

    invoke-direct {v6, v1, v2, v0, v7}, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/HotelPlace;-><init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/vuitton/android/data/dto/travel/HotelTravelDto;->e:Ljava/util/Date;

    iget-object v8, p0, Lcom/vuitton/android/data/dto/travel/HotelTravelDto;->f:Ljava/util/Date;

    iget-object v9, p0, Lcom/vuitton/android/data/dto/travel/HotelTravelDto;->h:Ljava/lang/String;

    invoke-direct/range {v3 .. v9}, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Hotel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/connectivity/travel/HotelPlace;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)V

    return-object v3

    :cond_f
    instance-of v0, p0, Lcom/vuitton/android/data/dto/travel/TrainTravelDto;

    if-eqz v0, :cond_1e

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;

    check-cast p0, Lcom/vuitton/android/data/dto/travel/TrainTravelDto;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/travel/TrainTravelDto;->d:Lcom/vuitton/android/data/dto/travel/Station;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/travel/TrainTravelDto;->c:Lcom/vuitton/android/data/dto/travel/Station;

    iget-object v5, p0, Lcom/vuitton/android/data/dto/travel/TrainTravelDto;->e:Ljava/util/List;

    move-object v6, v4

    iget-object v4, p0, Lcom/vuitton/android/data/dto/travel/TrainTravelDto;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/travel/TrainTravelDto;->b:Ljava/lang/String;

    move-object v7, v6

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Station;

    if-eqz v7, :cond_10

    iget-object v8, v7, Lcom/vuitton/android/data/dto/travel/Station;->c:Ljava/lang/String;

    goto :goto_c

    :cond_10
    move-object v8, v2

    :goto_c
    if-eqz v7, :cond_11

    iget-object v9, v7, Lcom/vuitton/android/data/dto/travel/Station;->b:Ljava/lang/String;

    goto :goto_d

    :cond_11
    move-object v9, v2

    :goto_d
    if-eqz v7, :cond_12

    iget-object v10, v7, Lcom/vuitton/android/data/dto/travel/Station;->d:Lcom/vuitton/android/data/dto/travel/CoordinatesDto;

    if-eqz v10, :cond_12

    iget-object v10, v10, Lcom/vuitton/android/data/dto/travel/CoordinatesDto;->a:Ljava/lang/Double;

    goto :goto_e

    :cond_12
    move-object v10, v2

    :goto_e
    if-eqz v7, :cond_13

    iget-object v11, v7, Lcom/vuitton/android/data/dto/travel/Station;->d:Lcom/vuitton/android/data/dto/travel/CoordinatesDto;

    if-eqz v11, :cond_13

    iget-object v11, v11, Lcom/vuitton/android/data/dto/travel/CoordinatesDto;->b:Ljava/lang/Double;

    goto :goto_f

    :cond_13
    move-object v11, v2

    :goto_f
    invoke-direct {v6, v8, v9, v10, v11}, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Station;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)V

    if-eqz v7, :cond_14

    iget-object v7, v7, Lcom/vuitton/android/data/dto/travel/Station;->a:Ljava/util/Date;

    goto :goto_10

    :cond_14
    move-object v7, v2

    :goto_10
    new-instance v8, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Station;

    if-eqz v0, :cond_15

    iget-object v9, v0, Lcom/vuitton/android/data/dto/travel/Station;->c:Ljava/lang/String;

    goto :goto_11

    :cond_15
    move-object v9, v2

    :goto_11
    if-eqz v0, :cond_16

    iget-object v10, v0, Lcom/vuitton/android/data/dto/travel/Station;->b:Ljava/lang/String;

    goto :goto_12

    :cond_16
    move-object v10, v2

    :goto_12
    if-eqz v0, :cond_17

    iget-object v11, v0, Lcom/vuitton/android/data/dto/travel/Station;->d:Lcom/vuitton/android/data/dto/travel/CoordinatesDto;

    if-eqz v11, :cond_17

    iget-object v11, v11, Lcom/vuitton/android/data/dto/travel/CoordinatesDto;->a:Ljava/lang/Double;

    goto :goto_13

    :cond_17
    move-object v11, v2

    :goto_13
    if-eqz v0, :cond_18

    iget-object v12, v0, Lcom/vuitton/android/data/dto/travel/Station;->d:Lcom/vuitton/android/data/dto/travel/CoordinatesDto;

    if-eqz v12, :cond_18

    iget-object v12, v12, Lcom/vuitton/android/data/dto/travel/CoordinatesDto;->b:Ljava/lang/Double;

    goto :goto_14

    :cond_18
    move-object v12, v2

    :goto_14
    invoke-direct {v8, v9, v10, v11, v12}, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Station;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)V

    if-eqz v0, :cond_19

    iget-object v0, v0, Lcom/vuitton/android/data/dto/travel/Station;->a:Ljava/util/Date;

    move-object v9, v0

    goto :goto_15

    :cond_19
    move-object v9, v2

    :goto_15
    move-object v0, v5

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_1b

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1a

    goto :goto_16

    :cond_1a
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vuitton/android/data/dto/travel/Traveler;

    iget-object v10, v10, Lcom/vuitton/android/data/dto/travel/Traveler;->a:Ljava/lang/String;

    goto :goto_17

    :cond_1b
    :goto_16
    move-object v10, v2

    :goto_17
    if-eqz v0, :cond_1d

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_18

    :cond_1c
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/data/dto/travel/Traveler;

    iget-object v2, v0, Lcom/vuitton/android/data/dto/travel/Traveler;->b:Ljava/lang/String;

    :cond_1d
    :goto_18
    move-object v5, p0

    move-object v11, v2

    invoke-direct/range {v3 .. v11}, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Station;Ljava/util/Date;Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Station;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_1e
    instance-of p0, p0, Lcom/vuitton/android/data/dto/travel/UnknownTravelDto;

    if-eqz p0, :cond_1f

    return-object v2

    :cond_1f
    invoke-static {}, Lv40;->g()V

    return-object v2
.end method

.method public static f(Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Travel;)Lcom/vuitton/android/data/dto/travel/TravelDto;
    .locals 14

    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Flight;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Flight;

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Flight;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Flight;->f:Ljava/lang/String;

    new-instance v5, Lcom/vuitton/android/data/dto/travel/Airport;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Flight;->d:Lcom/vuitton/foundation/model/domain/model/connectivity/travel/FlightAirport;

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/FlightAirport;->c:Ljava/util/Date;

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object v6, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/FlightAirport;->a:Ljava/lang/String;

    move-object v7, v2

    goto :goto_1

    :cond_1
    move-object v7, v1

    :goto_1
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/FlightAirport;->b:Ljava/lang/String;

    move-object v8, v2

    goto :goto_2

    :cond_2
    move-object v8, v1

    :goto_2
    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/FlightAirport;->d:Ljava/lang/String;

    move-object v9, v2

    goto :goto_3

    :cond_3
    move-object v9, v1

    :goto_3
    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/FlightAirport;->e:Ljava/lang/String;

    move-object v10, v0

    goto :goto_4

    :cond_4
    move-object v10, v1

    :goto_4
    invoke-direct/range {v5 .. v10}, Lcom/vuitton/android/data/dto/travel/Airport;-><init>(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/vuitton/android/data/dto/travel/Airport;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Flight;->e:Lcom/vuitton/foundation/model/domain/model/connectivity/travel/FlightAirport;

    if-eqz v0, :cond_5

    iget-object v2, v0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/FlightAirport;->c:Ljava/util/Date;

    move-object v7, v2

    goto :goto_5

    :cond_5
    move-object v7, v1

    :goto_5
    if-eqz v0, :cond_6

    iget-object v2, v0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/FlightAirport;->a:Ljava/lang/String;

    move-object v8, v2

    goto :goto_6

    :cond_6
    move-object v8, v1

    :goto_6
    if-eqz v0, :cond_7

    iget-object v2, v0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/FlightAirport;->b:Ljava/lang/String;

    move-object v9, v2

    goto :goto_7

    :cond_7
    move-object v9, v1

    :goto_7
    if-eqz v0, :cond_8

    iget-object v2, v0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/FlightAirport;->d:Ljava/lang/String;

    move-object v10, v2

    goto :goto_8

    :cond_8
    move-object v10, v1

    :goto_8
    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/FlightAirport;->e:Ljava/lang/String;

    move-object v11, v0

    goto :goto_9

    :cond_9
    move-object v11, v1

    :goto_9
    invoke-direct/range {v6 .. v11}, Lcom/vuitton/android/data/dto/travel/Airport;-><init>(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Flight;->g:Ljava/lang/String;

    if-eqz p0, :cond_a

    new-instance v0, Lcom/vuitton/android/data/dto/travel/Passenger;

    invoke-direct {v0, p0}, Lcom/vuitton/android/data/dto/travel/Passenger;-><init>(Ljava/lang/String;)V

    filled-new-array {v0}, [Lcom/vuitton/android/data/dto/travel/Passenger;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->l([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    :cond_a
    move-object v7, v1

    new-instance v2, Lcom/vuitton/android/data/dto/travel/FlightTravelDto;

    const/4 v8, 0x0

    const/16 v9, 0x20

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/vuitton/android/data/dto/travel/FlightTravelDto;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/travel/Airport;Lcom/vuitton/android/data/dto/travel/Airport;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_b
    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Hotel;

    if-eqz v0, :cond_10

    new-instance v2, Lcom/vuitton/android/data/dto/travel/HotelTravelDto;

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Hotel;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Hotel;->e:Lcom/vuitton/foundation/model/domain/model/connectivity/travel/HotelPlace;

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Hotel;->c:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/HotelPlace;->d:Ljava/lang/String;

    goto :goto_a

    :cond_c
    move-object v4, v1

    :goto_a
    iget-object v5, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Hotel;->d:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v6, v0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/HotelPlace;->c:Ljava/lang/String;

    goto :goto_b

    :cond_d
    move-object v6, v1

    :goto_b
    iget-object v7, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Hotel;->f:Ljava/util/Date;

    iget-object v8, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Hotel;->g:Ljava/util/Date;

    new-instance v9, Lcom/vuitton/android/data/dto/travel/CoordinatesDto;

    if-eqz v0, :cond_e

    iget-object v10, v0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/HotelPlace;->a:Ljava/lang/Double;

    goto :goto_c

    :cond_e
    move-object v10, v1

    :goto_c
    if-eqz v0, :cond_f

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/HotelPlace;->b:Ljava/lang/Double;

    :cond_f
    invoke-direct {v9, v10, v1}, Lcom/vuitton/android/data/dto/travel/CoordinatesDto;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    iget-object v10, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Hotel;->h:Ljava/lang/String;

    const/16 v12, 0x100

    const/4 v13, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v13}, Lcom/vuitton/android/data/dto/travel/HotelTravelDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lcom/vuitton/android/data/dto/travel/CoordinatesDto;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_10
    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;

    if-eqz v0, :cond_19

    new-instance v2, Lcom/vuitton/android/data/dto/travel/TrainTravelDto;

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;->i:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;->g:Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Station;

    iget-object v5, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;->e:Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Station;

    move-object v6, v3

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;->c:Ljava/lang/String;

    move-object v7, v4

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;->d:Ljava/lang/String;

    move-object v8, v5

    new-instance v5, Lcom/vuitton/android/data/dto/travel/Station;

    iget-object v9, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;->f:Ljava/util/Date;

    if-eqz v8, :cond_11

    iget-object v10, v8, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Station;->b:Ljava/lang/String;

    goto :goto_d

    :cond_11
    move-object v10, v1

    :goto_d
    if-eqz v8, :cond_12

    iget-object v11, v8, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Station;->a:Ljava/lang/String;

    goto :goto_e

    :cond_12
    move-object v11, v1

    :goto_e
    new-instance v12, Lcom/vuitton/android/data/dto/travel/CoordinatesDto;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v13, v8, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Station;->c:Ljava/lang/Double;

    iget-object v8, v8, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Station;->d:Ljava/lang/Double;

    invoke-direct {v12, v13, v8}, Lcom/vuitton/android/data/dto/travel/CoordinatesDto;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    invoke-direct {v5, v9, v10, v11, v12}, Lcom/vuitton/android/data/dto/travel/Station;-><init>(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/travel/CoordinatesDto;)V

    move-object v8, v6

    new-instance v6, Lcom/vuitton/android/data/dto/travel/Station;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;->h:Ljava/util/Date;

    if-eqz v7, :cond_13

    iget-object v9, v7, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Station;->b:Ljava/lang/String;

    goto :goto_f

    :cond_13
    move-object v9, v1

    :goto_f
    if-eqz v7, :cond_14

    iget-object v10, v7, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Station;->a:Ljava/lang/String;

    goto :goto_10

    :cond_14
    move-object v10, v1

    :goto_10
    new-instance v11, Lcom/vuitton/android/data/dto/travel/CoordinatesDto;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v12, v7, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Station;->c:Ljava/lang/Double;

    iget-object v7, v7, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Station;->d:Ljava/lang/Double;

    invoke-direct {v11, v12, v7}, Lcom/vuitton/android/data/dto/travel/CoordinatesDto;-><init>(Ljava/lang/Double;Ljava/lang/Double;)V

    invoke-direct {v6, p0, v9, v10, v11}, Lcom/vuitton/android/data/dto/travel/Station;-><init>(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/travel/CoordinatesDto;)V

    if-nez v8, :cond_16

    if-eqz v0, :cond_15

    goto :goto_12

    :cond_15
    :goto_11
    move-object v7, v1

    goto :goto_13

    :cond_16
    :goto_12
    new-instance p0, Lcom/vuitton/android/data/dto/travel/Traveler;

    const-string v1, ""

    if-nez v8, :cond_17

    move-object v8, v1

    :cond_17
    if-nez v0, :cond_18

    move-object v0, v1

    :cond_18
    invoke-direct {p0, v8, v0}, Lcom/vuitton/android/data/dto/travel/Traveler;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {p0}, [Lcom/vuitton/android/data/dto/travel/Traveler;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->l([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_11

    :goto_13
    const/16 v9, 0x20

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/vuitton/android/data/dto/travel/TrainTravelDto;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/travel/Station;Lcom/vuitton/android/data/dto/travel/Station;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_19
    invoke-static {}, Lv40;->g()V

    return-object v1
.end method


# virtual methods
.method public final a(Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Travel;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p2, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$editTravel$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$editTravel$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$editTravel$1;->i:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$editTravel$1;->i:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$editTravel$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$editTravel$1;-><init>(Lcom/vuitton/android/data/repository/TravelRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$editTravel$1;->g:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$editTravel$1;->i:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$editTravel$1;->c:Lcom/vuitton/android/data/repository/TravelRepositoryImpl;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_2
    iget p1, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$editTravel$1;->f:I

    iget v2, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$editTravel$1;->e:I

    iget v4, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$editTravel$1;->d:I

    iget-object v6, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$editTravel$1;->b:Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Travel;

    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p2, p2, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v9, v2

    move v2, p1

    move-object p1, v6

    move v6, v4

    move v4, v9

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_2
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p2, p0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl;->b:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    iput-object p1, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$editTravel$1;->b:Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Travel;

    const/4 v2, 0x0

    iput v2, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$editTravel$1;->d:I

    iput v2, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$editTravel$1;->e:I

    iput v2, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$editTravel$1;->f:I

    iput v4, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$editTravel$1;->i:I

    invoke-interface {p2, v0}, Lcom/vuitton/android/domain/repository/AuthTokenRepository;->c(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto :goto_2

    :cond_4
    move v4, v2

    move v6, v4

    :goto_1
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Ljava/lang/String;

    iget-object v7, p0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl;->a:Lcom/vuitton/android/data/api/connectivity/WatchApiV2;

    invoke-static {p2}, Lcom/vuitton/android/data/repository/TokenExtKt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Travel;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/vuitton/android/data/repository/TravelRepositoryImpl;->f(Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Travel;)Lcom/vuitton/android/data/dto/travel/TravelDto;

    move-result-object p1

    iput-object v5, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$editTravel$1;->b:Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Travel;

    iput-object p0, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$editTravel$1;->c:Lcom/vuitton/android/data/repository/TravelRepositoryImpl;

    iput v6, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$editTravel$1;->d:I

    iput v4, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$editTravel$1;->e:I

    iput v2, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$editTravel$1;->f:I

    iput v3, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$editTravel$1;->i:I

    invoke-interface {v7, p2, v8, p1, v0}, Lcom/vuitton/android/data/api/connectivity/WatchApiV2;->editTravel(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/travel/TravelDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    :goto_3
    check-cast p2, Lcom/vuitton/android/data/dto/travel/TravelDto;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/vuitton/android/data/repository/TravelRepositoryImpl;->e(Lcom/vuitton/android/data/dto/travel/TravelDto;)Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Travel;

    move-result-object p0

    if-eqz p0, :cond_6

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    goto :goto_5

    :cond_6
    const-string p0, "Required value was null."

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_4
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_5
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_7

    goto :goto_6

    :cond_7
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_8

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_6
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-static {p0, v5}, Lcom/vuitton/android/data/exception/NetworkExceptionMapperKt;->a(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_8
    throw p0
.end method

.method public final b(Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$deleteTravel$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$deleteTravel$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$deleteTravel$1;->h:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$deleteTravel$1;->h:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$deleteTravel$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$deleteTravel$1;-><init>(Lcom/vuitton/android/data/repository/TravelRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$deleteTravel$1;->f:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$deleteTravel$1;->h:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_2
    iget p1, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$deleteTravel$1;->e:I

    iget v2, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$deleteTravel$1;->d:I

    iget v4, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$deleteTravel$1;->c:I

    iget-object v6, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$deleteTravel$1;->b:Ljava/lang/String;

    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p2, p2, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v7, v2

    move v2, p1

    move-object p1, v6

    move v6, v4

    move v4, v7

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_2
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p2, p0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl;->b:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    iput-object p1, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$deleteTravel$1;->b:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$deleteTravel$1;->c:I

    iput v2, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$deleteTravel$1;->d:I

    iput v2, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$deleteTravel$1;->e:I

    iput v4, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$deleteTravel$1;->h:I

    invoke-interface {p2, v0}, Lcom/vuitton/android/domain/repository/AuthTokenRepository;->c(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto :goto_2

    :cond_4
    move v4, v2

    move v6, v4

    :goto_1
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl;->a:Lcom/vuitton/android/data/api/connectivity/WatchApiV2;

    invoke-static {p2}, Lcom/vuitton/android/data/repository/TokenExtKt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object v5, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$deleteTravel$1;->b:Ljava/lang/String;

    iput v6, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$deleteTravel$1;->c:I

    iput v4, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$deleteTravel$1;->d:I

    iput v2, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$deleteTravel$1;->e:I

    iput v3, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$deleteTravel$1;->h:I

    invoke-interface {p0, p2, p1, v0}, Lcom/vuitton/android/data/api/connectivity/WatchApiV2;->deleteTravel(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :goto_4
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_5
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_6

    goto :goto_6

    :cond_6
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_7

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_6
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-static {p0, v5}, Lcom/vuitton/android/data/exception/NetworkExceptionMapperKt;->a(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_7
    throw p0
.end method

.method public final c(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p1, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$getTravelList$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$getTravelList$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$getTravelList$1;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$getTravelList$1;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$getTravelList$1;

    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$getTravelList$1;-><init>(Lcom/vuitton/android/data/repository/TravelRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$getTravelList$1;->e:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$getTravelList$1;->g:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_2
    iget v2, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$getTravelList$1;->d:I

    iget v4, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$getTravelList$1;->c:I

    iget v6, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$getTravelList$1;->b:I

    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_2
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p1, p0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl;->b:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    const/4 v2, 0x0

    iput v2, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$getTravelList$1;->b:I

    iput v2, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$getTravelList$1;->c:I

    iput v2, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$getTravelList$1;->d:I

    iput v4, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$getTravelList$1;->g:I

    invoke-interface {p1, v0}, Lcom/vuitton/android/domain/repository/AuthTokenRepository;->c(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    goto :goto_2

    :cond_4
    move v4, v2

    move v6, v4

    :goto_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/String;

    new-instance v7, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$getTravelList$2$1;

    invoke-direct {v7, p0, p1, v5}, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$getTravelList$2$1;-><init>(Lcom/vuitton/android/data/repository/TravelRepositoryImpl;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput v6, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$getTravelList$1;->b:I

    iput v4, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$getTravelList$1;->c:I

    iput v2, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$getTravelList$1;->d:I

    iput v3, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$getTravelList$1;->g:I

    const-wide/16 p0, 0x2710

    invoke-static {p0, p1, v7, v0}, Lkotlinx/coroutines/TimeoutKt;->b(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    :goto_3
    check-cast p1, Ljava/util/List;

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :goto_4
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, p1

    :goto_5
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_6

    :cond_6
    instance-of p0, p1, Ljava/util/concurrent/CancellationException;

    if-nez p0, :cond_7

    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p0, p1

    :goto_6
    check-cast p0, Lkotlin/Result;

    iget-object p0, p0, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-static {p0, v5}, Lcom/vuitton/android/data/exception/NetworkExceptionMapperKt;->a(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_7
    throw p1
.end method

.method public final d(Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Travel;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p2, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$createTravel$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$createTravel$1;

    iget v1, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$createTravel$1;->i:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$createTravel$1;->i:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$createTravel$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$createTravel$1;-><init>(Lcom/vuitton/android/data/repository/TravelRepositoryImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$createTravel$1;->g:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$createTravel$1;->i:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$createTravel$1;->c:Lcom/vuitton/android/data/repository/TravelRepositoryImpl;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_2
    iget p1, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$createTravel$1;->f:I

    iget v2, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$createTravel$1;->e:I

    iget v4, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$createTravel$1;->d:I

    iget-object v6, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$createTravel$1;->b:Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Travel;

    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p2, p2, Lkotlin/Result;->b:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v8, v2

    move v2, p1

    move-object p1, v6

    move v6, v4

    move v4, v8

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :try_start_2
    sget-object p2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p2, p0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl;->b:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    iput-object p1, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$createTravel$1;->b:Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Travel;

    const/4 v2, 0x0

    iput v2, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$createTravel$1;->d:I

    iput v2, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$createTravel$1;->e:I

    iput v2, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$createTravel$1;->f:I

    iput v4, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$createTravel$1;->i:I

    invoke-interface {p2, v0}, Lcom/vuitton/android/domain/repository/AuthTokenRepository;->c(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto :goto_2

    :cond_4
    move v4, v2

    move v6, v4

    :goto_1
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Ljava/lang/String;

    iget-object v7, p0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl;->a:Lcom/vuitton/android/data/api/connectivity/WatchApiV2;

    invoke-static {p2}, Lcom/vuitton/android/data/repository/TokenExtKt;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lcom/vuitton/android/data/repository/TravelRepositoryImpl;->f(Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Travel;)Lcom/vuitton/android/data/dto/travel/TravelDto;

    move-result-object p1

    iput-object v5, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$createTravel$1;->b:Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Travel;

    iput-object p0, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$createTravel$1;->c:Lcom/vuitton/android/data/repository/TravelRepositoryImpl;

    iput v6, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$createTravel$1;->d:I

    iput v4, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$createTravel$1;->e:I

    iput v2, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$createTravel$1;->f:I

    iput v3, v0, Lcom/vuitton/android/data/repository/TravelRepositoryImpl$createTravel$1;->i:I

    invoke-interface {v7, p2, p1, v0}, Lcom/vuitton/android/data/api/connectivity/WatchApiV2;->createTravel(Ljava/lang/String;Lcom/vuitton/android/data/dto/travel/TravelDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    :goto_3
    check-cast p2, Lcom/vuitton/android/data/dto/travel/TravelDto;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/vuitton/android/data/repository/TravelRepositoryImpl;->e(Lcom/vuitton/android/data/dto/travel/TravelDto;)Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Travel;

    move-result-object p0

    if-eqz p0, :cond_6

    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    goto :goto_5

    :cond_6
    const-string p0, "Required value was null."

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_4
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_5
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_7

    goto :goto_6

    :cond_7
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_8

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_6
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-static {p0, v5}, Lcom/vuitton/android/data/exception/NetworkExceptionMapperKt;->a(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_8
    throw p0
.end method
