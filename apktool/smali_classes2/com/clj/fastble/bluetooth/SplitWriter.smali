.class public Lcom/clj/fastble/bluetooth/SplitWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/os/HandlerThread;

.field public final b:Landroid/os/Handler;

.field public c:Lcom/clj/fastble/bluetooth/BleBluetooth;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:[B

.field public g:Z

.field public h:J

.field public i:Lcom/clj/fastble/callback/BleWriteCallback;

.field public j:Ljava/util/LinkedList;

.field public k:I

.field public final l:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, v0}, Lcom/clj/fastble/bluetooth/SplitWriter;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->l:Z

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "splitWriter"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->a:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance v0, Lcom/clj/fastble/bluetooth/SplitWriter$1;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/clj/fastble/bluetooth/SplitWriter$1;-><init>(Lcom/clj/fastble/bluetooth/SplitWriter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a(Lcom/clj/fastble/bluetooth/BleBluetooth;Ljava/lang/String;Ljava/lang/String;[BZJLcom/clj/fastble/callback/BleWriteCallback;)V
    .locals 2

    iput-object p1, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->c:Lcom/clj/fastble/bluetooth/BleBluetooth;

    iput-object p2, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->f:[B

    iput-boolean p5, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->g:Z

    iput-wide p6, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->h:J

    invoke-static {}, Lcom/clj/fastble/BleManager;->c()Lcom/clj/fastble/BleManager;

    move-result-object p1

    iget p1, p1, Lcom/clj/fastble/BleManager;->f:I

    iput-object p8, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->i:Lcom/clj/fastble/callback/BleWriteCallback;

    iget-object p2, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->f:[B

    if-eqz p2, :cond_7

    const/4 p3, 0x1

    if-lt p1, p3, :cond_6

    new-instance p4, Ljava/util/LinkedList;

    invoke-direct {p4}, Ljava/util/LinkedList;-><init>()V

    array-length p5, p2

    rem-int/2addr p5, p1

    if-nez p5, :cond_0

    array-length p5, p2

    div-int/2addr p5, p1

    goto :goto_0

    :cond_0
    array-length p5, p2

    div-int/2addr p5, p1

    add-int/2addr p5, p3

    int-to-float p5, p5

    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result p5

    :goto_0
    const/4 p6, 0x0

    if-lez p5, :cond_4

    move p7, p6

    :goto_1
    if-ge p7, p5, :cond_4

    if-eq p5, p3, :cond_2

    add-int/lit8 p8, p5, -0x1

    if-ne p7, p8, :cond_1

    goto :goto_2

    :cond_1
    mul-int p8, p7, p1

    new-array v0, p1, [B

    invoke-static {p2, p8, v0, p6, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    :cond_2
    :goto_2
    array-length p8, p2

    rem-int/2addr p8, p1

    if-nez p8, :cond_3

    move p8, p1

    goto :goto_3

    :cond_3
    array-length p8, p2

    rem-int/2addr p8, p1

    :goto_3
    mul-int v0, p7, p1

    new-array v1, p8, [B

    invoke-static {p2, v0, v1, p6, p8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    :goto_4
    invoke-virtual {p4, v0}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    add-int/lit8 p7, p7, 0x1

    goto :goto_1

    :cond_4
    iput-object p4, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->j:Ljava/util/LinkedList;

    iget-boolean p1, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->l:Z

    if-eqz p1, :cond_5

    invoke-virtual {p4}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    array-length p1, p1

    const/4 p2, 0x6

    if-gt p1, p2, :cond_5

    iget-object p1, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->j:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    array-length p3, p1

    add-int/2addr p3, p2

    new-array p2, p3, [B

    array-length p3, p1

    invoke-static {p1, p6, p2, p6, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->j:Ljava/util/LinkedList;

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    :cond_5
    iget-object p1, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->j:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    iput p1, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->k:I

    invoke-virtual {p0}, Lcom/clj/fastble/bluetooth/SplitWriter;->b()V

    return-void

    :cond_6
    const-string p0, "split count should higher than 0!"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_7
    const-string p0, "data is Null!"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 5

    iget-object v0, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->b:Landroid/os/Handler;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->i:Lcom/clj/fastble/callback/BleWriteCallback;

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->k:I

    invoke-virtual {v0, p0}, Lcom/clj/fastble/callback/BleWriteCallback;->onWriteFinished(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object v2, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->c:Lcom/clj/fastble/bluetooth/BleBluetooth;

    invoke-virtual {v2}, Lcom/clj/fastble/bluetooth/BleBluetooth;->e()Lcom/clj/fastble/bluetooth/BleConnector;

    move-result-object v2

    iget-object v3, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/clj/fastble/bluetooth/BleConnector;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/clj/fastble/bluetooth/SplitWriter$2;

    invoke-direct {v3, p0}, Lcom/clj/fastble/bluetooth/SplitWriter$2;-><init>(Lcom/clj/fastble/bluetooth/SplitWriter;)V

    iget-object v4, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->e:Ljava/lang/String;

    invoke-virtual {v2, v0, v3, v4}, Lcom/clj/fastble/bluetooth/BleConnector;->f([BLcom/clj/fastble/callback/BleWriteCallback;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->g:Z

    if-nez v0, :cond_1

    const/16 v0, 0x33

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-wide v2, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->h:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method
