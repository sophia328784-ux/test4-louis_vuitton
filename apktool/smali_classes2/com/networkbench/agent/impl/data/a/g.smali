.class public Lcom/networkbench/agent/impl/data/a/g;
.super Lcom/networkbench/agent/impl/harvest/type/HarvestableArray;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/asyncaction/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/agent/impl/data/a/g$a;
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/String; = "NBSEventAction"


# instance fields
.field public a:Lcom/networkbench/agent/impl/data/a/g;

.field public b:Lcom/networkbench/agent/impl/data/a/g;

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/networkbench/agent/impl/k/b;

.field private h:I

.field private i:Ljava/lang/String;

.field private j:J

.field private k:J

.field private l:J

.field private m:J

.field private n:J

.field private o:I

.field private p:Lcom/networkbench/agent/impl/asyncaction/s;


# direct methods
.method public constructor <init>(JJLjava/lang/String;Z)V
    .locals 3

    .line 78
    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/type/HarvestableArray;-><init>()V

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcom/networkbench/agent/impl/data/a/g;->d:Z

    .line 80
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/networkbench/agent/impl/data/a/g;->e:Ljava/util/Map;

    const-wide/16 v1, 0x0

    .line 81
    iput-wide v1, p0, Lcom/networkbench/agent/impl/data/a/g;->j:J

    .line 82
    iput-wide v1, p0, Lcom/networkbench/agent/impl/data/a/g;->k:J

    .line 83
    iput-wide v1, p0, Lcom/networkbench/agent/impl/data/a/g;->l:J

    .line 84
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/networkbench/agent/impl/data/a/g;->a(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/networkbench/agent/impl/data/a/g;->n:J

    .line 85
    iput-object p5, p0, Lcom/networkbench/agent/impl/data/a/g;->c:Ljava/lang/String;

    .line 86
    iput v0, p0, Lcom/networkbench/agent/impl/data/a/g;->h:I

    .line 87
    iput-boolean p6, p0, Lcom/networkbench/agent/impl/data/a/g;->d:Z

    .line 88
    iput-wide p1, p0, Lcom/networkbench/agent/impl/data/a/g;->j:J

    .line 89
    iput-wide p3, p0, Lcom/networkbench/agent/impl/data/a/g;->k:J

    .line 90
    invoke-static {}, Lcom/networkbench/agent/impl/util/ak;->q()Lcom/networkbench/agent/impl/k/b;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/data/a/g;->g:Lcom/networkbench/agent/impl/k/b;

    .line 91
    const-string p1, ""

    iput-object p1, p0, Lcom/networkbench/agent/impl/data/a/g;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/k/b;)V
    .locals 3

    .line 63
    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/type/HarvestableArray;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/networkbench/agent/impl/data/a/g;->d:Z

    .line 65
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/networkbench/agent/impl/data/a/g;->e:Ljava/util/Map;

    const-wide/16 v1, 0x0

    .line 66
    iput-wide v1, p0, Lcom/networkbench/agent/impl/data/a/g;->j:J

    .line 67
    iput-wide v1, p0, Lcom/networkbench/agent/impl/data/a/g;->k:J

    .line 68
    iput-wide v1, p0, Lcom/networkbench/agent/impl/data/a/g;->l:J

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/networkbench/agent/impl/data/a/g;->a(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/networkbench/agent/impl/data/a/g;->n:J

    .line 70
    iput-wide p1, p0, Lcom/networkbench/agent/impl/data/a/g;->j:J

    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/networkbench/agent/impl/data/a/g;->k:J

    .line 72
    iput-object p3, p0, Lcom/networkbench/agent/impl/data/a/g;->c:Ljava/lang/String;

    .line 73
    iput v0, p0, Lcom/networkbench/agent/impl/data/a/g;->h:I

    .line 74
    iput-object p5, p0, Lcom/networkbench/agent/impl/data/a/g;->g:Lcom/networkbench/agent/impl/k/b;

    .line 75
    const-string p1, ""

    iput-object p1, p5, Lcom/networkbench/agent/impl/k/b;->e:Ljava/lang/String;

    .line 76
    iput-object p1, p5, Lcom/networkbench/agent/impl/k/b;->d:Ljava/lang/String;

    if-nez p4, :cond_0

    move-object p4, p1

    .line 77
    :cond_0
    iput-object p4, p0, Lcom/networkbench/agent/impl/data/a/g;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/networkbench/agent/impl/asyncaction/s;Ljava/lang/String;Lcom/networkbench/agent/impl/asyncaction/r;Lcom/networkbench/agent/impl/k/b;)V
    .locals 3

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/type/HarvestableArray;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/networkbench/agent/impl/data/a/g;->d:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/networkbench/agent/impl/data/a/g;->e:Ljava/util/Map;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/networkbench/agent/impl/data/a/g;->j:J

    iput-wide v1, p0, Lcom/networkbench/agent/impl/data/a/g;->k:J

    iput-wide v1, p0, Lcom/networkbench/agent/impl/data/a/g;->l:J

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/asyncaction/s;->g()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/networkbench/agent/impl/data/a/g;->j:J

    iput-object p2, p0, Lcom/networkbench/agent/impl/data/a/g;->c:Ljava/lang/String;

    iput v0, p0, Lcom/networkbench/agent/impl/data/a/g;->h:I

    iput-object p4, p0, Lcom/networkbench/agent/impl/data/a/g;->g:Lcom/networkbench/agent/impl/k/b;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/networkbench/agent/impl/asyncaction/r;->a()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p4, Lcom/networkbench/agent/impl/k/b;->c:Ljava/lang/String;

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "NBSEventAction seriesData:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/networkbench/agent/impl/k/b;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->A(Ljava/lang/String;)V

    return-void
