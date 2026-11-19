.class public abstract Lcom/vuitton/android/data/dto/product/reinsurance/mapper/ReinsuranceErrorMapperKt;
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
.method public static final a(Lcom/vuitton/android/data/dto/product/reinsurance/error/ErrorResponseDto;)Lcom/vuitton/foundation/model/domain/model/product/ReinsuranceErrorException;
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/product/reinsurance/error/ErrorResponseDto;->d:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/product/reinsurance/error/ErrorResponseDto;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/android/data/dto/product/reinsurance/error/ErrorResponseDto;->f:Lcom/vuitton/android/data/dto/product/reinsurance/error/ErrorDetailsDto;

    const/4 v3, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x194

    if-ne v4, v5, :cond_3

    new-instance p0, Lcom/vuitton/foundation/model/domain/model/product/ReinsuranceErrorException$NotFound;

    if-nez v1, :cond_2

    if-eqz v2, :cond_1

    iget-object v0, v2, Lcom/vuitton/android/data/dto/product/reinsurance/error/ErrorDetailsDto;->b:Ljava/lang/String;

    move-object v1, v0

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    if-nez v1, :cond_2

    const-string v1, "Not found"

    :cond_2
    invoke-direct {p0, v1}, Lcom/vuitton/foundation/model/domain/model/product/ReinsuranceErrorException$NotFound;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_3
    :goto_1
    new-instance v4, Lkotlin/ranges/IntRange;

    const/16 v5, 0x1f4

    const/16 v6, 0x1f9

    invoke-direct {v4, v5, v6}, Lkotlin/ranges/IntRange;-><init>(II)V

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Lkotlin/ranges/IntRange;->m(I)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/product/ReinsuranceErrorException$ServerErrorException;

    if-nez v1, :cond_5

    if-eqz v2, :cond_4

    iget-object v1, v2, Lcom/vuitton/android/data/dto/product/reinsurance/error/ErrorDetailsDto;->b:Ljava/lang/String;

    goto :goto_2

    :cond_4
    move-object v1, v3

    :goto_2
    if-nez v1, :cond_5

    const-string v1, "Server error"

    :cond_5
    iget-object p0, p0, Lcom/vuitton/android/data/dto/product/reinsurance/error/ErrorResponseDto;->d:Ljava/lang/Integer;

    if-eqz v2, :cond_6

    iget-object v3, v2, Lcom/vuitton/android/data/dto/product/reinsurance/error/ErrorDetailsDto;->a:Ljava/lang/String;

    :cond_6
    invoke-direct {v0, v1, p0, v3}, Lcom/vuitton/foundation/model/domain/model/product/ReinsuranceErrorException$ServerErrorException;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-object v0

    :cond_7
    new-instance p0, Lcom/vuitton/foundation/model/domain/model/product/ReinsuranceErrorException$UnknownErrorException;

    if-nez v1, :cond_9

    if-eqz v2, :cond_8

    iget-object v0, v2, Lcom/vuitton/android/data/dto/product/reinsurance/error/ErrorDetailsDto;->b:Ljava/lang/String;

    move-object v1, v0

    goto :goto_3

    :cond_8
    move-object v1, v3

    :goto_3
    if-nez v1, :cond_9

    const-string v1, "Unknown error"

    :cond_9
    invoke-direct {p0, v1, v3}, Lcom/vuitton/foundation/model/domain/model/product/ReinsuranceErrorException$UnknownErrorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p0
.end method
