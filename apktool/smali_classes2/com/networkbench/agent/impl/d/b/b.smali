.class public Lcom/networkbench/agent/impl/d/b/b;
.super Lcom/networkbench/agent/impl/d/b;
.source "SourceFile"


# static fields
.field private static o:Lcom/networkbench/agent/impl/c/e;


# instance fields
.field public c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/networkbench/agent/impl/k/b;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private p:Lcom/networkbench/agent/impl/harvest/RequestMethodType;

.field private q:Ljava/lang/String;

.field private r:Lcom/networkbench/agent/impl/harvest/HttpLibType;

.field private s:I

.field private t:Ljava/util/Map;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/d/b/b;->o:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method public constructor <init>(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/networkbench/agent/impl/d/f;->b:Lcom/networkbench/agent/impl/d/f;

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/d/b;-><init>(Lcom/networkbench/agent/impl/d/f;)V

    sget-object v0, Lcom/networkbench/agent/impl/harvest/HttpLibType;->URLConnection:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    iput-object v0, p0, Lcom/networkbench/agent/impl/d/b/b;->r:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/d/b/b;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/d/b/b;->d:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;->getTransactionData()Lcom/networkbench/agent/impl/a/a/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/a/a/b;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/a/a/b;->d()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object v0, p0, Lcom/networkbench/agent/impl/d/b/b;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/a/a/b;->s()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/a/a/b;->s()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/networkbench/agent/impl/d/b/b;->g:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/networkbench/agent/impl/d/b;->a(J)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/a/a/b;->G()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    iput-object v0, p0, Lcom/networkbench/agent/impl/d/b/b;->i:Ljava/lang/String;

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/networkbench/agent/impl/d/b/b;->t()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/d/b/b;->i:Ljava/lang/String;

    :goto_1
    iput-object p2, p0, Lcom/networkbench/agent/impl/d/b/b;->h:Ljava/lang/String;

    iput-object p3, p0, Lcom/networkbench/agent/impl/d/b/b;->j:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/a/a/b;->v()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/networkbench/agent/impl/d/b/b;->m:Ljava/lang/String;

    iput-object v1, p0, Lcom/networkbench/agent/impl/d/b/b;->l:Ljava/lang/String;

    iput-object p4, p0, Lcom/networkbench/agent/impl/d/b/b;->k:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/a/a/b;->q()Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    move-result-object p2

    iput-object p2, p0, Lcom/networkbench/agent/impl/d/b/b;->p:Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/a/a/b;->l()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/networkbench/agent/impl/d/b/b;->n:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/a/a/b;->j()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/networkbench/agent/impl/d/b/b;->q:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/a/a/b;->A()Lcom/networkbench/agent/impl/harvest/HttpLibType;

    move-result-object p2

    iput-object p2, p0, Lcom/networkbench/agent/impl/d/b/b;->r:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/a/a/b;->p()I

    move-result p2

    iput p2, p0, Lcom/networkbench/agent/impl/d/b/b;->s:I

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/a/a/b;->h()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/networkbench/agent/impl/d/b/b;->v:Ljava/lang/String;

    iget-object p2, p1, Lcom/networkbench/agent/impl/a/a/b;->b:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/networkbench/agent/impl/d/b/b;->c:Ljava/util/HashMap;

    iget-object p2, p1, Lcom/networkbench/agent/impl/a/a/b;->c:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/networkbench/agent/impl/d/b/b;->d:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/a/a/b;->H()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/networkbench/agent/impl/d/b/b;->u:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/a/a/b;->f()Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lcom/networkbench/agent/impl/d/b/b;->t:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/a/a/b;->K()Lcom/networkbench/agent/impl/k/b;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/d/b/b;->e:Lcom/networkbench/agent/impl/k/b;

    return-void
.end method

.method private a(Ljava/lang/StackTraceElement;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.networkbench"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "dalvik.system.VMStack"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "getThreadStackTrace"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "java.lang.Thread"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "getStackTrace"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private t()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_2

    aget-object v4, v1, v2

    invoke-direct {p0, v4}, Lcom/networkbench/agent/impl/d/b/b;->a(Ljava/lang/StackTraceElement;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    if-gt v2, v4, :cond_0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getStackTraceLimit()I

    move-result v4

    if-lt v3, v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/networkbench/agent/impl/d/b/b;->g:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/networkbench/agent/impl/d/b/b;->n:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/networkbench/agent/impl/d/b/b;->t:Ljava/util/Map;

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/d/b/b;->f:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 3
    iput-object p1, p0, Lcom/networkbench/agent/impl/d/b/b;->j:Ljava/util/Map;

    return-void
.end method

.method public c()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/d/b/b;->t:Ljava/util/Map;

    return-object p0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/networkbench/agent/impl/d/b/b;->i:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/d/b/b;->u:Ljava/lang/String;

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/d/b/b;->v:Ljava/lang/String;

    return-object p0
.end method

.method public f()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/d/b/b;->s:I

    return p0
.end method

.method public g()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/d/b/b;->m:Ljava/lang/String;

    return-object p0
.end method

.method public h()Lcom/networkbench/agent/impl/harvest/RequestMethodType;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/d/b/b;->p:Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    return-object p0
.end method

.method public i()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/d/b/b;->l:Ljava/lang/String;

    return-object p0
.end method

.method public j()Lcom/networkbench/agent/impl/harvest/HttpLibType;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/d/b/b;->r:Lcom/networkbench/agent/impl/harvest/HttpLibType;

    return-object p0
.end method

.method public k()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/d/b/b;->f:Ljava/lang/String;

    return-object p0
.end method

.method public l()I
    .locals 0

    iget p0, p0, Lcom/networkbench/agent/impl/d/b/b;->g:I

    return p0
.end method

.method public m()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/d/b/b;->h:Ljava/lang/String;

    return-object p0
.end method

.method public n()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/d/b/b;->i:Ljava/lang/String;

    return-object p0
.end method

.method public o()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/networkbench/agent/impl/d/b/b;->j:Ljava/util/Map;

    return-object p0
.end method

.method public p()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/d/b/b;->k:Ljava/lang/String;

    return-object p0
.end method

.method public q()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/d/b/b;->n:Ljava/lang/String;

    return-object p0
.end method

.method public r()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/d/b/b;->q:Ljava/lang/String;

    return-object p0
.end method

.method public s()Lcom/networkbench/agent/impl/k/b;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/d/b/b;->e:Lcom/networkbench/agent/impl/k/b;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HttpErrorMeasurement: url:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/d/b/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", httpStatusCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/networkbench/agent/impl/d/b/b;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",responseBody:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/networkbench/agent/impl/d/b/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", stackTrace:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/networkbench/agent/impl/d/b/b;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",message:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/networkbench/agent/impl/d/b/b;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",urlParams:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/networkbench/agent/impl/d/b/b;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", filterParams:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/networkbench/agent/impl/d/b/b;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", remoteIp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/networkbench/agent/impl/d/b/b;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",appPhase:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/networkbench/agent/impl/d/b/b;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", requestMethodType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/networkbench/agent/impl/d/b/b;->p:Lcom/networkbench/agent/impl/harvest/RequestMethodType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cdn_vendor_name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/networkbench/agent/impl/d/b/b;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",appPhase : +"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/networkbench/agent/impl/d/b/b;->s:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "[\r\n]"

    const-string v1, ";"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
