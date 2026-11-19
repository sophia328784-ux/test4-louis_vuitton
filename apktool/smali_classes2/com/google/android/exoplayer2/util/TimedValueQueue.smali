.class public final Lcom/google/android/exoplayer2/util/TimedValueQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final a:[J

.field public final b:[Ljava/lang/Object;

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    .line 12
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/util/TimedValueQueue;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [J

    iput-object v0, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->a:[J

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->b:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(JZ)Ljava/lang/Object;
    .locals 9

    const/4 v0, 0x0

    const-wide v1, 0x7fffffffffffffffL

    move-object v3, v0

    :goto_0
    iget v4, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->d:I

    if-lez v4, :cond_2

    iget-object v5, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->a:[J

    iget v6, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->c:I

    aget-wide v5, v5, v6

    sub-long v5, p1, v5

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-gez v7, :cond_0

    if-nez p3, :cond_2

    neg-long v7, v5

    cmp-long v1, v7, v1

    if-ltz v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x1

    if-lez v4, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V

    iget v2, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->c:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->b:[Ljava/lang/Object;

    aget-object v4, v3, v2

    aput-object v0, v3, v2

    add-int/2addr v2, v1

    array-length v3, v3

    rem-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->c:I

    iget v2, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->d:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/exoplayer2/util/TimedValueQueue;->d:I

    move-object v3, v4

    move-wide v1, v5

    goto :goto_0

    :cond_2
    :goto_2
    return-object v3
.end method
