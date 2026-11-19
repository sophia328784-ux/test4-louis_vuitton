.class Lcom/clj/fastble/bluetooth/SplitWriter$2;
.super Lcom/clj/fastble/callback/BleWriteCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/clj/fastble/bluetooth/SplitWriter;


# direct methods
.method public constructor <init>(Lcom/clj/fastble/bluetooth/SplitWriter;)V
    .locals 0

    iput-object p1, p0, Lcom/clj/fastble/bluetooth/SplitWriter$2;->a:Lcom/clj/fastble/bluetooth/SplitWriter;

    invoke-direct {p0}, Lcom/clj/fastble/callback/BleWriteCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onWriteFailure(Lcom/clj/fastble/exception/BleException;)V
    .locals 5

    iget-object p0, p0, Lcom/clj/fastble/bluetooth/SplitWriter$2;->a:Lcom/clj/fastble/bluetooth/SplitWriter;

    iget-object v0, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->i:Lcom/clj/fastble/callback/BleWriteCallback;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/clj/fastble/exception/OtherException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "exception occur while writing: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/clj/fastble/exception/BleException;->c:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/clj/fastble/exception/OtherException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/clj/fastble/callback/BleWriteCallback;->onWriteFailure(Lcom/clj/fastble/exception/BleException;)V

    :cond_0
    iget-boolean p1, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->g:Z

    if-eqz p1, :cond_1

    const/16 p1, 0x33

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-wide v1, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->h:J

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method

.method public final onWriteSuccess(II[B)V
    .locals 2

    iget-object p0, p0, Lcom/clj/fastble/bluetooth/SplitWriter$2;->a:Lcom/clj/fastble/bluetooth/SplitWriter;

    iget-object p1, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->b:Landroid/os/Handler;

    iget p2, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->k:I

    iget-object v0, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->j:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    sub-int/2addr p2, v0

    iget-object v0, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->i:Lcom/clj/fastble/callback/BleWriteCallback;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->k:I

    invoke-virtual {v0, p2, v1, p3}, Lcom/clj/fastble/callback/BleWriteCallback;->onWriteSuccess(II[B)V

    :cond_0
    iget-boolean p2, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->g:Z

    if-eqz p2, :cond_1

    const/16 p2, 0x33

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    iget-wide v0, p0, Lcom/clj/fastble/bluetooth/SplitWriter;->h:J

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method