.end method

.method private a(II)V
    .locals 3

    if-lez p1, :cond_0

    .line 69
    sget-object v0, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "countAvailability  ActionFailureThreshold: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->getActionFailureThreshold()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    mul-int/lit8 p2, p2, 0x64

    .line 70
    div-int/2addr p2, p1

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->getActionFailureThreshold()I

    move-result p1

    if-lt p2, p1, :cond_0

    .line 71
    iget p1, p0, Lcom/networkbench/agent/impl/data/a/g;->o:I

    sget-object p2, Lcom/networkbench/agent/impl/data/a/g$a;->c:Lcom/networkbench/agent/impl/data/a/g$a;

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/data/a/g$a;->a()I

    move-result p2

    or-int/2addr p1, p2

    iput p1, p0, Lcom/networkbench/agent/impl/data/a/g;->o:I

    :cond_0
    return-void
.end method

.method private c(J)V
    .locals 4

    sget-object v0, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "slowUserAction threshold:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->getInstance()Lcom/networkbench/agent/impl/harvest/Harvest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/Harvest;->getConfiguration()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getSlowUserActionThreshold()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->getInstance()Lcom/networkbench/agent/impl/harvest/Harvest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/Harvest;->getConfiguration()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getSlowUserActionThreshold()J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    iget p1, p0, Lcom/networkbench/agent/impl/data/a/g;->o:I

    sget-object p2, Lcom/networkbench/agent/impl/data/a/g$a;->e:Lcom/networkbench/agent/impl/data/a/g$a;

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/data/a/g$a;->a()I

    move-result p2

    or-int/2addr p1, p2

    iput p1, p0, Lcom/networkbench/agent/impl/data/a/g;->o:I

    :cond_0
    return-void
.end method

.method private f()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/networkbench/agent/impl/data/a/g;->j()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/networkbench/agent/impl/util/ak;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private g()Z
    .locals 2

    iget v0, p0, Lcom/networkbench/agent/impl/data/a/g;->o:I

    sget-object v1, Lcom/networkbench/agent/impl/data/a/g$a;->c:Lcom/networkbench/agent/impl/data/a/g$a;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/a/g$a;->a()I

    move-result v1

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/networkbench/agent/impl/data/a/g;->o:I

    sget-object v1, Lcom/networkbench/agent/impl/data/a/g$a;->d:Lcom/networkbench/agent/impl/data/a/g$a;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/a/g$a;->a()I

    move-result v1

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    iget p0, p0, Lcom/networkbench/agent/impl/data/a/g;->o:I

    sget-object v0, Lcom/networkbench/agent/impl/data/a/g$a;->e:Lcom/networkbench/agent/impl/data/a/g$a;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/a/g$a;->a()I

    move-result v0

    and-int/2addr p0, v0

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

