.class public interface abstract Lcom/networkbench/agent/impl/harvest/HarvestConnectionInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract sendDataFile(Ljava/util/Map;Lcom/networkbench/agent/impl/harvest/a/h;)Lcom/networkbench/agent/impl/harvest/d/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;",
            "Lcom/networkbench/agent/impl/harvest/a/h;",
            ")",
            "Lcom/networkbench/agent/impl/harvest/d/c;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract sendDataGet(Lcom/networkbench/agent/impl/harvest/a/h;)Lcom/networkbench/agent/impl/harvest/d/c;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract sendDataOutputStream([BLcom/networkbench/agent/impl/harvest/a/h;)Lcom/networkbench/agent/impl/harvest/d/c;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract sendDataStr(Ljava/lang/String;Lcom/networkbench/agent/impl/harvest/a/h;)Lcom/networkbench/agent/impl/harvest/d/c;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
