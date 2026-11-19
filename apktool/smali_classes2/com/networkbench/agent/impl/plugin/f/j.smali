.class public Lcom/networkbench/agent/impl/plugin/f/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I = 0xea60


# instance fields
.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/networkbench/agent/impl/plugin/f/j;->b:J

    return-wide v0
.end method

.method public a(J)Z
    .locals 4

    iget-wide v0, p0, Lcom/networkbench/agent/impl/plugin/f/j;->b:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    const/4 v2, 0x1

    if-gtz p0, :cond_0

    return v2

    :cond_0
    cmp-long p0, p1, v0

    if-lez p0, :cond_1

    sub-long/2addr p1, v0

    const-wide/32 v0, 0xea60

    cmp-long p0, p1, v0

    if-lez p0, :cond_1

    return v2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public b(J)V
    .locals 0

    iput-wide p1, p0, Lcom/networkbench/agent/impl/plugin/f/j;->b:J

    return-void
.end method
