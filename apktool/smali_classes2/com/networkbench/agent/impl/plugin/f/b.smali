.class public Lcom/networkbench/agent/impl/plugin/f/b;
.super Lcom/networkbench/agent/impl/plugin/f/i;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "crashSceneInfo"


# instance fields
.field private g:Lcom/networkbench/agent/impl/crash/j;

.field private h:Lcom/networkbench/agent/impl/crash/c;


# direct methods
.method public constructor <init>(Lcom/networkbench/agent/impl/crash/c;Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/plugin/e;->g:Lcom/networkbench/agent/impl/plugin/e;

    invoke-direct {p0, v0}, Lcom/networkbench/agent/impl/plugin/f/i;-><init>(Lcom/networkbench/agent/impl/plugin/e;)V

    iput-object p1, p0, Lcom/networkbench/agent/impl/plugin/f/b;->h:Lcom/networkbench/agent/impl/crash/c;

    new-instance p1, Lcom/networkbench/agent/impl/crash/j;

    const-string v0, "crashSceneInfo"

    invoke-direct {p1, p2, v0}, Lcom/networkbench/agent/impl/crash/j;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/networkbench/agent/impl/plugin/f/b;->g:Lcom/networkbench/agent/impl/crash/j;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/networkbench/agent/impl/plugin/f/i;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/networkbench/agent/impl/plugin/h;

    iget-boolean v3, v2, Lcom/networkbench/agent/impl/plugin/h;->l:Z

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/networkbench/agent/impl/plugin/h;->i:Lcom/networkbench/agent/impl/data/c/d;

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/data/c/d;->a()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/networkbench/agent/impl/plugin/f/i;->d:Lcom/networkbench/agent/impl/c/e;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "crash add extension data: key:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/networkbench/agent/impl/plugin/h;->i:Lcom/networkbench/agent/impl/data/c/d;

    iget-object v5, v5, Lcom/networkbench/agent/impl/data/c/d;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", pluginClassName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/networkbench/agent/impl/plugin/f/b;->h:Lcom/networkbench/agent/impl/crash/c;

    invoke-virtual {v3}, Lcom/networkbench/agent/impl/crash/c;->e()Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, v2, Lcom/networkbench/agent/impl/plugin/h;->i:Lcom/networkbench/agent/impl/data/c/d;

    iget-object v4, v4, Lcom/networkbench/agent/impl/data/c/d;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/networkbench/agent/impl/plugin/f/f;->a(Lcom/networkbench/agent/impl/plugin/h;)Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    new-instance v1, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/networkbench/agent/impl/plugin/h;

    invoke-virtual {v2}, Lcom/networkbench/agent/impl/harvest/type/BaseHarvestable;->asJson()Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/networkbench/agent/impl/plugin/f/i;->d:Lcom/networkbench/agent/impl/c/e;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "crash add independence data into:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/f/b;->g:Lcom/networkbench/agent/impl/crash/j;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/networkbench/agent/impl/crash/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method
