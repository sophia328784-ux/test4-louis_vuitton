.class final Lcom/networkbench/com/google/gson/internal/a/g$a;
.super Lcom/networkbench/com/google/gson/TypeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/networkbench/com/google/gson/internal/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/networkbench/com/google/gson/TypeAdapter<",
        "Ljava/util/Map<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/networkbench/com/google/gson/internal/a/g;

.field private final b:Lcom/networkbench/com/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/networkbench/com/google/gson/TypeAdapter<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/networkbench/com/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/networkbench/com/google/gson/TypeAdapter<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/networkbench/com/google/gson/internal/ObjectConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/networkbench/com/google/gson/internal/ObjectConstructor<",
            "+",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/networkbench/com/google/gson/internal/a/g;Lcom/networkbench/com/google/gson/Gson;Ljava/lang/reflect/Type;Lcom/networkbench/com/google/gson/TypeAdapter;Ljava/lang/reflect/Type;Lcom/networkbench/com/google/gson/TypeAdapter;Lcom/networkbench/com/google/gson/internal/ObjectConstructor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/networkbench/com/google/gson/Gson;",
            "Ljava/lang/reflect/Type;",
            "Lcom/networkbench/com/google/gson/TypeAdapter<",
            "TK;>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/networkbench/com/google/gson/TypeAdapter<",
            "TV;>;",
            "Lcom/networkbench/com/google/gson/internal/ObjectConstructor<",
            "+",
            "Ljava/util/Map<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/networkbench/com/google/gson/internal/a/g$a;->a:Lcom/networkbench/com/google/gson/internal/a/g;

    invoke-direct {p0}, Lcom/networkbench/com/google/gson/TypeAdapter;-><init>()V

    new-instance p1, Lcom/networkbench/com/google/gson/internal/a/l;

    invoke-direct {p1, p2, p4, p3}, Lcom/networkbench/com/google/gson/internal/a/l;-><init>(Lcom/networkbench/com/google/gson/Gson;Lcom/networkbench/com/google/gson/TypeAdapter;Ljava/lang/reflect/Type;)V

    iput-object p1, p0, Lcom/networkbench/com/google/gson/internal/a/g$a;->b:Lcom/networkbench/com/google/gson/TypeAdapter;

    new-instance p1, Lcom/networkbench/com/google/gson/internal/a/l;

    invoke-direct {p1, p2, p6, p5}, Lcom/networkbench/com/google/gson/internal/a/l;-><init>(Lcom/networkbench/com/google/gson/Gson;Lcom/networkbench/com/google/gson/TypeAdapter;Ljava/lang/reflect/Type;)V

    iput-object p1, p0, Lcom/networkbench/com/google/gson/internal/a/g$a;->c:Lcom/networkbench/com/google/gson/TypeAdapter;

    iput-object p7, p0, Lcom/networkbench/com/google/gson/internal/a/g$a;->d:Lcom/networkbench/com/google/gson/internal/ObjectConstructor;

    return-void
.end method

