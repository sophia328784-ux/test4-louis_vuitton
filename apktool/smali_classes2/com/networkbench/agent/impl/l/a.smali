.class public Lcom/networkbench/agent/impl/l/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/agent/impl/l/a$a;
    }
.end annotation


# instance fields
.field private a:J

.field private b:J

.field private c:Lcom/networkbench/agent/impl/l/a$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    sget-object v0, Lcom/networkbench/agent/impl/l/a$a;->b:Lcom/networkbench/agent/impl/l/a$a;

    iput-object v0, p0, Lcom/networkbench/agent/impl/l/a;->c:Lcom/networkbench/agent/impl/l/a$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/l/a;->a:J

    return-void
.end method

.method public b()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/networkbench/agent/impl/l/a;->b:J

    iget-object v2, p0, Lcom/networkbench/agent/impl/l/a;->c:Lcom/networkbench/agent/impl/l/a$a;

    sget-object v3, Lcom/networkbench/agent/impl/l/a$a;->b:Lcom/networkbench/agent/impl/l/a$a;

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/networkbench/agent/impl/l/a$a;->a:Lcom/networkbench/agent/impl/l/a$a;

    iput-object v2, p0, Lcom/networkbench/agent/impl/l/a;->c:Lcom/networkbench/agent/impl/l/a$a;

    iget-wide v2, p0, Lcom/networkbench/agent/impl/l/a;->a:J

    sub-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method
