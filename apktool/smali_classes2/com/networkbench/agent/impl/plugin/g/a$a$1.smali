.class Lcom/networkbench/agent/impl/plugin/g/a$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/plugin/g/a/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/networkbench/agent/impl/plugin/g/a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/networkbench/agent/impl/plugin/g/a$a;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/plugin/g/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/networkbench/agent/impl/plugin/g/a$a$1;->a:Lcom/networkbench/agent/impl/plugin/g/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/networkbench/agent/impl/plugin/g/a/e$b;)V
    .locals 3

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/g/a$a$1;->a:Lcom/networkbench/agent/impl/plugin/g/a$a;

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/g/a$a;->a:Lcom/networkbench/agent/impl/plugin/g/a;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/networkbench/agent/impl/plugin/h;->l:Z

    return-void

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/plugin/g/a;->i()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tcpping complete result:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/plugin/g/a/e$b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/g/a$a$1;->a:Lcom/networkbench/agent/impl/plugin/g/a$a;

    iget-object v0, v0, Lcom/networkbench/agent/impl/plugin/g/a$a;->a:Lcom/networkbench/agent/impl/plugin/g/a;

    iget-object v1, p1, Lcom/networkbench/agent/impl/plugin/g/a/e$b;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/plugin/g/a;->c(Lcom/networkbench/agent/impl/plugin/g/a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/g/a$a$1;->a:Lcom/networkbench/agent/impl/plugin/g/a$a;

    iget-object v0, v0, Lcom/networkbench/agent/impl/plugin/g/a$a;->a:Lcom/networkbench/agent/impl/plugin/g/a;

    iget v1, p1, Lcom/networkbench/agent/impl/plugin/g/a/e$b;->g:I

    iget v2, p1, Lcom/networkbench/agent/impl/plugin/g/a/e$b;->h:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/plugin/g/a;->a(Lcom/networkbench/agent/impl/plugin/g/a;I)I

    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/g/a$a$1;->a:Lcom/networkbench/agent/impl/plugin/g/a$a;

    iget-object v0, v0, Lcom/networkbench/agent/impl/plugin/g/a$a;->a:Lcom/networkbench/agent/impl/plugin/g/a;

    iget v1, p1, Lcom/networkbench/agent/impl/plugin/g/a/e$b;->h:I

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/plugin/g/a;->b(Lcom/networkbench/agent/impl/plugin/g/a;I)I

    iget-object v0, p0, Lcom/networkbench/agent/impl/plugin/g/a$a$1;->a:Lcom/networkbench/agent/impl/plugin/g/a$a;

    iget-object v0, v0, Lcom/networkbench/agent/impl/plugin/g/a$a;->a:Lcom/networkbench/agent/impl/plugin/g/a;

    iget v1, p1, Lcom/networkbench/agent/impl/plugin/g/a/e$b;->e:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/plugin/g/a;->a(Lcom/networkbench/agent/impl/plugin/g/a;F)F

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/g/a$a$1;->a:Lcom/networkbench/agent/impl/plugin/g/a$a;

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/g/a$a;->a:Lcom/networkbench/agent/impl/plugin/g/a;

    iget-object p1, p1, Lcom/networkbench/agent/impl/plugin/g/a/e$b;->i:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/networkbench/agent/impl/plugin/g/a;->a(Lcom/networkbench/agent/impl/plugin/g/a;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
