.class public Lcom/networkbench/agent/impl/data/type/j;
.super Lcom/networkbench/agent/impl/data/type/q;
.source "SourceFile"


# static fields
.field private static final g:Ljava/lang/String; = "FragmentTrace"


# instance fields
.field public a:Lcom/networkbench/agent/impl/data/type/k;

.field public b:Lcom/networkbench/agent/impl/data/type/k;

.field public c:Lcom/networkbench/agent/impl/data/type/k;

.field public d:Lcom/networkbench/agent/impl/data/type/m;

.field private h:Ljava/lang/String;

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/networkbench/agent/impl/data/type/q;-><init>()V

    invoke-direct {p0}, Lcom/networkbench/agent/impl/data/type/j;->e()V

    return-void
.end method

.method private e()V
    .locals 1

    new-instance v0, Lcom/networkbench/agent/impl/data/type/m;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/data/type/m;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/type/j;->d:Lcom/networkbench/agent/impl/data/type/m;

    new-instance v0, Lcom/networkbench/agent/impl/data/type/k;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/data/type/k;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/type/j;->a:Lcom/networkbench/agent/impl/data/type/k;

    new-instance v0, Lcom/networkbench/agent/impl/data/type/k;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/data/type/k;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/type/j;->b:Lcom/networkbench/agent/impl/data/type/k;

    new-instance v0, Lcom/networkbench/agent/impl/data/type/k;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/data/type/k;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/type/j;->c:Lcom/networkbench/agent/impl/data/type/k;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/data/type/j;->a(Z)V

    return-void
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Lcom/networkbench/agent/impl/data/type/j;->a:Lcom/networkbench/agent/impl/data/type/k;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/type/k;->b()V

    iget-object v0, p0, Lcom/networkbench/agent/impl/data/type/j;->b:Lcom/networkbench/agent/impl/data/type/k;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/type/k;->b()V

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/type/j;->c:Lcom/networkbench/agent/impl/data/type/k;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/data/type/k;->b()V

    return-void
.end method


# virtual methods
.method public a()Lcom/networkbench/agent/impl/data/type/p;
    .locals 1

    iget-object v0, p0, Lcom/networkbench/agent/impl/data/type/j;->c:Lcom/networkbench/agent/impl/data/type/k;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/type/k;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/networkbench/agent/impl/data/type/q;->a()Lcom/networkbench/agent/impl/data/type/p;

    move-result-object v0

    invoke-direct {p0}, Lcom/networkbench/agent/impl/data/type/j;->f()V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public a(Ljava/lang/String;Lcom/networkbench/agent/impl/data/type/r;)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/networkbench/agent/impl/data/type/j;->c:Lcom/networkbench/agent/impl/data/type/k;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/type/k;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    invoke-super {p0, p1, p2}, Lcom/networkbench/agent/impl/data/type/q;->a(Ljava/lang/String;Lcom/networkbench/agent/impl/data/type/r;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/data/type/r;)V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/networkbench/agent/impl/data/type/j;->a:Lcom/networkbench/agent/impl/data/type/k;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/type/k;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    invoke-super {p0, p1, p2, p3}, Lcom/networkbench/agent/impl/data/type/q;->a(Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/data/type/r;)V

    .line 20
    :cond_0
    iput-object p1, p0, Lcom/networkbench/agent/impl/data/type/j;->h:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/networkbench/agent/impl/data/type/j;->i:Z

    return-void
.end method

.method public b()V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/networkbench/agent/impl/data/type/j;->a:Lcom/networkbench/agent/impl/data/type/k;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/type/k;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-super {p0}, Lcom/networkbench/agent/impl/data/type/q;->b()V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Lcom/networkbench/agent/impl/data/type/r;)V
    .locals 4

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->ai()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iput-object p1, p0, Lcom/networkbench/agent/impl/data/type/j;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/networkbench/agent/impl/data/type/j;->b:Lcom/networkbench/agent/impl/data/type/k;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/type/k;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/data/type/j;->i:Z

    if-nez v0, :cond_1

    const-string v0, "FragmentTrace"

    const-string v1, "fragment start is not from onCreateView, so get newest traceEngineManager"

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/asyncaction/r;->b()Lcom/networkbench/agent/impl/asyncaction/r;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/type/q;->e:Lcom/networkbench/agent/impl/asyncaction/r;

    sget-object v0, Lcom/networkbench/agent/impl/data/a/b;->a:Lcom/networkbench/agent/impl/data/a/b;

    invoke-virtual {v0, p1}, Lcom/networkbench/agent/impl/data/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/networkbench/agent/impl/data/d/b;->a()Lcom/networkbench/agent/impl/data/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/d/b;->b()Lcom/networkbench/agent/impl/data/d/c;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/networkbench/agent/impl/data/d/c;->a(Ljava/lang/String;J)V

    invoke-static {}, Lcom/networkbench/agent/impl/data/d/b;->a()Lcom/networkbench/agent/impl/data/d/b;

    move-result-object v0

    invoke-static {}, Lcom/networkbench/agent/impl/data/d/b;->a()Lcom/networkbench/agent/impl/data/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/d/b;->c()Lcom/networkbench/agent/impl/data/d/c;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/networkbench/agent/impl/data/d/b;->a(Ljava/lang/String;Lcom/networkbench/agent/impl/data/d/c;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;

    invoke-direct {v2, v0, v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;-><init>(J)V

    sget-object v3, Lcom/networkbench/agent/impl/data/type/SlowStartState$UEType;->pageLoading:Lcom/networkbench/agent/impl/data/type/SlowStartState$UEType;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->metricName:Ljava/lang/String;

    iput-object p1, v2, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->className:Ljava/lang/String;

    sget-object v3, Lcom/networkbench/agent/impl/data/type/r;->o:Lcom/networkbench/agent/impl/data/type/r;

    iput-object v3, v2, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->unitType:Lcom/networkbench/agent/impl/data/type/r;

    invoke-virtual {p0, v2, p1}, Lcom/networkbench/agent/impl/data/type/q;->a(Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;Ljava/lang/String;)Lcom/networkbench/agent/impl/data/type/p;

    move-result-object v2

    iput-object v2, p0, Lcom/networkbench/agent/impl/data/type/q;->f:Lcom/networkbench/agent/impl/data/type/p;

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/type/q;->e:Lcom/networkbench/agent/impl/asyncaction/r;

    invoke-virtual {p0, v2}, Lcom/networkbench/agent/impl/asyncaction/r;->a(Lcom/networkbench/agent/impl/asyncaction/e;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "#onStart"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;->OTHER:Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;->getValue()I

    move-result p1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTraceEngine;->enterMethodWithTime(Ljava/lang/String;ILcom/networkbench/agent/impl/data/type/r;J)Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;

    return-void

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/networkbench/agent/impl/data/type/q;->b(Ljava/lang/String;Lcom/networkbench/agent/impl/data/type/r;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/networkbench/agent/impl/data/type/j;->b:Lcom/networkbench/agent/impl/data/type/k;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/type/k;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/networkbench/agent/impl/data/type/q;->c()V

    :cond_0
    return-void
.end method
