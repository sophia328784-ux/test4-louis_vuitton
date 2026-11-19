.class public final Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/template/idc/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a:Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    iget-object p1, p1, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->b:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "attr_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a:Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;->h()Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->o(Ljava/lang/String;Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a:Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->r(Ljava/lang/String;)Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;->n()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a:Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    invoke-virtual {p0, p1, p2}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/perfectcorp/common/gson/GsonHelper;->b:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/template/idc/e$f;->a:Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    invoke-virtual {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->k(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
