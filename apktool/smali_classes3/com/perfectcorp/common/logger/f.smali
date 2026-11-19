.class final Lcom/perfectcorp/common/logger/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/perfectcorp/common/logger/a;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/common/logger/a;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/common/logger/f;->a:Lcom/perfectcorp/common/logger/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/common/logger/f;->a:Lcom/perfectcorp/common/logger/a;

    sget-object v1, Lcom/perfectcorp/common/logger/a;->j:Ljava/lang/ThreadLocal;

    iget-object v1, v0, Lcom/perfectcorp/common/logger/a;->h:Ljava/io/BufferedWriter;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    iget-object v1, v0, Lcom/perfectcorp/common/logger/a;->h:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/perfectcorp/common/logger/a;->h:Ljava/io/BufferedWriter;

    :cond_0
    iget-object p0, p0, Lcom/perfectcorp/common/logger/f;->a:Lcom/perfectcorp/common/logger/a;

    iget-object p0, p0, Lcom/perfectcorp/common/logger/a;->g:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    return-void
.end method
