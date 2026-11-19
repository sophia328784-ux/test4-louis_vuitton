.class public final Lcom/perfectcorp/perfectlib/ph/template/idc/d$s;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/template/idc/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "s"
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/d$s;->a:Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/d$s;->a:Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    const-string p0, "inner_text"

    invoke-virtual {v0, p0, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/f$a;
    .locals 4

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;-><init>()V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/d$s;->a:Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->b:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "inner_text"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "attr_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    invoke-virtual {v1}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;->h()Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->o(Ljava/lang/String;Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;)V

    goto :goto_0

    :cond_2
    new-instance p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/f$a;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/perfectcorp/perfectlib/ph/database/ymk/palette/f$a;-><init>(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;Z)V

    return-object p0
.end method
