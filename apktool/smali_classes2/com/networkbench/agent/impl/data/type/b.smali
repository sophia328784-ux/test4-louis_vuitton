.class public Lcom/networkbench/agent/impl/data/type/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "AppColdLaunch"

.field private static final b:Lcom/networkbench/agent/impl/c/e;

.field private static c:Lcom/networkbench/agent/impl/data/type/b;


# instance fields
.field private d:Lcom/networkbench/agent/impl/data/type/d;

.field private e:Lcom/networkbench/agent/impl/asyncaction/r;

.field private f:Lcom/networkbench/agent/impl/data/type/p;

.field private g:Landroid/content/Context;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:I

.field private n:Z

.field private o:Lcom/networkbench/agent/impl/data/type/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/data/type/b;->b:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Lcom/networkbench/agent/impl/data/type/b;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/data/type/b;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/data/type/b;->c:Lcom/networkbench/agent/impl/data/type/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/data/type/b;->i:Z

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/data/type/b;->j:Z

    const/4 v1, 0x1

    iput v1, p0, Lcom/networkbench/agent/impl/data/type/b;->m:I

    iput-boolean v1, p0, Lcom/networkbench/agent/impl/data/type/b;->h:Z

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/data/type/b;->k:Z

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/data/type/b;->l:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/networkbench/agent/impl/data/type/b;->o:Lcom/networkbench/agent/impl/data/type/i;

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/data/type/b;->n:Z

    return-void
.end method

.method public static a()Lcom/networkbench/agent/impl/data/type/b;
    .locals 1

    .line 105
    sget-object v0, Lcom/networkbench/agent/impl/data/type/b;->c:Lcom/networkbench/agent/impl/data/type/b;

    return-object v0
.end method


