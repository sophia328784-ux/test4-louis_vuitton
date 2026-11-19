.class public Lcom/networkbench/agent/impl/plugin/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/networkbench/agent/impl/plugin/c/b$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "LogTrackConfig"

.field private static final d:Ljava/lang/String; = "logConfig"

.field private static final e:Ljava/lang/String; = "logTrackS"

.field private static f:Lcom/networkbench/agent/impl/plugin/c/b;


# instance fields
.field protected a:I

.field protected b:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/networkbench/agent/impl/plugin/c/b;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/plugin/c/b;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/plugin/c/b;->f:Lcom/networkbench/agent/impl/plugin/c/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "LogTrackConfig"

    const-string v2, "error init LogTrackConfig"

    invoke-static {v1, v2, v0}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/networkbench/agent/impl/plugin/c/b$a;->a:Lcom/networkbench/agent/impl/plugin/c/b$a;

    invoke-static {v0}, Lcom/networkbench/agent/impl/plugin/c/b$a;->a(Lcom/networkbench/agent/impl/plugin/c/b$a;)I

    move-result v0

    sget-object v1, Lcom/networkbench/agent/impl/plugin/c/b$a;->b:Lcom/networkbench/agent/impl/plugin/c/b$a;

    invoke-static {v1}, Lcom/networkbench/agent/impl/plugin/c/b$a;->a(Lcom/networkbench/agent/impl/plugin/c/b$a;)I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lcom/networkbench/agent/impl/plugin/c/b$a;->c:Lcom/networkbench/agent/impl/plugin/c/b$a;

    invoke-static {v1}, Lcom/networkbench/agent/impl/plugin/c/b$a;->a(Lcom/networkbench/agent/impl/plugin/c/b$a;)I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Lcom/networkbench/agent/impl/plugin/c/b$a;->d:Lcom/networkbench/agent/impl/plugin/c/b$a;

    invoke-static {v1}, Lcom/networkbench/agent/impl/plugin/c/b$a;->a(Lcom/networkbench/agent/impl/plugin/c/b$a;)I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/networkbench/agent/impl/plugin/c/b;->a:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/networkbench/agent/impl/plugin/c/b;->b:I

    const-string v0, ""

    iput-object v0, p0, Lcom/networkbench/agent/impl/plugin/c/b;->g:Ljava/lang/String;

    invoke-direct {p0}, Lcom/networkbench/agent/impl/plugin/c/b;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/plugin/c/b;->h:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/networkbench/agent/impl/plugin/c/b;
    .locals 1

    .line 74
    sget-object v0, Lcom/networkbench/agent/impl/plugin/c/b;->f:Lcom/networkbench/agent/impl/plugin/c/b;

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 7

    const-string p0, ""

    const-string v0, "LogTrackConfig"

    const-string v1, "error produceSk:"

    const-string v2, "randomString:"

    const/16 v3, 0x10

    :try_start_0
    invoke-static {v3}, Lcom/networkbench/agent/impl/util/ak;->h(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lcom/networkbench/agent/impl/util/ak;->b([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x20

    if-eq v5, v6, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", hexString:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :goto_1
    const-string v2, "error produceSk"

    invoke-static {v0, v2, v1}, Lcom/networkbench/agent/impl/util/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "logConfig"

    :try_start_0
    new-instance v1, Lcom/networkbench/com/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/networkbench/com/google/gson/JsonParser;-><init>()V

    invoke-virtual {v1, p1}, Lcom/networkbench/com/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object p1

    check-cast p1, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-virtual {p1, v0}, Lcom/networkbench/com/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/networkbench/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/JsonElement;->getAsJsonObject()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object p1

    const-string v0, "logTrackS"

    new-instance v1, Lcom/networkbench/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/networkbench/agent/impl/plugin/c/b;->h:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/networkbench/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/networkbench/agent/impl/plugin/c/b;->g:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/networkbench/agent/impl/plugin/c/b;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "error getJSONObjectField:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LogTrackConfig"

    invoke-static {p1, p0}, Lcom/networkbench/agent/impl/util/Logger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/c/b;->g:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    const-string v0, "LogTrackConfig"

    const-string v1, "par log config is:"

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/networkbench/agent/impl/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/networkbench/com/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/networkbench/com/google/gson/JsonParser;-><init>()V

    invoke-virtual {v1, p1}, Lcom/networkbench/com/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object p1

    check-cast p1, Lcom/networkbench/com/google/gson/JsonObject;

    const-string v1, "logLevel"

    invoke-virtual {p1, v1}, Lcom/networkbench/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/com/google/gson/JsonElement;->getAsInt()I

    move-result v1

    iput v1, p0, Lcom/networkbench/agent/impl/plugin/c/b;->a:I

    const-string v1, "logCacheSize"

    invoke-virtual {p1, v1}, Lcom/networkbench/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/com/google/gson/JsonElement;->getAsInt()I

    move-result v1

    iput v1, p0, Lcom/networkbench/agent/impl/plugin/c/b;->b:I

    const-string v1, "logTrackS"

    invoke-virtual {p1, v1}, Lcom/networkbench/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/networkbench/agent/impl/plugin/c/b;->h:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "error parseConfig:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/networkbench/agent/impl/util/Logger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/networkbench/agent/impl/plugin/c/b;->h:Ljava/lang/String;

    return-object p0
.end method
