.class Lcom/networkbench/agent/impl/b/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/util/Printer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/b/h;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field a:Z

.field b:Z

.field final synthetic c:Landroid/util/Printer;


# direct methods
.method public constructor <init>(Landroid/util/Printer;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/b/h$1;->c:Landroid/util/Printer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/networkbench/agent/impl/b/h$1;->a:Z

    iput-boolean p1, p0, Lcom/networkbench/agent/impl/b/h$1;->b:Z

    return-void
.end method


# virtual methods
.method public println(Ljava/lang/String;)V
    .locals 6

    const-string v0, "Printer is inValid! x:"

    :try_start_0
    iget-object v1, p0, Lcom/networkbench/agent/impl/b/h$1;->c:Landroid/util/Printer;

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/networkbench/agent/impl/b/h;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/b/h;->d()Lcom/networkbench/agent/impl/c/e;

    move-result-object p0

    const-string p1, "isNetworkbenchPrintlnCrycle(3) return true"

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/networkbench/agent/impl/b/h$1;->c:Landroid/util/Printer;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :cond_1
    iget-boolean v1, p0, Lcom/networkbench/agent/impl/b/h$1;->a:Z

    const/16 v2, 0x3e

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_4

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x3c

    if-ne v1, v5, :cond_2

    goto :goto_0

    :cond_2
    move v1, v4

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lcom/networkbench/agent/impl/b/h$1;->b:Z

    iput-boolean v3, p0, Lcom/networkbench/agent/impl/b/h$1;->a:Z

    if-nez v1, :cond_4

    invoke-static {}, Lcom/networkbench/agent/impl/b/h;->d()Lcom/networkbench/agent/impl/c/e;

    move-result-object v1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    :cond_4
    iget-boolean p0, p0, Lcom/networkbench/agent/impl/b/h$1;->b:Z

    if-eqz p0, :cond_6

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, v2, :cond_5

    goto :goto_2

    :cond_5
    move v3, v4

    :goto_2
    invoke-static {v3}, Lcom/networkbench/agent/impl/b/h;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_6
    return-void
.end method
