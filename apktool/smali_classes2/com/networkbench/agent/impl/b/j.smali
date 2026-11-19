.class public Lcom/networkbench/agent/impl/b/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ANR"

    iput-object v0, p0, Lcom/networkbench/agent/impl/b/j;->a:Ljava/lang/String;

    const-string v0, "Dear developer,a slowly operation is blocking the main thread."

    iput-object v0, p0, Lcom/networkbench/agent/impl/b/j;->b:Ljava/lang/String;

    return-void
.end method
