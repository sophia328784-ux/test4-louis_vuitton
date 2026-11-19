.class final Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/n$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/n$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/Runnable;

.field public final c:J

.field public final d:I

.field public volatile e:Z


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Long;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/n$b;->b:Ljava/lang/Runnable;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/n$b;->c:J

    iput p3, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/n$b;->d:I

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/n$b;

    iget-wide v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/n$b;->c:J

    iget-wide v2, p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/n$b;->c:J

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-gez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-nez v0, :cond_4

    iget p1, p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/n$b;->d:I

    iget p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/n$b;->d:I

    if-ge p0, p1, :cond_2

    return v3

    :cond_2
    if-le p0, p1, :cond_3

    return v2

    :cond_3
    return v1

    :cond_4
    return v0
.end method
