.class Lcom/networkbench/agent/impl/b/k$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/b/k;->i()Lcom/networkbench/com/google/gson/JsonArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/networkbench/agent/impl/harvest/ActionData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/networkbench/agent/impl/b/k;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/b/k;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/b/k$1;->a:Lcom/networkbench/agent/impl/b/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/networkbench/agent/impl/harvest/ActionData;Lcom/networkbench/agent/impl/harvest/ActionData;)I
    .locals 2

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/ActionData;->getTimestamp()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/harvest/ActionData;->getTimestamp()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/networkbench/agent/impl/harvest/ActionData;

    check-cast p2, Lcom/networkbench/agent/impl/harvest/ActionData;

    invoke-virtual {p0, p1, p2}, Lcom/networkbench/agent/impl/b/k$1;->a(Lcom/networkbench/agent/impl/harvest/ActionData;Lcom/networkbench/agent/impl/harvest/ActionData;)I

    move-result p0

    return p0
.end method
