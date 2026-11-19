.class Lcom/networkbench/agent/impl/logtrack/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/agent/impl/logtrack/e$a;
    }
.end annotation


# instance fields
.field a:Lcom/networkbench/agent/impl/logtrack/e$a;

.field b:Lcom/networkbench/agent/impl/logtrack/k;

.field c:Lcom/networkbench/agent/impl/logtrack/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    iget-object v0, p0, Lcom/networkbench/agent/impl/logtrack/e;->a:Lcom/networkbench/agent/impl/logtrack/e$a;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/networkbench/agent/impl/logtrack/e$a;->b:Lcom/networkbench/agent/impl/logtrack/e$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/networkbench/agent/impl/logtrack/e;->c:Lcom/networkbench/agent/impl/logtrack/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/logtrack/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/networkbench/agent/impl/logtrack/e;->a:Lcom/networkbench/agent/impl/logtrack/e$a;

    sget-object v1, Lcom/networkbench/agent/impl/logtrack/e$a;->a:Lcom/networkbench/agent/impl/logtrack/e$a;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/networkbench/agent/impl/logtrack/e;->b:Lcom/networkbench/agent/impl/logtrack/k;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/logtrack/k;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/networkbench/agent/impl/logtrack/e;->a:Lcom/networkbench/agent/impl/logtrack/e$a;

    sget-object v0, Lcom/networkbench/agent/impl/logtrack/e$a;->c:Lcom/networkbench/agent/impl/logtrack/e$a;

    if-ne p0, v0, :cond_2

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
