.class public final Lcoil3/memory/RealStrongMemoryCache$cache$1;
.super Lcoil3/util/LruCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil3/memory/RealStrongMemoryCache;-><init>(JLcoil3/memory/WeakMemoryCache;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcoil3/util/LruCache<",
        "Lcoil3/memory/MemoryCache$Key;",
        "Lcoil3/memory/RealStrongMemoryCache$InternalValue;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001\u00a8\u0006\u0004"
    }
    d2 = {
        "coil3/memory/RealStrongMemoryCache$cache$1",
        "Lcoil3/util/LruCache;",
        "Lcoil3/memory/MemoryCache$Key;",
        "Lcoil3/memory/RealStrongMemoryCache$InternalValue;",
        "io.coil-kt.coil3:coil-core"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic d:Lcoil3/memory/RealStrongMemoryCache;


# direct methods
.method public constructor <init>(Lcoil3/memory/RealStrongMemoryCache;J)V
    .locals 0

    iput-object p1, p0, Lcoil3/memory/RealStrongMemoryCache$cache$1;->d:Lcoil3/memory/RealStrongMemoryCache;

    invoke-direct {p0, p2, p3}, Lcoil3/util/LruCache;-><init>(J)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    move-object v1, p1

    check-cast v1, Lcoil3/memory/MemoryCache$Key;

    check-cast p2, Lcoil3/memory/RealStrongMemoryCache$InternalValue;

    iget-object p0, p0, Lcoil3/memory/RealStrongMemoryCache$cache$1;->d:Lcoil3/memory/RealStrongMemoryCache;

    iget-object v0, p0, Lcoil3/memory/RealStrongMemoryCache;->b:Lcoil3/memory/WeakMemoryCache;

    iget-object v2, p2, Lcoil3/memory/RealStrongMemoryCache$InternalValue;->a:Lcoil3/Image;

    iget-object v3, p2, Lcoil3/memory/RealStrongMemoryCache$InternalValue;->b:Ljava/util/Map;

    iget-wide v4, p2, Lcoil3/memory/RealStrongMemoryCache$InternalValue;->c:J

    invoke-interface/range {v0 .. v5}, Lcoil3/memory/WeakMemoryCache;->f(Lcoil3/memory/MemoryCache$Key;Lcoil3/Image;Ljava/util/Map;J)V

    return-void
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Object;)J
    .locals 0

    check-cast p1, Lcoil3/memory/MemoryCache$Key;

    check-cast p2, Lcoil3/memory/RealStrongMemoryCache$InternalValue;

    iget-wide p0, p2, Lcoil3/memory/RealStrongMemoryCache$InternalValue;->c:J

    return-wide p0
.end method
