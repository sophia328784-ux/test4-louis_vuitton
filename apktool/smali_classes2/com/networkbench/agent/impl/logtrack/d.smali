.class Lcom/networkbench/agent/impl/logtrack/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static l:Lcom/networkbench/agent/impl/logtrack/d;


# instance fields
.field private a:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/networkbench/agent/impl/logtrack/e;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:J

.field private f:J

.field private g:J

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcom/networkbench/agent/impl/logtrack/g;

.field private k:Ljava/text/SimpleDateFormat;


# direct methods
.method private constructor <init>(Lcom/networkbench/agent/impl/logtrack/LoganConfig;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/logtrack/d;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/logtrack/d;->k:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/logtrack/LoganConfig;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/networkbench/agent/impl/logtrack/LoganConfig;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/networkbench/agent/impl/logtrack/d;->c:Ljava/lang/String;

    iget-object v0, p1, Lcom/networkbench/agent/impl/logtrack/LoganConfig;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/networkbench/agent/impl/logtrack/d;->b:Ljava/lang/String;

    iget-wide v0, p1, Lcom/networkbench/agent/impl/logtrack/LoganConfig;->d:J

    iput-wide v0, p0, Lcom/networkbench/agent/impl/logtrack/d;->d:J

    iget-wide v0, p1, Lcom/networkbench/agent/impl/logtrack/LoganConfig;->f:J

    iput-wide v0, p0, Lcom/networkbench/agent/impl/logtrack/d;->f:J

    iget-wide v0, p1, Lcom/networkbench/agent/impl/logtrack/LoganConfig;->c:J

    iput-wide v0, p0, Lcom/networkbench/agent/impl/logtrack/d;->e:J

    iget-wide v0, p1, Lcom/networkbench/agent/impl/logtrack/LoganConfig;->e:J

    iput-wide v0, p0, Lcom/networkbench/agent/impl/logtrack/d;->g:J

    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/networkbench/agent/impl/logtrack/LoganConfig;->g:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/logtrack/d;->h:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    iget-object p1, p1, Lcom/networkbench/agent/impl/logtrack/LoganConfig;->h:[B

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/logtrack/d;->i:Ljava/lang/String;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/logtrack/d;->c()V

    return-void

    :cond_0
    const-string p0, "config\'s param is invalid"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private a(Ljava/lang/String;)J
    .locals 0

    .line 173
    :try_start_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/logtrack/d;->k:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    .line 174
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static a(Lcom/networkbench/agent/impl/logtrack/LoganConfig;)Lcom/networkbench/agent/impl/logtrack/d;
    .locals 2

    .line 148
    sget-object v0, Lcom/networkbench/agent/impl/logtrack/d;->l:Lcom/networkbench/agent/impl/logtrack/d;

    if-nez v0, :cond_1

    .line 149
    const-class v0, Lcom/networkbench/agent/impl/logtrack/d;

    monitor-enter v0

    .line 150
    :try_start_0
    sget-object v1, Lcom/networkbench/agent/impl/logtrack/d;->l:Lcom/networkbench/agent/impl/logtrack/d;

    if-nez v1, :cond_0

    .line 151
    new-instance v1, Lcom/networkbench/agent/impl/logtrack/d;

    invoke-direct {v1, p0}, Lcom/networkbench/agent/impl/logtrack/d;-><init>(Lcom/networkbench/agent/impl/logtrack/LoganConfig;)V

    sput-object v1, Lcom/networkbench/agent/impl/logtrack/d;->l:Lcom/networkbench/agent/impl/logtrack/d;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 152
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 153
    :cond_1
    :goto_2
    sget-object p0, Lcom/networkbench/agent/impl/logtrack/d;->l:Lcom/networkbench/agent/impl/logtrack/d;

    return-object p0
.end method

.method private a(I)Ljava/lang/StackTraceElement;
    .locals 1

    .line 145
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    .line 146
    array-length v0, p0

    if-le v0, p1, :cond_0

    .line 147
    aget-object p0, p0, p1

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private c()V
    .locals 13

    iget-object v0, p0, Lcom/networkbench/agent/impl/logtrack/d;->j:Lcom/networkbench/agent/impl/logtrack/g;

    if-nez v0, :cond_0

    new-instance v1, Lcom/networkbench/agent/impl/logtrack/g;

    iget-object v2, p0, Lcom/networkbench/agent/impl/logtrack/d;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v3, p0, Lcom/networkbench/agent/impl/logtrack/d;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/networkbench/agent/impl/logtrack/d;->c:Ljava/lang/String;

    iget-wide v5, p0, Lcom/networkbench/agent/impl/logtrack/d;->d:J

    iget-wide v7, p0, Lcom/networkbench/agent/impl/logtrack/d;->e:J

    iget-wide v9, p0, Lcom/networkbench/agent/impl/logtrack/d;->f:J

    iget-object v11, p0, Lcom/networkbench/agent/impl/logtrack/d;->h:Ljava/lang/String;

    iget-object v12, p0, Lcom/networkbench/agent/impl/logtrack/d;->i:Ljava/lang/String;

    invoke-direct/range {v1 .. v12}, Lcom/networkbench/agent/impl/logtrack/g;-><init>(Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/networkbench/agent/impl/logtrack/d;->j:Lcom/networkbench/agent/impl/logtrack/g;

    const-string v0, "logan-thread"

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/logtrack/d;->j:Lcom/networkbench/agent/impl/logtrack/g;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/networkbench/agent/impl/logtrack/d;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    new-instance v0, Lcom/networkbench/agent/impl/logtrack/e;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/logtrack/e;-><init>()V

    .line 169
    sget-object v1, Lcom/networkbench/agent/impl/logtrack/e$a;->c:Lcom/networkbench/agent/impl/logtrack/e$a;

    iput-object v1, v0, Lcom/networkbench/agent/impl/logtrack/e;->a:Lcom/networkbench/agent/impl/logtrack/e$a;

    .line 170
    iget-object v1, p0, Lcom/networkbench/agent/impl/logtrack/d;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object p0, p0, Lcom/networkbench/agent/impl/logtrack/d;->j:Lcom/networkbench/agent/impl/logtrack/g;

    if-eqz p0, :cond_1

    .line 172
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/logtrack/g;->d()V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;ILcom/networkbench/agent/impl/logtrack/c;Ljava/lang/String;J)V
    .locals 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v0, Lcom/networkbench/agent/impl/logtrack/e;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/logtrack/e;-><init>()V

    sget-object v1, Lcom/networkbench/agent/impl/logtrack/e$a;->a:Lcom/networkbench/agent/impl/logtrack/e$a;

    iput-object v1, v0, Lcom/networkbench/agent/impl/logtrack/e;->a:Lcom/networkbench/agent/impl/logtrack/e$a;

    new-instance v1, Lcom/networkbench/agent/impl/logtrack/k;

    invoke-direct {v1}, Lcom/networkbench/agent/impl/logtrack/k;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    iput-object p1, v1, Lcom/networkbench/agent/impl/logtrack/k;->a:Ljava/lang/String;

    iput-wide p5, v1, Lcom/networkbench/agent/impl/logtrack/k;->e:J

    iput p2, v1, Lcom/networkbench/agent/impl/logtrack/k;->f:I

    iput-boolean v5, v1, Lcom/networkbench/agent/impl/logtrack/k;->b:Z

    iput-wide v3, v1, Lcom/networkbench/agent/impl/logtrack/k;->c:J

    iput-object v2, v1, Lcom/networkbench/agent/impl/logtrack/k;->d:Ljava/lang/String;

    const-string p1, ""

    if-nez p4, :cond_2

    move-object p4, p1

    :cond_2
    iput-object p4, v1, Lcom/networkbench/agent/impl/logtrack/k;->i:Ljava/lang/String;

    sget p2, Lcom/networkbench/agent/impl/logtrack/Logan;->STACK_INVOKE_INDEX:I

    invoke-direct {p0, p2}, Lcom/networkbench/agent/impl/logtrack/d;->a(I)Ljava/lang/StackTraceElement;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_3

    move-object p4, p1

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object p4

    :goto_1
    iput-object p4, v1, Lcom/networkbench/agent/impl/logtrack/k;->g:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p4

    if-nez p4, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p1

    :goto_2
    iput-object p1, v1, Lcom/networkbench/agent/impl/logtrack/k;->h:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p1

    iput p1, v1, Lcom/networkbench/agent/impl/logtrack/k;->j:I

    invoke-virtual {p3}, Lcom/networkbench/agent/impl/logtrack/c;->a()I

    move-result p1

    iput p1, v1, Lcom/networkbench/agent/impl/logtrack/k;->k:I

    :cond_5
    iput-object v1, v0, Lcom/networkbench/agent/impl/logtrack/e;->b:Lcom/networkbench/agent/impl/logtrack/k;

    iget-object p1, p0, Lcom/networkbench/agent/impl/logtrack/d;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result p1

    int-to-long p1, p1

    iget-wide p3, p0, Lcom/networkbench/agent/impl/logtrack/d;->g:J

    cmp-long p1, p1, p3

    if-gez p1, :cond_6

    iget-object p1, p0, Lcom/networkbench/agent/impl/logtrack/d;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/networkbench/agent/impl/logtrack/d;->j:Lcom/networkbench/agent/impl/logtrack/g;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/logtrack/g;->d()V

    :cond_6
    :goto_3
    return-void
.end method

.method public a([Ljava/lang/String;Lcom/networkbench/agent/impl/logtrack/SendLogRunnable;)V
    .locals 7

    .line 154
    iget-object v0, p0, Lcom/networkbench/agent/impl/logtrack/d;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    .line 155
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 156
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 157
    :cond_1
    invoke-direct {p0, v2}, Lcom/networkbench/agent/impl/logtrack/d;->a(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    .line 158
    new-instance v4, Lcom/networkbench/agent/impl/logtrack/e;

    invoke-direct {v4}, Lcom/networkbench/agent/impl/logtrack/e;-><init>()V

    .line 159
    new-instance v5, Lcom/networkbench/agent/impl/logtrack/h;

    invoke-direct {v5}, Lcom/networkbench/agent/impl/logtrack/h;-><init>()V

    .line 160
    sget-object v6, Lcom/networkbench/agent/impl/logtrack/e$a;->b:Lcom/networkbench/agent/impl/logtrack/e$a;

    iput-object v6, v4, Lcom/networkbench/agent/impl/logtrack/e;->a:Lcom/networkbench/agent/impl/logtrack/e$a;

    .line 161
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/networkbench/agent/impl/logtrack/h;->b:Ljava/lang/String;

    .line 162
    iput-object p2, v5, Lcom/networkbench/agent/impl/logtrack/h;->d:Lcom/networkbench/agent/impl/logtrack/SendLogRunnable;

    .line 163
    iput-object v5, v4, Lcom/networkbench/agent/impl/logtrack/e;->c:Lcom/networkbench/agent/impl/logtrack/h;

    .line 164
    iget-object v2, p0, Lcom/networkbench/agent/impl/logtrack/d;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v2, p0, Lcom/networkbench/agent/impl/logtrack/d;->j:Lcom/networkbench/agent/impl/logtrack/g;

    if-eqz v2, :cond_2

    .line 166
    invoke-virtual {v2}, Lcom/networkbench/agent/impl/logtrack/g;->d()V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public b()Ljava/io/File;
    .locals 1

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/networkbench/agent/impl/logtrack/d;->c:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
