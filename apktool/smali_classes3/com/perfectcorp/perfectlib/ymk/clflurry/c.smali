.class final Lcom/perfectcorp/perfectlib/ymk/clflurry/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/util/Map;

.field private synthetic b:Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;


# direct methods
.method public constructor <init>(Ljava/util/Map;Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ymk/clflurry/c;->a:Ljava/util/Map;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/ymk/clflurry/c;->b:Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/clflurry/a;->b:Ljava/util/concurrent/FutureTask;

    invoke-static {v0}, Lcom/perfectcorp/common/guava/MoreFutures;->b(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/clflurry/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ymk/clflurry/c;->a:Ljava/util/Map;

    const-string v1, "sdk_version"

    const-string v2, "5.27.2.111031404"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "recordEvent (UMA) name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ymk/clflurry/c;->b:Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;

    iget-object v1, v1, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Parameters is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ymk/clflurry/c;->a:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Count: 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/ymk/clflurry/c;->b:Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const-string v2, "CLFlurryAgentHelper"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ymk/clflurry/c;->b:Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ymk/clflurry/c;->a:Ljava/util/Map;

    invoke-static {v0, p0}, Lcom/perfectcorp/uma/b;->c(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/TestConfigHelper;->c()Lcom/perfectcorp/perfectlib/ymk/kernelctrl/TestConfigHelper;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/TestConfigHelper;->d:Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/BaseConfigHelper;->b()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/BaseConfigHelper;->b:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "BaseConfigHelper"

    const-string v2, "parsing error"

    invoke-static {v1, v2, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    if-nez v0, :cond_3

    sget-object p0, Lcom/perfectcorp/perfectlib/internal/a;->a:Lcom/perfectcorp/perfectlib/internal/a;

    iget-boolean p0, p0, Lcom/perfectcorp/perfectlib/internal/a;->flushCountly:Z

    if-eqz p0, :cond_4

    :cond_3
    invoke-static {}, Lcom/perfectcorp/uma/b;->e()V

    :cond_4
    :goto_1
    return-void
.end method
