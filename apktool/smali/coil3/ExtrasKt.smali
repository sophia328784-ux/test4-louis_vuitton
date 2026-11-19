.class public abstract Lcoil3/ExtrasKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "io.coil-kt.coil3:coil-core"
    }
    k = 0x2
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Lcoil3/request/ImageRequest;Lcoil3/Extras$Key;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcoil3/request/ImageRequest;->x:Lcoil3/Extras;

    iget-object v0, v0, Lcoil3/Extras;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcoil3/request/ImageRequest;->z:Lcoil3/request/ImageRequest$Defaults;

    iget-object p0, p0, Lcoil3/request/ImageRequest$Defaults;->n:Lcoil3/Extras;

    iget-object p0, p0, Lcoil3/Extras;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    iget-object p0, p1, Lcoil3/Extras$Key;->a:Ljava/lang/Object;

    :cond_0
    return-object p0

    :cond_1
    return-object v0
.end method

.method public static final b(Lcoil3/request/Options;Lcoil3/Extras$Key;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcoil3/request/Options;->j:Lcoil3/Extras;

    iget-object p0, p0, Lcoil3/Extras;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    iget-object p0, p1, Lcoil3/Extras$Key;->a:Ljava/lang/Object;

    :cond_0
    return-object p0
.end method
