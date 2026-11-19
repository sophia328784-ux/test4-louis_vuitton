.class public abstract Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler$a;,
        Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler$b;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "rx2.scheduler.drift-tolerance"

    const-wide/16 v1, 0xf

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler$b;
.end method

.method public b(Ljava/lang/Runnable;)Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;
    .locals 3

    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    move-result-object p0

    return-object p0
.end method

.method public c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;
    .locals 1

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler$b;

    move-result-object p0

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler$a;

    invoke-direct {v0, p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler$a;-><init>(Ljava/lang/Runnable;Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler$b;)V

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler$b;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    return-object v0
.end method
