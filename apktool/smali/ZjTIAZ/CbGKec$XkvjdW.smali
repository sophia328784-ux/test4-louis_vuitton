.class LZjTIAZ/CbGKec$XkvjdW;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZjTIAZ/CbGKec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextObserver"
.end annotation


# static fields
.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;


# instance fields
.field public a:J

.field public b:I

.field public final synthetic c:LZjTIAZ/CbGKec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "K]vVCFFO\u007f\u0011\\R\u0015FEWJOX_D@H\u0010UG[P\u0005EOIV}~<xhzND"

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LZjTIAZ/CbGKec$XkvjdW;->d:Ljava/lang/String;

    const-string v0, "Z@mGpZNNvTx][WP]["

    invoke-static {v0}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LZjTIAZ/CbGKec$XkvjdW;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(LZjTIAZ/CbGKec;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZjTIAZ/CbGKec$XkvjdW;->c:LZjTIAZ/CbGKec;

    const/4 p1, -0x1

    iput p1, p0, LZjTIAZ/CbGKec$XkvjdW;->b:I

    return-void
.end method


# virtual methods
.method public final update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, LZjTIAZ/CbGKec$XkvjdW;->c:LZjTIAZ/CbGKec;

    iget-object v3, v2, LZjTIAZ/CbGKec;->c:Ljava/util/ArrayList;

    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_0
    iget-wide v6, v2, LZjTIAZ/CbGKec;->h:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v2, LZjTIAZ/CbGKec;->h:J

    if-eqz v1, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v7, 0x32

    if-ge v6, v7, :cond_3

    iget-object v6, v2, LZjTIAZ/CbGKec;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-nez v6, :cond_3

    instance-of v6, v1, LZjTIAZ/DmNgem;

    if-eqz v6, :cond_3

    check-cast v1, LZjTIAZ/DmNgem;

    iget-wide v8, v1, LZjTIAZ/DmNgem;->a:J

    iget-wide v10, v0, LZjTIAZ/CbGKec$XkvjdW;->a:J

    sub-long v13, v8, v10

    new-instance v12, LZjTIAZ/DmNgem;

    iget-object v15, v1, LZjTIAZ/DmNgem;->b:Ljava/lang/String;

    iget v6, v1, LZjTIAZ/DmNgem;->c:I

    iget-object v10, v1, LZjTIAZ/DmNgem;->e:Ljava/lang/String;

    iget v1, v1, LZjTIAZ/DmNgem;->d:I

    move/from16 v17, v1

    move/from16 v16, v6

    move-object/from16 v18, v10

    invoke-direct/range {v12 .. v18}, LZjTIAZ/DmNgem;-><init>(JLjava/lang/String;IILjava/lang/String;)V

    move/from16 v1, v16

    iget v6, v0, LZjTIAZ/CbGKec$XkvjdW;->b:I

    if-eq v6, v1, :cond_0

    iput v4, v2, LZjTIAZ/CbGKec;->f:I

    iput v1, v0, LZjTIAZ/CbGKec$XkvjdW;->b:I

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget v1, v2, LZjTIAZ/CbGKec;->f:I

    const/16 v6, 0x9

    if-ge v1, v6, :cond_1

    add-int/2addr v1, v5

    iput v1, v2, LZjTIAZ/CbGKec;->f:I

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iput-wide v8, v0, LZjTIAZ/CbGKec$XkvjdW;->a:J

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v0, v7, :cond_3

    :try_start_1
    iget-object v0, v2, LZjTIAZ/CbGKec;->e:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v2, LZjTIAZ/CbGKec;->e:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {v5}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, LZjTIAZ/CbGKec$zMeEGO;

    invoke-direct {v1, v2}, LZjTIAZ/CbGKec$zMeEGO;-><init>(LZjTIAZ/CbGKec;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, v2, LZjTIAZ/CbGKec;->e:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :goto_1
    sget-object v1, LZjTIAZ/CbGKec$XkvjdW;->e:Ljava/lang/String;

    sget-object v2, LZjTIAZ/CbGKec$XkvjdW;->d:Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/Throwable;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, LwcQZwr/GpYFMu;->g(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    invoke-static {v0}, LZjTIAZ/GWINqE;->b(Ljava/lang/Exception;)V

    :catch_1
    :cond_3
    :goto_2
    return-void
.end method
