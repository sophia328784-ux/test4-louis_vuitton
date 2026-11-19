.class public final Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;
.super Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;


# static fields
.field public static final v:Ljava/io/Reader;

.field public static final w:Ljava/lang/Object;


# instance fields
.field public r:[Ljava/lang/Object;

.field public s:I

.field public t:[Ljava/lang/String;

.field public u:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/e;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/e;-><init>()V

    sput-object v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->v:Ljava/io/Reader;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->w:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;)V
    .locals 2

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->v:Ljava/io/Reader;

    invoke-direct {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;-><init>(Ljava/io/Reader;)V

    const/16 v0, 0x20

    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->r:[Ljava/lang/Object;

    const/4 v1, 0x0

    iput v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->s:I

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->t:[Ljava/lang/String;

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->u:[I

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->q0(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final B()Z
    .locals 3

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;->h:Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->p0(Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;)V

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->E0()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;->r()Z

    move-result v0

    iget v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->s:I

    if-lez v1, :cond_0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->u:[I

    add-int/lit8 v1, v1, -0x1

    aget v2, p0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, p0, v1

    :cond_0
    return v0
.end method

.method public final C()V
    .locals 2

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;->i:Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->p0(Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;)V

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->E0()Ljava/lang/Object;

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->s:I

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->u:[I

    add-int/lit8 v0, v0, -0x1

    aget v1, p0, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p0, v0

    :cond_0
    return-void
.end method

.method public final E()D
    .locals 4

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->w()Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    move-result-object v0

    sget-object v1, Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;->g:Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    if-eq v0, v1, :cond_1

    sget-object v2, Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;->f:Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " but was "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->i0()Ljava/lang/String;

    move-result-object p0

    const-string v0, " at path "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Laz;->n(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->v0()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;

    iget-object v1, v0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Number;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;->o()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    :goto_1
    iget-boolean v2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->c:Z

    if-nez v2, :cond_4

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "JSON forbids NaN and infinities: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->E0()Ljava/lang/Object;

    iget v2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->s:I

    if-lez v2, :cond_5

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->u:[I

    add-int/lit8 v2, v2, -0x1

    aget v3, p0, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, p0, v2

    :cond_5
    return-wide v0
.end method

.method public final E0()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->r:[Ljava/lang/Object;

    iget v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->s:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->s:I

    aget-object p0, v0, v1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    return-object p0
.end method

.method public final F()J
    .locals 4

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->w()Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    move-result-object v0

    sget-object v1, Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;->g:Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    if-eq v0, v1, :cond_1

    sget-object v2, Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;->f:Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " but was "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->i0()Ljava/lang/String;

    move-result-object p0

    const-string v0, " at path "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Laz;->n(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->v0()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;

    iget-object v1, v0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Number;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;->o()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_1
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->E0()Ljava/lang/Object;

    iget v2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->s:I

    if-lez v2, :cond_3

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->u:[I

    add-int/lit8 v2, v2, -0x1

    aget v3, p0, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, p0, v2

    :cond_3
    return-wide v0
.end method

.method public final G()I
    .locals 4

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->w()Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    move-result-object v0

    sget-object v1, Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;->g:Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    if-eq v0, v1, :cond_1

    sget-object v2, Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;->f:Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " but was "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->i0()Ljava/lang/String;

    move-result-object p0

    const-string v0, " at path "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Laz;->n(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->v0()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;->i()I

    move-result v0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->E0()Ljava/lang/Object;

    iget v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->s:I

    if-lez v1, :cond_2

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->u:[I

    add-int/lit8 v1, v1, -0x1

    aget v2, p0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, p0, v1

    :cond_2
    return v0
.end method

.method public final H()V
    .locals 3

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->w()Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    move-result-object v0

    sget-object v1, Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;->e:Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    const-string v2, "null"

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->y()Ljava/lang/String;

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->t:[Ljava/lang/String;

    iget v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->s:I

    add-int/lit8 v1, v1, -0x2

    aput-object v2, v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->E0()Ljava/lang/Object;

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->t:[Ljava/lang/String;

    iget v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->s:I

    add-int/lit8 v1, v1, -0x1

    aput-object v2, v0, v1

    :goto_0
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->u:[I

    iget p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->s:I

    add-int/lit8 p0, p0, -0x1

    aget v1, v0, p0

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p0

    return-void
.end method

.method public final close()V
    .locals 1

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->w:Ljava/lang/Object;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->r:[Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->s:I

    return-void
.end method

.method public final h()V
    .locals 2

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;->a:Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->p0(Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;)V

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->v0()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonArray;

    iget-object v0, v0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonArray;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->q0(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->u:[I

    iget p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->s:I

    add-int/lit8 p0, p0, -0x1

    const/4 v1, 0x0

    aput v1, v0, p0

    return-void
.end method

.method public final i0()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "$"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->s:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->r:[Ljava/lang/Object;

    aget-object v3, v2, v1

    instance-of v4, v3, Lcom/perfectcorp/thirdparty/com/google/gson/JsonArray;

    if-eqz v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    aget-object v2, v2, v1

    instance-of v2, v2, Ljava/util/Iterator;

    if-eqz v2, :cond_1

    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->u:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    instance-of v3, v3, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    aget-object v2, v2, v1

    instance-of v2, v2, Ljava/util/Iterator;

    if-eqz v2, :cond_1

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->t:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final o()V
    .locals 2

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;->b:Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->p0(Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;)V

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->E0()Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->E0()Ljava/lang/Object;

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->s:I

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->u:[I

    add-int/lit8 v0, v0, -0x1

    aget v1, p0, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p0, v0

    :cond_0
    return-void
.end method

.method public final p0(Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;)V
    .locals 2

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->w()Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " but was "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->w()Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->i0()Ljava/lang/String;

    move-result-object p0

    const-string p1, " at path "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Laz;->n(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public final q0(Ljava/lang/Object;)V
    .locals 6

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->s:I

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->r:[Ljava/lang/Object;

    array-length v2, v1

    if-ne v0, v2, :cond_0

    shl-int/lit8 v2, v0, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    shl-int/lit8 v3, v0, 0x1

    new-array v3, v3, [I

    shl-int/lit8 v4, v0, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->u:[I

    iget v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->s:I

    invoke-static {v0, v5, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->t:[Ljava/lang/String;

    iget v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->s:I

    invoke-static {v0, v5, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->r:[Ljava/lang/Object;

    iput-object v3, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->u:[I

    iput-object v4, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->t:[Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->r:[Ljava/lang/Object;

    iget v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->s:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->s:I

    aput-object p1, v0, v1

    return-void
.end method

.method public final r()V
    .locals 1

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;->c:Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->p0(Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;)V

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->v0()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    iget-object v0, v0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;->b:Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->q0(Ljava/lang/Object;)V

    return-void
.end method

.method public final t()V
    .locals 2

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;->d:Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->p0(Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;)V

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->E0()Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->E0()Ljava/lang/Object;

    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->s:I

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->u:[I

    add-int/lit8 v0, v0, -0x1

    aget v1, p0, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p0, v0

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "d"

    return-object p0
.end method

.method public final u()Z
    .locals 1

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->w()Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    move-result-object p0

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;->d:Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;->b:Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final v0()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->r:[Ljava/lang/Object;

    iget p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->s:I

    add-int/lit8 p0, p0, -0x1

    aget-object p0, v0, p0

    return-object p0
.end method

.method public final w()Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;
    .locals 3

    :goto_0
    iget v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->s:I

    if-nez v0, :cond_0

    sget-object p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;->j:Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->v0()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Iterator;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->r:[Ljava/lang/Object;

    iget v2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->s:I

    add-int/lit8 v2, v2, -0x2

    aget-object v1, v1, v2

    instance-of v1, v1, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    sget-object p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;->e:Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    return-object p0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->q0(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    sget-object p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;->d:Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    return-object p0

    :cond_3
    sget-object p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;->b:Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    return-object p0

    :cond_4
    instance-of p0, v0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonObject;

    if-eqz p0, :cond_5

    sget-object p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;->c:Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    return-object p0

    :cond_5
    instance-of p0, v0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonArray;

    if-eqz p0, :cond_6

    sget-object p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;->a:Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    return-object p0

    :cond_6
    instance-of p0, v0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;

    const/4 v1, 0x0

    if-eqz p0, :cond_a

    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;

    iget-object p0, v0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_7

    sget-object p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;->f:Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    return-object p0

    :cond_7
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    sget-object p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;->h:Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    return-object p0

    :cond_8
    instance-of p0, p0, Ljava/lang/Number;

    if-eqz p0, :cond_9

    sget-object p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;->g:Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    return-object p0

    :cond_9
    invoke-static {}, La61;->h()V

    return-object v1

    :cond_a
    instance-of p0, v0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonNull;

    if-eqz p0, :cond_b

    sget-object p0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;->i:Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    return-object p0

    :cond_b
    sget-object p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->w:Ljava/lang/Object;

    if-ne v0, p0, :cond_c

    const-string p0, "JsonReader is closed"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v1

    :cond_c
    invoke-static {}, La61;->h()V

    return-object v1
.end method

.method public final y()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;->e:Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->p0(Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;)V

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->v0()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->t:[Ljava/lang/String;

    iget v3, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->s:I

    add-int/lit8 v3, v3, -0x1

    aput-object v1, v2, v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->q0(Ljava/lang/Object;)V

    return-object v1
.end method

.method public final z()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->w()Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    move-result-object v0

    sget-object v1, Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;->f:Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    if-eq v0, v1, :cond_1

    sget-object v2, Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;->g:Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " but was "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->i0()Ljava/lang/String;

    move-result-object p0

    const-string v0, " at path "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Laz;->n(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->E0()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;->n()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->s:I

    if-lez v1, :cond_2

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/d;->u:[I

    add-int/lit8 v1, v1, -0x1

    aget v2, p0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, p0, v1

    :cond_2
    return-object v0
.end method