.method private h()I
    .locals 3

    iget v0, p0, Lcom/networkbench/agent/impl/data/a/g;->o:I

    sget-object v1, Lcom/networkbench/agent/impl/data/a/g$a;->a:Lcom/networkbench/agent/impl/data/a/g$a;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/a/g$a;->a()I

    move-result v1

    iget v2, p0, Lcom/networkbench/agent/impl/data/a/g;->o:I

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    sget-object v0, Lcom/networkbench/agent/impl/data/a/g$a;->c:Lcom/networkbench/agent/impl/data/a/g$a;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/a/g$a;->a()I

    move-result v1

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/data/a/g$a;->a()I

    move-result v0

    iput v0, p0, Lcom/networkbench/agent/impl/data/a/g;->o:I

    return v0

    :cond_1
    iget v0, p0, Lcom/networkbench/agent/impl/data/a/g;->o:I

    sget-object v1, Lcom/networkbench/agent/impl/data/a/g$a;->d:Lcom/networkbench/agent/impl/data/a/g$a;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/a/g$a;->a()I

    move-result v2

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/a/g$a;->a()I

    move-result v0

    iput v0, p0, Lcom/networkbench/agent/impl/data/a/g;->o:I

    return v0

    :cond_2
    iget v0, p0, Lcom/networkbench/agent/impl/data/a/g;->o:I

    sget-object v1, Lcom/networkbench/agent/impl/data/a/g$a;->e:Lcom/networkbench/agent/impl/data/a/g$a;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/a/g$a;->a()I

    move-result v2

    and-int/2addr v0, v2

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/a/g$a;->a()I

    move-result v0

    iput v0, p0, Lcom/networkbench/agent/impl/data/a/g;->o:I

    return v0

    :cond_3
    iget p0, p0, Lcom/networkbench/agent/impl/data/a/g;->o:I

    return p0
.end method

.method private i()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/networkbench/agent/impl/data/a/g;->j()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/a/g;->p:Lcom/networkbench/agent/impl/asyncaction/s;

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/type/BaseHarvestable;->asJson()Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method private j()Z
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/networkbench/agent/impl/data/a/g;->g()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a(JJ)J
    .locals 4

    sget-object v0, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "blockTime threshold:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->getInstance()Lcom/networkbench/agent/impl/harvest/Harvest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/Harvest;->getConfiguration()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getSlowUserActionThreshold()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    sub-long/2addr p3, p1

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->getInstance()Lcom/networkbench/agent/impl/harvest/Harvest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/Harvest;->getConfiguration()Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/HarvestConfiguration;->getSlowUserActionThreshold()J

    move-result-wide p1

    cmp-long p1, p3, p1

    if-lez p1, :cond_0

    iget p1, p0, Lcom/networkbench/agent/impl/data/a/g;->o:I

    sget-object p2, Lcom/networkbench/agent/impl/data/a/g$a;->d:Lcom/networkbench/agent/impl/data/a/g$a;

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/data/a/g$a;->a()I

    move-result p2

    or-int/2addr p1, p2

    iput p1, p0, Lcom/networkbench/agent/impl/data/a/g;->o:I

    :cond_0
    return-wide p3
.end method

.method public a(I)V
    .locals 0

    .line 62
    iput p1, p0, Lcom/networkbench/agent/impl/data/a/g;->o:I

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 60
    iput-wide p1, p0, Lcom/networkbench/agent/impl/data/a/g;->k:J

    return-void
.end method

