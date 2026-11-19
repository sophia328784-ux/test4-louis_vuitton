.class public Lcom/networkbench/agent/impl/d/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/d/a;


# static fields
.field protected static final a:Lcom/networkbench/agent/impl/c/e;


# instance fields
.field protected b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/networkbench/com/google/gson/JsonObject;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/networkbench/agent/impl/d/f;

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/d/b;->a:Lcom/networkbench/agent/impl/c/e;

    return-void
.end method

.method public constructor <init>(Lcom/networkbench/agent/impl/d/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/d/b;->a(Lcom/networkbench/agent/impl/d/f;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/d/b;->b:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public a()Lcom/networkbench/agent/impl/d/f;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/networkbench/agent/impl/d/b;->c:Lcom/networkbench/agent/impl/d/f;

    return-object p0
.end method

.method public a(J)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/networkbench/agent/impl/d/b;->d:J

    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/d/f;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/d/b;->c:Lcom/networkbench/agent/impl/d/f;

    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/networkbench/com/google/gson/JsonObject;",
            ">;)V"
        }
    .end annotation

    .line 5
    iput-object p1, p0, Lcom/networkbench/agent/impl/d/b;->b:Ljava/util/HashMap;

    return-void
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/networkbench/agent/impl/d/b;->d:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BaseMeasurement{type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/networkbench/agent/impl/d/b;->c:Lcom/networkbench/agent/impl/d/f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\'\', startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/networkbench/agent/impl/d/b;->d:J

    const/16 p0, 0x7d

    invoke-static {v0, v1, v2, p0}, Lfc;->k(Ljava/lang/StringBuilder;JC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
