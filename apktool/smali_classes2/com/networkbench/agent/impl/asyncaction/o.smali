.class public Lcom/networkbench/agent/impl/asyncaction/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:J

.field private c:Z


# direct methods
.method public constructor <init>(JJZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/networkbench/agent/impl/asyncaction/o;->a:J

    iput-wide p3, p0, Lcom/networkbench/agent/impl/asyncaction/o;->b:J

    iput-boolean p5, p0, Lcom/networkbench/agent/impl/asyncaction/o;->c:Z

    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    iget-wide v0, p0, Lcom/networkbench/agent/impl/asyncaction/o;->b:J

    iget-wide v2, p0, Lcom/networkbench/agent/impl/asyncaction/o;->a:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public b()Z
    .locals 0

    iget-boolean p0, p0, Lcom/networkbench/agent/impl/asyncaction/o;->c:Z

    return p0
.end method
