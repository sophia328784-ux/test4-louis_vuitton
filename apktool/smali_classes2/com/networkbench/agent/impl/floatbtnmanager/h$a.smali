.class Lcom/networkbench/agent/impl/floatbtnmanager/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/agent/impl/floatbtnmanager/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/networkbench/agent/impl/floatbtnmanager/h;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/floatbtnmanager/h;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/h$a;->a:Lcom/networkbench/agent/impl/floatbtnmanager/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/networkbench/agent/impl/floatbtnmanager/h$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/networkbench/agent/impl/floatbtnmanager/h$a;->c:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/networkbench/agent/impl/floatbtnmanager/c;->a()Lcom/networkbench/agent/impl/floatbtnmanager/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/floatbtnmanager/c;->e()Lcom/networkbench/agent/impl/floatbtnmanager/k;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/floatbtnmanager/k;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->getViewImageBmpPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;->getViewImageBmpPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/networkbench/agent/impl/floatbtnmanager/h$a$1;

    invoke-direct {v3, p0, v1}, Lcom/networkbench/agent/impl/floatbtnmanager/h$a$1;-><init>(Lcom/networkbench/agent/impl/floatbtnmanager/h$a;Lcom/networkbench/agent/impl/floatbtnmanager/FloatingViewItem;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/h$a;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/v;->f(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/networkbench/agent/impl/floatbtnmanager/h$a;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/floatbtnmanager/e;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/floatbtnmanager/h$a;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/floatbtnmanager/h$a;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " FloatingBmpManager run  has an error : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p0}, Lz81;->k(Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V

    return-void
.end method
