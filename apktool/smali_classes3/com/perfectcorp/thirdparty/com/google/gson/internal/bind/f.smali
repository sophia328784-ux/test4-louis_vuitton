.class public final Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/f;
.super Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;


# static fields
.field public static final o:Ljava/io/Writer;

.field public static final p:Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;


# instance fields
.field public final l:Ljava/util/ArrayList;

.field public m:Ljava/lang/String;

.field public n:Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/g;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/g;-><init>()V

    sput-object v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/f;->o:Ljava/io/Writer;

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/f;->p:Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/f;->o:Ljava/io/Writer;

    invoke-direct {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;-><init>(Ljava/io/Writer;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/f;->l:Ljava/util/ArrayList;

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonNull;->b:Lcom/perfectcorp/thirdparty/com/google/gson/JsonNull;

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/f;->n:Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    return-void
.end method


# virtual methods
.method public final E()Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/f;->n:Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    return-object p0

    :cond_0
    const-string p0, "Expected one JSON element but was "

    invoke-static {v0, p0}, La61;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final F(Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;)V
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/f;->m:Ljava/lang/String;

    if-eqz v0, :cond_2

    instance-of v0, p1, Lcom/perfectcorp/thirdparty/com/google/gson/JsonNull;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;->i:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/f;->G()Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/f;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->o(Ljava/lang/String;Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;)V

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/f;->m:Ljava/lang/String;

    return-void

    :cond_2
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/f;->n:Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/f;->G()Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    move-result-object p0

    instance-of v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonArray;

    if-eqz v0, :cond_4

    check-cast p0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonArray;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonArray;->o(Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;)V

    return-void

    :cond_4
    invoke-static {}, Lr81;->b()V

    return-void
.end method

.method public final G()Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;
    .locals 1

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/f;->l:Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcj;->c(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    return-object p0
.end method

.method public final close()V
    .locals 1

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/f;->l:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/f;->p:Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const-string p0, "Incomplete document"

    invoke-static {p0}, Laz;->o(Ljava/lang/String;)V

    return-void
.end method

.method public final flush()V
    .locals 0

    return-void
.end method

.method public final m(Ljava/lang/Boolean;)V
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lcom/perfectcorp/thirdparty/com/google/gson/JsonNull;->b:Lcom/perfectcorp/thirdparty/com/google/gson/JsonNull;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/f;->F(Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;)V

    return-void

    :cond_0
    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;

    invoke-direct {v0, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/f;->F(Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;)V

    return-void
.end method

.method public final n(Ljava/lang/Number;)V
    .locals 3

    if-nez p1, :cond_0

    sget-object p1, Lcom/perfectcorp/thirdparty/com/google/gson/JsonNull;->b:Lcom/perfectcorp/thirdparty/com/google/gson/JsonNull;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/f;->F(Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;->f:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "JSON forbids NaN and infinities: "

    invoke-static {p1, p0}, Laz;->m(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;

    invoke-direct {v0, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/f;->F(Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;)V

    return-void
.end method

.method public final o(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/f;->m:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/f;->G()Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    move-result-object v0

    instance-of v0, v0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/f;->m:Ljava/lang/String;

    return-void

    :cond_0
    invoke-static {}, Lr81;->b()V

    return-void

    :cond_1
    invoke-static {}, Lr81;->b()V

    return-void
.end method

.method public final p(Z)V
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/f;->F(Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;)V

    return-void
.end method

.method public final q()V
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonArray;-><init>()V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/f;->F(Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;)V

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/f;->l:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final r(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lcom/perfectcorp/thirdparty/com/google/gson/JsonNull;->b:Lcom/perfectcorp/thirdparty/com/google/gson/JsonNull;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/f;->F(Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;)V

    return-void

    :cond_0
    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;

    invoke-direct {v0, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/f;->F(Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;)V

    return-void
.end method

.method public final s()V
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/f;->m:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/f;->G()Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    move-result-object p0

    instance-of p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonArray;

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-static {}, Lr81;->b()V

    return-void

    :cond_1
    invoke-static {}, Lr81;->b()V

    return-void
.end method

.method public final t()V
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;-><init>()V

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/f;->F(Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;)V

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/f;->l:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final w()V
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/f;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/f;->m:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/f;->G()Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;

    move-result-object p0

    instance-of p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-static {}, Lr81;->b()V

    return-void

    :cond_1
    invoke-static {}, Lr81;->b()V

    return-void
.end method

.method public final y()Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;
    .locals 1

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonNull;->b:Lcom/perfectcorp/thirdparty/com/google/gson/JsonNull;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/f;->F(Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;)V

    return-object p0
.end method
