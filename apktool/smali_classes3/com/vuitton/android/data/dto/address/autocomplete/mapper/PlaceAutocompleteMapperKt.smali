.class public abstract Lcom/vuitton/android/data/dto/address/autocomplete/mapper/PlaceAutocompleteMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "data"
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
.method public static final a(Lcom/vuitton/android/data/dto/address/autocomplete/PlaceAutocompleteDto;)Lcom/vuitton/foundation/model/domain/model/place/PlaceAutocomplete;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/place/PlaceAutocomplete;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/address/autocomplete/PlaceAutocompleteDto;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/android/data/dto/address/autocomplete/PlaceAutocompleteDto;->b:Ljava/lang/String;

    const-string v3, ""

    if-nez v2, :cond_0

    move-object v2, v3

    :cond_0
    iget-object v4, p0, Lcom/vuitton/android/data/dto/address/autocomplete/PlaceAutocompleteDto;->c:Ljava/lang/String;

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v4

    :goto_0
    iget-object p0, p0, Lcom/vuitton/android/data/dto/address/autocomplete/PlaceAutocompleteDto;->d:Lcom/vuitton/android/data/dto/address/AddressDetailDto;

    if-eqz p0, :cond_2

    invoke-static {p0}, Lcom/vuitton/android/data/dto/address/mapper/AddressDetailMapperKt;->a(Lcom/vuitton/android/data/dto/address/AddressDetailDto;)Lcom/vuitton/foundation/model/domain/model/account/address/AddressDetails;

    move-result-object p0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/vuitton/foundation/model/domain/model/place/PlaceAutocomplete;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/account/address/AddressDetails;)V

    return-object v0
.end method
