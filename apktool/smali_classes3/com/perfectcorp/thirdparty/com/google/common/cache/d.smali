.class Lcom/perfectcorp/thirdparty/com/google/common/cache/d;
.super Ljava/util/AbstractMap;

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/com/google/common/cache/d$k;,
        Lcom/perfectcorp/thirdparty/com/google/common/cache/d$l;,
        Lcom/perfectcorp/thirdparty/com/google/common/cache/d$f;,
        Lcom/perfectcorp/thirdparty/com/google/common/cache/d$x;,
        Lcom/perfectcorp/thirdparty/com/google/common/cache/d$i;,
        Lcom/perfectcorp/thirdparty/com/google/common/cache/d$a;,
        Lcom/perfectcorp/thirdparty/com/google/common/cache/d$e;,
        Lcom/perfectcorp/thirdparty/com/google/common/cache/d$ah;,
        Lcom/perfectcorp/thirdparty/com/google/common/cache/d$v;,
        Lcom/perfectcorp/thirdparty/com/google/common/cache/d$h;,
        Lcom/perfectcorp/thirdparty/com/google/common/cache/d$g;,
        Lcom/perfectcorp/thirdparty/com/google/common/cache/d$c;,
        Lcom/perfectcorp/thirdparty/com/google/common/cache/d$j;,
        Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;,
        Lcom/perfectcorp/thirdparty/com/google/common/cache/d$t;,
        Lcom/perfectcorp/thirdparty/com/google/common/cache/d$o;,
        Lcom/perfectcorp/thirdparty/com/google/common/cache/d$ab;,
        Lcom/perfectcorp/thirdparty/com/google/common/cache/d$z;,
        Lcom/perfectcorp/thirdparty/com/google/common/cache/d$ac;,
        Lcom/perfectcorp/thirdparty/com/google/common/cache/d$y;,
        Lcom/perfectcorp/thirdparty/com/google/common/cache/d$aa;,
        Lcom/perfectcorp/thirdparty/com/google/common/cache/d$r;,
        Lcom/perfectcorp/thirdparty/com/google/common/cache/d$u;,
        Lcom/perfectcorp/thirdparty/com/google/common/cache/d$q;,
        Lcom/perfectcorp/thirdparty/com/google/common/cache/d$s;,
        Lcom/perfectcorp/thirdparty/com/google/common/cache/d$b;,
        Lcom/perfectcorp/thirdparty/com/google/common/cache/d$m;,
        Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;,
        Lcom/perfectcorp/thirdparty/com/google/common/cache/d$d;,
        Lcom/perfectcorp/thirdparty/com/google/common/cache/d$p;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field public static final u:Lcom/perfectcorp/thirdparty/com/google/common/cache/e;

.field public static final v:Ljava/util/Queue;


# instance fields
.field public final b:I

.field public final c:I

