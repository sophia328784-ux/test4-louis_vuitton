.class public abstract Lcom/vuitton/android/data/dto/address/mapper/AddressDetailMapperKt;
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
.method public static final a(Lcom/vuitton/android/data/dto/address/AddressDetailDto;)Lcom/vuitton/foundation/model/domain/model/account/address/AddressDetails;
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/account/address/AddressDetails;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/address/AddressDetailDto;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/android/data/dto/address/AddressDetailDto;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/android/data/dto/address/AddressDetailDto;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/address/AddressDetailDto;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/vuitton/android/data/dto/address/AddressDetailDto;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/vuitton/android/data/dto/address/AddressDetailDto;->f:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/foundation/model/domain/model/account/address/AddressDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
