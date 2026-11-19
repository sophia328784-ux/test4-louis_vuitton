.class final Lcom/perfectcorp/perfectlib/hc/database/ymk/ao$b;
.super Ljava/lang/Object;


# instance fields
.field public colorReferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/hc/database/ymk/ao$a;",
            ">;"
        }
    .end annotation
.end field

.field public ombreLineOffset:Ljava/lang/String;

.field public ombreRange:Ljava/lang/String;

.field public thumbnail:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ao$b;->thumbnail:Ljava/lang/String;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ao$b;->colorReferences:Ljava/util/List;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ao$b;->ombreRange:Ljava/lang/String;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ao$b;->ombreLineOffset:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;-><init>()V

    const-string v1, "pattern_guid"

    invoke-virtual {v0, v1, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->p(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "thumbnail"

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ao$b;->thumbnail:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ao$b;->ombreRange:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "[tryParse] failed"

    const-string v3, "DatabaseUpgrade_1_32"

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    :goto_0
    move-object p1, v4

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-static {v3, v2, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :goto_1
    if-nez p1, :cond_1

    sget-object p1, Lcom/perfectcorp/thirdparty/com/google/gson/JsonNull;->b:Lcom/perfectcorp/thirdparty/com/google/gson/JsonNull;

    goto :goto_2

    :cond_1
    new-instance v1, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;

    invoke-direct {v1}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;-><init>()V

    invoke-virtual {v1, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;->p(Ljava/lang/Object;)V

    move-object p1, v1

    :goto_2
    const-string v1, "ombre_range"

    invoke-virtual {v0, v1, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->o(Ljava/lang/String;Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;)V

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ao$b;->ombreLineOffset:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_3
    move-object p1, v4

    goto :goto_4

    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    invoke-static {v3, v2, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :goto_4
    if-nez p1, :cond_3

    sget-object p1, Lcom/perfectcorp/thirdparty/com/google/gson/JsonNull;->b:Lcom/perfectcorp/thirdparty/com/google/gson/JsonNull;

    goto :goto_5

    :cond_3
    new-instance v1, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;

    invoke-direct {v1}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;-><init>()V

    invoke-virtual {v1, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;->p(Ljava/lang/Object;)V

    move-object p1, v1

    :goto_5
    const-string v1, "ombre_line_offset"

    invoke-virtual {v0, v1, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->o(Ljava/lang/String;Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;)V

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ao$b;->colorReferences:Ljava/util/List;

    if-nez p1, :cond_4

    goto/16 :goto_a

    :cond_4
    new-instance v4, Lcom/perfectcorp/thirdparty/com/google/gson/JsonArray;

    invoke-direct {v4}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonArray;-><init>()V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/ao$b;->colorReferences:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perfectcorp/perfectlib/hc/database/ymk/ao$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;-><init>()V

    const-string v2, "palette_guid"

    iget-object v3, p1, Lcom/perfectcorp/perfectlib/hc/database/ymk/ao$a;->paletteGuid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/perfectcorp/perfectlib/hc/database/ymk/ao$a;->paletteColorIndex:Ljava/lang/String;

    invoke-static {v2}, Lcom/perfectcorp/perfectlib/hc/database/ymk/ao$a;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/perfectcorp/thirdparty/com/google/gson/JsonNull;->b:Lcom/perfectcorp/thirdparty/com/google/gson/JsonNull;

    goto :goto_7

    :cond_5
    new-instance v3, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;

    invoke-direct {v3}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;-><init>()V

    invoke-virtual {v3, v2}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;->p(Ljava/lang/Object;)V

    move-object v2, v3

    :goto_7
    const-string v3, "palette_color_index"

    invoke-virtual {v1, v3, v2}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->o(Ljava/lang/String;Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;)V

    iget-object v2, p1, Lcom/perfectcorp/perfectlib/hc/database/ymk/ao$a;->colorIntensity:Ljava/lang/String;

    invoke-static {v2}, Lcom/perfectcorp/perfectlib/hc/database/ymk/ao$a;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_6

    sget-object v2, Lcom/perfectcorp/thirdparty/com/google/gson/JsonNull;->b:Lcom/perfectcorp/thirdparty/com/google/gson/JsonNull;

    goto :goto_8

    :cond_6
    new-instance v3, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;

    invoke-direct {v3}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;-><init>()V

    invoke-virtual {v3, v2}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;->p(Ljava/lang/Object;)V

    move-object v2, v3

    :goto_8
    const-string v3, "color_intensity"

    invoke-virtual {v1, v3, v2}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->o(Ljava/lang/String;Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;)V

    iget-object p1, p1, Lcom/perfectcorp/perfectlib/hc/database/ymk/ao$a;->shineIntensity:Ljava/lang/String;

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/hc/database/ymk/ao$a;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_7

    sget-object p1, Lcom/perfectcorp/thirdparty/com/google/gson/JsonNull;->b:Lcom/perfectcorp/thirdparty/com/google/gson/JsonNull;

    goto :goto_9

    :cond_7
    new-instance v2, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;

    invoke-direct {v2}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;-><init>()V

    invoke-virtual {v2, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;->p(Ljava/lang/Object;)V

    move-object p1, v2

    :goto_9
    const-string v2, "shine_intensity"

    invoke-virtual {v1, v2, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->o(Ljava/lang/String;Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;)V

    invoke-virtual {v4, v1}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonArray;->o(Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;)V

    goto :goto_6

    :cond_8
    :goto_a
    const-string p0, "color_references"

    invoke-virtual {v0, p0, v4}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->o(Ljava/lang/String;Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;)V

    sget-object p0, Lcom/perfectcorp/perfectlib/ymk/kernelctrl/networktaskmanager/GsonBaseResponse;->a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->k(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
