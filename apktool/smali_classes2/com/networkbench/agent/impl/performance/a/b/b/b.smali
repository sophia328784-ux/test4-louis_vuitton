.class public Lcom/networkbench/agent/impl/performance/a/b/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/networkbench/agent/impl/performance/a/b/b/c;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/networkbench/agent/impl/performance/a/b/b/c;->a(Landroid/content/Context;)Lcom/networkbench/agent/impl/performance/a/b/b/c;

    move-result-object p0

    return-object p0
.end method
