.class public final Lcom/networkbench/com/google/gson/internal/a/h;
.super Lcom/networkbench/com/google/gson/TypeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/networkbench/com/google/gson/TypeAdapter<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/networkbench/com/google/gson/TypeAdapterFactory;


# instance fields
.field private final b:Lcom/networkbench/com/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/networkbench/com/google/gson/internal/a/h$1;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/internal/a/h$1;-><init>()V

    sput-object v0, Lcom/networkbench/com/google/gson/internal/a/h;->a:Lcom/networkbench/com/google/gson/TypeAdapterFactory;

    return-void
.end method

.method private constructor <init>(Lcom/networkbench/com/google/gson/Gson;)V
    .locals 0

    invoke-direct {p0}, Lcom/networkbench/com/google/gson/TypeAdapter;-><init>()V

    iput-object p1, p0, Lcom/networkbench/com/google/gson/internal/a/h;->b:Lcom/networkbench/com/google/gson/Gson;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/networkbench/com/google/gson/Gson;Lcom/networkbench/com/google/gson/internal/a/h$1;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/networkbench/com/google/gson/internal/a/h;-><init>(Lcom/networkbench/com/google/gson/Gson;)V

    return-void
.end method


# virtual methods
.method public read(Lcom/networkbench/com/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/stream/JsonReader;->peek()Lcom/networkbench/com/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/networkbench/com/google/gson/internal/a/h$2;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lr81;->b()V

    return-object v1

    :pswitch_0
    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/stream/JsonReader;->nextNull()V

    return-object v1

    :pswitch_1
    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/stream/JsonReader;->nextDouble()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    new-instance v0, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;

    invoke-direct {v0}, Lcom/networkbench/com/google/gson/internal/LinkedTreeMap;-><init>()V

    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/stream/JsonReader;->beginObject()V

    :goto_0
    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/networkbench/com/google/gson/internal/a/h;->read(Lcom/networkbench/com/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/stream/JsonReader;->endObject()V

    return-object v0

    :pswitch_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/stream/JsonReader;->beginArray()V

    :goto_1
    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/networkbench/com/google/gson/internal/a/h;->read(Lcom/networkbench/com/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/stream/JsonReader;->endArray()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public write(Lcom/networkbench/com/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/stream/JsonWriter;->nullValue()Lcom/networkbench/com/google/gson/stream/JsonWriter;

    return-void

    :cond_0
    iget-object p0, p0, Lcom/networkbench/com/google/gson/internal/a/h;->b:Lcom/networkbench/com/google/gson/Gson;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/networkbench/com/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/networkbench/com/google/gson/TypeAdapter;

    move-result-object p0

    instance-of v0, p0, Lcom/networkbench/com/google/gson/internal/a/h;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/stream/JsonWriter;->beginObject()Lcom/networkbench/com/google/gson/stream/JsonWriter;

    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/stream/JsonWriter;->endObject()Lcom/networkbench/com/google/gson/stream/JsonWriter;

    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/networkbench/com/google/gson/TypeAdapter;->write(Lcom/networkbench/com/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method
