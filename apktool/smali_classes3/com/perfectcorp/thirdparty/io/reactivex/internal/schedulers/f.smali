.class public final Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/f;
.super Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;


# static fields
.field public static final b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/i;


# instance fields
.field public final a:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "pf.rx2.newthread-priority"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/i;

    const-string v2, "PfRxNewThreadScheduler"

    invoke-direct {v1, v2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/i;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/f;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;-><init>()V

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/f;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/i;

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/f;->a:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method


# virtual methods
.method public final a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler$b;
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/g;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/f;->a:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/g;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method
