.class public Lcom/networkbench/agent/impl/data/type/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "PageTrace"


# instance fields
.field protected e:Lcom/networkbench/agent/impl/asyncaction/r;

.field protected f:Lcom/networkbench/agent/impl/data/type/p;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/networkbench/agent/impl/asyncaction/r;->b()Lcom/networkbench/agent/impl/asyncaction/r;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/type/q;->e:Lcom/networkbench/agent/impl/asyncaction/r;

    return-void
.end method


# virtual methods
.method public a()Lcom/networkbench/agent/impl/data/type/p;
    .locals 4

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/data/type/q;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "pageOnResumeEndIns invoke in "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "PageTrace"

    invoke-static {v2, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/data/type/q;->f:Lcom/networkbench/agent/impl/data/type/p;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/asyncaction/s;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "pageOnResumeBeginIns"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " pageTraceMetric is complete"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTraceEngine;->exitMethodWithTime(J)V

    iget-object v2, p0, Lcom/networkbench/agent/impl/data/type/q;->e:Lcom/networkbench/agent/impl/asyncaction/r;

    iget-object v3, p0, Lcom/networkbench/agent/impl/data/type/q;->f:Lcom/networkbench/agent/impl/data/type/p;

    invoke-virtual {v2, v3, v0, v1}, Lcom/networkbench/agent/impl/asyncaction/r;->a(Lcom/networkbench/agent/impl/asyncaction/e;J)V

    invoke-static {}, Lcom/networkbench/agent/impl/i/d;->a()Lcom/networkbench/agent/impl/i/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/i/d;->d()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->ai()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->aK()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/networkbench/agent/impl/i/f;->a()Lcom/networkbench/agent/impl/i/f;

    move-result-object v0

    invoke-static {}, Lcom/networkbench/agent/impl/data/d/b;->a()Lcom/networkbench/agent/impl/data/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/d/b;->b()Lcom/networkbench/agent/impl/data/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/d/c;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/networkbench/agent/impl/data/type/q;->f:Lcom/networkbench/agent/impl/data/type/p;

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/agent/impl/i/f;->a(Ljava/lang/String;Lcom/networkbench/agent/impl/data/type/p;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/networkbench/agent/impl/data/type/q;->f:Lcom/networkbench/agent/impl/data/type/p;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/networkbench/agent/impl/i/d;->a()Lcom/networkbench/agent/impl/i/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/i/d;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/data/type/p;->a(Z)V

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/data/type/q;->f:Lcom/networkbench/agent/impl/data/type/p;

    return-object p0
.end method

.method public a(Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;Ljava/lang/String;)Lcom/networkbench/agent/impl/data/type/p;
    .locals 0

    .line 152
    new-instance p0, Lcom/networkbench/agent/impl/data/type/p;

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/data/type/p;-><init>(Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;)V

    return-object p0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 179
    iget-object p0, p0, Lcom/networkbench/agent/impl/data/type/q;->f:Lcom/networkbench/agent/impl/data/type/p;

    .line 180
    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/data/type/p;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/networkbench/agent/impl/data/type/r;)V
    .locals 1

    .line 153
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/data/type/q;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/data/type/q;->f:Lcom/networkbench/agent/impl/data/type/p;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/asyncaction/s;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "pageOnResumeBeginIns"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "pageTraceMetric is complete"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PageTrace"

    invoke-static {p1, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 156
    :cond_1
    const-string p0, "#onResume"

    .line 157
    invoke-static {p1, p0}, Ld21;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 158
    sget-object p1, Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;->OTHER:Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;->getValue()I

    move-result p1

    invoke-static {p0, p1, p2}, Lcom/networkbench/agent/impl/instrumentation/NBSTraceEngine;->enterMethod(Ljava/lang/String;ILcom/networkbench/agent/impl/data/type/r;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/data/type/r;)V
    .locals 5

    .line 159
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/data/type/q;->d()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 160
    :cond_0
    sget-object v0, Lcom/networkbench/agent/impl/data/a/b;->a:Lcom/networkbench/agent/impl/data/a/b;

    invoke-virtual {v0, p1}, Lcom/networkbench/agent/impl/data/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-static {}, Lcom/networkbench/agent/impl/data/d/b;->a()Lcom/networkbench/agent/impl/data/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/d/b;->b()Lcom/networkbench/agent/impl/data/d/c;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/networkbench/agent/impl/data/d/c;->a(Ljava/lang/String;J)V

    .line 162
    invoke-static {}, Lcom/networkbench/agent/impl/data/d/b;->a()Lcom/networkbench/agent/impl/data/d/b;

    move-result-object v0

    invoke-static {}, Lcom/networkbench/agent/impl/data/d/b;->a()Lcom/networkbench/agent/impl/data/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/d/b;->c()Lcom/networkbench/agent/impl/data/d/c;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/networkbench/agent/impl/data/d/b;->a(Ljava/lang/String;Lcom/networkbench/agent/impl/data/d/c;)V

    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 164
    new-instance v2, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;

    invoke-direct {v2, v0, v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;-><init>(J)V

    .line 165
    sget-object v3, Lcom/networkbench/agent/impl/data/type/SlowStartState$UEType;->pageLoading:Lcom/networkbench/agent/impl/data/type/SlowStartState$UEType;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->metricName:Ljava/lang/String;

    .line 166
    iput-object p1, v2, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->className:Ljava/lang/String;

    .line 167
    invoke-virtual {p0, v2, p1}, Lcom/networkbench/agent/impl/data/type/q;->a(Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;Ljava/lang/String;)Lcom/networkbench/agent/impl/data/type/p;

    move-result-object v3

    iput-object v3, p0, Lcom/networkbench/agent/impl/data/type/q;->f:Lcom/networkbench/agent/impl/data/type/p;

    .line 168
    invoke-static {}, Lcom/networkbench/agent/impl/asyncaction/r;->b()Lcom/networkbench/agent/impl/asyncaction/r;

    move-result-object v3

    iput-object v3, p0, Lcom/networkbench/agent/impl/data/type/q;->e:Lcom/networkbench/agent/impl/asyncaction/r;

    .line 169
    instance-of v4, p0, Lcom/networkbench/agent/impl/data/type/a;

    if-eqz v4, :cond_1

    .line 170
    sget-object v4, Lcom/networkbench/agent/impl/data/type/r;->n:Lcom/networkbench/agent/impl/data/type/r;

    iput-object v4, v2, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->unitType:Lcom/networkbench/agent/impl/data/type/r;

    goto :goto_0

    .line 171
    :cond_1
    instance-of v4, p0, Lcom/networkbench/agent/impl/data/type/j;

    if-eqz v4, :cond_2

    .line 172
    sget-object v4, Lcom/networkbench/agent/impl/data/type/r;->o:Lcom/networkbench/agent/impl/data/type/r;

    iput-object v4, v2, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->unitType:Lcom/networkbench/agent/impl/data/type/r;

    .line 173
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/data/type/q;->f:Lcom/networkbench/agent/impl/data/type/p;

    invoke-virtual {v3, p0}, Lcom/networkbench/agent/impl/asyncaction/r;->a(Lcom/networkbench/agent/impl/asyncaction/e;)V

    .line 174
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;->OTHER:Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;

    .line 175
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;->getValue()I

    move-result p1

    .line 176
    invoke-static {p0, p1, p3, v0, v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTraceEngine;->enterMethodWithTime(Ljava/lang/String;ILcom/networkbench/agent/impl/data/type/r;J)Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;

    .line 177
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->aK()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 178
    invoke-static {}, Lcom/networkbench/agent/impl/i/f;->a()Lcom/networkbench/agent/impl/i/f;

    move-result-object p0

    invoke-static {}, Lcom/networkbench/agent/impl/data/d/b;->a()Lcom/networkbench/agent/impl/data/d/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/data/d/b;->b()Lcom/networkbench/agent/impl/data/d/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/data/d/c;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/i/f;->a(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public b()V
    .locals 0

    .line 23
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/data/type/q;->d()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 24
    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/instrumentation/NBSTraceEngine;->exitMethod()V

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/networkbench/agent/impl/data/type/r;)V
    .locals 0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/data/type/q;->d()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "#onStart"

    invoke-static {p1, p0}, Ld21;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;->OTHER:Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;->getValue()I

    move-result p1

    invoke-static {p0, p1, p2}, Lcom/networkbench/agent/impl/instrumentation/NBSTraceEngine;->enterMethod(Ljava/lang/String;ILcom/networkbench/agent/impl/data/type/r;)V

    return-void
.end method

.method public c()V
    .locals 0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/data/type/q;->d()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/instrumentation/NBSTraceEngine;->exitMethod()V

    return-void
.end method

.method public d()Z
    .locals 0

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->ai()Z

    move-result p0

    return p0
.end method
