.class Lcom/networkbench/com/google/gson/stream/JsonReader$1;
.super Lcom/networkbench/com/google/gson/internal/JsonReaderInternalAccess;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/com/google/gson/stream/JsonReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/networkbench/com/google/gson/internal/JsonReaderInternalAccess;-><init>()V

    return-void
.end method


# virtual methods
.method public promoteNameToValue(Lcom/networkbench/com/google/gson/stream/JsonReader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of p0, p1, Lcom/networkbench/com/google/gson/internal/a/e;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/networkbench/com/google/gson/internal/a/e;

    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/internal/a/e;->a()V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/networkbench/com/google/gson/stream/JsonReader;->a(Lcom/networkbench/com/google/gson/stream/JsonReader;)I

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p1}, Lcom/networkbench/com/google/gson/stream/JsonReader;->b(Lcom/networkbench/com/google/gson/stream/JsonReader;)I

    move-result p0

    :cond_1
    const/16 v0, 0xd

    if-ne p0, v0, :cond_2

    const/16 p0, 0x9

    invoke-static {p1, p0}, Lcom/networkbench/com/google/gson/stream/JsonReader;->a(Lcom/networkbench/com/google/gson/stream/JsonReader;I)I

    return-void

    :cond_2
    const/16 v0, 0xc

    if-ne p0, v0, :cond_3

    const/16 p0, 0x8

    invoke-static {p1, p0}, Lcom/networkbench/com/google/gson/stream/JsonReader;->a(Lcom/networkbench/com/google/gson/stream/JsonReader;I)I

    return-void

    :cond_3
    const/16 v0, 0xe

    if-ne p0, v0, :cond_4

    const/16 p0, 0xa

    invoke-static {p1, p0}, Lcom/networkbench/com/google/gson/stream/JsonReader;->a(Lcom/networkbench/com/google/gson/stream/JsonReader;I)I

    return-void

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Expected a name but was "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/stream/JsonReader;->peek()Lcom/networkbench/com/google/gson/stream/JsonToken;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/networkbench/com/google/gson/stream/JsonReader;->c(Lcom/networkbench/com/google/gson/stream/JsonReader;)I

    move-result v0

    const-string v1, " column "

    invoke-static {p1}, Lcom/networkbench/com/google/gson/stream/JsonReader;->d(Lcom/networkbench/com/google/gson/stream/JsonReader;)I

    move-result p1

    const-string v2, "  at line "

    invoke-static {p0, v2, v0, v1, p1}, Laz;->t(Ljava/lang/StringBuilder;Ljava/lang/Object;ILjava/lang/Object;I)V

    return-void
.end method
