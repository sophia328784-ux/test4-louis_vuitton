.class Lcom/networkbench/agent/impl/harvest/HarvestTimer$1;
.super Lcom/networkbench/agent/impl/util/y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/harvest/HarvestTimer;->tickNow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/networkbench/agent/impl/harvest/HarvestTimer;

.field final synthetic b:Lcom/networkbench/agent/impl/harvest/HarvestTimer;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/harvest/HarvestTimer;Lcom/networkbench/agent/impl/harvest/HarvestTimer;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/harvest/HarvestTimer$1;->b:Lcom/networkbench/agent/impl/harvest/HarvestTimer;

    iput-object p2, p0, Lcom/networkbench/agent/impl/harvest/HarvestTimer$1;->a:Lcom/networkbench/agent/impl/harvest/HarvestTimer;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/util/y;-><init>()V

    return-void
.end method


# virtual methods
.method public tryCatchRun()V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/harvest/HarvestTimer$1;->a:Lcom/networkbench/agent/impl/harvest/HarvestTimer;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/harvest/HarvestTimer;->a()V

    return-void
.end method
