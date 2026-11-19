.class public final Lcoil3/compose/AsyncImageModelEqualityDelegate$Companion$Default$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoil3/compose/AsyncImageModelEqualityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcoil3/compose/AsyncImageModelEqualityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "coil3/compose/AsyncImageModelEqualityDelegate$Companion$Default$1",
        "Lcoil3/compose/AsyncImageModelEqualityDelegate;",
        "io.coil-kt.coil3:coil-compose-core"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 2

    instance-of p0, p1, Lcoil3/request/ImageRequest;

    const/4 v0, 0x0

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0

    :cond_0
    return v0

    :cond_1
    check-cast p1, Lcoil3/request/ImageRequest;

    iget-object p0, p1, Lcoil3/request/ImageRequest;->a:Landroid/content/Context;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    mul-int/lit8 p0, p0, 0x1f

    iget-object v1, p1, Lcoil3/request/ImageRequest;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, p0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p1, Lcoil3/request/ImageRequest;->e:Ljava/lang/String;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_2
    move p0, v0

    :goto_0
    add-int/2addr v1, p0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p1, Lcoil3/request/ImageRequest;->f:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    mul-int/lit8 p0, p0, 0x1f

    iget-object v1, p1, Lcoil3/request/ImageRequest;->g:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :cond_3
    add-int/2addr p0, v0

    mul-int/lit8 p0, p0, 0x1f

    iget-object v0, p1, Lcoil3/request/ImageRequest;->u:Lcoil3/size/SizeResolver;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, p0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p1, Lcoil3/request/ImageRequest;->v:Lcoil3/size/Scale;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    mul-int/lit8 p0, p0, 0x1f

    iget-object p1, p1, Lcoil3/request/ImageRequest;->w:Lcoil3/size/Precision;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    add-int/2addr p1, p0

    return p1
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p2, :cond_0

    return v0

    :cond_0
    instance-of p0, p1, Lcoil3/request/ImageRequest;

    if-eqz p0, :cond_3

    instance-of p0, p2, Lcoil3/request/ImageRequest;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcoil3/request/ImageRequest;

    iget-object p0, p1, Lcoil3/request/ImageRequest;->a:Landroid/content/Context;

    check-cast p2, Lcoil3/request/ImageRequest;

    iget-object v1, p2, Lcoil3/request/ImageRequest;->a:Landroid/content/Context;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, p1, Lcoil3/request/ImageRequest;->b:Ljava/lang/Object;

    iget-object v1, p2, Lcoil3/request/ImageRequest;->b:Ljava/lang/Object;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, p1, Lcoil3/request/ImageRequest;->e:Ljava/lang/String;

    iget-object v1, p2, Lcoil3/request/ImageRequest;->e:Ljava/lang/String;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, p1, Lcoil3/request/ImageRequest;->f:Ljava/util/Map;

    iget-object v1, p2, Lcoil3/request/ImageRequest;->f:Ljava/util/Map;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, p1, Lcoil3/request/ImageRequest;->g:Ljava/lang/String;

    iget-object v1, p2, Lcoil3/request/ImageRequest;->g:Ljava/lang/String;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, p1, Lcoil3/request/ImageRequest;->u:Lcoil3/size/SizeResolver;

    iget-object v1, p2, Lcoil3/request/ImageRequest;->u:Lcoil3/size/SizeResolver;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, p1, Lcoil3/request/ImageRequest;->v:Lcoil3/size/Scale;

    iget-object v1, p2, Lcoil3/request/ImageRequest;->v:Lcoil3/size/Scale;

    if-ne p0, v1, :cond_2

    iget-object p0, p1, Lcoil3/request/ImageRequest;->w:Lcoil3/size/Precision;

    iget-object p1, p2, Lcoil3/request/ImageRequest;->w:Lcoil3/size/Precision;

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "AsyncImageModelEqualityDelegate.Default"

    return-object p0
.end method
