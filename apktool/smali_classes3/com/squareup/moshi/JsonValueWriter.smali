.class final Lcom/squareup/moshi/JsonValueWriter;
.super Lcom/squareup/moshi/JsonWriter;
.source "SourceFile"


# instance fields
.field public k:[Ljava/lang/Object;

.field public l:Ljava/lang/String;


# virtual methods
.method public final B(Ljava/lang/Float;)Lcom/squareup/moshi/JsonWriter;
    .locals 2

    if-nez p1, :cond_2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonValueWriter;->r()Lcom/squareup/moshi/JsonWriter;

    return-object p0

    :cond_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/squareup/moshi/JsonWriter;->i:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/squareup/moshi/JsonWriter;->i:Z

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/squareup/moshi/JsonValueWriter;->q(Ljava/lang/String;)Lcom/squareup/moshi/JsonWriter;

    return-object p0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/squareup/moshi/JsonValueWriter;->F(Ljava/io/Serializable;)V

    iget-object p1, p0, Lcom/squareup/moshi/JsonWriter;->e:[I

    iget v0, p0, Lcom/squareup/moshi/JsonWriter;->b:I

    add-int/lit8 v0, v0, -0x1

    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v0

    return-object p0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/squareup/moshi/JsonValueWriter;->y(D)Lcom/squareup/moshi/JsonWriter;

    return-object p0
.end method

.method public final C(Ljava/lang/String;)Lcom/squareup/moshi/JsonWriter;
    .locals 2

    iget-boolean v0, p0, Lcom/squareup/moshi/JsonWriter;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/squareup/moshi/JsonWriter;->i:Z

    invoke-virtual {p0, p1}, Lcom/squareup/moshi/JsonValueWriter;->q(Ljava/lang/String;)Lcom/squareup/moshi/JsonWriter;

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/squareup/moshi/JsonValueWriter;->F(Ljava/io/Serializable;)V

    iget-object p1, p0, Lcom/squareup/moshi/JsonWriter;->e:[I

    iget v0, p0, Lcom/squareup/moshi/JsonWriter;->b:I

    add-int/lit8 v0, v0, -0x1

    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v0

    return-object p0
.end method

.method public final E(Z)Lcom/squareup/moshi/JsonWriter;
    .locals 2

    iget-boolean v0, p0, Lcom/squareup/moshi/JsonWriter;->i:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/squareup/moshi/JsonValueWriter;->F(Ljava/io/Serializable;)V

    iget-object p1, p0, Lcom/squareup/moshi/JsonWriter;->e:[I

    iget v0, p0, Lcom/squareup/moshi/JsonWriter;->b:I

    add-int/lit8 v0, v0, -0x1

    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonWriter;->p()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Boolean cannot be used as a map key in JSON at path "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final F(Ljava/io/Serializable;)V
    .locals 5

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonWriter;->t()I

    move-result v0

    iget v1, p0, Lcom/squareup/moshi/JsonWriter;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v3, 0x6

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/squareup/moshi/JsonWriter;->c:[I

    sub-int/2addr v1, v2

    const/4 v2, 0x7

    aput v2, v0, v1

    iget-object p0, p0, Lcom/squareup/moshi/JsonValueWriter;->k:[Ljava/lang/Object;

    aput-object p1, p0, v1

    return-void

    :cond_0
    const-string p0, "JSON must have only one top-level value."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v3, 0x3

    if-ne v0, v3, :cond_5

    iget-object v3, p0, Lcom/squareup/moshi/JsonValueWriter;->l:Ljava/lang/String;

    if-eqz v3, :cond_5

    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/squareup/moshi/JsonWriter;->h:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/squareup/moshi/JsonValueWriter;->k:[Ljava/lang/Object;

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_3
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/squareup/moshi/JsonValueWriter;->l:Ljava/lang/String;

    return-void

    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget-object v2, p0, Lcom/squareup/moshi/JsonValueWriter;->l:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonWriter;->p()Ljava/lang/String;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Map key \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' has multiple values at path "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " and "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    if-ne v0, v2, :cond_6

    iget-object p0, p0, Lcom/squareup/moshi/JsonValueWriter;->k:[Ljava/lang/Object;

    sub-int/2addr v1, v2

    aget-object p0, p0, v1

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_6
    const/16 p0, 0x9

    if-ne v0, p0, :cond_7

    const-string p0, "Sink from valueSink() was not closed"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_7
    const-string p0, "Nesting problem."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void
.end method

.method public final close()V
    .locals 3

    iget v0, p0, Lcom/squareup/moshi/JsonWriter;->b:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/squareup/moshi/JsonWriter;->c:[I

    sub-int/2addr v0, v1

    aget v0, v2, v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/squareup/moshi/JsonWriter;->b:I

    return-void

    :cond_1
    const-string p0, "Incomplete document"

    invoke-static {p0}, Laz;->o(Ljava/lang/String;)V

    return-void
.end method

.method public final flush()V
    .locals 0

    iget p0, p0, Lcom/squareup/moshi/JsonWriter;->b:I

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const-string p0, "JsonWriter is closed."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void
.end method

.method public final h()Lcom/squareup/moshi/JsonWriter;
    .locals 4

    iget-boolean v0, p0, Lcom/squareup/moshi/JsonWriter;->i:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/squareup/moshi/JsonWriter;->b:I

    iget v1, p0, Lcom/squareup/moshi/JsonWriter;->j:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iget-object v3, p0, Lcom/squareup/moshi/JsonWriter;->c:[I

    sub-int/2addr v0, v2

    aget v0, v3, v0

    if-ne v0, v2, :cond_0

    not-int v0, v1

    iput v0, p0, Lcom/squareup/moshi/JsonWriter;->j:I

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonWriter;->m()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/squareup/moshi/JsonValueWriter;->F(Ljava/io/Serializable;)V

    iget-object v1, p0, Lcom/squareup/moshi/JsonValueWriter;->k:[Ljava/lang/Object;

    iget v3, p0, Lcom/squareup/moshi/JsonWriter;->b:I

    aput-object v0, v1, v3

    iget-object v0, p0, Lcom/squareup/moshi/JsonWriter;->e:[I

    const/4 v1, 0x0

    aput v1, v0, v3

    invoke-virtual {p0, v2}, Lcom/squareup/moshi/JsonWriter;->u(I)V

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonWriter;->p()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Array cannot be used as a map key in JSON at path "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final k()Lcom/squareup/moshi/JsonWriter;
    .locals 4

    iget-boolean v0, p0, Lcom/squareup/moshi/JsonWriter;->i:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/squareup/moshi/JsonWriter;->b:I

    iget v1, p0, Lcom/squareup/moshi/JsonWriter;->j:I

    const/4 v2, 0x3

    if-ne v0, v1, :cond_0

    iget-object v3, p0, Lcom/squareup/moshi/JsonWriter;->c:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v3, v0

    if-ne v0, v2, :cond_0

    not-int v0, v1

    iput v0, p0, Lcom/squareup/moshi/JsonWriter;->j:I

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonWriter;->m()V

    new-instance v0, Lcom/squareup/moshi/LinkedHashTreeMap;

    invoke-direct {v0}, Lcom/squareup/moshi/LinkedHashTreeMap;-><init>()V

    invoke-virtual {p0, v0}, Lcom/squareup/moshi/JsonValueWriter;->F(Ljava/io/Serializable;)V

    iget-object v1, p0, Lcom/squareup/moshi/JsonValueWriter;->k:[Ljava/lang/Object;

    iget v3, p0, Lcom/squareup/moshi/JsonWriter;->b:I

    aput-object v0, v1, v3

    invoke-virtual {p0, v2}, Lcom/squareup/moshi/JsonWriter;->u(I)V

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonWriter;->p()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Object cannot be used as a map key in JSON at path "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final n()Lcom/squareup/moshi/JsonWriter;
    .locals 5

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonWriter;->t()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/squareup/moshi/JsonWriter;->b:I

    iget v3, p0, Lcom/squareup/moshi/JsonWriter;->j:I

    not-int v3, v3

    if-ne v0, v3, :cond_0

    iput v3, p0, Lcom/squareup/moshi/JsonWriter;->j:I

    return-object p0

    :cond_0
    add-int/lit8 v3, v0, -0x1

    iput v3, p0, Lcom/squareup/moshi/JsonWriter;->b:I

    iget-object v4, p0, Lcom/squareup/moshi/JsonValueWriter;->k:[Ljava/lang/Object;

    aput-object v1, v4, v3

    iget-object v1, p0, Lcom/squareup/moshi/JsonWriter;->e:[I

    add-int/lit8 v0, v0, -0x2

    aget v3, v1, v0

    add-int/2addr v3, v2

    aput v3, v1, v0

    return-object p0

    :cond_1
    const-string p0, "Nesting problem."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v1
.end method

.method public final o()Lcom/squareup/moshi/JsonWriter;
    .locals 4

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonWriter;->t()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/squareup/moshi/JsonValueWriter;->l:Ljava/lang/String;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/squareup/moshi/JsonWriter;->b:I

    iget v1, p0, Lcom/squareup/moshi/JsonWriter;->j:I

    not-int v1, v1

    if-ne v0, v1, :cond_0

    iput v1, p0, Lcom/squareup/moshi/JsonWriter;->j:I

    return-object p0

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/squareup/moshi/JsonWriter;->i:Z

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/squareup/moshi/JsonWriter;->b:I

    iget-object v3, p0, Lcom/squareup/moshi/JsonValueWriter;->k:[Ljava/lang/Object;

    aput-object v2, v3, v1

    iget-object v3, p0, Lcom/squareup/moshi/JsonWriter;->d:[Ljava/lang/String;

    aput-object v2, v3, v1

    iget-object v1, p0, Lcom/squareup/moshi/JsonWriter;->e:[I

    add-int/lit8 v0, v0, -0x2

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    return-object p0

    :cond_1
    const-string v0, "Dangling name: "

    iget-object p0, p0, Lcom/squareup/moshi/JsonValueWriter;->l:Ljava/lang/String;

    invoke-static {p0, v0}, Lct0;->o(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2

    :cond_2
    const-string p0, "Nesting problem."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2
.end method

.method public final q(Ljava/lang/String;)Lcom/squareup/moshi/JsonWriter;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget v1, p0, Lcom/squareup/moshi/JsonWriter;->b:I

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonWriter;->t()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/squareup/moshi/JsonValueWriter;->l:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/squareup/moshi/JsonWriter;->i:Z

    if-nez v1, :cond_0

    iput-object p1, p0, Lcom/squareup/moshi/JsonValueWriter;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/squareup/moshi/JsonWriter;->d:[Ljava/lang/String;

    iget v1, p0, Lcom/squareup/moshi/JsonWriter;->b:I

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    return-object p0

    :cond_0
    const-string p0, "Nesting problem."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v0

    :cond_1
    const-string p0, "JsonWriter is closed."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v0

    :cond_2
    const-string p0, "name == null"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    return-object v0
.end method

.method public final r()Lcom/squareup/moshi/JsonWriter;
    .locals 3

    iget-boolean v0, p0, Lcom/squareup/moshi/JsonWriter;->i:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/squareup/moshi/JsonValueWriter;->F(Ljava/io/Serializable;)V

    iget-object v0, p0, Lcom/squareup/moshi/JsonWriter;->e:[I

    iget v1, p0, Lcom/squareup/moshi/JsonWriter;->b:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonWriter;->p()Ljava/lang/String;

    move-result-object p0

    const-string v0, "null cannot be used as a map key in JSON at path "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v1
.end method

.method public final y(D)Lcom/squareup/moshi/JsonWriter;
    .locals 2

    iget-boolean v0, p0, Lcom/squareup/moshi/JsonWriter;->g:Z

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v0, p1, v0

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v0, p1, v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Numeric values must be finite, but was "

    invoke-static {p0, p1, p2}, Laz;->p(Ljava/lang/String;D)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/squareup/moshi/JsonWriter;->i:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/squareup/moshi/JsonWriter;->i:Z

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/squareup/moshi/JsonValueWriter;->q(Ljava/lang/String;)Lcom/squareup/moshi/JsonWriter;

    return-object p0

    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/squareup/moshi/JsonValueWriter;->F(Ljava/io/Serializable;)V

    iget-object p1, p0, Lcom/squareup/moshi/JsonWriter;->e:[I

    iget p2, p0, Lcom/squareup/moshi/JsonWriter;->b:I

    add-int/lit8 p2, p2, -0x1

    aget v0, p1, p2

    add-int/lit8 v0, v0, 0x1

    aput v0, p1, p2

    return-object p0
.end method

.method public final z(J)Lcom/squareup/moshi/JsonWriter;
    .locals 1

    iget-boolean v0, p0, Lcom/squareup/moshi/JsonWriter;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/squareup/moshi/JsonWriter;->i:Z

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/squareup/moshi/JsonValueWriter;->q(Ljava/lang/String;)Lcom/squareup/moshi/JsonWriter;

    return-object p0

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/squareup/moshi/JsonValueWriter;->F(Ljava/io/Serializable;)V

    iget-object p1, p0, Lcom/squareup/moshi/JsonWriter;->e:[I

    iget p2, p0, Lcom/squareup/moshi/JsonWriter;->b:I

    add-int/lit8 p2, p2, -0x1

    aget v0, p1, p2

    add-int/lit8 v0, v0, 0x1

    aput v0, p1, p2

    return-object p0
.end method
