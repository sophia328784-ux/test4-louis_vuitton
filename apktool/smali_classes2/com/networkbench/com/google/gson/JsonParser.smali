.class public final Lcom/networkbench/com/google/gson/JsonParser;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lcom/networkbench/com/google/gson/stream/JsonReader;)Lcom/networkbench/com/google/gson/JsonElement;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/networkbench/com/google/gson/JsonIOException;,
            Lcom/networkbench/com/google/gson/JsonSyntaxException;
        }
    .end annotation

    const-string p0, " to Json"

    const-string v0, "Failed parsing JSON source: "

    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/stream/JsonReader;->isLenient()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/networkbench/com/google/gson/stream/JsonReader;->setLenient(Z)V

    :try_start_0
    invoke-static {p1}, Lcom/networkbench/com/google/gson/internal/Streams;->parse(Lcom/networkbench/com/google/gson/stream/JsonReader;)Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v1}, Lcom/networkbench/com/google/gson/stream/JsonReader;->setLenient(Z)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    new-instance v3, Lcom/networkbench/com/google/gson/JsonParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0, v2}, Lcom/networkbench/com/google/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception v2

    new-instance v3, Lcom/networkbench/com/google/gson/JsonParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0, v2}, Lcom/networkbench/com/google/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p1, v1}, Lcom/networkbench/com/google/gson/stream/JsonReader;->setLenient(Z)V

    throw p0
.end method

.method public parse(Ljava/io/Reader;)Lcom/networkbench/com/google/gson/JsonElement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/networkbench/com/google/gson/JsonIOException;,
            Lcom/networkbench/com/google/gson/JsonSyntaxException;
        }
    .end annotation

    .line 70
    :try_start_0
    new-instance v0, Lcom/networkbench/com/google/gson/stream/JsonReader;

    invoke-direct {v0, p1}, Lcom/networkbench/com/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 71
    invoke-virtual {p0, v0}, Lcom/networkbench/com/google/gson/JsonParser;->parse(Lcom/networkbench/com/google/gson/stream/JsonReader;)Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object p0

    .line 72
    invoke-virtual {p0}, Lcom/networkbench/com/google/gson/JsonElement;->isJsonNull()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Lcom/networkbench/com/google/gson/stream/JsonReader;->peek()Lcom/networkbench/com/google/gson/stream/JsonToken;

    move-result-object p1

    sget-object v0, Lcom/networkbench/com/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/networkbench/com/google/gson/stream/JsonToken;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    new-instance p0, Lcom/networkbench/com/google/gson/JsonSyntaxException;

    const-string p1, "Did not consume the entire document."

    invoke-direct {p0, p1}, Lcom/networkbench/com/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/networkbench/com/google/gson/stream/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object p0

    :catch_0
    move-exception p0

    .line 74
    new-instance p1, Lcom/networkbench/com/google/gson/JsonSyntaxException;

    invoke-direct {p1, p0}, Lcom/networkbench/com/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 75
    new-instance p1, Lcom/networkbench/com/google/gson/JsonIOException;

    invoke-direct {p1, p0}, Lcom/networkbench/com/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    .line 76
    new-instance p1, Lcom/networkbench/com/google/gson/JsonSyntaxException;

    invoke-direct {p1, p0}, Lcom/networkbench/com/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public parse(Ljava/lang/String;)Lcom/networkbench/com/google/gson/JsonElement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/networkbench/com/google/gson/JsonSyntaxException;
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/networkbench/com/google/gson/JsonParser;->parse(Ljava/io/Reader;)Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method
