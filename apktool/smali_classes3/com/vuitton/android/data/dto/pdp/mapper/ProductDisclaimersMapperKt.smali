.class public abstract Lcom/vuitton/android/data/dto/pdp/mapper/ProductDisclaimersMapperKt;
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
.method public static final a(Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;)Lcom/vuitton/foundation/model/domain/model/product/ProductDisclaimer;
    .locals 3

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/product/ProductDisclaimer;

    iget-object v2, p0, Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;->b:Ljava/lang/String;

    invoke-direct {v1, v0, v2, p0}, Lcom/vuitton/foundation/model/domain/model/product/ProductDisclaimer;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
