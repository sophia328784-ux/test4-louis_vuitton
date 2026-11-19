.class public Lcom/linkplay/lpmdpkit/utils/ThreadPoolUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mCachedThread:Ljava/util/concurrent/ExecutorService;

.field private static mPrintThread:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCachedThread()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lcom/linkplay/lpmdpkit/utils/ThreadPoolUtil;->mCachedThread:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/linkplay/lpmdpkit/utils/ThreadPoolUtil;->mCachedThread:Ljava/util/concurrent/ExecutorService;

    :cond_0
    sget-object v0, Lcom/linkplay/lpmdpkit/utils/ThreadPoolUtil;->mCachedThread:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static getPrintThread()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lcom/linkplay/lpmdpkit/utils/ThreadPoolUtil;->mPrintThread:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/linkplay/lpmdpkit/utils/ThreadPoolUtil;->mPrintThread:Ljava/util/concurrent/ExecutorService;

    :cond_0
    sget-object v0, Lcom/linkplay/lpmdpkit/utils/ThreadPoolUtil;->mPrintThread:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method
