.class public abstract Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AutocompleteAddressResultUiModelKt;
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
.method public static final a(Lcom/vuitton/foundation/model/domain/model/account/address/AddressDetails;)Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AutocompleteAddressResultUiModel;
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AutocompleteAddressResultUiModel;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/account/address/AddressDetails;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/account/address/AddressDetails;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/account/address/AddressDetails;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/account/address/AddressDetails;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/vuitton/foundation/model/domain/model/account/address/AddressDetails;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/vuitton/foundation/model/domain/model/account/address/AddressDetails;->f:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AutocompleteAddressResultUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
