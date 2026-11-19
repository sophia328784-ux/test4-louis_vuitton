.class Lcom/networkbench/agent/impl/okhttp3/a$1;
.super Lcom/networkbench/agent/impl/util/y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/okhttp3/a;->a(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

.field final synthetic b:Lcom/networkbench/agent/impl/okhttp3/a;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/okhttp3/a;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/okhttp3/a$1;->b:Lcom/networkbench/agent/impl/okhttp3/a;

    iput-object p2, p0, Lcom/networkbench/agent/impl/okhttp3/a$1;->a:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/util/y;-><init>()V

    return-void
.end method


# virtual methods
.method public tryCatchRun()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/okhttp3/a$1;->a:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->end()Lcom/networkbench/agent/impl/a/a/b;

    new-instance v0, Lcom/networkbench/agent/impl/d/b/c;

    iget-object p0, p0, Lcom/networkbench/agent/impl/okhttp3/a$1;->a:Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;

    invoke-direct {v0, p0}, Lcom/networkbench/agent/impl/d/b/c;-><init>(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ai;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NBSBufferedSource transactionEnd   has an error : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lz81;->k(Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V

    return-void
.end method
