.class abstract Lcom/perfectcorp/uma/countly/d$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/uma/countly/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# static fields
.field public static final a:Lcom/perfectcorp/uma/countly/d;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/perfectcorp/uma/countly/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/perfectcorp/uma/countly/b;

    invoke-direct {v1}, Lcom/perfectcorp/uma/countly/b;-><init>()V

    iput-object v1, v0, Lcom/perfectcorp/uma/countly/d;->a:Lcom/perfectcorp/uma/countly/b;

    new-instance v1, Lcom/perfectcorp/uma/countly/f;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    iput-object v2, v0, Lcom/perfectcorp/uma/countly/d;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/perfectcorp/uma/countly/g;

    invoke-direct {v3, v0}, Lcom/perfectcorp/uma/countly/g;-><init>(Lcom/perfectcorp/uma/countly/d;)V

    const-wide/32 v6, 0x15180

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v4, 0x15180

    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    sput-object v0, Lcom/perfectcorp/uma/countly/d$d;->a:Lcom/perfectcorp/uma/countly/d;

    return-void
.end method
