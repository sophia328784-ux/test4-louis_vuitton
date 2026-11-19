.class public Lcom/networkbench/agent/impl/asyncaction/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/asyncaction/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0

    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;)V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;)V
    .locals 0

    .line 2
    return-void
.end method

.method public a(Ljava/util/UUID;)V
    .locals 0

    .line 3
    return-void
.end method

.method public b()Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;
    .locals 0

    new-instance p0, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;-><init>()V

    return-object p0
.end method

.method public b(Lcom/networkbench/agent/impl/instrumentation/NBSUnit;)V
    .locals 0

    .line 7
    return-void
.end method

.method public b(Ljava/util/UUID;)Z
    .locals 0

    .line 6
    const/4 p0, 0x0

    return p0
.end method

.method public c()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
