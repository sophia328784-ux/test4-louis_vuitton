.class public Lcom/networkbench/agent/impl/util/o;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/networkbench/agent/impl/asyncaction/o;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/networkbench/agent/impl/asyncaction/o;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/asyncaction/o;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public synthetic add(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/networkbench/agent/impl/asyncaction/o;

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/util/o;->a(Lcom/networkbench/agent/impl/asyncaction/o;)Z

    move-result p0

    return p0
.end method
