.class Lcom/networkbench/agent/impl/logtrack/g;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field private static final u:Ljava/lang/String; = "LoganThread"

.field private static final v:I = 0xea60

.field private static final w:J = 0x5265c00L

.field private static final x:I = 0x400


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/lang/Object;

.field private volatile c:Z

.field private d:J

.field private volatile e:Z

.field private f:Ljava/io/File;

.field private g:Z

.field private h:J

.field private i:Lcom/networkbench/agent/impl/logtrack/f;

.field private j:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/networkbench/agent/impl/logtrack/e;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:J

.field private n:J

.field private o:J

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:I

.field private s:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/networkbench/agent/impl/logtrack/e;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/networkbench/agent/impl/logtrack/e;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/logtrack/g;->a:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/logtrack/g;->b:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/logtrack/g;->c:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/logtrack/g;->s:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-object p1, p0, Lcom/networkbench/agent/impl/logtrack/g;->j:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-object p2, p0, Lcom/networkbench/agent/impl/logtrack/g;->k:Ljava/lang/String;

    iput-object p3, p0, Lcom/networkbench/agent/impl/logtrack/g;->l:Ljava/lang/String;

    iput-wide p4, p0, Lcom/networkbench/agent/impl/logtrack/g;->m:J

    iput-wide p6, p0, Lcom/networkbench/agent/impl/logtrack/g;->n:J

    iput-wide p8, p0, Lcom/networkbench/agent/impl/logtrack/g;->o:J

    iput-object p10, p0, Lcom/networkbench/agent/impl/logtrack/g;->p:Ljava/lang/String;

    iput-object p11, p0, Lcom/networkbench/agent/impl/logtrack/g;->q:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/networkbench/agent/impl/logtrack/g;I)I
    .locals 0

    .line 156
    iput p1, p0, Lcom/networkbench/agent/impl/logtrack/g;->r:I

    return p1
.end method

.method public static synthetic a(Lcom/networkbench/agent/impl/logtrack/g;)Ljava/lang/Object;
    .locals 0

    .line 227
    iget-object p0, p0, Lcom/networkbench/agent/impl/logtrack/g;->b:Ljava/lang/Object;

    return-object p0
.end method

.method private a()V
    .locals 0

    .line 174
    iget-object p0, p0, Lcom/networkbench/agent/impl/logtrack/g;->i:Lcom/networkbench/agent/impl/logtrack/f;

    if-eqz p0, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/logtrack/f;->logan_flush()V

    :cond_0
    return-void
.end method

