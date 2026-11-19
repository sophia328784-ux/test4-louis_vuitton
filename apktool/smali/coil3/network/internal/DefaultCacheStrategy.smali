.class public final Lcoil3/network/internal/DefaultCacheStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoil3/network/CacheStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil3/network/internal/DefaultCacheStrategy$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcoil3/network/internal/DefaultCacheStrategy;",
        "Lcoil3/network/CacheStrategy;",
        "<init>",
        "()V",
        "Companion",
        "io.coil-kt.coil3:coil-network-core"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final b:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcoil3/network/internal/DefaultCacheStrategy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcoil3/network/internal/DefaultCacheStrategy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v0, 0x12c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v0, 0x12d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v0, 0x194

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v0, 0x195

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v0, 0x19a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v0, 0x19e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v0, 0x1f5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->Z([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcoil3/network/internal/DefaultCacheStrategy;->b:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcoil3/network/NetworkResponse;)Lcoil3/network/CacheStrategy$ReadResult;
    .locals 0

    new-instance p0, Lcoil3/network/CacheStrategy$ReadResult;

    invoke-direct {p0, p1}, Lcoil3/network/CacheStrategy$ReadResult;-><init>(Lcoil3/network/NetworkResponse;)V

    return-object p0
.end method

.method public final b(Lcoil3/network/NetworkResponse;Lcoil3/network/NetworkResponse;)Lcoil3/network/CacheStrategy$WriteResult;
    .locals 12

    iget p0, p2, Lcoil3/network/NetworkResponse;->a:I

    const/16 v0, 0x130

    if-ne p0, v0, :cond_1

    if-eqz p1, :cond_1

    iget-object p0, p1, Lcoil3/network/NetworkResponse;->d:Lcoil3/network/NetworkHeaders;

    iget-object p1, p2, Lcoil3/network/NetworkResponse;->d:Lcoil3/network/NetworkHeaders;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcoil3/network/NetworkHeaders$Builder;

    invoke-direct {v0, p0}, Lcoil3/network/NetworkHeaders$Builder;-><init>(Lcoil3/network/NetworkHeaders;)V

    iget-object p0, p1, Lcoil3/network/NetworkHeaders;->a:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->z0(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v2, v0, Lcoil3/network/NetworkHeaders$Builder;->a:Ljava/util/LinkedHashMap;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcoil3/network/NetworkHeaders$Builder;->b()Lcoil3/network/NetworkHeaders;

    move-result-object v9

    new-instance p0, Lcoil3/network/CacheStrategy$WriteResult;

    iget v4, p2, Lcoil3/network/NetworkResponse;->a:I

    iget-wide v5, p2, Lcoil3/network/NetworkResponse;->b:J

    iget-wide v7, p2, Lcoil3/network/NetworkResponse;->c:J

    iget-object v11, p2, Lcoil3/network/NetworkResponse;->f:Ljava/lang/Object;

    new-instance v3, Lcoil3/network/NetworkResponse;

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v11}, Lcoil3/network/NetworkResponse;-><init>(IJJLcoil3/network/NetworkHeaders;Lcoil3/network/NetworkResponseBody;Ljava/lang/Object;)V

    invoke-direct {p0, v3}, Lcoil3/network/CacheStrategy$WriteResult;-><init>(Lcoil3/network/NetworkResponse;)V

    return-object p0

    :cond_1
    const/16 p1, 0xc8

    if-gt p1, p0, :cond_2

    const/16 p1, 0x12c

    if-ge p0, p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    sget-object p0, Lcoil3/network/internal/DefaultCacheStrategy;->b:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :goto_1
    new-instance p0, Lcoil3/network/CacheStrategy$WriteResult;

    invoke-direct {p0, p2}, Lcoil3/network/CacheStrategy$WriteResult;-><init>(Lcoil3/network/NetworkResponse;)V

    return-object p0

    :cond_3
    sget-object p0, Lcoil3/network/CacheStrategy$WriteResult;->b:Lcoil3/network/CacheStrategy$WriteResult;

    return-object p0
.end method
