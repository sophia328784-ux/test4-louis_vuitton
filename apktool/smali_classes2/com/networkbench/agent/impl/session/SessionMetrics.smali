.class public Lcom/networkbench/agent/impl/session/SessionMetrics;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static sessionMetrics:Lcom/networkbench/agent/impl/session/SessionMetrics;


# instance fields
.field private metrics:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/networkbench/agent/impl/session/ISpan;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/networkbench/agent/impl/session/SessionMetrics;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/session/SessionMetrics;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/session/SessionMetrics;->sessionMetrics:Lcom/networkbench/agent/impl/session/SessionMetrics;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/session/SessionMetrics;->metrics:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addMetric(Lcom/networkbench/agent/impl/session/ISpan;)V
    .locals 1

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/SessionMetrics;->metrics:Ljava/util/Map;

    invoke-interface {p1}, Lcom/networkbench/agent/impl/session/ISpan;->getSpanId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeMetric(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/session/SessionMetrics;->metrics:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public retriveSpan(Ljava/lang/String;)Lcom/networkbench/agent/impl/session/ISpan;
    .locals 1

    iget-object v0, p0, Lcom/networkbench/agent/impl/session/SessionMetrics;->metrics:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Lcom/networkbench/agent/impl/session/NullSpan;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/session/NullSpan;-><init>()V

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/networkbench/agent/impl/session/SessionMetrics;->metrics:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/networkbench/agent/impl/session/ISpan;

    return-object p0
.end method
