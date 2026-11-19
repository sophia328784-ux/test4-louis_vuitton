.class final Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/ab;
.super Lcom/perfectcorp/thirdparty/com/google/gson/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/perfectcorp/thirdparty/com/google/gson/k<",
        "Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;",
        ">;"
    }
.end annotation


# direct methods
.method public static c(Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;)V
    .locals 2

    if-eqz p0, :cond_8

    instance-of v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonNull;

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    instance-of v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;->o()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;->n(Ljava/lang/Number;)V

    return-void

    :cond_1
    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;->r()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;->p(Z)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;->n()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;->r(Ljava/lang/String;)V

    return-void

    :cond_3
    instance-of v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonArray;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;->q()V

    check-cast p0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonArray;

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonArray;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    invoke-static {v0, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/ab;->c(Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;->s()V

    return-void

    :cond_5
    instance-of v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;->t()V

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;->m()Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    move-result-object p0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->b:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;->o(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    invoke-static {v0, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/ab;->c(Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;->w()V

    return-void

    :cond_7
    const-string p1, "Couldn\'t write "

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1}, Laz;->w(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_8
    :goto_2
    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;->y()Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;

    return-void
.end method

.method public static d(Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;)Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;
    .locals 3

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/v;->a:[I

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->w()Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lct0;->c()V

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;-><init>()V

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->r()V

    :goto_0
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->y()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/ab;->d(Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;)Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->o(Ljava/lang/String;Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->t()V

    return-object v0

    :pswitch_1
    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonArray;-><init>()V

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->h()V

    :goto_1
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->u()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/ab;->d(Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;)Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonArray;->o(Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->o()V

    return-object v0

    :pswitch_2
    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->B()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Boolean;)V

    return-object v0

    :pswitch_3
    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->z()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_4
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->z()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;

    new-instance v1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/s;

    invoke-direct {v1, p0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/s;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    return-object v0

    :pswitch_5
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->C()V

    sget-object p0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonNull;->b:Lcom/perfectcorp/thirdparty/com/google/gson/JsonNull;

    return-object p0

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


# virtual methods
.method public final synthetic a(Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/ab;->d(Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;)Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic b(Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    invoke-static {p2, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/ab;->c(Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;)V

    return-void
.end method