.field public final d:[Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;

.field public final e:I

.field public final f:Lcom/perfectcorp/thirdparty/com/google/common/base/e;

.field public final g:Lcom/perfectcorp/thirdparty/com/google/common/base/e;

.field public final h:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$p;

.field public final i:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$p;

.field public final j:J

.field public final k:Lcom/perfectcorp/thirdparty/com/google/common/cache/ag;

.field public final l:Ljava/util/AbstractQueue;

.field public final m:Lcom/perfectcorp/thirdparty/com/google/common/cache/ae;

.field public final n:Lcom/perfectcorp/thirdparty/com/google/common/base/t;

.field public final o:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$d;

.field public final p:Lcom/perfectcorp/thirdparty/com/google/common/cache/a$a;

.field public final q:Lcom/perfectcorp/thirdparty/com/google/common/cache/CacheLoader;

.field public r:Ljava/util/Set;

.field public s:Ljava/util/Collection;

.field public t:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/cache/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->u:Lcom/perfectcorp/thirdparty/com/google/common/cache/e;

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/cache/f;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/f;-><init>()V

    sput-object v0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->v:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/common/cache/CacheBuilder;Lcom/perfectcorp/thirdparty/com/google/common/cache/CacheLoader;)V
    .locals 15

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/perfectcorp/thirdparty/com/google/common/cache/CacheBuilder;->a:Lcom/perfectcorp/thirdparty/com/google/common/base/r;

    const/4 v0, 0x4

    const/high16 v2, 0x10000

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->e:I

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$p;->a:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$p;

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->h:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$p;

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->i:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$p;

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$p;->a()Lcom/perfectcorp/thirdparty/com/google/common/base/e;

    move-result-object v2

    iput-object v2, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->f:Lcom/perfectcorp/thirdparty/com/google/common/base/e;

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$p;->a()Lcom/perfectcorp/thirdparty/com/google/common/base/e;

    move-result-object v2

    iput-object v2, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->g:Lcom/perfectcorp/thirdparty/com/google/common/base/e;

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->j:J

    sget-object v4, Lcom/perfectcorp/thirdparty/com/google/common/cache/CacheBuilder$b;->a:Lcom/perfectcorp/thirdparty/com/google/common/cache/CacheBuilder$b;

    invoke-static {v4}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v4

    check-cast v5, Lcom/perfectcorp/thirdparty/com/google/common/cache/ag;

    iput-object v5, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->k:Lcom/perfectcorp/thirdparty/com/google/common/cache/ag;

    sget-object v7, Lcom/perfectcorp/thirdparty/com/google/common/cache/CacheBuilder$a;->a:Lcom/perfectcorp/thirdparty/com/google/common/cache/CacheBuilder$a;

    invoke-static {v7}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v8, v7

    check-cast v8, Lcom/perfectcorp/thirdparty/com/google/common/cache/ae;

    iput-object v8, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->m:Lcom/perfectcorp/thirdparty/com/google/common/cache/ae;

    if-ne v8, v7, :cond_0

    sget-object v7, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->v:Ljava/util/Queue;

    goto :goto_0

    :cond_0
    new-instance v7, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v7}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    :goto_0
    check-cast v7, Ljava/util/AbstractQueue;

    iput-object v7, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->l:Ljava/util/AbstractQueue;

    sget-object v7, Lcom/perfectcorp/thirdparty/com/google/common/cache/CacheBuilder;->c:Lcom/perfectcorp/thirdparty/com/google/common/base/t;

    iput-object v7, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->n:Lcom/perfectcorp/thirdparty/com/google/common/base/t;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->e()Z

    move-result v7

    const/4 v8, 0x0

    invoke-static {v0, v7, v8}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$d;->a(Lcom/perfectcorp/thirdparty/com/google/common/cache/d$p;ZZ)Lcom/perfectcorp/thirdparty/com/google/common/cache/d$d;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->o:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$d;

    invoke-interface {v6}, Lcom/perfectcorp/thirdparty/com/google/common/base/r;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/common/cache/a$a;

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->p:Lcom/perfectcorp/thirdparty/com/google/common/cache/a$a;

    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->q:Lcom/perfectcorp/thirdparty/com/google/common/cache/CacheLoader;

    const/16 v0, 0x10

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->e()Z

    move-result v7

    if-eqz v7, :cond_2

    if-eq v5, v4, :cond_1

    goto :goto_1

    :cond_1
    int-to-long v4, v0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    :cond_2
    :goto_1
    const/4 v2, 0x1

    move v3, v2

    move v4, v8

    :goto_2
    iget v5, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->e:I

    if-ge v3, v5, :cond_4

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->e()Z

    move-result v5

    if-eqz v5, :cond_3

    mul-int/lit8 v5, v3, 0x14

    int-to-long v9, v5

    iget-wide v11, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->j:J

    cmp-long v5, v9, v11

    if-gtz v5, :cond_4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    shl-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    rsub-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->c:I

    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->b:I

    new-array v4, v3, [Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;

    iput-object v4, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->d:[Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;

    div-int v4, v0, v3

    mul-int v5, v4, v3

    if-ge v5, v0, :cond_5

    add-int/lit8 v4, v4, 0x1

    :cond_5
    :goto_3
    if-ge v2, v4, :cond_6

    shl-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-wide v4, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->j:J

    int-to-long v9, v3

    div-long v11, v4, v9

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    rem-long v9, v4, v9

    :goto_4
    iget-object v7, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->d:[Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;

    array-length v0, v7

    if-ge v8, v0, :cond_9

    int-to-long v3, v8

    cmp-long v0, v3, v9

    if-nez v0, :cond_7

    sub-long/2addr v11, v13

    :cond_7
    move-wide v3, v11

    invoke-interface {v6}, Lcom/perfectcorp/thirdparty/com/google/common/base/r;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/perfectcorp/thirdparty/com/google/common/cache/a$a;

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/cache/d;IJLcom/perfectcorp/thirdparty/com/google/common/cache/a$a;)V

    aput-object v0, v7, v8

    add-int/lit8 v8, v8, 0x1

    move-wide v11, v3

    goto :goto_4

    :cond_8
    :goto_5
    iget-object v7, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->d:[Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;

    array-length v0, v7

    if-ge v8, v0, :cond_9

    invoke-interface {v6}, Lcom/perfectcorp/thirdparty/com/google/common/base/r;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/perfectcorp/thirdparty/com/google/common/cache/a$a;

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;

    const-wide/16 v3, -0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/cache/d;IJLcom/perfectcorp/thirdparty/com/google/common/cache/a$a;)V

    aput-object v0, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_9
    return-void
.end method

.method public static synthetic d(Ljava/util/AbstractCollection;)Ljava/util/ArrayList;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/at;->b(Ljava/util/Collection;Ljava/util/Iterator;)Z

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 1

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->f:Lcom/perfectcorp/thirdparty/com/google/common/base/e;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/base/e;->c(Ljava/lang/Object;)I

    move-result p0

    :goto_0
    shl-int/lit8 p1, p0, 0xf

    xor-int/lit16 p1, p1, -0x3283

    add-int/2addr p0, p1

    ushr-int/lit8 p1, p0, 0xa

    xor-int/2addr p0, p1

    shl-int/lit8 p1, p0, 0x3

    add-int/2addr p0, p1

    ushr-int/lit8 p1, p0, 0x6

    xor-int/2addr p0, p1

    shl-int/lit8 p1, p0, 0x2

    shl-int/lit8 v0, p0, 0xe

    add-int/2addr p1, v0

    add-int/2addr p1, p0

    ushr-int/lit8 p0, p1, 0x10

    xor-int/2addr p0, p1

    return p0
.end method

.method public final c(I)Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;
    .locals 1

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->c:I

    ushr-int/2addr p1, v0

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->b:I

    and-int/2addr p1, v0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->d:[Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final clear()V
    .locals 11

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->d:[Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_d

    aget-object v3, p0, v2

    iget v4, v3, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->c:I

    if-eqz v4, :cond_c

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v4, v3, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

    iget-object v4, v4, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->n:Lcom/perfectcorp/thirdparty/com/google/common/base/t;

    invoke-virtual {v4}, Lcom/perfectcorp/thirdparty/com/google/common/base/t;->a()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->h(J)V

    iget-object v4, v3, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move v5, v1

    :goto_1
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_4

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    :goto_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->a()Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;

    move-result-object v7

    invoke-interface {v7}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;->d()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->d()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->a()Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;

    move-result-object v8

    invoke-interface {v8}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;->get()Ljava/lang/Object;

    move-result-object v8

    if-eqz v7, :cond_1

    if-nez v8, :cond_0

    goto :goto_3

    :cond_0
    sget-object v9, Lcom/perfectcorp/thirdparty/com/google/common/cache/y;->a:Lcom/perfectcorp/thirdparty/com/google/common/cache/y;

    goto :goto_4

    :catchall_0
    move-exception p0

    goto/16 :goto_8

    :cond_1
    :goto_3
    sget-object v9, Lcom/perfectcorp/thirdparty/com/google/common/cache/y;->c:Lcom/perfectcorp/thirdparty/com/google/common/cache/y;

    :goto_4
    invoke-interface {v6}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->c()I

    invoke-interface {v6}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->a()Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;

    move-result-object v10

    invoke-interface {v10}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;->a()I

    move-result v10

    invoke-virtual {v3, v7, v8, v10, v9}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->l(Ljava/lang/Object;Ljava/lang/Object;ILcom/perfectcorp/thirdparty/com/google/common/cache/y;)V

    :cond_2
    invoke-interface {v6}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->b()Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    move-result-object v6

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    move v5, v1

    :goto_5
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_5
    iget-object v4, v3, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

    iget-object v4, v4, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->h:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$p;

    sget-object v5, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$p;->a:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$p;

    const/4 v6, 0x1

    if-eq v4, v5, :cond_6

    move v4, v6

    goto :goto_6

    :cond_6
    move v4, v1

    :goto_6
    if-eqz v4, :cond_8

    :cond_7
    iget-object v4, v3, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v4}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v4

    if-nez v4, :cond_7

    :cond_8
    iget-object v4, v3, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

    iget-object v4, v4, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->i:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$p;

    sget-object v5, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$p;->a:Lcom/perfectcorp/thirdparty/com/google/common/cache/d$p;

    if-eq v4, v5, :cond_9

    move v4, v6

    goto :goto_7

    :cond_9
    move v4, v1

    :goto_7
    if-eqz v4, :cond_b

    :cond_a
    iget-object v4, v3, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->j:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v4}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v4

    if-nez v4, :cond_a

    :cond_b
    iget-object v4, v3, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->m:Ljava/util/AbstractQueue;

    invoke-interface {v4}, Ljava/util/Collection;->clear()V

    iget-object v4, v3, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->n:Ljava/util/AbstractQueue;

    invoke-interface {v4}, Ljava/util/Collection;->clear()V

    iget-object v4, v3, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget v4, v3, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->e:I

    add-int/2addr v4, v6

    iput v4, v3, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->e:I

    iput v1, v3, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {v3}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->p()V

    goto :goto_9

    :goto_8
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {v3}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->p()V

    throw p0

    :cond_c
    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_d
    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->a(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->c(I)Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget v2, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->c:I

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

    iget-object v2, v2, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->n:Lcom/perfectcorp/thirdparty/com/google/common/base/t;

    invoke-virtual {v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/t;->a()J

    invoke-virtual {p0, v1, p1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->u(ILjava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->g()V

    return v0

    :cond_2
    :try_start_1
    invoke-interface {p1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->a()Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;

    move-result-object p1

    invoke-interface {p1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->g()V

    return v0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->g()V

    return v0

    :goto_1
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->g()V

    throw p1
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object v3, v0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->n:Lcom/perfectcorp/thirdparty/com/google/common/base/t;

    invoke-virtual {v3}, Lcom/perfectcorp/thirdparty/com/google/common/base/t;->a()J

    move-result-wide v3

    iget-object v5, v0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->d:[Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;

    const-wide/16 v6, -0x1

    move v8, v2

    :goto_0
    const/4 v9, 0x3

    if-ge v8, v9, :cond_5

    array-length v9, v5

    const-wide/16 v10, 0x0

    move v12, v2

    :goto_1
    if-ge v12, v9, :cond_4

    aget-object v13, v5, v12

    iget v14, v13, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->c:I

    iget-object v14, v13, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move v15, v2

    move/from16 v16, v15

    :goto_2
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    if-ge v15, v2, :cond_3

    invoke-virtual {v14, v15}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    :goto_3
    move-object/from16 v17, v5

    if-eqz v2, :cond_2

    invoke-virtual {v13, v2, v3, v4}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->c(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;J)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v18, v2

    if-eqz v5, :cond_1

    iget-object v2, v0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->g:Lcom/perfectcorp/thirdparty/com/google/common/base/e;

    invoke-virtual {v2, v1, v5}, Lcom/perfectcorp/thirdparty/com/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-interface/range {v18 .. v18}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->b()Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    move-result-object v2

    move-object/from16 v5, v17

    goto :goto_3

    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v17, v5

    iget v2, v13, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->e:I

    int-to-long v13, v2

    add-long/2addr v10, v13

    add-int/lit8 v12, v12, 0x1

    move/from16 v2, v16

    goto :goto_1

    :cond_4
    move/from16 v16, v2

    move-object/from16 v17, v5

    cmp-long v2, v10, v6

    if-eqz v2, :cond_6

    add-int/lit8 v8, v8, 0x1

    move-wide v6, v10

    move/from16 v2, v16

    move-object/from16 v5, v17

    goto :goto_0

    :cond_5
    move/from16 v16, v2

    :cond_6
    return v16
.end method

.method public final e()Z
    .locals 4

    iget-wide v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->j:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->t:Ljava/util/Set;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$f;

    invoke-direct {v0, p0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$f;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/cache/d;Ljava/util/concurrent/ConcurrentMap;)V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->t:Ljava/util/Set;

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->a(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->c(I)Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget v2, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->c:I

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

    iget-object v2, v2, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->n:Lcom/perfectcorp/thirdparty/com/google/common/base/t;

    invoke-virtual {v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/t;->a()J

    move-result-wide v2

    invoke-virtual {p0, v1, p1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->u(ILjava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    move-result-object p1

    if-nez p1, :cond_1

    move-object p1, v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->g()V

    return-object v0

    :cond_2
    :try_start_1
    invoke-interface {p1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->a()Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;

    move-result-object v1

    invoke-interface {v1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1, v2, v3}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->r(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;J)V

    invoke-interface {p1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->d()Ljava/lang/Object;

    iget-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

    iget-object v0, p1, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->q:Lcom/perfectcorp/thirdparty/com/google/common/cache/CacheLoader;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->g()V

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_3
    :try_start_2
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->s()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->g()V

    return-object v0

    :goto_1
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->g()V

    throw p1
.end method

.method public final getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    return-object p2
.end method

.method public final isEmpty()Z
    .locals 8

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->d:[Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v4, v0

    move v3, v2

    :goto_0
    array-length v6, p0

    if-ge v3, v6, :cond_1

    aget-object v6, p0, v3

    iget v6, v6, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->c:I

    if-eqz v6, :cond_0

    return v2

    :cond_0
    aget-object v6, p0, v3

    iget v6, v6, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->e:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    cmp-long v3, v4, v0

    if-eqz v3, :cond_4

    move v3, v2

    :goto_1
    array-length v6, p0

    if-ge v3, v6, :cond_3

    aget-object v6, p0, v3

    iget v6, v6, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->c:I

    if-eqz v6, :cond_2

    return v2

    :cond_2
    aget-object v6, p0, v3

    iget v6, v6, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->e:I

    int-to-long v6, v6

    sub-long/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    cmp-long p0, v4, v0

    if-eqz p0, :cond_4

    return v2

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->r:Ljava/util/Set;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$i;

    invoke-direct {v0, p0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$i;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/cache/d;Ljava/util/concurrent/ConcurrentMap;)V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->r:Ljava/util/Set;

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->c(I)Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->f(Ljava/lang/Object;Ljava/lang/Object;ZI)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 2

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->c(I)Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->f(Ljava/lang/Object;Ljava/lang/Object;ZI)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->a(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->c(I)Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;

    move-result-object v2

    .line 148
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 149
    :try_start_0
    iget-object p0, v2, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->n:Lcom/perfectcorp/thirdparty/com/google/common/base/t;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/t;->a()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->h(J)V

    iget-object p0, v2, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    and-int v9, v1, v3

    invoke-virtual {p0, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    move-object v4, v3

    :goto_0
    if-eqz v4, :cond_2

    invoke-interface {v4}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->d()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->c()I

    move-result v6

    if-ne v6, v1, :cond_3

    if-eqz v5, :cond_3

    iget-object v6, v2, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

    iget-object v6, v6, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->f:Lcom/perfectcorp/thirdparty/com/google/common/base/e;

    invoke-virtual {v6, p1, v5}, Lcom/perfectcorp/thirdparty/com/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->a()Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;

    move-result-object v7

    invoke-interface {v7}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;->get()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    sget-object p1, Lcom/perfectcorp/thirdparty/com/google/common/cache/y;->a:Lcom/perfectcorp/thirdparty/com/google/common/cache/y;

    :goto_1
    move-object v8, p1

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_1
    invoke-interface {v7}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/perfectcorp/thirdparty/com/google/common/cache/y;->c:Lcom/perfectcorp/thirdparty/com/google/common/cache/y;

    goto :goto_1

    :goto_2
    iget p1, v2, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v2, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->e:I

    invoke-virtual/range {v2 .. v8}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->b(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;Lcom/perfectcorp/thirdparty/com/google/common/cache/x;Ljava/lang/Object;Ljava/lang/Object;Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;Lcom/perfectcorp/thirdparty/com/google/common/cache/y;)Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    move-result-object p1

    iget v0, v2, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->c:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v9, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput v0, v2, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {v2}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->p()V

    return-object v6

    :cond_2
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {v2}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->p()V

    return-object v0

    :cond_3
    :try_start_1
    invoke-interface {v4}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->b()Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_3
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {v2}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->p()V

    throw p0
.end method

.method public final remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->a(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->c(I)Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object p0, v2, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->n:Lcom/perfectcorp/thirdparty/com/google/common/base/t;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/t;->a()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->h(J)V

    iget-object p0, v2, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    const/4 v9, 0x1

    sub-int/2addr v3, v9

    and-int v10, v1, v3

    invoke-virtual {p0, v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    move-object v4, v3

    :goto_0
    if-eqz v4, :cond_2

    invoke-interface {v4}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->d()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->c()I

    move-result v6

    if-ne v6, v1, :cond_3

    if-eqz v5, :cond_3

    iget-object v6, v2, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

    iget-object v6, v6, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->f:Lcom/perfectcorp/thirdparty/com/google/common/base/e;

    invoke-virtual {v6, p1, v5}, Lcom/perfectcorp/thirdparty/com/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->a()Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;

    move-result-object v7

    invoke-interface {v7}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;->get()Ljava/lang/Object;

    move-result-object v6

    iget-object p1, v2, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

    iget-object p1, p1, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->g:Lcom/perfectcorp/thirdparty/com/google/common/base/e;

    invoke-virtual {p1, p2, v6}, Lcom/perfectcorp/thirdparty/com/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/perfectcorp/thirdparty/com/google/common/cache/y;->a:Lcom/perfectcorp/thirdparty/com/google/common/cache/y;

    :goto_1
    move-object v8, p1

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_1
    if-nez v6, :cond_2

    invoke-interface {v7}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/perfectcorp/thirdparty/com/google/common/cache/y;->c:Lcom/perfectcorp/thirdparty/com/google/common/cache/y;

    goto :goto_1

    :goto_2
    iget p1, v2, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->e:I

    add-int/2addr p1, v9

    iput p1, v2, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->e:I

    invoke-virtual/range {v2 .. v8}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->b(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;Lcom/perfectcorp/thirdparty/com/google/common/cache/x;Ljava/lang/Object;Ljava/lang/Object;Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;Lcom/perfectcorp/thirdparty/com/google/common/cache/y;)Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    move-result-object p1

    iget p2, v2, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->c:I

    sub-int/2addr p2, v9

    invoke-virtual {p0, v10, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput p2, v2, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->c:I

    sget-object p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/y;->a:Lcom/perfectcorp/thirdparty/com/google/common/cache/y;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v8, p0, :cond_2

    move v0, v9

    :cond_2
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {v2}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->p()V

    return v0

    :cond_3
    :try_start_1
    invoke-interface {v4}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->b()Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_3
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {v2}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->p()V

    throw p0

    :cond_4
    :goto_4
    return v0
.end method

.method public final replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 187
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 188
    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->c(I)Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;

    move-result-object v1

    .line 189
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 190
    :try_start_0
    iget-object p0, v1, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->n:Lcom/perfectcorp/thirdparty/com/google/common/base/t;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/t;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->h(J)V

    iget-object p0, v1, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    and-int v8, v0, v4

    invoke-virtual {p0, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    move-wide v5, v2

    move-object v3, v4

    :goto_0
    const/4 v9, 0x0

    if-eqz v3, :cond_0

    move-object v2, v4

    invoke-interface {v3}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->d()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->c()I

    move-result v7

    if-ne v7, v0, :cond_2

    if-eqz v4, :cond_2

    iget-object v7, v1, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

    iget-object v7, v7, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->f:Lcom/perfectcorp/thirdparty/com/google/common/base/e;

    invoke-virtual {v7, p1, v4}, Lcom/perfectcorp/thirdparty/com/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-wide v10, v5

    invoke-interface {v3}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->a()Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;

    move-result-object v6

    invoke-interface {v6}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-interface {v6}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, v1, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v1, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->e:I

    sget-object v7, Lcom/perfectcorp/thirdparty/com/google/common/cache/y;->c:Lcom/perfectcorp/thirdparty/com/google/common/cache/y;

    invoke-virtual/range {v1 .. v7}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->b(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;Lcom/perfectcorp/thirdparty/com/google/common/cache/x;Ljava/lang/Object;Ljava/lang/Object;Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;Lcom/perfectcorp/thirdparty/com/google/common/cache/y;)Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    move-result-object p1

    iget p2, v1, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->c:I

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0, v8, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput p2, v1, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->p()V

    return-object v9

    :cond_1
    :try_start_1
    iget p0, v1, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->e:I

    add-int/lit8 p0, p0, 0x1

    iput p0, v1, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->e:I

    invoke-interface {v6}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;->a()I

    move-result p0

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/cache/y;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/y;

    invoke-virtual {v1, p1, v5, p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->l(Ljava/lang/Object;Ljava/lang/Object;ILcom/perfectcorp/thirdparty/com/google/common/cache/y;)V

    invoke-virtual {v1, v3, p2, v10, v11}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->j(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;Ljava/lang/Object;J)V

    invoke-virtual {v1, v3}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->i(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->p()V

    return-object v5

    :cond_2
    move-wide v10, v5

    :try_start_2
    invoke-interface {v3}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->b()Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v4, v2

    move-wide v5, v10

    goto :goto_0

    :goto_2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->p()V

    throw p0
.end method

.method public final replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->a(Ljava/lang/Object;)I

    move-result v3

    move-object/from16 v4, p0

    invoke-virtual {v4, v3}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->c(I)Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v5, v4, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

    iget-object v5, v5, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->n:Lcom/perfectcorp/thirdparty/com/google/common/base/t;

    invoke-virtual {v5}, Lcom/perfectcorp/thirdparty/com/google/common/base/t;->a()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->h(J)V

    iget-object v11, v4, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->g:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v7

    const/4 v12, 0x1

    sub-int/2addr v7, v12

    and-int v13, v3, v7

    invoke-virtual {v11, v13}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    move-wide v8, v5

    move-object v6, v7

    :goto_0
    if-eqz v6, :cond_1

    move-object v5, v7

    invoke-interface {v6}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->d()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->c()I

    move-result v10

    if-ne v10, v3, :cond_4

    if-eqz v7, :cond_4

    iget-object v10, v4, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

    iget-object v10, v10, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->f:Lcom/perfectcorp/thirdparty/com/google/common/base/e;

    invoke-virtual {v10, v0, v7}, Lcom/perfectcorp/thirdparty/com/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    move-wide v14, v8

    invoke-interface {v6}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->a()Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;

    move-result-object v9

    invoke-interface {v9}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;->get()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_2

    invoke-interface {v9}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, v4, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->e:I

    add-int/2addr v0, v12

    iput v0, v4, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->e:I

    sget-object v10, Lcom/perfectcorp/thirdparty/com/google/common/cache/y;->c:Lcom/perfectcorp/thirdparty/com/google/common/cache/y;

    invoke-virtual/range {v4 .. v10}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->b(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;Lcom/perfectcorp/thirdparty/com/google/common/cache/x;Ljava/lang/Object;Ljava/lang/Object;Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;Lcom/perfectcorp/thirdparty/com/google/common/cache/y;)Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    move-result-object v0

    iget v1, v4, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->c:I

    sub-int/2addr v1, v12

    invoke-virtual {v11, v13, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput v1, v4, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {v4}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->p()V

    return v2

    :cond_2
    :try_start_1
    iget-object v3, v4, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/d;

    iget-object v3, v3, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->g:Lcom/perfectcorp/thirdparty/com/google/common/base/e;

    invoke-virtual {v3, v1, v8}, Lcom/perfectcorp/thirdparty/com/google/common/base/e;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, v4, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->e:I

    add-int/2addr v1, v12

    iput v1, v4, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->e:I

    invoke-interface {v9}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$w;->a()I

    move-result v1

    sget-object v2, Lcom/perfectcorp/thirdparty/com/google/common/cache/y;->b:Lcom/perfectcorp/thirdparty/com/google/common/cache/y;

    invoke-virtual {v4, v0, v8, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->l(Ljava/lang/Object;Ljava/lang/Object;ILcom/perfectcorp/thirdparty/com/google/common/cache/y;)V

    move-object/from16 v5, p3

    invoke-virtual {v4, v6, v5, v14, v15}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->j(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;Ljava/lang/Object;J)V

    invoke-virtual {v4, v6}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->i(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {v4}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->p()V

    return v12

    :cond_3
    :try_start_2
    invoke-virtual {v4, v6, v14, v15}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->t(Lcom/perfectcorp/thirdparty/com/google/common/cache/x;J)V

    goto :goto_1

    :cond_4
    move-object v7, v5

    move-wide v14, v8

    move-object/from16 v5, p3

    invoke-interface {v6}, Lcom/perfectcorp/thirdparty/com/google/common/cache/x;->b()Lcom/perfectcorp/thirdparty/com/google/common/cache/x;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-wide v8, v14

    goto :goto_0

    :goto_2
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    invoke-virtual {v4}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->p()V

    throw v0
.end method

.method public final size()I
    .locals 6

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->d:[Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_0

    aget-object v4, p0, v3

    iget v4, v4, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$n;->c:I

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/primitives/Ints;->a(J)I

    move-result p0

    return p0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->s:Ljava/util/Collection;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$x;

    invoke-direct {v0, p0, p0}, Lcom/perfectcorp/thirdparty/com/google/common/cache/d$x;-><init>(Lcom/perfectcorp/thirdparty/com/google/common/cache/d;Ljava/util/concurrent/ConcurrentMap;)V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/common/cache/d;->s:Ljava/util/Collection;

    return-object v0
.end method
