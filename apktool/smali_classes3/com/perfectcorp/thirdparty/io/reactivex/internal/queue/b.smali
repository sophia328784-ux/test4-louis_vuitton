.class public final Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/b;
.super Ljava/util/concurrent/atomic/AtomicReferenceArray;

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
        "TE;>;",
        "Lcom/perfectcorp/thirdparty/io/reactivex/internal/fuseable/h<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final g:Ljava/lang/Integer;


# instance fields
.field public final b:I

.field public final c:Ljava/util/concurrent/atomic/AtomicLong;

.field public d:J

.field public final e:Ljava/util/concurrent/atomic/AtomicLong;

.field public final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "jctools.spsc.max.lookahead.step"

    const/16 v1, 0x1000

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/b;->g:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    add-int/lit8 v0, p1, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    const/4 v1, 0x1

    shl-int v0, v1, v0

    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/b;->b:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/b;->c:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/b;->e:Ljava/util/concurrent/atomic/AtomicLong;

    div-int/lit8 p1, p1, 0x4

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/b;->g:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/b;->f:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 8

    .line 58
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/b;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    long-to-int v3, v1

    iget v4, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/b;->b:I

    and-int/2addr v3, v4

    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return-object v5

    :cond_0
    const-wide/16 v6, 0x1

    add-long/2addr v1, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    invoke-virtual {p0, v3, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    return-object v4
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/b;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    long-to-int v4, v2

    iget v5, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/b;->b:I

    and-int/2addr v4, v5

    iget-wide v6, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/b;->d:J

    cmp-long v6, v2, v6

    if-ltz v6, :cond_1

    iget v6, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/b;->f:I

    int-to-long v6, v6

    add-long/2addr v6, v2

    long-to-int v8, v6

    and-int/2addr v5, v8

    invoke-virtual {p0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    iput-wide v6, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/b;->d:J

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    return v0

    :cond_1
    :goto_0
    invoke-virtual {p0, v4, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    const-wide/16 p0, 0x1

    add-long/2addr v2, p0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->lazySet(J)V

    const/4 p0, 0x1

    return p0

    :cond_2
    const-string p0, "Null is not a valid element"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    return v0
.end method

.method public final b()Z
    .locals 4

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/b;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/b;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final c()V
    .locals 1

    :cond_0
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/b;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/queue/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method
