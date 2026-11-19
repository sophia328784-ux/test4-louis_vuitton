.class public Lcom/networkbench/agent/impl/floatbtnmanager/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)Lcom/networkbench/agent/impl/floatbtnmanager/a/i;
    .locals 1

    invoke-static {}, Lcom/networkbench/agent/impl/floatbtnmanager/a/h;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/networkbench/agent/impl/floatbtnmanager/a/e;

    invoke-direct {v0, p0}, Lcom/networkbench/agent/impl/floatbtnmanager/a/e;-><init>(Landroid/app/Activity;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/networkbench/agent/impl/floatbtnmanager/a/a;

    invoke-direct {v0, p0}, Lcom/networkbench/agent/impl/floatbtnmanager/a/a;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method