.method public a(JLjava/lang/String;Z)V
    .locals 0

    .line 67
    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/asyncaction/s;Ljava/lang/String;)V
    .locals 4

    .line 63
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/asyncaction/s;->g()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/networkbench/agent/impl/data/a/g;->a(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/data/a/g;->n:J

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/data/a/g;->k:J

    if-nez p2, :cond_0

    .line 65
    const-string p2, ""

    :cond_0
    iput-object p2, p0, Lcom/networkbench/agent/impl/data/a/g;->i:Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lcom/networkbench/agent/impl/data/a/g;->p:Lcom/networkbench/agent/impl/asyncaction/s;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/networkbench/agent/impl/data/a/g;->g:Lcom/networkbench/agent/impl/k/b;

    iput-object p1, p0, Lcom/networkbench/agent/impl/k/b;->a:Ljava/lang/String;

    return-void
.end method

.method public a()Z
    .locals 4

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/networkbench/agent/impl/data/a/g;->k:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1b58

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public asJsonArray()Lcom/networkbench/com/google/gson/JsonArray;
    .locals 8

    new-instance v0, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    iget-object v1, p0, Lcom/networkbench/agent/impl/data/a/g;->p:Lcom/networkbench/agent/impl/asyncaction/s;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/asyncaction/s;->h()I

    move-result v1

    iget-object v2, p0, Lcom/networkbench/agent/impl/data/a/g;->p:Lcom/networkbench/agent/impl/asyncaction/s;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/asyncaction/s;->i()I

    move-result v2

    iget-object v3, p0, Lcom/networkbench/agent/impl/data/a/g;->p:Lcom/networkbench/agent/impl/asyncaction/s;

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/asyncaction/s;->j()I

    move-result v3

    add-int v4, v2, v3

    invoke-direct {p0, v1, v4}, Lcom/networkbench/agent/impl/data/a/g;->a(II)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/data/a/g;->e()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/networkbench/agent/impl/data/a/g;->c(J)V

    new-instance v6, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget v7, p0, Lcom/networkbench/agent/impl/data/a/g;->h:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v6}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v6, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v7, p0, Lcom/networkbench/agent/impl/data/a/g;->c:Ljava/lang/String;

    invoke-direct {v6, v7}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v6, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v6, v4}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v6}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v4, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v5, p0, Lcom/networkbench/agent/impl/data/a/g;->p:Lcom/networkbench/agent/impl/asyncaction/s;

    if-nez v5, :cond_1

    const-wide/16 v5, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Lcom/networkbench/agent/impl/asyncaction/s;->l()J

    move-result-wide v5

    :goto_1
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v4}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v4, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/data/a/g;->h()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v4}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v4, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v4}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    add-int v4, v2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/data/a/g;->f()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/data/a/g;->i()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/data/a/g;->p:Lcom/networkbench/agent/impl/asyncaction/s;

    const-string v2, ""

    if-eqz v1, :cond_2

    instance-of v1, v1, Lcom/networkbench/agent/impl/asyncaction/a;

    if-eqz v1, :cond_2

    new-instance v1, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    iget-object v3, p0, Lcom/networkbench/agent/impl/data/a/g;->p:Lcom/networkbench/agent/impl/asyncaction/s;

    check-cast v3, Lcom/networkbench/agent/impl/asyncaction/a;

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/asyncaction/a;->a()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object v3

    const-string v4, "reqs"

    invoke-virtual {v1, v4, v3}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v3, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {v1}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    goto :goto_2

    :cond_2
    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    :goto_2
    new-instance v1, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    new-instance v3, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v4, p0, Lcom/networkbench/agent/impl/data/a/g;->c:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v4, "name"

    invoke-virtual {v1, v4, v3}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v3, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v4, p0, Lcom/networkbench/agent/impl/data/a/g;->e:Ljava/util/Map;

    invoke-static {v4}, Lcom/networkbench/agent/impl/util/ak;->a(Ljava/util/Map;)Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    const-string v4, "cust"

    invoke-virtual {v1, v4, v3}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v3, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {v1}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/agent/impl/data/a;

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v3

    iget-object v4, p0, Lcom/networkbench/agent/impl/data/a/g;->g:Lcom/networkbench/agent/impl/k/b;

    iget-wide v5, p0, Lcom/networkbench/agent/impl/data/a/g;->j:J

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/networkbench/agent/impl/data/a;-><init>(Lcom/networkbench/agent/impl/util/r;Lcom/networkbench/agent/impl/k/b;J)V

    new-instance v3, Lcom/networkbench/com/google/gson/JsonPrimitive;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/data/a;->asJsonObject()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/a/g;->i:Ljava/lang/String;

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    move-object v2, p0

    :goto_3
    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object v0
