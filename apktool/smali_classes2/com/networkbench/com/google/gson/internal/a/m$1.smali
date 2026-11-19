.class Lcom/networkbench/com/google/gson/internal/a/m$1;
.super Lcom/networkbench/com/google/gson/TypeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/com/google/gson/internal/a/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/networkbench/com/google/gson/TypeAdapter<",
        "Ljava/lang/Class;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/networkbench/com/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/networkbench/com/google/gson/stream/JsonReader;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/stream/JsonReader;->peek()Lcom/networkbench/com/google/gson/stream/JsonToken;

    move-result-object p0

    sget-object v0, Lcom/networkbench/com/google/gson/stream/JsonToken;->NULL:Lcom/networkbench/com/google/gson/stream/JsonToken;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 24
    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/stream/JsonReader;->nextNull()V

    return-object v1

    .line 25
    :cond_0
    const-string p0, "Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?"

    invoke-static {p0}, Lmt;->i(Ljava/lang/String;)V

    return-object v1
.end method

.method public a(Lcom/networkbench/com/google/gson/stream/JsonWriter;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/stream/JsonWriter;->nullValue()Lcom/networkbench/com/google/gson/stream/JsonWriter;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Attempted to serialize java.lang.Class: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, ". Forgot to register a type adapter?"

    invoke-static {p2, p0, p1}, Ln00;->p(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmt;->i(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic read(Lcom/networkbench/com/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/networkbench/com/google/gson/internal/a/m$1;->a(Lcom/networkbench/com/google/gson/stream/JsonReader;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public synthetic write(Lcom/networkbench/com/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lcom/networkbench/com/google/gson/internal/a/m$1;->a(Lcom/networkbench/com/google/gson/stream/JsonWriter;Ljava/lang/Class;)V

    return-void
.end method
