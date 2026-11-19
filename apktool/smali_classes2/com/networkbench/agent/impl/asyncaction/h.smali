.class public Lcom/networkbench/agent/impl/asyncaction/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/agent/impl/asyncaction/h$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/networkbench/agent/impl/c/e;

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/networkbench/agent/impl/asyncaction/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/asyncaction/h;->a:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/asyncaction/h;->b:Ljava/util/List;

    const-string v1, "run"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "call"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/networkbench/agent/impl/asyncaction/h;->c:Ljava/util/List;

    return-void
.end method

.method public static synthetic a()Ljava/util/List;
    .locals 1

    .line 29
    sget-object v0, Lcom/networkbench/agent/impl/asyncaction/h;->b:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic a(Lcom/networkbench/agent/impl/asyncaction/h;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/networkbench/agent/impl/asyncaction/h;->c:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lcom/networkbench/agent/impl/asyncaction/h$a;

    invoke-direct {v1, p0, p1}, Lcom/networkbench/agent/impl/asyncaction/h$a;-><init>(Lcom/networkbench/agent/impl/asyncaction/h;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-static {p0, v0, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public a(Lcom/networkbench/agent/impl/asyncaction/d;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 27
    iget-object p0, p0, Lcom/networkbench/agent/impl/asyncaction/h;->c:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 28
    :cond_0
    const-string p0, "error handler can not null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/networkbench/agent/impl/asyncaction/d;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/networkbench/agent/impl/asyncaction/h;->c:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const-string p0, "error handler can not null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method
