.class public abstract Lcom/vuitton/android/data/dto/wishlist/bff/mapper/WishlistMapperKt;
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
.method public static final a(Lkotlinx/serialization/json/Json;Ljava/lang/Throwable;)Lcom/vuitton/foundation/model/domain/error/wishlist/WishlistError;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/vuitton/foundation/model/domain/error/wishlist/WishlistError;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/vuitton/foundation/model/domain/error/wishlist/WishlistError;

    return-object p1

    :cond_0
    instance-of v0, p1, Lretrofit2/HttpException;

    const-string v1, ""

    if-eqz v0, :cond_e

    check-cast p1, Lretrofit2/HttpException;

    iget-object p1, p1, Lretrofit2/HttpException;->d:Lretrofit2/Response;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p1, Lretrofit2/Response;->c:Lokhttp3/ResponseBody;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_6

    :try_start_0
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object p0, v0

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/vuitton/android/data/dto/wishlist/bff/WishlistErrorsAtgDto;->Companion:Lcom/vuitton/android/data/dto/wishlist/bff/WishlistErrorsAtgDto$Companion;

    invoke-virtual {v2}, Lcom/vuitton/android/data/dto/wishlist/bff/WishlistErrorsAtgDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {p0, v2, p1}, Lkotlinx/serialization/json/Json;->b(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    instance-of p1, p0, Ljava/util/concurrent/CancellationException;

    if-nez p1, :cond_5

    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, p1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p1, p0

    :goto_3
    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of p1, p0, Lkotlin/Result$Failure;

    if-eqz p1, :cond_4

    move-object p0, v0

    :cond_4
    check-cast p0, Lcom/vuitton/android/data/dto/wishlist/bff/WishlistErrorsAtgDto;

    if-eqz p0, :cond_6

    iget-object p0, p0, Lcom/vuitton/android/data/dto/wishlist/bff/WishlistErrorsAtgDto;->a:Ljava/util/List;

    if-eqz p0, :cond_6

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/dto/wishlist/bff/WishlistErrorAtgDto;

    goto :goto_4

    :cond_5
    throw p0

    :cond_6
    move-object p0, v0

    :goto_4
    if-eqz p0, :cond_7

    iget-object p1, p0, Lcom/vuitton/android/data/dto/wishlist/bff/WishlistErrorAtgDto;->b:Ljava/lang/String;

    goto :goto_5

    :cond_7
    move-object p1, v0

    :goto_5
    const-string v2, "skuAlreadyInWishlistError"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    new-instance p1, Lcom/vuitton/foundation/model/domain/error/wishlist/WishlistError$AlreadyInWishlist;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/wishlist/bff/WishlistErrorAtgDto;->a:Ljava/lang/String;

    if-nez p0, :cond_8

    goto :goto_6

    :cond_8
    move-object v1, p0

    :goto_6
    invoke-direct {p1, v1}, Lcom/vuitton/foundation/model/domain/error/wishlist/WishlistError$AlreadyInWishlist;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :cond_9
    const-string v2, "maxQuantityError"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    new-instance p1, Lcom/vuitton/foundation/model/domain/error/wishlist/WishlistError$MaxQuantityReached;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/wishlist/bff/WishlistErrorAtgDto;->a:Ljava/lang/String;

    if-nez p0, :cond_a

    goto :goto_7

    :cond_a
    move-object v1, p0

    :goto_7
    invoke-direct {p1, v1}, Lcom/vuitton/foundation/model/domain/error/wishlist/WishlistError$MaxQuantityReached;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :cond_b
    new-instance p1, Lcom/vuitton/foundation/model/domain/error/wishlist/WishlistError$Generic;

    if-eqz p0, :cond_c

    iget-object v0, p0, Lcom/vuitton/android/data/dto/wishlist/bff/WishlistErrorAtgDto;->a:Ljava/lang/String;

    :cond_c
    if-nez v0, :cond_d

    goto :goto_8

    :cond_d
    move-object v1, v0

    :goto_8
    invoke-direct {p1, v1}, Lcom/vuitton/foundation/model/domain/error/wishlist/WishlistError$Generic;-><init>(Ljava/lang/String;)V

    :goto_9
    return-object p1

    :cond_e
    new-instance p0, Lcom/vuitton/foundation/model/domain/error/wishlist/WishlistError$Generic;

    invoke-direct {p0, v1}, Lcom/vuitton/foundation/model/domain/error/wishlist/WishlistError$Generic;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public static final b(Lcom/vuitton/android/data/dto/wishlist/bff/WishlistDto;)Lcom/vuitton/foundation/model/domain/model/wishlist/Wishlist;
    .locals 13

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/wishlist/bff/WishlistDto;->a:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    check-cast v0, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/data/dto/wishlist/bff/WishlistItemDto;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/wishlist/WishlistItemId;->b:Lcom/vuitton/foundation/model/domain/model/wishlist/WishlistItemId$Companion;

    iget-object v5, v3, Lcom/vuitton/android/data/dto/wishlist/bff/WishlistItemDto;->a:Ljava/lang/String;

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    move-object v5, v1

    :goto_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v5, :cond_1

    sget-object v5, Lcom/vuitton/foundation/model/domain/model/wishlist/WishlistItemId;->c:Ljava/lang/String;

    :cond_1
    move-object v7, v5

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    iget-object v5, v3, Lcom/vuitton/android/data/dto/wishlist/bff/WishlistItemDto;->b:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v5, :cond_2

    sget-object v5, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->b:Ljava/lang/String;

    :cond_2
    move-object v8, v5

    iget-object v4, v3, Lcom/vuitton/android/data/dto/wishlist/bff/WishlistItemDto;->d:Ljava/lang/String;

    const-string v5, ""

    if-nez v4, :cond_3

    move-object v9, v5

    goto :goto_2

    :cond_3
    move-object v9, v4

    :goto_2
    iget-object v4, v3, Lcom/vuitton/android/data/dto/wishlist/bff/WishlistItemDto;->c:Ljava/lang/String;

    if-nez v4, :cond_4

    move-object v10, v5

    goto :goto_3

    :cond_4
    move-object v10, v4

    :goto_3
    iget-object v3, v3, Lcom/vuitton/android/data/dto/wishlist/bff/WishlistItemDto;->e:Ljava/lang/String;

    if-nez v3, :cond_5

    move-object v11, v5

    goto :goto_4

    :cond_5
    move-object v11, v3

    :goto_4
    new-instance v6, Lcom/vuitton/foundation/model/domain/model/wishlist/WishlistItem;

    const/4 v12, 0x0

    invoke-direct/range {v6 .. v12}, Lcom/vuitton/foundation/model/domain/model/wishlist/WishlistItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    sget-object v2, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_7
    iget-object p0, p0, Lcom/vuitton/android/data/dto/wishlist/bff/WishlistDto;->b:Ljava/lang/String;

    if-eqz p0, :cond_8

    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_8
    new-instance p0, Lcom/vuitton/foundation/model/domain/model/wishlist/Wishlist;

    invoke-direct {p0, v2, v1}, Lcom/vuitton/foundation/model/domain/model/wishlist/Wishlist;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object p0
.end method
