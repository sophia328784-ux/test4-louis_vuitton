.class public Lcom/networkbench/agent/impl/util/Logger;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG_PREFFIC:Ljava/lang/String; = "NBSAgent."


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/Logger;->setTag(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/networkbench/agent/impl/c/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/Logger;->setTag(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/networkbench/agent/impl/c/j;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 7
    invoke-static {p0}, Lcom/networkbench/agent/impl/util/Logger;->setTag(Ljava/lang/String;)V

    .line 8
    invoke-static {p1, p2}, Lcom/networkbench/agent/impl/c/j;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/Logger;->setTag(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/networkbench/agent/impl/c/j;->b(Ljava/lang/String;)V

    return-void
.end method

.method private static setTag(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static warning(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/Logger;->setTag(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/networkbench/agent/impl/c/j;->d(Ljava/lang/String;)V

    return-void
.end method
