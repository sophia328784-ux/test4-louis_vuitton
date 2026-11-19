.class public final Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteEvent;
.super Ljava/util/EventObject;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final bytes:J

.field private final exception:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/lang/Object;J)V
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteEvent;-><init>(Ljava/lang/Object;JLjava/lang/Exception;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;JLjava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    iput-wide p2, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteEvent;->bytes:J

    iput-object p4, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteEvent;->exception:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public getBytes()J
    .locals 2

    iget-wide v0, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteEvent;->bytes:J

    return-wide v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteEvent;->exception:Ljava/lang/Exception;

    return-object p0
.end method

.method public isError()Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/instrumentation/io/NBSStreamCompleteEvent;->exception:Ljava/lang/Exception;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