.method private a(J)V
    .locals 8

    .line 193
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/networkbench/agent/impl/logtrack/g;->l:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 195
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 196
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 197
    :try_start_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 198
    :cond_0
    const-string v5, "\\."

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 199
    array-length v6, v5

    if-lez v6, :cond_1

    .line 200
    aget-object v6, v5, v2

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v6, p1

    if-gtz v6, :cond_1

    .line 201
    array-length v5, v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 202
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/networkbench/agent/impl/logtrack/g;->l:Ljava/lang/String;

    invoke-direct {v5, v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 203
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(Lcom/networkbench/agent/impl/logtrack/e;)V
    .locals 8

    if-eqz p1, :cond_5

    .line 157
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/logtrack/e;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/logtrack/g;->i:Lcom/networkbench/agent/impl/logtrack/f;

    if-nez v0, :cond_1

    .line 159
    invoke-static {}, Lcom/networkbench/agent/impl/logtrack/f;->a()Lcom/networkbench/agent/impl/logtrack/f;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/logtrack/g;->i:Lcom/networkbench/agent/impl/logtrack/f;

    .line 160
    new-instance v1, Lcom/networkbench/agent/impl/logtrack/g$a;

    invoke-direct {v1, p0}, Lcom/networkbench/agent/impl/logtrack/g$a;-><init>(Lcom/networkbench/agent/impl/logtrack/g;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/logtrack/f;->setOnLoganProtocolStatus(Lcom/networkbench/agent/impl/logtrack/OnLoganProtocolStatus;)V

    .line 161
    iget-object v2, p0, Lcom/networkbench/agent/impl/logtrack/g;->i:Lcom/networkbench/agent/impl/logtrack/f;

    iget-object v3, p0, Lcom/networkbench/agent/impl/logtrack/g;->k:Ljava/lang/String;

    iget-object v4, p0, Lcom/networkbench/agent/impl/logtrack/g;->l:Ljava/lang/String;

    iget-wide v0, p0, Lcom/networkbench/agent/impl/logtrack/g;->n:J

    long-to-int v5, v0

    iget-object v6, p0, Lcom/networkbench/agent/impl/logtrack/g;->p:Ljava/lang/String;

    iget-object v7, p0, Lcom/networkbench/agent/impl/logtrack/g;->q:Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Lcom/networkbench/agent/impl/logtrack/f;->logan_init(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/networkbench/agent/impl/logtrack/g;->i:Lcom/networkbench/agent/impl/logtrack/f;

    sget-boolean v1, Lcom/networkbench/agent/impl/logtrack/Logan;->c:Z

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/logtrack/f;->logan_debug(Z)V

    .line 163
    :cond_1
    iget-object v0, p1, Lcom/networkbench/agent/impl/logtrack/e;->a:Lcom/networkbench/agent/impl/logtrack/e$a;

    sget-object v1, Lcom/networkbench/agent/impl/logtrack/e$a;->a:Lcom/networkbench/agent/impl/logtrack/e$a;

    if-ne v0, v1, :cond_2

    .line 164
    iget-object p1, p1, Lcom/networkbench/agent/impl/logtrack/e;->b:Lcom/networkbench/agent/impl/logtrack/k;

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/logtrack/g;->a(Lcom/networkbench/agent/impl/logtrack/k;)V

    return-void

    .line 165
    :cond_2
    sget-object v1, Lcom/networkbench/agent/impl/logtrack/e$a;->b:Lcom/networkbench/agent/impl/logtrack/e$a;

    if-ne v0, v1, :cond_4

    .line 166
    iget-object v0, p1, Lcom/networkbench/agent/impl/logtrack/e;->c:Lcom/networkbench/agent/impl/logtrack/h;

    iget-object v0, v0, Lcom/networkbench/agent/impl/logtrack/h;->d:Lcom/networkbench/agent/impl/logtrack/SendLogRunnable;

    if-eqz v0, :cond_5

    .line 167
    iget-object v1, p0, Lcom/networkbench/agent/impl/logtrack/g;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 168
    :try_start_0
    iget v0, p0, Lcom/networkbench/agent/impl/logtrack/g;->r:I

    const/16 v2, 0x2711

    if-ne v0, v2, :cond_3

    .line 169
    iget-object p0, p0, Lcom/networkbench/agent/impl/logtrack/g;->s:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 170
    :cond_3
    iget-object p1, p1, Lcom/networkbench/agent/impl/logtrack/e;->c:Lcom/networkbench/agent/impl/logtrack/h;

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/logtrack/g;->a(Lcom/networkbench/agent/impl/logtrack/h;)V

    .line 171
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 172
    :cond_4
    sget-object p1, Lcom/networkbench/agent/impl/logtrack/e$a;->c:Lcom/networkbench/agent/impl/logtrack/e$a;

    if-ne v0, p1, :cond_5

    .line 173
    invoke-direct {p0}, Lcom/networkbench/agent/impl/logtrack/g;->a()V

    :cond_5
    :goto_2
    return-void
.end method

.method private a(Lcom/networkbench/agent/impl/logtrack/h;)V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/networkbench/agent/impl/logtrack/g;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/logtrack/h;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 220
    :cond_0
    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/logtrack/g;->b(Lcom/networkbench/agent/impl/logtrack/h;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 221
    :cond_1
    iget-object v0, p1, Lcom/networkbench/agent/impl/logtrack/h;->d:Lcom/networkbench/agent/impl/logtrack/SendLogRunnable;

    invoke-virtual {v0, p1}, Lcom/networkbench/agent/impl/logtrack/SendLogRunnable;->a(Lcom/networkbench/agent/impl/logtrack/h;)V

    .line 222
    iget-object v0, p1, Lcom/networkbench/agent/impl/logtrack/h;->d:Lcom/networkbench/agent/impl/logtrack/SendLogRunnable;

    new-instance v1, Lcom/networkbench/agent/impl/logtrack/g$b;

    invoke-direct {v1, p0}, Lcom/networkbench/agent/impl/logtrack/g$b;-><init>(Lcom/networkbench/agent/impl/logtrack/g;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/logtrack/SendLogRunnable;->a(Lcom/networkbench/agent/impl/logtrack/SendLogRunnable$OnSendLogCallBackListener;)V

    const/16 v0, 0x2711

    .line 223
    iput v0, p0, Lcom/networkbench/agent/impl/logtrack/g;->r:I

    .line 224
    iget-object v0, p0, Lcom/networkbench/agent/impl/logtrack/g;->t:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_2

    .line 225
    new-instance v0, Lcom/networkbench/agent/impl/logtrack/g$c;

    invoke-direct {v0, p0}, Lcom/networkbench/agent/impl/logtrack/g$c;-><init>(Lcom/networkbench/agent/impl/logtrack/g;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/logtrack/g;->t:Ljava/util/concurrent/ExecutorService;

    .line 226
    :cond_2
    iget-object p0, p0, Lcom/networkbench/agent/impl/logtrack/g;->t:Ljava/util/concurrent/ExecutorService;

    iget-object p1, p1, Lcom/networkbench/agent/impl/logtrack/h;->d:Lcom/networkbench/agent/impl/logtrack/SendLogRunnable;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private a(Lcom/networkbench/agent/impl/logtrack/k;)V
    .locals 12

    .line 204
    iget-object v0, p0, Lcom/networkbench/agent/impl/logtrack/g;->f:Ljava/io/File;

    if-nez v0, :cond_0

    .line 205
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/networkbench/agent/impl/logtrack/g;->l:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/logtrack/g;->f:Ljava/io/File;

    .line 206
    :cond_0
    invoke-direct {p0}, Lcom/networkbench/agent/impl/logtrack/g;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 207
    invoke-static {}, Lcom/networkbench/agent/impl/logtrack/j;->a()J

    move-result-wide v0

    const/4 v2, 0x7

    .line 208
    invoke-virtual {p0, v2, v0, v1}, Lcom/networkbench/agent/impl/logtrack/g;->a(IJ)V

    .line 209
    iput-wide v0, p0, Lcom/networkbench/agent/impl/logtrack/g;->d:J

    .line 210
    iget-object v2, p0, Lcom/networkbench/agent/impl/logtrack/g;->i:Lcom/networkbench/agent/impl/logtrack/f;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/networkbench/agent/impl/logtrack/f;->logan_open(Ljava/lang/String;)V

    .line 211
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 212
    iget-wide v2, p0, Lcom/networkbench/agent/impl/logtrack/g;->h:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 213
    invoke-direct {p0}, Lcom/networkbench/agent/impl/logtrack/g;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/logtrack/g;->g:Z

    .line 214
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/logtrack/g;->h:J

    .line 215
    iget-boolean v0, p0, Lcom/networkbench/agent/impl/logtrack/g;->g:Z

    if-nez v0, :cond_3

    return-void

    .line 216
    :cond_3
    iget-object v1, p0, Lcom/networkbench/agent/impl/logtrack/g;->i:Lcom/networkbench/agent/impl/logtrack/f;

    iget-object v2, p1, Lcom/networkbench/agent/impl/logtrack/k;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/networkbench/agent/impl/logtrack/k;->a:Ljava/lang/String;

    iget-wide v4, p1, Lcom/networkbench/agent/impl/logtrack/k;->e:J

    iget-object v6, p1, Lcom/networkbench/agent/impl/logtrack/k;->g:Ljava/lang/String;

    iget-object v7, p1, Lcom/networkbench/agent/impl/logtrack/k;->h:Ljava/lang/String;

    iget-object v8, p1, Lcom/networkbench/agent/impl/logtrack/k;->d:Ljava/lang/String;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v9, p1, Lcom/networkbench/agent/impl/logtrack/k;->c:J

    const-string v0, ""

    .line 217
    invoke-static {v9, v10, v0, p0}, Lo60;->j(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v9

    .line 218
    iget v10, p1, Lcom/networkbench/agent/impl/logtrack/k;->j:I

    iget v11, p1, Lcom/networkbench/agent/impl/logtrack/k;->k:I

    invoke-virtual/range {v1 .. v11}, Lcom/networkbench/agent/impl/logtrack/f;->logan_write(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3

    .line 228
    iget-object v0, p0, Lcom/networkbench/agent/impl/logtrack/g;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 229
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/networkbench/agent/impl/logtrack/g;->l:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 230
    invoke-static {p0, p1, v2}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    .line 231
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 p0, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance p1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 p2, 0x400

    :try_start_2
    new-array p2, p2, [B

    :goto_0
    invoke-virtual {v1, p2}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1, p2, p0, v0}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_3

    :catch_1
    move-exception p2

    goto :goto_4

    :cond_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    const/4 p0, 0x1

    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_c

    :catch_3
    move-exception p1

    goto :goto_b

    :goto_2
    move-object v0, p1

    goto/16 :goto_e

    :goto_3
    move-object v0, v1

    goto :goto_7

    :goto_4
    move-object v0, v1

    goto :goto_9

    :catchall_1
    move-exception p0

    goto :goto_e

    :catch_4
    move-exception p1

    move-object p2, p1

    goto :goto_5

    :catch_5
    move-exception p1

    move-object p2, p1

    goto :goto_6

    :goto_5
    move-object p1, v0

    goto :goto_3

    :goto_6
    move-object p1, v0

    goto :goto_4

    :catchall_2
    move-exception p0

    move-object p1, v0

    goto :goto_d

    :catch_6
    move-exception p2

    move-object p1, v0

    goto :goto_7

    :catch_7
    move-exception p2

    move-object p1, v0

    goto :goto_9

    :goto_7
    :try_start_5
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v0, :cond_1

    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    goto :goto_8

    :catch_8
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_8
    if-eqz p1, :cond_3

    :try_start_7
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_c

    :catchall_3
    move-exception p0

    goto :goto_d

    :goto_9
    :try_start_8
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v0, :cond_2

    :try_start_9
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_a

    :catch_9
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_a
    if-eqz p1, :cond_3

    :try_start_a
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_c

    :goto_b
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_c
    return p0

    :goto_d
    move-object v1, v0

    goto :goto_2

    :goto_e
    if-eqz v1, :cond_4

    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    goto :goto_f

    :catch_a
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_f
    if-eqz v0, :cond_5

    :try_start_c
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_b

    goto :goto_10

    :catch_b
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_10
    throw p0
.end method

.method public static synthetic b(Lcom/networkbench/agent/impl/logtrack/g;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/networkbench/agent/impl/logtrack/g;->s:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method private b()Z
    .locals 5

    .line 92
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    iget-object v1, p0, Lcom/networkbench/agent/impl/logtrack/g;->l:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    .line 94
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v3, v0

    mul-long/2addr v3, v1

    .line 95
    iget-wide v0, p0, Lcom/networkbench/agent/impl/logtrack/g;->o:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long p0, v3, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 96
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private b(Lcom/networkbench/agent/impl/logtrack/h;)Z
    .locals 5

    iget-object v0, p1, Lcom/networkbench/agent/impl/logtrack/h;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/logtrack/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/networkbench/agent/impl/logtrack/g;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/networkbench/agent/impl/logtrack/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/networkbench/agent/impl/logtrack/h;->b:Ljava/lang/String;

    invoke-static {}, Lcom/networkbench/agent/impl/logtrack/j;->a()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/networkbench/agent/impl/logtrack/g;->a()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/networkbench/agent/impl/logtrack/g;->l:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/networkbench/agent/impl/logtrack/h;->b:Ljava/lang/String;

    const-string v4, ".copy"

    invoke-static {v1, v4, v2}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/networkbench/agent/impl/logtrack/g;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    iput-object v1, p1, Lcom/networkbench/agent/impl/logtrack/h;->c:Ljava/lang/String;

    return v3

    :cond_0
    iput-object v0, p1, Lcom/networkbench/agent/impl/logtrack/h;->c:Ljava/lang/String;

    return v3

    :cond_1
    const-string p0, ""

    iput-object p0, p1, Lcom/networkbench/agent/impl/logtrack/h;->c:Ljava/lang/String;

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic c(Lcom/networkbench/agent/impl/logtrack/g;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/networkbench/agent/impl/logtrack/g;->j:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method

.method private c()Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/networkbench/agent/impl/logtrack/g;->d:J

    cmp-long p0, v2, v0

    if-gez p0, :cond_0

    const-wide/32 v4, 0x5265c00

    add-long/2addr v2, v4

    cmp-long p0, v2, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public a(IJ)V
    .locals 7

    .line 176
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/networkbench/agent/impl/logtrack/g;->l:Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 178
    invoke-static {v0}, Lcom/networkbench/agent/impl/logtrack/j;->a(Ljava/io/File;)[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 179
    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_7

    .line 180
    invoke-static {p0}, Lcom/networkbench/agent/impl/logtrack/j;->a([Ljava/io/File;)V

    .line 181
    array-length v0, p0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v5, p0, v3

    .line 182
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 183
    :cond_1
    array-length v0, p0

    if-lt v0, p1, :cond_7

    array-length v0, p0

    if-ne v0, p1, :cond_2

    if-eqz v4, :cond_2

    goto :goto_3

    .line 184
    :cond_2
    :goto_1
    array-length v0, p0

    sub-int/2addr v0, p1

    add-int/2addr v0, v1

    if-ge v2, v0, :cond_7

    .line 185
    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 186
    sget-boolean v0, Lcom/networkbench/agent/impl/logtrack/Logan;->c:Z

    if-eqz v0, :cond_3

    .line 187
    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 188
    :cond_3
    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 189
    array-length v0, p0

    if-le v0, v2, :cond_6

    .line 190
    sget-boolean v0, Lcom/networkbench/agent/impl/logtrack/Logan;->c:Z

    if-eqz v0, :cond_5

    .line 191
    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 192
    :cond_5
    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_6
    :goto_2
    add-int/2addr v2, v1

    goto :goto_1

    :cond_7
    :goto_3
    return-void
.end method

.method public d()V
    .locals 1

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/logtrack/g;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/networkbench/agent/impl/logtrack/g;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/logtrack/g;->a:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/logtrack/g;->c:Z

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/logtrack/g;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/networkbench/agent/impl/logtrack/g;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/logtrack/g;->a:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    return-void
.end method

.method public run()V
    .locals 4

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    :goto_0
    iget-boolean v0, p0, Lcom/networkbench/agent/impl/logtrack/g;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/networkbench/agent/impl/logtrack/g;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/networkbench/agent/impl/logtrack/g;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :try_start_1
    iget-object v3, p0, Lcom/networkbench/agent/impl/logtrack/g;->j:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/networkbench/agent/impl/logtrack/e;

    if-nez v3, :cond_0

    iput-boolean v2, p0, Lcom/networkbench/agent/impl/logtrack/g;->e:Z

    iget-object v3, p0, Lcom/networkbench/agent/impl/logtrack/g;->a:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    iput-boolean v1, p0, Lcom/networkbench/agent/impl/logtrack/g;->e:Z

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    invoke-direct {p0, v3}, Lcom/networkbench/agent/impl/logtrack/g;->a(Lcom/networkbench/agent/impl/logtrack/e;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    iput-boolean v2, p0, Lcom/networkbench/agent/impl/logtrack/g;->e:Z

    :goto_2
    monitor-exit v0

    goto :goto_0

    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_1
    return-void
.end method
