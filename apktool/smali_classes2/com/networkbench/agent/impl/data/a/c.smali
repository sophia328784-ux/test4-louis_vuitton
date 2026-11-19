.class public abstract Lcom/networkbench/agent/impl/data/a/c;
.super Lcom/networkbench/agent/impl/harvest/type/HarvestableArray;
.source "SourceFile"


# instance fields
.field protected a:J

.field protected b:Ljava/lang/String;

.field protected c:J

.field protected d:Lcom/networkbench/agent/impl/k/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/networkbench/agent/impl/harvest/type/HarvestableArray;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/a/c;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b()J
    .locals 4

    iget-wide v0, p0, Lcom/networkbench/agent/impl/data/a/c;->c:J

    iget-wide v2, p0, Lcom/networkbench/agent/impl/data/a/c;->a:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
