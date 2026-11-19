.class public abstract Lcom/vuitton/android/presentation/screen/connectivity/travel/MapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/connectivity/travel/MapperKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "presentation"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Lcom/vuitton/android/presentation/screen/connectivity/travel/TravelUiModel;)Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Travel;
    .locals 11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelUiModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelUiModel;

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Hotel;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelUiModel;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelUiModel;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelUiModel;->e:Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelPlaceUiModel;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/HotelPlace;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelPlaceUiModel;->b:Ljava/lang/Double;

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelPlaceUiModel;->c:Ljava/lang/Double;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelPlaceUiModel;->d:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelPlaceUiModel;->e:Ljava/lang/String;

    invoke-direct {v1, v5, v6, v7, v0}, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/HotelPlace;-><init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v5, v1

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelUiModel;->f:Ljava/util/Date;

    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelUiModel;->g:Ljava/util/Date;

    iget-object v8, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelUiModel;->h:Ljava/lang/String;

    invoke-direct/range {v2 .. v8}, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Hotel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/connectivity/travel/HotelPlace;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)V

    return-object v2

    :cond_1
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;

    if-eqz v0, :cond_4

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Flight;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;->d:Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;

    if-eqz v0, :cond_2

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/FlightAirport;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;->b:Ljava/lang/String;

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;->c:Ljava/lang/String;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;->d:Ljava/util/Date;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;->e:Ljava/lang/String;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;->f:Ljava/lang/String;

    invoke-direct/range {v4 .. v9}, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/FlightAirport;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v4, v1

    :goto_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;->e:Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;

    if-eqz v0, :cond_3

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/FlightAirport;

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;->b:Ljava/lang/String;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;->c:Ljava/lang/String;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;->d:Ljava/util/Date;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;->e:Ljava/lang/String;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;->f:Ljava/lang/String;

    invoke-direct/range {v5 .. v10}, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/FlightAirport;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v5, v1

    :goto_1
    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;->f:Ljava/lang/String;

    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;->g:Ljava/lang/String;

    invoke-direct/range {v2 .. v7}, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Flight;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/connectivity/travel/FlightAirport;Lcom/vuitton/foundation/model/domain/model/connectivity/travel/FlightAirport;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_4
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/TrainUiModel;

    if-eqz v0, :cond_7

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/TrainUiModel;

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/TrainUiModel;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/TrainUiModel;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/TrainUiModel;->e:Lcom/vuitton/android/presentation/screen/connectivity/travel/StationUiModel;

    if-eqz v0, :cond_5

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Station;

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/StationUiModel;->b:Ljava/lang/String;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/StationUiModel;->c:Ljava/lang/String;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/StationUiModel;->d:Ljava/lang/Double;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/StationUiModel;->e:Ljava/lang/Double;

    invoke-direct {v5, v6, v7, v8, v0}, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Station;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)V

    goto :goto_2

    :cond_5
    move-object v5, v1

    :goto_2
    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/TrainUiModel;->f:Ljava/util/Date;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/TrainUiModel;->g:Lcom/vuitton/android/presentation/screen/connectivity/travel/StationUiModel;

    if-eqz v0, :cond_6

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Station;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/StationUiModel;->b:Ljava/lang/String;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/StationUiModel;->c:Ljava/lang/String;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/StationUiModel;->d:Ljava/lang/Double;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/StationUiModel;->e:Ljava/lang/Double;

    invoke-direct {v1, v7, v8, v9, v0}, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Station;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)V

    :cond_6
    move-object v7, v1

    iget-object v8, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/TrainUiModel;->h:Ljava/util/Date;

    iget-object v9, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/TrainUiModel;->i:Ljava/lang/String;

    iget-object v10, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/TrainUiModel;->j:Ljava/lang/String;

    invoke-direct/range {v2 .. v10}, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Station;Ljava/util/Date;Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Station;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_7
    invoke-static {}, Lv40;->g()V

    return-object v1
.end method

