.class public Lcom/networkbench/agent/impl/logtrack/Logan;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static STACK_INVOKE_INDEX:I = 0x8

.field private static a:Lcom/networkbench/agent/impl/logtrack/OnLoganProtocolStatus; = null

.field private static b:Lcom/networkbench/agent/impl/logtrack/d; = null

.field static c:Z = false


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/File;)V
    .locals 7

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 1

    .line 45
    sget-object v0, Lcom/networkbench/agent/impl/logtrack/Logan;->a:Lcom/networkbench/agent/impl/logtrack/OnLoganProtocolStatus;

    if-eqz v0, :cond_0

    .line 46
    invoke-interface {v0, p0, p1}, Lcom/networkbench/agent/impl/logtrack/OnLoganProtocolStatus;->loganProtocolStatus(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    sget-object v0, Lcom/networkbench/agent/impl/logtrack/Logan;->b:Lcom/networkbench/agent/impl/logtrack/d;

    if-eqz v0, :cond_0

    sget-object v3, Lcom/networkbench/agent/impl/logtrack/c;->b:Lcom/networkbench/agent/impl/logtrack/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v1, p0

    move-object v4, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/networkbench/agent/impl/logtrack/d;->a(Ljava/lang/String;ILcom/networkbench/agent/impl/logtrack/c;Ljava/lang/String;J)V

    return-void

    :cond_0
    const-string p0, "Please initialize Logan first"

    invoke-static {p0}, Lv7;->h(Ljava/lang/String;)V

    return-void
.end method

.method public static deleteAllCopyFile(Ljava/io/File;)V
    .locals 3

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/networkbench/agent/impl/logtrack/Logan$a;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/logtrack/Logan$a;-><init>()V

    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    sget-object v0, Lcom/networkbench/agent/impl/logtrack/Logan;->b:Lcom/networkbench/agent/impl/logtrack/d;

    if-eqz v0, :cond_0

    sget-object v3, Lcom/networkbench/agent/impl/logtrack/c;->f:Lcom/networkbench/agent/impl/logtrack/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v1, p0

    move-object v4, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/networkbench/agent/impl/logtrack/d;->a(Ljava/lang/String;ILcom/networkbench/agent/impl/logtrack/c;Ljava/lang/String;J)V

    return-void

    :cond_0
    const-string p0, "Please initialize Logan first"

    invoke-static {p0}, Lv7;->h(Ljava/lang/String;)V

    return-void
.end method

.method public static f()V
    .locals 1

    sget-object v0, Lcom/networkbench/agent/impl/logtrack/Logan;->b:Lcom/networkbench/agent/impl/logtrack/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/logtrack/d;->a()V

    return-void

    :cond_0
    const-string v0, "Please initialize Logan first"

    invoke-static {v0}, Lv7;->h(Ljava/lang/String;)V

    return-void
.end method

.method public static getAllFilesInfo()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/networkbench/agent/impl/logtrack/Logan;->b:Lcom/networkbench/agent/impl/logtrack/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/logtrack/d;->b()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/networkbench/agent/impl/logtrack/j;->a(Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    invoke-static {v0}, Lcom/networkbench/agent/impl/logtrack/j;->a([Ljava/io/File;)V

    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/networkbench/agent/impl/logtrack/j;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v1

    :cond_4
    const-string v0, "Please initialize Logan first"

    invoke-static {v0}, Lv7;->h(Ljava/lang/String;)V

    return-object v1
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    sget-object v0, Lcom/networkbench/agent/impl/logtrack/Logan;->b:Lcom/networkbench/agent/impl/logtrack/d;

    if-eqz v0, :cond_0

    sget-object v3, Lcom/networkbench/agent/impl/logtrack/c;->c:Lcom/networkbench/agent/impl/logtrack/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v1, p0

    move-object v4, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/networkbench/agent/impl/logtrack/d;->a(Ljava/lang/String;ILcom/networkbench/agent/impl/logtrack/c;Ljava/lang/String;J)V

    return-void

    :cond_0
    const-string p0, "Please initialize Logan first"

    invoke-static {p0}, Lv7;->h(Ljava/lang/String;)V

    return-void
.end method

.method public static init(Lcom/networkbench/agent/impl/logtrack/LoganConfig;)V
    .locals 0

    invoke-static {p0}, Lcom/networkbench/agent/impl/logtrack/d;->a(Lcom/networkbench/agent/impl/logtrack/LoganConfig;)Lcom/networkbench/agent/impl/logtrack/d;

    move-result-object p0

    sput-object p0, Lcom/networkbench/agent/impl/logtrack/Logan;->b:Lcom/networkbench/agent/impl/logtrack/d;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/logtrack/d;->b()Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/logtrack/Logan;->deleteAllCopyFile(Ljava/io/File;)V

    sget-object p0, Lcom/networkbench/agent/impl/logtrack/Logan;->b:Lcom/networkbench/agent/impl/logtrack/d;

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/logtrack/d;->b()Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/logtrack/Logan;->a(Ljava/io/File;)V

    :cond_0
    return-void
.end method

.method public static s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/logtrack/SendLogCallback;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "fileDate"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appId"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "unionId"

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "deviceId"

    invoke-virtual {v0, p2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "buildVersion"

    invoke-virtual {v0, p2, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "appVersion"

    invoke-virtual {v0, p2, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "platform"

    const-string p3, "1"

    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p1, v0, p7}, Lcom/networkbench/agent/impl/logtrack/Logan;->s(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/networkbench/agent/impl/logtrack/SendLogCallback;)V

    return-void
.end method

.method public static s(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/networkbench/agent/impl/logtrack/SendLogCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/networkbench/agent/impl/logtrack/SendLogCallback;",
            ")V"
        }
    .end annotation

    .line 49
    sget-object v0, Lcom/networkbench/agent/impl/logtrack/Logan;->b:Lcom/networkbench/agent/impl/logtrack/d;

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Lcom/networkbench/agent/impl/logtrack/i;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/logtrack/i;-><init>()V

    .line 51
    invoke-virtual {v0, p0}, Lcom/networkbench/agent/impl/logtrack/i;->a(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0, p3}, Lcom/networkbench/agent/impl/logtrack/i;->a(Lcom/networkbench/agent/impl/logtrack/SendLogCallback;)V

    .line 53
    invoke-virtual {v0, p2}, Lcom/networkbench/agent/impl/logtrack/i;->a(Ljava/util/Map;)V

    .line 54
    sget-object p0, Lcom/networkbench/agent/impl/logtrack/Logan;->b:Lcom/networkbench/agent/impl/logtrack/d;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/networkbench/agent/impl/logtrack/d;->a([Ljava/lang/String;Lcom/networkbench/agent/impl/logtrack/SendLogRunnable;)V

    return-void

    .line 55
    :cond_0
    const-string p0, "Please initialize Logan first"

    invoke-static {p0}, Lv7;->h(Ljava/lang/String;)V

    return-void
.end method

.method public static s([Ljava/lang/String;Lcom/networkbench/agent/impl/logtrack/SendLogRunnable;)V
    .locals 1

    .line 46
    sget-object v0, Lcom/networkbench/agent/impl/logtrack/Logan;->b:Lcom/networkbench/agent/impl/logtrack/d;

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0, p0, p1}, Lcom/networkbench/agent/impl/logtrack/d;->a([Ljava/lang/String;Lcom/networkbench/agent/impl/logtrack/SendLogRunnable;)V

    return-void

    .line 48
    :cond_0
    const-string p0, "Please initialize Logan first"

    invoke-static {p0}, Lv7;->h(Ljava/lang/String;)V

    return-void
.end method

.method public static setDebug(Z)V
    .locals 0

    sput-boolean p0, Lcom/networkbench/agent/impl/logtrack/Logan;->c:Z

    return-void
.end method

.method public static setOnLoganProtocolStatus(Lcom/networkbench/agent/impl/logtrack/OnLoganProtocolStatus;)V
    .locals 0

    sput-object p0, Lcom/networkbench/agent/impl/logtrack/Logan;->a:Lcom/networkbench/agent/impl/logtrack/OnLoganProtocolStatus;

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    sget-object v0, Lcom/networkbench/agent/impl/logtrack/Logan;->b:Lcom/networkbench/agent/impl/logtrack/d;

    if-eqz v0, :cond_0

    sget-object v3, Lcom/networkbench/agent/impl/logtrack/c;->d:Lcom/networkbench/agent/impl/logtrack/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v1, p0

    move-object v4, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/networkbench/agent/impl/logtrack/d;->a(Ljava/lang/String;ILcom/networkbench/agent/impl/logtrack/c;Ljava/lang/String;J)V

    return-void

    :cond_0
    const-string p0, "Please initialize Logan first"

    invoke-static {p0}, Lv7;->h(Ljava/lang/String;)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    sget-object v0, Lcom/networkbench/agent/impl/logtrack/Logan;->b:Lcom/networkbench/agent/impl/logtrack/d;

    if-eqz v0, :cond_0

    sget-object v3, Lcom/networkbench/agent/impl/logtrack/c;->e:Lcom/networkbench/agent/impl/logtrack/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v1, p0

    move-object v4, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/networkbench/agent/impl/logtrack/d;->a(Ljava/lang/String;ILcom/networkbench/agent/impl/logtrack/c;Ljava/lang/String;J)V

    return-void

    :cond_0
    const-string p0, "Please initialize Logan first"

    invoke-static {p0}, Lv7;->h(Ljava/lang/String;)V

    return-void
.end method
