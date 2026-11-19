.class public Lcom/networkbench/agent/impl/data/type/a;
.super Lcom/networkbench/agent/impl/data/type/q;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/data/type/l;


# static fields
.field private static final a:Ljava/lang/String; = "ActivityTrace"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lcom/networkbench/agent/impl/data/type/o;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/networkbench/agent/impl/data/type/q;-><init>()V

    new-instance v0, Lcom/networkbench/agent/impl/data/type/o;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/data/type/o;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/data/type/a;->c:Lcom/networkbench/agent/impl/data/type/o;

    return-void
.end method

.method private a(Lcom/networkbench/agent/impl/data/type/p;)Lcom/networkbench/agent/impl/data/d/h;
    .locals 2

    .line 158
    new-instance v0, Lcom/networkbench/agent/impl/data/d/h;

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/type/a;->b:Ljava/lang/String;

    invoke-direct {v0, v1, p0, p1}, Lcom/networkbench/agent/impl/data/d/h;-><init>(ILjava/lang/String;Lcom/networkbench/agent/impl/data/type/p;)V

    return-object v0
.end method

.method private a(Ljava/lang/Object;)V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/networkbench/agent/impl/data/type/a;->c:Lcom/networkbench/agent/impl/data/type/o;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/type/o;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/networkbench/agent/impl/data/type/a;->f()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 174
    const-string p0, "ActivityTrace"

    const-string v0, "background return to foreground, not run onCreate, add onRestart invoke"

    invoke-static {p0, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-static {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSAppInstrumentation;->activityRestartBeginIns(Ljava/lang/Object;)V

    .line 176
    invoke-static {}, Lcom/networkbench/agent/impl/instrumentation/NBSAppInstrumentation;->activityRestartEndIns()V

    :cond_0
    return-void
.end method

.method private a(J)Z
    .locals 4

    .line 140
    sget p0, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->HOT_START_THRESHOLD:I

    int-to-long v0, p0

    .line 141
    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getImpl()Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getImpl()Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->p()Lcom/networkbench/agent/impl/util/af;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 142
    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getImpl()Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->p()Lcom/networkbench/agent/impl/util/af;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/af;->m()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getHotStartThreshold()J

    move-result-wide v0

    .line 143
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p1

    const-wide/16 p0, 0x3e8

    mul-long/2addr p0, v0

    cmp-long p0, v2, p0

    if-ltz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 144
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "hotStartThreshold is:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", isHotStart:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ActivityTrace"

    invoke-static {p2, p1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "resetActivityFeatureData uuid:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ActivityTrace"

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/networkbench/agent/impl/data/d/j;->a(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/networkbench/agent/impl/data/d/d;

    const-string p1, ""

    const/4 v0, -0x1

    const-string v1, "No_Catched_Action"

    const-string v2, "0"

    invoke-direct {p0, v1, v2, p1, v0}, Lcom/networkbench/agent/impl/data/d/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/networkbench/agent/impl/data/d/b;->a()Lcom/networkbench/agent/impl/data/d/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/networkbench/agent/impl/data/d/b;->a(Lcom/networkbench/agent/impl/data/d/d;)V

    const-string p0, "resetActivityFeatureData featuresData!"

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->A(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private e()Z
    .locals 1

    sget-object p0, Lcom/networkbench/agent/impl/data/type/f;->a:Lcom/networkbench/agent/impl/data/type/f;

    sget-object v0, Lcom/networkbench/agent/impl/data/type/f$a;->b:Lcom/networkbench/agent/impl/data/type/f$a;

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/data/type/f;->b(Lcom/networkbench/agent/impl/data/type/f$a;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/networkbench/agent/impl/data/type/f;->a:Lcom/networkbench/agent/impl/data/type/f;

    sget-object v0, Lcom/networkbench/agent/impl/data/type/f$a;->c:Lcom/networkbench/agent/impl/data/type/f$a;

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/data/type/f;->b(Lcom/networkbench/agent/impl/data/type/f$a;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private f()Z
    .locals 1

    sget-object p0, Lcom/networkbench/agent/impl/data/type/f;->a:Lcom/networkbench/agent/impl/data/type/f;

    sget-object v0, Lcom/networkbench/agent/impl/data/type/f$a;->f:Lcom/networkbench/agent/impl/data/type/f$a;

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/data/type/f;->b(Lcom/networkbench/agent/impl/data/type/f$a;)Z

    move-result p0

    return p0
.end method

.method private g()V
    .locals 2

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/type/q;->f:Lcom/networkbench/agent/impl/data/type/p;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/asyncaction/s;->q()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/networkbench/agent/impl/data/type/b;->a()Lcom/networkbench/agent/impl/data/type/b;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Lcom/networkbench/agent/impl/data/type/b;->b(J)V

    return-void
.end method

.method private h()Z
    .locals 1

    sget-object p0, Lcom/networkbench/agent/impl/data/type/f;->a:Lcom/networkbench/agent/impl/data/type/f;

    sget-object v0, Lcom/networkbench/agent/impl/data/type/f$a;->d:Lcom/networkbench/agent/impl/data/type/f$a;

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/data/type/f;->b(Lcom/networkbench/agent/impl/data/type/f$a;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a()Lcom/networkbench/agent/impl/data/type/p;
    .locals 4

    invoke-direct {p0}, Lcom/networkbench/agent/impl/data/type/a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/data/type/c;->a()Lcom/networkbench/agent/impl/data/type/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/type/c;->c()V

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->af()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/networkbench/agent/impl/data/type/b;->a()Lcom/networkbench/agent/impl/data/type/b;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/data/type/b;->a(Z)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {}, Lcom/networkbench/agent/impl/data/d/b;->a()Lcom/networkbench/agent/impl/data/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/d/b;->b()Lcom/networkbench/agent/impl/data/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/d/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/data/type/a;->b(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/networkbench/agent/impl/data/type/q;->a()Lcom/networkbench/agent/impl/data/type/p;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/data/type/a;->a(Lcom/networkbench/agent/impl/data/type/p;)Lcom/networkbench/agent/impl/data/d/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/d/h;->o()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/networkbench/agent/impl/data/d/b;->a()Lcom/networkbench/agent/impl/data/d/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/data/d/b;->c()Lcom/networkbench/agent/impl/data/d/c;

    move-result-object v2

    sput-object v2, Lcom/networkbench/agent/impl/data/d/h;->a:Lcom/networkbench/agent/impl/data/d/c;

    sget-object v2, Lcom/networkbench/agent/impl/asyncaction/a/b;->a:Lcom/networkbench/agent/impl/asyncaction/a/b;

    invoke-virtual {v2, v1}, Lcom/networkbench/agent/impl/asyncaction/a/b;->a(Lcom/networkbench/agent/impl/asyncaction/a/a;)V

    invoke-static {}, Lcom/networkbench/agent/impl/data/d/b;->a()Lcom/networkbench/agent/impl/data/d/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/data/d/b;->b()Lcom/networkbench/agent/impl/data/d/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/data/d/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/networkbench/agent/impl/data/d/j;->a(Lcom/networkbench/agent/impl/data/d/h;Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lcom/networkbench/agent/impl/data/type/a;->h()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/networkbench/agent/impl/data/type/g;

    sget-object v2, Lcom/networkbench/agent/impl/data/type/f;->a:Lcom/networkbench/agent/impl/data/type/f;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/data/type/f;->a()I

    move-result v2

    iget-object v3, p0, Lcom/networkbench/agent/impl/data/type/q;->e:Lcom/networkbench/agent/impl/asyncaction/r;

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/asyncaction/r;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/networkbench/agent/impl/data/type/g;-><init>(ILcom/networkbench/agent/impl/data/type/p;Ljava/lang/String;)V

    sget-object v2, Lcom/networkbench/agent/impl/asyncaction/a/b;->a:Lcom/networkbench/agent/impl/asyncaction/a/b;

    invoke-virtual {v2, v1}, Lcom/networkbench/agent/impl/asyncaction/a/b;->a(Lcom/networkbench/agent/impl/asyncaction/a/a;)V

    goto :goto_0

    :cond_3
    const-string v1, "ActivityTrace"

    const-string v2, "is not hot launch"

    invoke-static {v1, v2}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/networkbench/agent/impl/data/type/a;->g()V

    return-object v0
.end method

.method public a(Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;Ljava/lang/String;)Lcom/networkbench/agent/impl/data/type/p;
    .locals 2

    .line 134
    invoke-direct {p0}, Lcom/networkbench/agent/impl/data/type/a;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    const-string v0, "ActivityTrace"

    const-string v1, "reset data when activity switch"

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/networkbench/agent/impl/data/type/q;->e:Lcom/networkbench/agent/impl/asyncaction/r;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/asyncaction/r;->e()V

    .line 137
    :cond_0
    invoke-direct {p0}, Lcom/networkbench/agent/impl/data/type/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    new-instance p0, Lcom/networkbench/agent/impl/data/type/e;

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/data/type/e;-><init>(Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;)V

    return-object p0

    .line 139
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/networkbench/agent/impl/data/type/q;->a(Lcom/networkbench/agent/impl/instrumentation/NBSTraceUnit;Ljava/lang/String;)Lcom/networkbench/agent/impl/data/type/p;

    move-result-object p0

    return-object p0
.end method

.method public a(Landroid/app/Activity;)V
    .locals 2

    .line 159
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onActivityCreated activity name is "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTrace"

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    const-string p0, "activity is instrument, skip"

    invoke-static {v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 162
    :cond_0
    const-string v0, "activity is not instrument, do lifecycle"

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object p0, p0, Lcom/networkbench/agent/impl/data/type/a;->c:Lcom/networkbench/agent/impl/data/type/o;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/data/type/o;->a()V

    .line 164
    invoke-static {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSAppInstrumentation;->activityCreateBeginIns(Ljava/lang/Object;)V

    .line 165
    invoke-static {}, Lcom/networkbench/agent/impl/instrumentation/NBSAppInstrumentation;->activityCreateEndIns()V

    return-void
.end method

.method public a(Landroid/app/Activity;Z)V
    .locals 1

    .line 166
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lcom/networkbench/agent/impl/util/ak;->a(Ljava/lang/Class;)Z

    move-result p2

    const-string v0, "ActivityTrace"

    if-eqz p2, :cond_0

    .line 167
    const-string p0, "activity is instrument, skip"

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 168
    :cond_0
    const-string p2, "activity is not instrument, do lifecycle"

    invoke-static {v0, p2}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object p2, p0, Lcom/networkbench/agent/impl/data/type/a;->c:Lcom/networkbench/agent/impl/data/type/o;

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/data/type/o;->b()V

    .line 170
    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/data/type/a;->a(Ljava/lang/Object;)V

    .line 171
    invoke-static {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSAppInstrumentation;->activityStartBeginIns(Ljava/lang/Object;)V

    .line 172
    invoke-static {}, Lcom/networkbench/agent/impl/instrumentation/NBSAppInstrumentation;->activityStartEndIns()V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/networkbench/agent/impl/data/type/r;)V
    .locals 0

    .line 145
    invoke-super {p0, p1, p2}, Lcom/networkbench/agent/impl/data/type/q;->a(Ljava/lang/String;Lcom/networkbench/agent/impl/data/type/r;)V

    .line 146
    iput-object p1, p0, Lcom/networkbench/agent/impl/data/type/a;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/data/type/r;)V
    .locals 2

    .line 147
    invoke-super {p0, p1, p2, p3}, Lcom/networkbench/agent/impl/data/type/q;->a(Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/data/type/r;)V

    .line 148
    invoke-direct {p0}, Lcom/networkbench/agent/impl/data/type/a;->f()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 149
    invoke-static {}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getInstance()Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/session/screen/NBSBitmapBeansControl;->getSessionIdRefresh()Ljava/lang/String;

    .line 150
    sget-object p1, Lcom/networkbench/agent/impl/data/type/f;->a:Lcom/networkbench/agent/impl/data/type/f;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/data/type/f;->b()J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/networkbench/agent/impl/data/type/a;->a(J)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 151
    sget-object p1, Lcom/networkbench/agent/impl/data/type/f;->a:Lcom/networkbench/agent/impl/data/type/f;

    sget-object p2, Lcom/networkbench/agent/impl/data/type/f$a;->d:Lcom/networkbench/agent/impl/data/type/f$a;

    invoke-virtual {p1, p2}, Lcom/networkbench/agent/impl/data/type/f;->a(Lcom/networkbench/agent/impl/data/type/f$a;)V

    .line 152
    iget-object p0, p0, Lcom/networkbench/agent/impl/data/type/q;->e:Lcom/networkbench/agent/impl/asyncaction/r;

    new-instance p1, Ljava/util/UUID;

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->a()Ljava/security/SecureRandom;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Random;->nextLong()J

    move-result-wide p2

    .line 153
    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->a()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-direct {p1, p2, p3, v0, v1}, Ljava/util/UUID;-><init>(JJ)V

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "-"

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 154
    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/asyncaction/r;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :cond_0
    sget-object p0, Lcom/networkbench/agent/impl/data/type/f;->a:Lcom/networkbench/agent/impl/data/type/f;

    sget-object p1, Lcom/networkbench/agent/impl/data/type/f$a;->e:Lcom/networkbench/agent/impl/data/type/f$a;

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/data/type/f;->a(Lcom/networkbench/agent/impl/data/type/f$a;)V

    .line 156
    :cond_1
    :goto_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->aK()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 157
    invoke-static {}, Lcom/networkbench/agent/impl/i/f;->a()Lcom/networkbench/agent/impl/i/f;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/i/f;->b()V

    :cond_2
    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 2

    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ak;->a(Ljava/lang/Class;)Z

    move-result v0

    const-string v1, "ActivityTrace"

    if-eqz v0, :cond_0

    .line 52
    const-string p0, "activity is instrument, skip"

    invoke-static {v1, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 53
    :cond_0
    const-string v0, "activity is not instrument, do lifecycle"

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/harvest/ScreenNameManager;->setCurrentActivityName(Ljava/lang/String;)V

    .line 55
    iget-object p0, p0, Lcom/networkbench/agent/impl/data/type/a;->c:Lcom/networkbench/agent/impl/data/type/o;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/data/type/o;->c()V

    .line 56
    invoke-static {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSAppInstrumentation;->activityResumeBeginIns(Ljava/lang/Object;)V

    .line 57
    invoke-static {}, Lcom/networkbench/agent/impl/instrumentation/NBSAppInstrumentation;->activityResumeEndIns()V

    return-void
.end method

.method public b(Landroid/app/Activity;Z)V
    .locals 0

    .line 50
    return-void
.end method

.method public c(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public d(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public e(Landroid/app/Activity;)V
    .locals 0

    .line 25
    return-void
.end method