.method public static final b(Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Travel;)Lcom/vuitton/android/presentation/screen/connectivity/travel/TravelUiModel;
    .locals 12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Travel;->b:Lcom/vuitton/foundation/model/domain/model/connectivity/travel/TravelType;

    sget-object v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/MapperKt$WhenMappings;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;

    new-instance v3, Lcom/vuitton/android/presentation/screen/connectivity/travel/TrainUiModel;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;->e:Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Station;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/travel/StationUiModel;

    iget-object v6, v0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Station;->a:Ljava/lang/String;

    iget-object v7, v0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Station;->b:Ljava/lang/String;

    iget-object v8, v0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Station;->c:Ljava/lang/Double;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Station;->d:Ljava/lang/Double;

    invoke-direct {v1, v6, v7, v8, v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/StationUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)V

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object v6, v2

    :goto_0
    iget-object v7, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;->f:Ljava/util/Date;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;->g:Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Station;

    if-eqz v0, :cond_1

    new-instance v2, Lcom/vuitton/android/presentation/screen/connectivity/travel/StationUiModel;

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Station;->a:Ljava/lang/String;

    iget-object v8, v0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Station;->b:Ljava/lang/String;

    iget-object v9, v0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Station;->c:Ljava/lang/Double;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Station;->d:Ljava/lang/Double;

    invoke-direct {v2, v1, v8, v9, v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/StationUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;)V

    :cond_1
    move-object v8, v2

    iget-object v9, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;->h:Ljava/util/Date;

    iget-object v10, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;->i:Ljava/lang/String;

    iget-object v11, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Train;->j:Ljava/lang/String;

    invoke-direct/range {v3 .. v11}, Lcom/vuitton/android/presentation/screen/connectivity/travel/TrainUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/connectivity/travel/StationUiModel;Ljava/util/Date;Lcom/vuitton/android/presentation/screen/connectivity/travel/StationUiModel;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_2
    invoke-static {}, Lv40;->g()V

    return-object v2

    :cond_3
    check-cast p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Flight;

    new-instance v3, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Flight;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Flight;->d:Lcom/vuitton/foundation/model/domain/model/connectivity/travel/FlightAirport;

    if-eqz v0, :cond_4

    new-instance v5, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;

    iget-object v6, v0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/FlightAirport;->a:Ljava/lang/String;

    iget-object v7, v0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/FlightAirport;->b:Ljava/lang/String;

    iget-object v8, v0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/FlightAirport;->c:Ljava/util/Date;

    iget-object v9, v0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/FlightAirport;->d:Ljava/lang/String;

    iget-object v10, v0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/FlightAirport;->e:Ljava/lang/String;

    invoke-direct/range {v5 .. v10}, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v5, v2

    :goto_1
    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Flight;->e:Lcom/vuitton/foundation/model/domain/model/connectivity/travel/FlightAirport;

    if-eqz v0, :cond_5

    new-instance v6, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;

    iget-object v7, v0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/FlightAirport;->a:Ljava/lang/String;

    iget-object v8, v0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/FlightAirport;->b:Ljava/lang/String;

    iget-object v9, v0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/FlightAirport;->c:Ljava/util/Date;

    iget-object v10, v0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/FlightAirport;->d:Ljava/lang/String;

    iget-object v11, v0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/FlightAirport;->e:Ljava/lang/String;

    invoke-direct/range {v6 .. v11}, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move-object v6, v2

    :goto_2
    iget-object v7, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Flight;->f:Ljava/lang/String;

    iget-object v8, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Flight;->g:Ljava/lang/String;

    invoke-direct/range {v3 .. v8}, Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightAirportUiModel;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_6
    check-cast p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Hotel;

    new-instance v3, Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelUiModel;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Hotel;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Hotel;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Hotel;->e:Lcom/vuitton/foundation/model/domain/model/connectivity/travel/HotelPlace;

    if-eqz v0, :cond_7

    new-instance v2, Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelPlaceUiModel;

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/HotelPlace;->a:Ljava/lang/Double;

    iget-object v6, v0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/HotelPlace;->b:Ljava/lang/Double;

    iget-object v7, v0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/HotelPlace;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/HotelPlace;->d:Ljava/lang/String;

    invoke-direct {v2, v1, v6, v7, v0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelPlaceUiModel;-><init>(Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    move-object v6, v2

    iget-object v7, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Hotel;->f:Ljava/util/Date;

    iget-object v8, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Hotel;->g:Ljava/util/Date;

    iget-object v9, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Hotel;->h:Ljava/lang/String;

    invoke-direct/range {v3 .. v9}, Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelPlaceUiModel;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)V

    return-object v3
.end method
