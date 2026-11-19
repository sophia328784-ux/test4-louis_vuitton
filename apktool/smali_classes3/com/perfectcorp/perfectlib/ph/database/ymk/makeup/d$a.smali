.class final Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/d$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/thirdparty/com/google/gson/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/perfectcorp/thirdparty/com/google/gson/JsonDeserializer<",
        "Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$c$a;",
        ">;"
    }
.end annotation


# virtual methods
.method public final a(Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;Lcom/perfectcorp/thirdparty/com/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p0, p1, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;

    const-string p2, ""

    if-eqz p0, :cond_0

    new-instance p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$c$a;

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;->n()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$c$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;->m()Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    move-result-object p0

    iget-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->b:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$c$a;

    const-string v1, "attr_guid"

    invoke-virtual {p1, v1}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->r(Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;->n()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, p2

    :goto_0
    const-string v2, "inner_text"

    invoke-virtual {p1, v2}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, v2}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->r(Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;->n()Ljava/lang/String;

    move-result-object p2

    :cond_2
    invoke-direct {v0, v1, p2}, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/c$a$b$a$c$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