.method private a(Lcom/networkbench/com/google/gson/JsonElement;)Ljava/lang/String;
    .locals 1

    .line 246
    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 247
    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/networkbench/com/google/gson/JsonPrimitive;

    move-result-object p0

    .line 248
    invoke-virtual {p0}, Lcom/networkbench/com/google/gson/JsonPrimitive;->isNumber()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/networkbench/com/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/networkbench/com/google/gson/JsonPrimitive;->isBoolean()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 251
    invoke-virtual {p0}, Lcom/networkbench/com/google/gson/JsonPrimitive;->getAsBoolean()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 252
    :cond_1
    invoke-virtual {p0}, Lcom/networkbench/com/google/gson/JsonPrimitive;->isString()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 253
    invoke-virtual {p0}, Lcom/networkbench/com/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 254
    :cond_2
    invoke-static {}, La61;->h()V

    return-object v0

    .line 255
    :cond_3
    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/JsonElement;->isJsonNull()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 256
    const-string p0, "null"

    return-object p0

    .line 257
    :cond_4
    invoke-static {}, La61;->h()V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/networkbench/com/google/gson/stream/JsonReader;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/networkbench/com/google/gson/stream/JsonReader;",
            ")",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 220
    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/stream/JsonReader;->peek()Lcom/networkbench/com/google/gson/stream/JsonToken;

    move-result-object v0

    .line 221
    sget-object v1, Lcom/networkbench/com/google/gson/stream/JsonToken;->NULL:Lcom/networkbench/com/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 222
    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/stream/JsonReader;->nextNull()V

    const/4 p0, 0x0

    return-object p0

    .line 223
    :cond_0
    iget-object v1, p0, Lcom/networkbench/com/google/gson/internal/a/g$a;->d:Lcom/networkbench/com/google/gson/internal/ObjectConstructor;

    invoke-interface {v1}, Lcom/networkbench/com/google/gson/internal/ObjectConstructor;->construct()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 224
    sget-object v2, Lcom/networkbench/com/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/networkbench/com/google/gson/stream/JsonToken;

    const-string v3, "duplicate key: "

    if-ne v0, v2, :cond_3

    .line 225
    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/stream/JsonReader;->beginArray()V

    .line 226
    :goto_0
    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/stream/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 227
    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/stream/JsonReader;->beginArray()V

    .line 228
    iget-object v0, p0, Lcom/networkbench/com/google/gson/internal/a/g$a;->b:Lcom/networkbench/com/google/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/networkbench/com/google/gson/TypeAdapter;->read(Lcom/networkbench/com/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    .line 229
    iget-object v2, p0, Lcom/networkbench/com/google/gson/internal/a/g$a;->c:Lcom/networkbench/com/google/gson/TypeAdapter;

    invoke-virtual {v2, p1}, Lcom/networkbench/com/google/gson/TypeAdapter;->read(Lcom/networkbench/com/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    .line 230
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 231
    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/stream/JsonReader;->endArray()V

    goto :goto_0

    .line 232
    :cond_1
    new-instance p0, Lcom/networkbench/com/google/gson/JsonSyntaxException;

    .line 233
    invoke-static {v0, v3}, Lcj;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 234
    invoke-direct {p0, p1}, Lcom/networkbench/com/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 235
    :cond_2
    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/stream/JsonReader;->endArray()V

    return-object v1

    .line 236
    :cond_3
    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/stream/JsonReader;->beginObject()V

    .line 237
    :goto_1
    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/stream/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 238
    sget-object v0, Lcom/networkbench/com/google/gson/internal/JsonReaderInternalAccess;->INSTANCE:Lcom/networkbench/com/google/gson/internal/JsonReaderInternalAccess;

    invoke-virtual {v0, p1}, Lcom/networkbench/com/google/gson/internal/JsonReaderInternalAccess;->promoteNameToValue(Lcom/networkbench/com/google/gson/stream/JsonReader;)V

    .line 239
    iget-object v0, p0, Lcom/networkbench/com/google/gson/internal/a/g$a;->b:Lcom/networkbench/com/google/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/networkbench/com/google/gson/TypeAdapter;->read(Lcom/networkbench/com/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    .line 240
    iget-object v2, p0, Lcom/networkbench/com/google/gson/internal/a/g$a;->c:Lcom/networkbench/com/google/gson/TypeAdapter;

    invoke-virtual {v2, p1}, Lcom/networkbench/com/google/gson/TypeAdapter;->read(Lcom/networkbench/com/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    .line 241
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_1

    .line 242
    :cond_4
    new-instance p0, Lcom/networkbench/com/google/gson/JsonSyntaxException;

    .line 243
    invoke-static {v0, v3}, Lcj;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 244
    invoke-direct {p0, p1}, Lcom/networkbench/com/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 245
    :cond_5
    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/stream/JsonReader;->endObject()V

    return-object v1
.end method

.method public a(Lcom/networkbench/com/google/gson/stream/JsonWriter;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/networkbench/com/google/gson/stream/JsonWriter;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/stream/JsonWriter;->nullValue()Lcom/networkbench/com/google/gson/stream/JsonWriter;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/networkbench/com/google/gson/internal/a/g$a;->a:Lcom/networkbench/com/google/gson/internal/a/g;

    invoke-static {v0}, Lcom/networkbench/com/google/gson/internal/a/g;->a(Lcom/networkbench/com/google/gson/internal/a/g;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/stream/JsonWriter;->beginObject()Lcom/networkbench/com/google/gson/stream/JsonWriter;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/networkbench/com/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/networkbench/com/google/gson/stream/JsonWriter;

    iget-object v1, p0, Lcom/networkbench/com/google/gson/internal/a/g$a;->c:Lcom/networkbench/com/google/gson/TypeAdapter;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/networkbench/com/google/gson/TypeAdapter;->write(Lcom/networkbench/com/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/stream/JsonWriter;->endObject()Lcom/networkbench/com/google/gson/stream/JsonWriter;

    return-void

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    iget-object v5, p0, Lcom/networkbench/com/google/gson/internal/a/g$a;->b:Lcom/networkbench/com/google/gson/TypeAdapter;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/networkbench/com/google/gson/TypeAdapter;->toJsonTree(Ljava/lang/Object;)Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Lcom/networkbench/com/google/gson/JsonElement;->isJsonArray()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v5}, Lcom/networkbench/com/google/gson/JsonElement;->isJsonObject()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    move v4, v2

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v4, 0x1

    :goto_3
    or-int/2addr v3, v4

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_7

    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/stream/JsonWriter;->beginArray()Lcom/networkbench/com/google/gson/stream/JsonWriter;

    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v2, p2, :cond_6

    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/stream/JsonWriter;->beginArray()Lcom/networkbench/com/google/gson/stream/JsonWriter;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/networkbench/com/google/gson/JsonElement;

    invoke-static {p2, p1}, Lcom/networkbench/com/google/gson/internal/Streams;->write(Lcom/networkbench/com/google/gson/JsonElement;Lcom/networkbench/com/google/gson/stream/JsonWriter;)V

    iget-object p2, p0, Lcom/networkbench/com/google/gson/internal/a/g$a;->c:Lcom/networkbench/com/google/gson/TypeAdapter;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, p1, v3}, Lcom/networkbench/com/google/gson/TypeAdapter;->write(Lcom/networkbench/com/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/stream/JsonWriter;->endArray()Lcom/networkbench/com/google/gson/stream/JsonWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/stream/JsonWriter;->endArray()Lcom/networkbench/com/google/gson/stream/JsonWriter;

    return-void

    :cond_7
    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/stream/JsonWriter;->beginObject()Lcom/networkbench/com/google/gson/stream/JsonWriter;

    :goto_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v2, p2, :cond_8

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/networkbench/com/google/gson/JsonElement;

    invoke-direct {p0, p2}, Lcom/networkbench/com/google/gson/internal/a/g$a;->a(Lcom/networkbench/com/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/networkbench/com/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/networkbench/com/google/gson/stream/JsonWriter;

    iget-object p2, p0, Lcom/networkbench/com/google/gson/internal/a/g$a;->c:Lcom/networkbench/com/google/gson/TypeAdapter;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, p1, v3}, Lcom/networkbench/com/google/gson/TypeAdapter;->write(Lcom/networkbench/com/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/stream/JsonWriter;->endObject()Lcom/networkbench/com/google/gson/stream/JsonWriter;

    return-void
.end method

.method public synthetic read(Lcom/networkbench/com/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/networkbench/com/google/gson/internal/a/g$a;->a(Lcom/networkbench/com/google/gson/stream/JsonReader;)Ljava/util/Map;

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

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/networkbench/com/google/gson/internal/a/g$a;->a(Lcom/networkbench/com/google/gson/stream/JsonWriter;Ljava/util/Map;)V

    return-void
.end method
