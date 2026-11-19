.class public final Lcoil3/memory/RealStrongMemoryCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcoil3/memory/StrongMemoryCache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil3/memory/RealStrongMemoryCache$InternalValue;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001:\u0001\u0008B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcoil3/memory/RealStrongMemoryCache;",
        "Lcoil3/memory/StrongMemoryCache;",
        "",
        "initialMaxSize",
        "Lcoil3/memory/WeakMemoryCache;",
        "weakMemoryCache",
        "<init>",
        "(JLcoil3/memory/WeakMemoryCache;)V",
        "InternalValue",
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
.field public final a:J

.field public final b:Lcoil3/memory/WeakMemoryCache;

.field public final c:Lcoil3/memory/RealStrongMemoryCache$cache$1;


# direct methods
.method public constructor <init>(JLcoil3/memory/WeakMemoryCache;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcoil3/memory/RealStrongMemoryCache;->a:J

    iput-object p3, p0, Lcoil3/memory/RealStrongMemoryCache;->b:Lcoil3/memory/WeakMemoryCache;

    new-instance p3, Lcoil3/memory/RealStrongMemoryCache$cache$1;

    invoke-direct {p3, p0, p1, p2}, Lcoil3/memory/RealStrongMemoryCache$cache$1;-><init>(Lcoil3/memory/RealStrongMemoryCache;J)V

    iput-object p3, p0, Lcoil3/memory/RealStrongMemoryCache;->c:Lcoil3/memory/RealStrongMemoryCache$cache$1;

    return-void
.end method


# virtual methods
.method public final a(Lcoil3/memory/MemoryCache$Key;)Lcoil3/memory/MemoryCache$Value;
    .locals 1

    iget-object p0, p0, Lcoil3/memory/RealStrongMemoryCache;->c:Lcoil3/memory/RealStrongMemoryCache$cache$1;

    iget-object p0, p0, Lcoil3/util/LruCache;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcoil3/memory/RealStrongMemoryCache$InternalValue;

    if-eqz p0, :cond_0

    new-instance p1, Lcoil3/memory/MemoryCache$Value;

    iget-object v0, p0, Lcoil3/memory/RealStrongMemoryCache$InternalValue;->a:Lcoil3/Image;

    iget-object p0, p0, Lcoil3/memory/RealStrongMemoryCache$InternalValue;->b:Ljava/util/Map;

    invoke-direct {p1, v0, p0}, Lcoil3/memory/MemoryCache$Value;-><init>(Lcoil3/Image;Ljava/util/Map;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final b(J)V
    .locals 0

    iget-object p0, p0, Lcoil3/memory/RealStrongMemoryCache;->c:Lcoil3/memory/RealStrongMemoryCache$cache$1;

    iput-wide p1, p0, Lcoil3/util/LruCache;->b:J

    invoke-virtual {p0, p1, p2}, Lcoil3/util/LruCache;->e(J)V

    return-void
.end method

.method public final c(Lcoil3/memory/MemoryCache$Key;)Z
    .locals 5

    iget-object p0, p0, Lcoil3/memory/RealStrongMemoryCache;->c:Lcoil3/memory/RealStrongMemoryCache$cache$1;

    iget-object v0, p0, Lcoil3/util/LruCache;->a:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcoil3/util/LruCache;->b()J

    move-result-wide v1

    invoke-virtual {p0, p1, v0}, Lcoil3/util/LruCache;->c(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcoil3/util/LruCache;->c:J

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcoil3/memory/RealStrongMemoryCache$cache$1;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final clear()V
    .locals 2

    iget-object p0, p0, Lcoil3/memory/RealStrongMemoryCache;->c:Lcoil3/memory/RealStrongMemoryCache$cache$1;

    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcoil3/util/LruCache;->e(J)V

    return-void
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Lcoil3/memory/RealStrongMemoryCache;->a:J

    return-wide v0
.end method

.method public final e()J
    .locals 2

    iget-object p0, p0, Lcoil3/memory/RealStrongMemoryCache;->c:Lcoil3/memory/RealStrongMemoryCache$cache$1;

    iget-wide v0, p0, Lcoil3/util/LruCache;->b:J

    return-wide v0
.end method

.method public final f(Lcoil3/memory/MemoryCache$Key;Lcoil3/Image;Ljava/util/Map;J)V
    .locals 6

    iget-object v0, p0, Lcoil3/memory/RealStrongMemoryCache;->c:Lcoil3/memory/RealStrongMemoryCache$cache$1;

    iget-wide v1, v0, Lcoil3/util/LruCache;->b:J

    iget-object v3, v0, Lcoil3/util/LruCache;->a:Ljava/util/LinkedHashMap;

    cmp-long v1, p4, v1

    if-gtz v1, :cond_1

    new-instance p0, Lcoil3/memory/RealStrongMemoryCache$InternalValue;

    invoke-direct {p0, p2, p3, p4, p5}, Lcoil3/memory/RealStrongMemoryCache$InternalValue;-><init>(Lcoil3/Image;Ljava/util/Map;J)V

    invoke-interface {v3, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0}, Lcoil3/util/LruCache;->b()J

    move-result-wide p3

    invoke-virtual {v0, p1, p0}, Lcoil3/util/LruCache;->c(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v1

    add-long/2addr v1, p3

    iput-wide v1, v0, Lcoil3/util/LruCache;->c:J

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lcoil3/util/LruCache;->b()J

    move-result-wide p3

    invoke-virtual {v0, p1, p2}, Lcoil3/util/LruCache;->c(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v1

    sub-long/2addr p3, v1

    iput-wide p3, v0, Lcoil3/util/LruCache;->c:J

    invoke-virtual {v0, p1, p2, p0}, Lcoil3/memory/RealStrongMemoryCache$cache$1;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-wide p0, v0, Lcoil3/util/LruCache;->b:J

    invoke-virtual {v0, p0, p1}, Lcoil3/util/LruCache;->e(J)V

    return-void

    :cond_1
    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcoil3/util/LruCache;->b()J

    move-result-wide v2

    invoke-virtual {v0, p1, v1}, Lcoil3/util/LruCache;->c(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcoil3/util/LruCache;->c:J

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcoil3/memory/RealStrongMemoryCache$cache$1;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    iget-object p0, p0, Lcoil3/memory/RealStrongMemoryCache;->b:Lcoil3/memory/WeakMemoryCache;

    invoke-interface/range {p0 .. p5}, Lcoil3/memory/WeakMemoryCache;->f(Lcoil3/memory/MemoryCache$Key;Lcoil3/Image;Ljava/util/Map;J)V

    return-void
.end method

.method public final g(J)V
    .locals 0

    iget-object p0, p0, Lcoil3/memory/RealStrongMemoryCache;->c:Lcoil3/memory/RealStrongMemoryCache$cache$1;

    invoke-virtual {p0, p1, p2}, Lcoil3/util/LruCache;->e(J)V

    return-void
.end method

.method public final getSize()J
    .locals 2

    iget-object p0, p0, Lcoil3/memory/RealStrongMemoryCache;->c:Lcoil3/memory/RealStrongMemoryCache$cache$1;

    invoke-virtual {p0}, Lcoil3/util/LruCache;->b()J

    move-result-wide v0

    return-wide v0
.end method
