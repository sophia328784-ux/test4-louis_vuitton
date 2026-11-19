.class public final Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteListenerSource;


# instance fields
.field private count:J

.field private final impl:Ljava/io/OutputStream;

.field private final listenerManager:Lcom/networkbench/agent/impl/instrumentation/io/a;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingOutputStream;->count:J

    new-instance v0, Lcom/networkbench/agent/impl/instrumentation/io/a;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/instrumentation/io/a;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingOutputStream;->listenerManager:Lcom/networkbench/agent/impl/instrumentation/io/a;

    iput-object p1, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingOutputStream;->impl:Ljava/io/OutputStream;

    return-void
.end method

.method private a()V
    .locals 4

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingOutputStream;->listenerManager:Lcom/networkbench/agent/impl/instrumentation/io/a;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/instrumentation/io/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingOutputStream;->listenerManager:Lcom/networkbench/agent/impl/instrumentation/io/a;

    new-instance v1, Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteEvent;

    iget-wide v2, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingOutputStream;->count:J

    invoke-direct {v1, p0, v2, v3}, Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteEvent;-><init>(Ljava/lang/Object;J)V

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/instrumentation/io/a;->a(Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteEvent;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 4

    .line 21
    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingOutputStream;->listenerManager:Lcom/networkbench/agent/impl/instrumentation/io/a;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/instrumentation/io/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingOutputStream;->listenerManager:Lcom/networkbench/agent/impl/instrumentation/io/a;

    new-instance v1, Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteEvent;

    iget-wide v2, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingOutputStream;->count:J

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteEvent;-><init>(Ljava/lang/Object;JLjava/lang/Exception;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/instrumentation/io/a;->b(Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteEvent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addStreamCompleteListener(Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteListener;)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingOutputStream;->listenerManager:Lcom/networkbench/agent/impl/instrumentation/io/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/instrumentation/io/a;->a(Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteListener;)V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingOutputStream;->impl:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingOutputStream;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingOutputStream;->a(Ljava/lang/Exception;)V

    throw v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingOutputStream;->impl:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingOutputStream;->a(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getCount()J
    .locals 2

    iget-wide v0, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingOutputStream;->count:J

    return-wide v0
.end method

.method public removeStreamCompleteListener(Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteListener;)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingOutputStream;->listenerManager:Lcom/networkbench/agent/impl/instrumentation/io/a;

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/instrumentation/io/a;->b(Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteListener;)V

    return-void
.end method

.method public write(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingOutputStream;->impl:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    iget-wide v0, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingOutputStream;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingOutputStream;->count:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingOutputStream;->a(Ljava/lang/Exception;)V

    throw p1
.end method

.method public write([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingOutputStream;->impl:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 19
    iget-wide v0, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingOutputStream;->count:J

    array-length p1, p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingOutputStream;->count:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 20
    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingOutputStream;->a(Ljava/lang/Exception;)V

    .line 21
    throw p1
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingOutputStream;->impl:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 23
    iget-wide p1, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingOutputStream;->count:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingOutputStream;->count:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 24
    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/instrumentation/io/NBSCountingOutputStream;->a(Ljava/lang/Exception;)V

    .line 25
    throw p1
.end method
