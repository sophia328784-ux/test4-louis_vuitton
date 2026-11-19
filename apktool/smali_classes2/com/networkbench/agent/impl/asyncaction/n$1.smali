.class Lcom/networkbench/agent/impl/asyncaction/n$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/asyncaction/n;->a(Ljava/util/List;)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/networkbench/agent/impl/asyncaction/o;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/networkbench/agent/impl/asyncaction/o;Lcom/networkbench/agent/impl/asyncaction/o;)I
    .locals 2

    iget-wide p0, p1, Lcom/networkbench/agent/impl/asyncaction/o;->a:J

    iget-wide v0, p2, Lcom/networkbench/agent/impl/asyncaction/o;->a:J

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/networkbench/agent/impl/asyncaction/o;

    check-cast p2, Lcom/networkbench/agent/impl/asyncaction/o;

    invoke-virtual {p0, p1, p2}, Lcom/networkbench/agent/impl/asyncaction/n$1;->a(Lcom/networkbench/agent/impl/asyncaction/o;Lcom/networkbench/agent/impl/asyncaction/o;)I

    move-result p0

    return p0
.end method