.end method

.method public b()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->getInstance()Lcom/networkbench/agent/impl/harvest/Harvest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/Harvest;->getHarvestData()Lcom/networkbench/agent/impl/harvest/HarvestData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/Harvest;->getInstance()Lcom/networkbench/agent/impl/harvest/Harvest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/Harvest;->getHarvestData()Lcom/networkbench/agent/impl/harvest/HarvestData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/harvest/HarvestData;->getNbsEventActions()Lcom/networkbench/agent/impl/data/a/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/data/a/i;->a(Lcom/networkbench/agent/impl/data/a/g;)V

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/asyncaction/r;->c()Lcom/networkbench/agent/impl/asyncaction/r;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/a/g;->p:Lcom/networkbench/agent/impl/asyncaction/s;

    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/asyncaction/r;->b(Lcom/networkbench/agent/impl/asyncaction/e;)V

    :cond_1
    return-void
.end method

.method public b(J)V
    .locals 0

    .line 37
    iput-wide p1, p0, Lcom/networkbench/agent/impl/data/a/g;->n:J

    return-void
.end method

.method public c()Z
    .locals 6

    .line 59
    iget-object v0, p0, Lcom/networkbench/agent/impl/data/a/g;->p:Lcom/networkbench/agent/impl/asyncaction/s;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 60
    const-string p0, "NBSEventAction"

    const-string v0, "nbsSlowStartTrace == null, please check"

    invoke-static {p0, v0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 61
    :cond_0
    invoke-virtual {v0}, Lcom/networkbench/agent/impl/asyncaction/s;->l()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    return v1

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/networkbench/agent/impl/data/a/g;->p:Lcom/networkbench/agent/impl/asyncaction/s;

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/asyncaction/s;->m()J

    move-result-wide v2

    const-wide/16 v4, 0x4650

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    return v1

    .line 63
    :cond_2
    iget-object p0, p0, Lcom/networkbench/agent/impl/data/a/g;->p:Lcom/networkbench/agent/impl/asyncaction/s;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/asyncaction/s;->l()J

    move-result-wide v2

    cmp-long p0, v2, v4

    if-lez p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/networkbench/agent/impl/data/a/g;->j:J

    return-wide v0
.end method

.method public e()J
    .locals 7

    iget-boolean v0, p0, Lcom/networkbench/agent/impl/data/a/g;->d:Z

    const-wide/16 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/networkbench/agent/impl/data/a/g;->p:Lcom/networkbench/agent/impl/asyncaction/s;

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    invoke-virtual {v0}, Lcom/networkbench/agent/impl/asyncaction/s;->m()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/networkbench/agent/impl/data/a/g;->n:J

    cmp-long p0, v0, v2

    if-gez p0, :cond_1

    return-wide v2

    :cond_1
    return-wide v0

    :cond_2
    sget-object v0, Lcom/networkbench/agent/impl/util/r;->A:Lcom/networkbench/agent/impl/c/e;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "countDuration:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/networkbench/agent/impl/data/a/g;->l:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", beginTimeStamp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/networkbench/agent/impl/data/a/g;->j:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/networkbench/agent/impl/data/a/g;->l:J

    iget-wide v5, p0, Lcom/networkbench/agent/impl/data/a/g;->j:J

    sub-long/2addr v3, v5

    cmp-long v0, v3, v1

    if-ltz v0, :cond_4

    iget-wide v0, p0, Lcom/networkbench/agent/impl/data/a/g;->n:J

    cmp-long v0, v3, v0

    if-gez v0, :cond_3

    goto :goto_0

    :cond_3
    return-wide v3

    :cond_4
    :goto_0
    iget-wide v0, p0, Lcom/networkbench/agent/impl/data/a/g;->n:J

    return-wide v0
.end method
