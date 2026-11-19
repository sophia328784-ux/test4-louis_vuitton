.class Lcom/networkbench/agent/impl/asyncaction/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/agent/impl/asyncaction/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/networkbench/agent/impl/asyncaction/h;

.field private b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/asyncaction/h;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/asyncaction/h$a;->a:Lcom/networkbench/agent/impl/asyncaction/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/networkbench/agent/impl/asyncaction/h$a;->b:Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 0

    invoke-static {}, Lcom/networkbench/agent/impl/asyncaction/h;->a()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private b(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/asyncaction/h$a;->a:Lcom/networkbench/agent/impl/asyncaction/h;

    invoke-static {p0}, Lcom/networkbench/agent/impl/asyncaction/h;->a(Lcom/networkbench/agent/impl/asyncaction/h;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/networkbench/agent/impl/asyncaction/d;

    invoke-interface {p1}, Lcom/networkbench/agent/impl/asyncaction/d;->preMethod()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/asyncaction/h$a;->a:Lcom/networkbench/agent/impl/asyncaction/h;

    invoke-static {p0}, Lcom/networkbench/agent/impl/asyncaction/h;->a(Lcom/networkbench/agent/impl/asyncaction/h;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/networkbench/agent/impl/asyncaction/d;

    invoke-interface {p1}, Lcom/networkbench/agent/impl/asyncaction/d;->sufMethod()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/asyncaction/h$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/asyncaction/h$a;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/h$a;->b:Ljava/lang/Object;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/asyncaction/h$a;->a(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-direct {p0, p1}, Lcom/networkbench/agent/impl/asyncaction/h$a;->c(Ljava/lang/String;)V

    :cond_1
    return-object p2
.end method
