.class final Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$c;
.super Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public i:J


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/g;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/e$c;->i:J

    return-void
.end method
