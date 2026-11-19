.class public Lcom/networkbench/agent/impl/d/c/a;
.super Lcom/networkbench/agent/impl/d/c/c;
.source "SourceFile"


# static fields
.field private static final a:Lcom/networkbench/agent/impl/c/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/d/c/a;->a:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/d/f;->b:Lcom/networkbench/agent/impl/d/f;

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/d/c/c;-><init>(Lcom/networkbench/agent/impl/d/f;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
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

    new-instance v0, Lcom/networkbench/agent/impl/d/b/b;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/networkbench/agent/impl/d/b/b;-><init>(Lcom/networkbench/agent/impl/instrumentation/NBSTransactionState;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/networkbench/agent/impl/d/c/c;->a(Lcom/networkbench/agent/impl/d/a;)V

    return-void
.end method
