.class public Lcom/networkbench/agent/impl/util/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:D

.field private b:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/networkbench/agent/impl/util/t;->a:D

    iput-wide p3, p0, Lcom/networkbench/agent/impl/util/t;->b:D

    return-void
.end method


# virtual methods
.method public a()D
    .locals 2

    .line 3
    iget-wide v0, p0, Lcom/networkbench/agent/impl/util/t;->a:D

    return-wide v0
.end method

.method public a(D)V
    .locals 0

    iput-wide p1, p0, Lcom/networkbench/agent/impl/util/t;->a:D

    return-void
.end method

.method public b()D
    .locals 2

    .line 3
    iget-wide v0, p0, Lcom/networkbench/agent/impl/util/t;->b:D

    return-wide v0
.end method

.method public b(D)V
    .locals 0

    iput-wide p1, p0, Lcom/networkbench/agent/impl/util/t;->b:D

    return-void
.end method
