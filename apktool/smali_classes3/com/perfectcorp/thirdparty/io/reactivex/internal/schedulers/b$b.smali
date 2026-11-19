.class final Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/b$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:[Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/b$c;

.field public c:J


# direct methods
.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/b$b;->a:I

    new-array v0, p1, [Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/b$c;

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/b$b;->b:[Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/b$c;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/b$b;->b:[Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/b$c;

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/b$c;

    invoke-direct {v2, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/g;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
