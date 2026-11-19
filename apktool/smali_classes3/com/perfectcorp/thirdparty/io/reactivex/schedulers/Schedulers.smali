.class public abstract Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers$b;,
        Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers$h;,
        Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers$f;,
        Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers$c;,
        Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers$e;,
        Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers$d;,
        Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers$a;,
        Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers$g;
    }
.end annotation


# static fields
.field public static final a:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

.field public static final b:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

.field public static final c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers$h;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers$h;-><init>()V

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/plugins/a;->b(Ljava/util/concurrent/Callable;)Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->a:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers$b;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers$b;-><init>()V

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/plugins/a;->b(Ljava/util/concurrent/Callable;)Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->b:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers$c;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers$c;-><init>()V

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/plugins/a;->b(Ljava/util/concurrent/Callable;)Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    sget v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/n;->a:I

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers$f;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers$f;-><init>()V

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/plugins/a;->b(Ljava/util/concurrent/Callable;)Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    return-void
.end method

.method public static a(Ljava/util/concurrent/ExecutorService;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;
    .locals 2

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;-><init>(Ljava/util/concurrent/Executor;Z)V

    return-object v0
.end method

.method public static b()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;
    .locals 1

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    return-object v0
.end method
