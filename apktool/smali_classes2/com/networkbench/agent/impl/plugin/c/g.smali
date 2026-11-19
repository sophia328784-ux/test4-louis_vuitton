.class public Lcom/networkbench/agent/impl/plugin/c/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I = 0x0

.field private static final c:Ljava/lang/String; = "LogTrackWrapper"

.field private static final d:Ljava/lang/String; = "nbs_logtrack_v1"

.field private static e:I = 0x8

.field private static f:I = 0x80

.field private static g:I = 0x1000

.field private static final h:J = 0x6400000L


# instance fields
.field protected b:Z

.field private i:Lcom/networkbench/agent/impl/util/c;

.field private j:Ljava/lang/Object;

.field private k:Ljava/lang/Object;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Lcom/networkbench/agent/impl/plugin/c/b;

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/networkbench/agent/impl/util/c;Lcom/networkbench/agent/impl/plugin/c/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/networkbench/agent/impl/plugin/c/g;->o:Ljava/lang/String;

    invoke-static {p1}, Lcom/networkbench/agent/impl/util/ak;->i(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/networkbench/agent/impl/plugin/c/g;->b:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "isLoganModuleExist is "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/plugin/c/g;->b:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LogTrackWrapper"

    invoke-static {v0, p1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/networkbench/agent/impl/plugin/c/g;->i:Lcom/networkbench/agent/impl/util/c;

    iget-boolean p1, p0, Lcom/networkbench/agent/impl/plugin/c/g;->b:Z

    if-eqz p1, :cond_0

    new-instance p1, Lcom/networkbench/agent/impl/plugin/c/e;

    invoke-direct {p1}, Lcom/networkbench/agent/impl/plugin/c/e;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/plugin/c/g;->k:Ljava/lang/Object;

    :cond_0
    iput-object p3, p0, Lcom/networkbench/agent/impl/plugin/c/g;->n:Lcom/networkbench/agent/impl/plugin/c/b;

    invoke-virtual {p3}, Lcom/networkbench/agent/impl/plugin/c/b;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/plugin/c/g;->l:Ljava/lang/String;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/plugin/c/g;->d()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/plugin/c/g;->m:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "sk is "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/networkbench/agent/impl/plugin/c/g;->l:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", iv16 is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/networkbench/agent/impl/plugin/c/g;->m:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/networkbench/agent/impl/plugin/c/g;->a(Lcom/networkbench/agent/impl/plugin/c/b;)V

    return-void
.end method

.method private a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    .line 148
    const-string p0, ""

    return-object p0

    .line 149
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-le p0, p2, :cond_1

    const/4 p0, 0x0

    .line 150
    invoke-virtual {p1, p0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 140
    iget-boolean v0, p0, Lcom/networkbench/agent/impl/plugin/c/g;->b:Z

    if-nez v0, :cond_0

    return-void

    .line 141
    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/c/g;->k:Ljava/lang/Object;

    instance-of v0, p0, Lcom/networkbench/agent/impl/logtrack/SendLogCallback;

    if-eqz v0, :cond_1

    .line 142
    move-object v8, p0

    check-cast v8, Lcom/networkbench/agent/impl/logtrack/SendLogCallback;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v1 .. v8}, Lcom/networkbench/agent/impl/logtrack/Logan;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/logtrack/SendLogCallback;)V

    return-void

    .line 143
    :cond_1
    const-string p0, "LogTrackWrapper"

    const-string p1, "error sendLogCallback is not instanceof SendLogCallback"

    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 144
    iget-boolean v0, p0, Lcom/networkbench/agent/impl/plugin/c/g;->b:Z

    if-nez v0, :cond_0

    return-void

    .line 145
    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/c/g;->k:Ljava/lang/Object;

    instance-of v0, p0, Lcom/networkbench/agent/impl/logtrack/SendLogCallback;

    if-eqz v0, :cond_1

    .line 146
    check-cast p0, Lcom/networkbench/agent/impl/logtrack/SendLogCallback;

    invoke-static {p1, p2, p3, p0}, Lcom/networkbench/agent/impl/logtrack/Logan;->s(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/networkbench/agent/impl/logtrack/SendLogCallback;)V

    return-void

    .line 147
    :cond_1
    const-string p0, "LogTrackWrapper"

    const-string p1, "error sendLogCallback is not instanceof SendLogCallback"

    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a([Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/plugin/c/g;->b:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/c/g;->l:Ljava/lang/String;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    iget-boolean v1, v1, Lcom/networkbench/agent/impl/util/r;->B:Z

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/c/g;->o:Ljava/lang/String;

    :cond_1
    move-object v7, v0

    new-instance v1, Lcom/networkbench/agent/impl/plugin/c/f;

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->getInstance()Lcom/networkbench/agent/impl/harvest/Harvest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/Harvest;->getHarvestConnection()Lcom/networkbench/agent/impl/harvest/HarvestConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->getLogTrackDataProcess()Lcom/networkbench/agent/impl/harvest/a/k;

    move-result-object v2

    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getDeviceInformation()Lcom/networkbench/agent/impl/harvest/DeviceInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/DeviceInformation;->initUserHeaderValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->z()Ljava/lang/String;

    move-result-object v5

    move-object v8, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v8}, Lcom/networkbench/agent/impl/plugin/c/f;-><init>(Lcom/networkbench/agent/impl/harvest/a/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v1, p0, Lcom/networkbench/agent/impl/plugin/c/g;->j:Ljava/lang/Object;

    instance-of p1, v1, Lcom/networkbench/agent/impl/plugin/c/f;

    const-string p2, "LogTrackWrapper"

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    :goto_0
    array-length v0, v8

    if-ge p1, v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "current date file is :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v1, v8, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v0, v8, p1

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/networkbench/agent/impl/plugin/c/g;->j:Ljava/lang/Object;

    check-cast v1, Lcom/networkbench/agent/impl/logtrack/SendLogRunnable;

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/logtrack/Logan;->s([Ljava/lang/String;Lcom/networkbench/agent/impl/logtrack/SendLogRunnable;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    const-string p0, "error sendLogRunnable is not instanceof SendLogRunnable"

    invoke-static {p2, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/c/g;->l:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/c/g;->l:Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v1, 0x10

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 57
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error, secretKey32 is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/c/g;->l:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LogTrackWrapper"

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string p0, ""

    return-object p0
.end method

.method private e()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/c/g;->i:Lcom/networkbench/agent/impl/util/c;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/c;->f()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v1, "nbs_logtrack_v1"

    invoke-static {p0, v1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/c/g;->l:Ljava/lang/String;

    return-object p0
.end method

.method public a(I)V
    .locals 1

    .line 124
    iget-boolean p0, p0, Lcom/networkbench/agent/impl/plugin/c/g;->b:Z

    if-nez p0, :cond_0

    return-void

    .line 125
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "setLoganStackInvokeIndex nInxIndex:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LogTrackWrapper"

    invoke-static {p1, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    sget p0, Lcom/networkbench/agent/impl/plugin/c/g;->e:I

    sget p1, Lcom/networkbench/agent/impl/plugin/c/g;->a:I

    add-int/2addr p0, p1

    sput p0, Lcom/networkbench/agent/impl/logtrack/Logan;->STACK_INVOKE_INDEX:I

    return-void
.end method

.method public a(JJLjava/lang/String;)V
    .locals 7

    .line 133
    new-instance v0, Lcom/networkbench/agent/impl/plugin/c/c;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/plugin/c/g;->c()Ljava/util/Map;

    move-result-object v5

    .line 134
    invoke-direct {p0}, Lcom/networkbench/agent/impl/plugin/c/g;->e()Ljava/lang/String;

    move-result-object v6

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/networkbench/agent/impl/plugin/c/c;-><init>(JJLjava/util/Map;Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0}, Lcom/networkbench/agent/impl/plugin/c/c;->a()[Ljava/lang/String;

    move-result-object p1

    .line 136
    array-length p2, p1

    if-nez p2, :cond_0

    .line 137
    const-string p0, "LogTrackWrapper"

    const-string p1, "log date file is empty"

    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 138
    :cond_0
    invoke-direct {p0, p1, p5}, Lcom/networkbench/agent/impl/plugin/c/g;->a([Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/plugin/c/b;)V
    .locals 5

    .line 113
    iget-boolean v0, p0, Lcom/networkbench/agent/impl/plugin/c/g;->b:Z

    if-nez v0, :cond_0

    return-void

    .line 114
    :cond_0
    new-instance v0, Lcom/networkbench/agent/impl/logtrack/LoganConfig$Builder;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/logtrack/LoganConfig$Builder;-><init>()V

    iget-object v1, p0, Lcom/networkbench/agent/impl/plugin/c/g;->i:Lcom/networkbench/agent/impl/util/c;

    .line 115
    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/logtrack/LoganConfig$Builder;->setCachePath(Ljava/lang/String;)Lcom/networkbench/agent/impl/logtrack/LoganConfig$Builder;

    move-result-object v0

    .line 116
    invoke-direct {p0}, Lcom/networkbench/agent/impl/plugin/c/g;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/logtrack/LoganConfig$Builder;->setPath(Ljava/lang/String;)Lcom/networkbench/agent/impl/logtrack/LoganConfig$Builder;

    move-result-object v0

    .line 117
    invoke-direct {p0}, Lcom/networkbench/agent/impl/plugin/c/g;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/logtrack/LoganConfig$Builder;->setEncryptKey16([B)Lcom/networkbench/agent/impl/logtrack/LoganConfig$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/networkbench/agent/impl/plugin/c/g;->m:Ljava/lang/String;

    .line 118
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/networkbench/agent/impl/logtrack/LoganConfig$Builder;->setEncryptIV16([B)Lcom/networkbench/agent/impl/logtrack/LoganConfig$Builder;

    move-result-object v0

    iget p1, p1, Lcom/networkbench/agent/impl/plugin/c/b;->b:I

    mul-int/lit16 p1, p1, 0x400

    int-to-long v1, p1

    const-wide/16 v3, 0x400

    mul-long/2addr v1, v3

    .line 119
    invoke-virtual {v0, v1, v2}, Lcom/networkbench/agent/impl/logtrack/LoganConfig$Builder;->setMaxFile(J)Lcom/networkbench/agent/impl/logtrack/LoganConfig$Builder;

    move-result-object p1

    const-wide/32 v0, 0x6400000

    .line 120
    invoke-virtual {p1, v0, v1}, Lcom/networkbench/agent/impl/logtrack/LoganConfig$Builder;->setMinSDCard(J)Lcom/networkbench/agent/impl/logtrack/LoganConfig$Builder;

    move-result-object p1

    .line 121
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/logtrack/LoganConfig$Builder;->build()Lcom/networkbench/agent/impl/logtrack/LoganConfig;

    move-result-object p1

    .line 122
    sget v0, Lcom/networkbench/agent/impl/plugin/c/g;->a:I

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/plugin/c/g;->a(I)V

    .line 123
    invoke-static {p1}, Lcom/networkbench/agent/impl/logtrack/Logan;->init(Lcom/networkbench/agent/impl/logtrack/LoganConfig;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 111
    iput-object p1, p0, Lcom/networkbench/agent/impl/plugin/c/g;->o:Ljava/lang/String;

    .line 112
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "sm2EncryptSecretKey is "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LogTrackWrapper"

    invoke-static {p1, p0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 127
    sget-object v0, Lcom/networkbench/agent/impl/plugin/c/b$a;->a:Lcom/networkbench/agent/impl/plugin/c/b$a;

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/plugin/c/g;->a(Lcom/networkbench/agent/impl/plugin/c/b$a;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 128
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "debug log is:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tag is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LogTrackWrapper"

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    sget v0, Lcom/networkbench/agent/impl/plugin/c/g;->g:I

    invoke-direct {p0, p1, v0}, Lcom/networkbench/agent/impl/plugin/c/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/networkbench/agent/impl/plugin/c/g;->f:I

    invoke-direct {p0, p2, v0}, Lcom/networkbench/agent/impl/plugin/c/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p3}, Lcom/networkbench/agent/impl/logtrack/Logan;->d(Ljava/lang/String;Ljava/lang/String;I)V

    .line 130
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/plugin/c/g;->b()V

    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/plugin/c/b$a;)Z
    .locals 2

    .line 131
    iget-boolean v0, p0, Lcom/networkbench/agent/impl/plugin/c/g;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 132
    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/c/g;->n:Lcom/networkbench/agent/impl/plugin/c/b;

    iget p0, p0, Lcom/networkbench/agent/impl/plugin/c/b;->a:I

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/plugin/c/b$a;->a()I

    move-result p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public b()V
    .locals 1

    .line 55
    iget-boolean p0, p0, Lcom/networkbench/agent/impl/plugin/c/g;->b:Z

    if-nez p0, :cond_0

    return-void

    .line 56
    :cond_0
    const-string p0, "LogTrackWrapper"

    const-string v0, "flush log to file"

    invoke-static {p0, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lcom/networkbench/agent/impl/logtrack/Logan;->f()V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    sget-object v0, Lcom/networkbench/agent/impl/plugin/c/b$a;->b:Lcom/networkbench/agent/impl/plugin/c/b$a;

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/plugin/c/g;->a(Lcom/networkbench/agent/impl/plugin/c/b$a;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "info log is:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tag is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LogTrackWrapper"

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/networkbench/agent/impl/plugin/c/g;->g:I

    invoke-direct {p0, p1, v0}, Lcom/networkbench/agent/impl/plugin/c/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/networkbench/agent/impl/plugin/c/g;->f:I

    invoke-direct {p0, p2, v0}, Lcom/networkbench/agent/impl/plugin/c/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p3}, Lcom/networkbench/agent/impl/logtrack/Logan;->i(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/plugin/c/g;->b()V

    return-void
.end method

.method public c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 55
    iget-boolean p0, p0, Lcom/networkbench/agent/impl/plugin/c/g;->b:Z

    if-nez p0, :cond_0

    .line 56
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0

    .line 57
    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/logtrack/Logan;->getAllFilesInfo()Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_1

    .line 58
    const-string p0, "LogTrackWrapper"

    const-string v0, "logTrack get all file info is empty"

    invoke-static {p0, v0}, Lcom/networkbench/agent/impl/util/Logger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    :cond_1
    return-object p0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    sget-object v0, Lcom/networkbench/agent/impl/plugin/c/b$a;->c:Lcom/networkbench/agent/impl/plugin/c/b$a;

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/plugin/c/g;->a(Lcom/networkbench/agent/impl/plugin/c/b$a;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "warning log is:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tag is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LogTrackWrapper"

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/networkbench/agent/impl/plugin/c/g;->g:I

    invoke-direct {p0, p1, v0}, Lcom/networkbench/agent/impl/plugin/c/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/networkbench/agent/impl/plugin/c/g;->f:I

    invoke-direct {p0, p2, v0}, Lcom/networkbench/agent/impl/plugin/c/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p3}, Lcom/networkbench/agent/impl/logtrack/Logan;->w(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/plugin/c/g;->b()V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    sget-object v0, Lcom/networkbench/agent/impl/plugin/c/b$a;->d:Lcom/networkbench/agent/impl/plugin/c/b$a;

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/plugin/c/g;->a(Lcom/networkbench/agent/impl/plugin/c/b$a;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error log is:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tag is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LogTrackWrapper"

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/networkbench/agent/impl/plugin/c/g;->g:I

    invoke-direct {p0, p1, v0}, Lcom/networkbench/agent/impl/plugin/c/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/networkbench/agent/impl/plugin/c/g;->f:I

    invoke-direct {p0, p2, v0}, Lcom/networkbench/agent/impl/plugin/c/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p3}, Lcom/networkbench/agent/impl/logtrack/Logan;->e(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/plugin/c/g;->b()V

    return-void
.end method
