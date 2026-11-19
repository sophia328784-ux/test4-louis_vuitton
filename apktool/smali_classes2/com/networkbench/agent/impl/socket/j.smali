.class public Lcom/networkbench/agent/impl/socket/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:Lcom/networkbench/agent/impl/c/e;


# instance fields
.field private a:Z

.field private b:J

.field private c:Ljava/lang/String;

.field private e:I

.field private f:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/socket/j;->d:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/networkbench/agent/impl/socket/j;->c:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/networkbench/agent/impl/socket/j;->e:I

    return-void
.end method

.method private b(I)V
    .locals 2

    iget-object v0, p0, Lcom/networkbench/agent/impl/socket/j;->f:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/networkbench/agent/impl/socket/j;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/networkbench/agent/impl/socket/j;->d:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "begin set transaction first remain time"

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/socket/j;->f:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    iget v1, p0, Lcom/networkbench/agent/impl/socket/j;->e:I

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setFirstPacketPeriod(I)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/socket/j;->f:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setRemainPackage(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/networkbench/agent/impl/socket/j;->f:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    return-object p0
.end method

.method public a(I)V
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/networkbench/agent/impl/socket/j;->f:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    if-eqz p0, :cond_0

    .line 16
    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->setTcpHandShakeTime(I)V

    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 0

    .line 17
    iput-wide p1, p0, Lcom/networkbench/agent/impl/socket/j;->b:J

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/networkbench/agent/impl/socket/j;->a:Z

    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V
    .locals 2

    if-nez p1, :cond_0

    sget-object v0, Lcom/networkbench/agent/impl/socket/j;->d:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "transactionState == null aaaaaaaa"

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lcom/networkbench/agent/impl/socket/j;->f:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 12
    :cond_0
    iput-object p1, p0, Lcom/networkbench/agent/impl/socket/j;->c:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/networkbench/agent/impl/socket/j;->a:Z

    return-void
.end method

.method public b(J)V
    .locals 3

    .line 32
    iget-wide v0, p0, Lcom/networkbench/agent/impl/socket/j;->b:J

    sub-long/2addr p1, v0

    iget v0, p0, Lcom/networkbench/agent/impl/socket/j;->e:I

    int-to-long v1, v0

    sub-long/2addr p1, v1

    long-to-int p1, p1

    .line 33
    iget-object p2, p0, Lcom/networkbench/agent/impl/socket/j;->c:Ljava/lang/String;

    const/4 v1, 0x0

    if-lez p1, :cond_0

    move v2, p1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {p2, v0, v2}, Lcom/networkbench/agent/impl/socket/r;->a(Ljava/lang/String;II)V

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    move p1, v1

    .line 34
    :goto_1
    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/socket/j;->b(I)V

    return-void
.end method

.method public c(J)V
    .locals 9

    iget-wide v0, p0, Lcom/networkbench/agent/impl/socket/j;->b:J

    cmp-long v2, p1, v0

    const-string v3, ", hostName:"

    const-string v4, ", lastWriteStamp:"

    if-gtz v2, :cond_0

    sget-object v0, Lcom/networkbench/agent/impl/socket/j;->d:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "get first package firstReadTime:"

    invoke-static {p1, p2, v1, v4}, Lpq0;->q(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v1, p0, Lcom/networkbench/agent/impl/socket/j;->b:J

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/networkbench/agent/impl/socket/j;->c:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    sub-long v5, p1, v0

    const-wide/16 v7, 0x4e20

    cmp-long v2, v5, v7

    if-ltz v2, :cond_1

    sget-object v0, Lcom/networkbench/agent/impl/socket/j;->d:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "first package is too big, firstReadTime:"

    invoke-static {p1, p2, v1, v4}, Lpq0;->q(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v1, p0, Lcom/networkbench/agent/impl/socket/j;->b:J

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/networkbench/agent/impl/socket/j;->c:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/networkbench/agent/impl/socket/j;->a:Z

    if-nez v2, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/networkbench/agent/impl/socket/j;->a:Z

    sub-long v0, p1, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/networkbench/agent/impl/socket/j;->e:I

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/networkbench/agent/impl/socket/j;->b(J)V

    return-void
.end method
