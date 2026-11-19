.class public abstract Lcom/vuitton/android/presentation/model/location/GeocodingMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
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
.method public static final a(Lcom/vuitton/foundation/model/domain/model/product/availability/PlaceGeocoding;)Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;
    .locals 14

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/product/availability/PlaceGeocoding;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/vuitton/foundation/model/domain/model/product/availability/PlaceGeocoding;->b:D

    iget-wide v4, p0, Lcom/vuitton/foundation/model/domain/model/product/availability/PlaceGeocoding;->c:D

    iget-wide v6, p0, Lcom/vuitton/foundation/model/domain/model/product/availability/PlaceGeocoding;->d:D

    iget-wide v8, p0, Lcom/vuitton/foundation/model/domain/model/product/availability/PlaceGeocoding;->e:D

    iget-wide v10, p0, Lcom/vuitton/foundation/model/domain/model/product/availability/PlaceGeocoding;->f:D

    iget-wide v12, p0, Lcom/vuitton/foundation/model/domain/model/product/availability/PlaceGeocoding;->g:D

    invoke-direct/range {v0 .. v13}, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;-><init>(Ljava/lang/String;DDDDDD)V

    return-object v0
.end method
