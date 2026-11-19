.class public final Lcom/perfectcorp/perfectlib/ph/template/idc/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/thirdparty/com/google/gson/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/template/idc/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/perfectcorp/thirdparty/com/google/gson/JsonDeserializer<",
        "Lcom/perfectcorp/perfectlib/ph/template/idc/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v7, "tur"

    const-string v8, "fas"

    const-string v0, "ptg"

    const-string v1, "prt"

    const-string v2, "rus"

    const-string v3, "nld"

    const-string v4, "idn"

    const-string v5, "mys"

    const-string v6, "tha"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    const/16 v1, 0x15

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "def"

    aput-object v4, v2, v3

    const/4 v4, 0x1

    const-string v5, "enu"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "cht"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "chs"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "jpn"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    const-string v5, "kor"

    aput-object v5, v2, v4

    const/4 v4, 0x6

    const-string v5, "deu"

    aput-object v5, v2, v4

    const/4 v4, 0x7

    const-string v5, "esp"

    aput-object v5, v2, v4

    const/16 v4, 0x8

    const-string v5, "fra"

    aput-object v5, v2, v4

    const/16 v4, 0x9

    const-string v5, "ita"

    aput-object v5, v2, v4

    const/16 v5, 0xa

    const-string v6, "plk"

    aput-object v6, v2, v5

    const/16 v5, 0xb

    const-string v6, "ptb"

    aput-object v6, v2, v5

    const/16 v5, 0xc

    invoke-static {v0, v3, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/al$a;->d(I[Ljava/lang/Object;)V

    invoke-static {v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->s(I[Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/b$a;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;Lcom/perfectcorp/thirdparty/com/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p2, p1, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    new-instance p0, Lcom/perfectcorp/perfectlib/ph/template/idc/b;

    invoke-direct {p0, v0}, Lcom/perfectcorp/perfectlib/ph/template/idc/b;-><init>(I)V

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;->m()Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    move-result-object p1

    new-instance p2, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    invoke-direct {p2}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;-><init>()V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/b$a;->a:Ljava/util/List;

    check-cast p0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->r(I)Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->r(Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    move-result-object v2

    if-eqz v2, :cond_1

    instance-of v3, v2, Lcom/perfectcorp/thirdparty/com/google/gson/JsonArray;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/perfectcorp/thirdparty/com/google/gson/JsonArray;

    iget-object v2, v2, Lcom/perfectcorp/thirdparty/com/google/gson/JsonArray;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v3, v2, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;

    iget-object v3, v2, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    new-instance v3, Lcom/perfectcorp/thirdparty/com/google/gson/JsonArray;

    invoke-direct {v3}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonArray;-><init>()V

    invoke-virtual {v2}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;->n()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/perfectcorp/thirdparty/com/google/gson/JsonNull;->b:Lcom/perfectcorp/thirdparty/com/google/gson/JsonNull;

    goto :goto_1

    :cond_2
    new-instance v4, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;

    invoke-direct {v4, v2}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    :goto_1
    iget-object v4, v3, Lcom/perfectcorp/thirdparty/com/google/gson/JsonArray;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, v1, v3}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->o(Ljava/lang/String;Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;)V

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/perfectcorp/common/gson/GsonHelper;->a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    const-class p1, Lcom/perfectcorp/perfectlib/ph/template/idc/b;

    invoke-virtual {p0, p2, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->h(Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/ph/template/idc/b;

    return-object p0
.end method
