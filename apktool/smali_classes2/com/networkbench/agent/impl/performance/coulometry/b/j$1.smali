.class Lcom/networkbench/agent/impl/performance/coulometry/b/j$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/agent/impl/performance/coulometry/b/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/networkbench/agent/impl/performance/coulometry/b/h;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/networkbench/agent/impl/performance/coulometry/b/j;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/performance/coulometry/b/j;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/performance/coulometry/b/j$1;->a:Lcom/networkbench/agent/impl/performance/coulometry/b/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/networkbench/agent/impl/performance/coulometry/b/h;Lcom/networkbench/agent/impl/performance/coulometry/b/h;)I
    .locals 4

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/performance/coulometry/b/h;->a()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/performance/coulometry/b/h;->a()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/performance/coulometry/b/h;->a()J

    move-result-wide p0

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/performance/coulometry/b/h;->a()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/performance/coulometry/b/h;->b()J

    move-result-wide p0

    invoke-virtual {p2}, Lcom/networkbench/agent/impl/performance/coulometry/b/h;->b()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/networkbench/agent/impl/performance/coulometry/b/h;

    check-cast p2, Lcom/networkbench/agent/impl/performance/coulometry/b/h;

    invoke-virtual {p0, p1, p2}, Lcom/networkbench/agent/impl/performance/coulometry/b/j$1;->a(Lcom/networkbench/agent/impl/performance/coulometry/b/h;Lcom/networkbench/agent/impl/performance/coulometry/b/h;)I

    move-result p0

    return p0
.end method
