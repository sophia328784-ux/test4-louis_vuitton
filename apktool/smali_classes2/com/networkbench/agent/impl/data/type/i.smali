.class public Lcom/networkbench/agent/impl/data/type/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "CustomAppLaunch"


# instance fields
.field private b:Lcom/networkbench/agent/impl/data/type/g;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/data/type/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/networkbench/agent/impl/data/type/i;->b:Lcom/networkbench/agent/impl/data/type/g;

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 2

    iget-object v0, p0, Lcom/networkbench/agent/impl/data/type/i;->b:Lcom/networkbench/agent/impl/data/type/g;

    if-eqz v0, :cond_0

    const-string v0, "CustomAppLaunch"

    const-string v1, "customAppLaunchEnd invoked"

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/data/type/i;->b:Lcom/networkbench/agent/impl/data/type/g;

    invoke-virtual {v0, p1, p2}, Lcom/networkbench/agent/impl/data/type/g;->a(J)V

    sget-object p1, Lcom/networkbench/agent/impl/asyncaction/a/b;->a:Lcom/networkbench/agent/impl/asyncaction/a/b;

    iget-object p0, p0, Lcom/networkbench/agent/impl/data/type/i;->b:Lcom/networkbench/agent/impl/data/type/g;

    invoke-virtual {p1, p0}, Lcom/networkbench/agent/impl/asyncaction/a/b;->a(Lcom/networkbench/agent/impl/asyncaction/a/a;)V

    :cond_0
    return-void
.end method
