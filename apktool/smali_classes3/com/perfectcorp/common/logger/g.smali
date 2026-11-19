.class final Lcom/perfectcorp/common/logger/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:J

.field private synthetic b:J

.field private synthetic c:J

.field private synthetic d:Ljava/util/Date;

.field private synthetic e:Lcom/perfectcorp/common/logger/a$a;

.field private synthetic f:Ljava/lang/String;

.field private synthetic g:Ljava/lang/String;

.field private synthetic h:Lcom/perfectcorp/common/logger/a;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/common/logger/a;JJJLjava/util/Date;Lcom/perfectcorp/common/logger/a$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/common/logger/g;->h:Lcom/perfectcorp/common/logger/a;

    iput-wide p2, p0, Lcom/perfectcorp/common/logger/g;->a:J

    iput-wide p4, p0, Lcom/perfectcorp/common/logger/g;->b:J

    iput-wide p6, p0, Lcom/perfectcorp/common/logger/g;->c:J

    iput-object p8, p0, Lcom/perfectcorp/common/logger/g;->d:Ljava/util/Date;

    iput-object p9, p0, Lcom/perfectcorp/common/logger/g;->e:Lcom/perfectcorp/common/logger/a$a;

    iput-object p10, p0, Lcom/perfectcorp/common/logger/g;->f:Ljava/lang/String;

    iput-object p11, p0, Lcom/perfectcorp/common/logger/g;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget-object v0, p0, Lcom/perfectcorp/common/logger/g;->h:Lcom/perfectcorp/common/logger/a;

    iget-object v1, v0, Lcom/perfectcorp/common/logger/a;->h:Ljava/io/BufferedWriter;

    const-string v2, "FileLogger"

    const/4 v3, 0x0

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/perfectcorp/common/logger/a;->e:Ljava/io/File;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_1
    :goto_1
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    iget-object v5, v0, Lcom/perfectcorp/common/logger/a;->f:Ljava/io/File;

    invoke-direct {v4, v5, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    const/16 v5, 0x4000

    invoke-direct {v1, v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iput-object v1, v0, Lcom/perfectcorp/common/logger/a;->h:Ljava/io/BufferedWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "Cannot create log writer"

    invoke-static {v2, v1, v0}, Lcom/perfectcorp/common/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/perfectcorp/common/logger/g;->h:Lcom/perfectcorp/common/logger/a;

    iget-object v1, v0, Lcom/perfectcorp/common/logger/a;->i:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_3

    invoke-interface {v1, v3}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_3
    iget-object v1, v0, Lcom/perfectcorp/common/logger/a;->g:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v3, Lcom/perfectcorp/common/logger/h;

    invoke-direct {v3, v0}, Lcom/perfectcorp/common/logger/h;-><init>(Lcom/perfectcorp/common/logger/a;)V

    const-wide/16 v4, 0x2

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v5, v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    iput-object v1, v0, Lcom/perfectcorp/common/logger/a;->i:Ljava/util/concurrent/ScheduledFuture;

    :try_start_1
    iget-object v0, p0, Lcom/perfectcorp/common/logger/g;->h:Lcom/perfectcorp/common/logger/a;

    iget-object v1, v0, Lcom/perfectcorp/common/logger/a;->h:Ljava/io/BufferedWriter;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%08d\t%10.9f\t[%05d-%05d] %s %s/%s:\t%s"

    iget-object v0, v0, Lcom/perfectcorp/common/logger/a;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-wide v6, p0, Lcom/perfectcorp/common/logger/g;->a:J

    long-to-float v0, v6

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iget-wide v7, p0, Lcom/perfectcorp/common/logger/g;->b:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-wide v8, p0, Lcom/perfectcorp/common/logger/g;->c:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    sget-object v0, Lcom/perfectcorp/common/logger/a;->k:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lcom/perfectcorp/common/logger/g;->d:Ljava/util/Date;

    invoke-virtual {v0, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/perfectcorp/common/logger/g;->e:Lcom/perfectcorp/common/logger/a$a;

    iget-object v11, p0, Lcom/perfectcorp/common/logger/g;->f:Ljava/lang/String;

    iget-object v12, p0, Lcom/perfectcorp/common/logger/g;->g:Ljava/lang/String;

    filled-new-array/range {v5 .. v12}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v4, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/perfectcorp/common/logger/g;->g:Ljava/lang/String;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/perfectcorp/common/logger/g;->g:Ljava/lang/String;

    const-string v1, "\r"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object p0, p0, Lcom/perfectcorp/common/logger/g;->h:Lcom/perfectcorp/common/logger/a;

    iget-object p0, p0, Lcom/perfectcorp/common/logger/a;->h:Ljava/io/BufferedWriter;

    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object p0, v0

    goto :goto_4

    :cond_4
    :goto_3
    return-void

    :goto_4
    const-string v0, "Cannot log message"

    invoke-static {v2, v0, p0}, Lcom/perfectcorp/common/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
