.class public Lcom/networkbench/agent/impl/crash/oom/NBSCrashTransaction;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "NBSCrashTransaction"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static crashParseFromString(Ljava/lang/String;)Lcom/networkbench/agent/impl/crash/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/networkbench/agent/impl/crash/c;

    invoke-direct {v0, p0}, Lcom/networkbench/agent/impl/crash/c;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const-string p0, "crash init is null"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static formatCrashAsString(J)Ljava/lang/String;
    .locals 10

    :try_start_0
    sget-boolean v0, Lcom/networkbench/agent/impl/util/r;->q:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/networkbench/agent/impl/crash/i;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/crash/c;->a:Ljava/lang/String;

    :cond_0
    new-instance v1, Lcom/networkbench/agent/impl/crash/c;

    const-wide/16 v2, 0x3e8

    div-long v3, p0, v2

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->J()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/v;->g(Landroid/content/Context;)Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object v5

    const-string p0, "1"

    invoke-static {p0}, Lcom/networkbench/agent/impl/util/v;->c(Ljava/lang/String;)Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object v6

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lcom/networkbench/agent/impl/util/r;->d(J)Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/networkbench/agent/impl/crash/c;-><init>(Ljava/lang/Throwable;JLcom/networkbench/com/google/gson/JsonArray;Lcom/networkbench/com/google/gson/JsonArray;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/crash/c;->asJsonArray()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    const-string p0, ""

    return-object p0
.end method