# virtual methods
.method public a(J)V
    .locals 6

    .line 106
    invoke-static {}, Lcom/networkbench/agent/impl/asyncaction/r;->b()Lcom/networkbench/agent/impl/asyncaction/r;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/type/b;->e:Lcom/networkbench/agent/impl/asyncaction/r;

    .line 107
    new-instance v1, Ljava/util/UUID;

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->a()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    .line 108
    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->a()Ljava/security/SecureRandom;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/asyncaction/r;->a(Ljava/lang/String;)V

    .line 110
    new-instance v0, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;

    invoke-direct {v0, p1, p2}, Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;-><init>(J)V

    .line 111
    sget-object p1, Lcom/networkbench/agent/impl/data/type/SlowStartState$UEType;->appstart:Lcom/networkbench/agent/impl/data/type/SlowStartState$UEType;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->metricName:Ljava/lang/String;

    .line 112
    sget-object p1, Lcom/networkbench/agent/impl/data/type/r;->m:Lcom/networkbench/agent/impl/data/type/r;

    iput-object p1, v0, Lcom/networkbench/agent/impl/instrumentation/NBSUnit;->unitType:Lcom/networkbench/agent/impl/data/type/r;

    .line 113
    new-instance p1, Lcom/networkbench/agent/impl/data/type/p;

    invoke-direct {p1, v0}, Lcom/networkbench/agent/impl/data/type/p;-><init>(Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;)V

    iput-object p1, p0, Lcom/networkbench/agent/impl/data/type/b;->f:Lcom/networkbench/agent/impl/data/type/p;

    .line 114
    iget-object p0, p0, Lcom/networkbench/agent/impl/data/type/b;->e:Lcom/networkbench/agent/impl/asyncaction/r;

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/asyncaction/r;->a(Lcom/networkbench/agent/impl/asyncaction/e;)V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 5

    new-instance v0, Lcom/networkbench/agent/impl/util/af;

    invoke-direct {v0, p1}, Lcom/networkbench/agent/impl/util/af;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/networkbench/agent/impl/util/r;->a(Landroid/content/Context;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/af;->Q()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    const-string p0, "AppColdLaunch"

    const-string p1, "attachBaseContextBeginIns sdk disable!"

    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/networkbench/agent/impl/data/type/d;->a(Landroid/content/Context;)Lcom/networkbench/agent/impl/data/type/d;

    move-result-object v1

    iput-object v1, p0, Lcom/networkbench/agent/impl/data/type/b;->d:Lcom/networkbench/agent/impl/data/type/d;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/networkbench/agent/impl/data/type/b;->l:Z

    iput-object p1, p0, Lcom/networkbench/agent/impl/data/type/b;->g:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/networkbench/agent/impl/data/type/b;->j:Z

    if-nez v2, :cond_2

    invoke-virtual {v1, v0}, Lcom/networkbench/agent/impl/data/type/d;->a(Lcom/networkbench/agent/impl/util/af;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/data/type/b;->d:Lcom/networkbench/agent/impl/data/type/d;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/type/d;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/data/type/b;->h:Z

    if-nez v0, :cond_1

    sget-object p0, Lcom/networkbench/agent/impl/data/type/b;->b:Lcom/networkbench/agent/impl/c/e;

    const-string p1, "ui is disable, skip app trace monitor"

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/networkbench/agent/impl/data/type/b;->a(J)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    const-string v2, "#attachBaseContext"

    invoke-static {p1, v2, p0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;->OTHER:Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;->getValue()I

    move-result p1

    sget-object v2, Lcom/networkbench/agent/impl/data/type/r;->a:Lcom/networkbench/agent/impl/data/type/r;

    invoke-static {p0, p1, v2, v0, v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTraceEngine;->enterMethodWithTime(Ljava/lang/String;ILcom/networkbench/agent/impl/data/type/r;J)Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;

    :cond_2
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 104
    iput-boolean p1, p0, Lcom/networkbench/agent/impl/data/type/b;->k:Z

    return-void
.end method

.method public b()V
    .locals 1

    .line 118
    iget-boolean v0, p0, Lcom/networkbench/agent/impl/data/type/b;->j:Z

    if-nez v0, :cond_1

    .line 119
    iget-boolean v0, p0, Lcom/networkbench/agent/impl/data/type/b;->h:Z

    if-nez v0, :cond_0

    return-void

    .line 120
    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/instrumentation/NBSTraceEngine;->exitMethod()V

    :cond_1
    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lcom/networkbench/agent/impl/data/type/b;->j:Z

    return-void
.end method

.method public b(J)V
    .locals 4

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/data/type/b;->h:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget-object p1, Lcom/networkbench/agent/impl/data/type/b;->b:Lcom/networkbench/agent/impl/c/e;

    const-string p2, "ui is disable, skip appLaunchStop"

    invoke-interface {p1, p2}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/networkbench/agent/impl/data/type/b;->k:Z

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/networkbench/agent/impl/data/type/b;->k:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/networkbench/agent/impl/data/type/b;->e:Lcom/networkbench/agent/impl/asyncaction/r;

    const-string v2, "AppColdLaunch"

    if-nez v0, :cond_1

    const-string p0, "nbsSlowStartEngine is not init, please check if application is exist"

    invoke-static {v2, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v3, p0, Lcom/networkbench/agent/impl/data/type/b;->f:Lcom/networkbench/agent/impl/data/type/p;

    invoke-virtual {v0, v3, p1, p2}, Lcom/networkbench/agent/impl/asyncaction/r;->a(Lcom/networkbench/agent/impl/asyncaction/e;J)V

    iput-boolean v1, p0, Lcom/networkbench/agent/impl/data/type/b;->k:Z

    sget-object p1, Lcom/networkbench/agent/impl/data/type/f;->a:Lcom/networkbench/agent/impl/data/type/f;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/data/type/f;->a()I

    move-result p1

    sget-object p2, Lcom/networkbench/agent/impl/data/type/f;->a:Lcom/networkbench/agent/impl/data/type/f;

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/data/type/f;->c()Z

    move-result p2

    if-nez p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "error launch phase is wrong, appPhase:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/networkbench/agent/impl/util/Logger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/networkbench/agent/impl/data/type/f$a;->c:Lcom/networkbench/agent/impl/data/type/f$a;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/data/type/f$a;->a()I

    move-result p1

    :cond_2
    new-instance p2, Lcom/networkbench/agent/impl/data/type/g;

    iget-object v0, p0, Lcom/networkbench/agent/impl/data/type/b;->f:Lcom/networkbench/agent/impl/data/type/p;

    iget-object v1, p0, Lcom/networkbench/agent/impl/data/type/b;->e:Lcom/networkbench/agent/impl/asyncaction/r;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/asyncaction/r;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, p1, v0, v1}, Lcom/networkbench/agent/impl/data/type/g;-><init>(ILcom/networkbench/agent/impl/data/type/p;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/networkbench/agent/impl/data/type/b;->n:Z

    if-nez p1, :cond_3

    sget-object p1, Lcom/networkbench/agent/impl/asyncaction/a/b;->a:Lcom/networkbench/agent/impl/asyncaction/a/b;

    invoke-virtual {p1, p2}, Lcom/networkbench/agent/impl/asyncaction/a/b;->a(Lcom/networkbench/agent/impl/asyncaction/a/a;)V

    goto :goto_0

    :cond_3
    new-instance p1, Lcom/networkbench/agent/impl/data/type/i;

    invoke-direct {p1, p2}, Lcom/networkbench/agent/impl/data/type/i;-><init>(Lcom/networkbench/agent/impl/data/type/g;)V

    iput-object p1, p0, Lcom/networkbench/agent/impl/data/type/b;->o:Lcom/networkbench/agent/impl/data/type/i;

    :goto_0
    invoke-static {}, Lcom/networkbench/agent/impl/asyncaction/r;->b()Lcom/networkbench/agent/impl/asyncaction/r;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/asyncaction/r;->a()Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/networkbench/agent/impl/data/type/b;->e:Lcom/networkbench/agent/impl/asyncaction/r;

    iput-object p1, p0, Lcom/networkbench/agent/impl/data/type/b;->f:Lcom/networkbench/agent/impl/data/type/p;

    :cond_4
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/networkbench/agent/impl/data/type/b;->g:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 123
    iput-object p1, p0, Lcom/networkbench/agent/impl/data/type/b;->g:Landroid/content/Context;

    .line 124
    :cond_0
    invoke-static {p1}, Lcom/networkbench/agent/impl/data/type/d;->a(Landroid/content/Context;)Lcom/networkbench/agent/impl/data/type/d;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/type/b;->d:Lcom/networkbench/agent/impl/data/type/d;

    .line 125
    new-instance p0, Lcom/networkbench/agent/impl/util/af;

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/util/af;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/data/type/d;->a(Lcom/networkbench/agent/impl/util/af;)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 126
    iput-boolean p1, p0, Lcom/networkbench/agent/impl/data/type/b;->n:Z

    return-void
.end method

.method public c()V
    .locals 2

    .line 54
    iget-boolean v0, p0, Lcom/networkbench/agent/impl/data/type/b;->h:Z

    if-nez v0, :cond_0

    return-void

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/type/b;->g:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    const-string v1, "#onCreate"

    .line 56
    invoke-static {p0, v1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    .line 57
    sget-object v0, Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;->OTHER:Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;

    .line 58
    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/type/SlowStartState$SegmentType;->getValue()I

    move-result v0

    sget-object v1, Lcom/networkbench/agent/impl/data/type/r;->b:Lcom/networkbench/agent/impl/data/type/r;

    .line 59
    invoke-static {p0, v0, v1}, Lcom/networkbench/agent/impl/instrumentation/NBSTraceEngine;->enterMethod(Ljava/lang/String;ILcom/networkbench/agent/impl/data/type/r;)V

    return-void
.end method

.method public c(J)V
    .locals 2

    iget-object v0, p0, Lcom/networkbench/agent/impl/data/type/b;->o:Lcom/networkbench/agent/impl/data/type/i;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/networkbench/agent/impl/data/type/b;->n:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/networkbench/agent/impl/data/type/b;->i:Z

    if-nez v1, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/networkbench/agent/impl/data/type/i;->a(J)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/networkbench/agent/impl/data/type/b;->i:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "customAppLaunchEnd isCustomLaunchApiSet:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/networkbench/agent/impl/data/type/b;->n:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", complete:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/networkbench/agent/impl/data/type/b;->i:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppColdLaunch"

    invoke-static {p2, p1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/networkbench/agent/impl/data/type/b;->n:Z

    return-void
.end method

.method public d()V
    .locals 0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/data/type/b;->h:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/instrumentation/NBSTraceEngine;->exitMethod()V

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/networkbench/agent/impl/data/type/b;->d:Lcom/networkbench/agent/impl/data/type/d;

    const-string v1, "AppColdLaunch"

    if-nez v0, :cond_0

    const-string p0, "this.launchConfig is null"

    invoke-static {v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "this.launchConfig.deviceId is "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/networkbench/agent/impl/data/type/b;->d:Lcom/networkbench/agent/impl/data/type/d;

    iget-object v2, v2, Lcom/networkbench/agent/impl/data/type/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/type/b;->d:Lcom/networkbench/agent/impl/data/type/d;

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/type/d;->a:Ljava/lang/String;

    return-object p0
.end method

.method public f()Z
    .locals 0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/data/type/b;->l:Z

    return p0
.end method

.method public g()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/data/type/b;->m:I

    return p0
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/networkbench/agent/impl/data/type/b;->m:I

    return-void
.end method

.method public i()Z
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/type/b;->d:Lcom/networkbench/agent/impl/data/type/d;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/data/type/d;->b()Z

    move-result p0

    return p0
.end method
