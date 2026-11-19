.class public abstract Lcom/squareup/moshi/JsonReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/moshi/JsonReader$Token;,
        Lcom/squareup/moshi/JsonReader$Options;
    }
.end annotation


# instance fields
.field public b:I

.field public c:[I

.field public d:[Ljava/lang/String;

.field public e:[I

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    .line 47
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/squareup/moshi/JsonReader;->c:[I

    .line 48
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/squareup/moshi/JsonReader;->d:[Ljava/lang/String;

    .line 49
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/squareup/moshi/JsonReader;->e:[I

    return-void
.end method

.method public constructor <init>(Lcom/squareup/moshi/JsonReader;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/squareup/moshi/JsonReader;->b:I

    iput v0, p0, Lcom/squareup/moshi/JsonReader;->b:I

    iget-object v0, p1, Lcom/squareup/moshi/JsonReader;->c:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/squareup/moshi/JsonReader;->c:[I

    iget-object v0, p1, Lcom/squareup/moshi/JsonReader;->d:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/squareup/moshi/JsonReader;->d:[Ljava/lang/String;

    iget-object v0, p1, Lcom/squareup/moshi/JsonReader;->e:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/squareup/moshi/JsonReader;->e:[I

    iget-boolean v0, p1, Lcom/squareup/moshi/JsonReader;->f:Z

    iput-boolean v0, p0, Lcom/squareup/moshi/JsonReader;->f:Z

    iget-boolean p1, p1, Lcom/squareup/moshi/JsonReader;->g:Z

    iput-boolean p1, p0, Lcom/squareup/moshi/JsonReader;->g:Z

    return-void
.end method

.method public static y(Lokio/BufferedSource;)Lcom/squareup/moshi/JsonReader;
    .locals 1

    new-instance v0, Lcom/squareup/moshi/JsonUtf8Reader;

    invoke-direct {v0, p0}, Lcom/squareup/moshi/JsonUtf8Reader;-><init>(Lokio/BufferedSource;)V

    return-object v0
.end method


# virtual methods
.method public abstract B()Lcom/squareup/moshi/JsonReader;
.end method

.method public abstract C()V
.end method

.method public final E(I)V
    .locals 3

    iget v0, p0, Lcom/squareup/moshi/JsonReader;->b:I

    iget-object v1, p0, Lcom/squareup/moshi/JsonReader;->c:[I

    array-length v2, v1

    if-ne v0, v2, :cond_1

    const/16 v2, 0x100

    if-eq v0, v2, :cond_0

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/moshi/JsonReader;->c:[I

    iget-object v0, p0, Lcom/squareup/moshi/JsonReader;->d:[Ljava/lang/String;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/squareup/moshi/JsonReader;->d:[Ljava/lang/String;

    iget-object v0, p0, Lcom/squareup/moshi/JsonReader;->e:[I

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/moshi/JsonReader;->e:[I

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/squareup/moshi/JsonDataException;

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonReader;->n()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Nesting too deep at "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/squareup/moshi/JsonReader;->c:[I

    iget v1, p0, Lcom/squareup/moshi/JsonReader;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/squareup/moshi/JsonReader;->b:I

    aput p1, v0, v1

    return-void
.end method

.method public final F()Ljava/lang/Object;
    .locals 9

    sget-object v0, Lcom/squareup/moshi/JsonReader$1;->a:[I

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonReader;->z()Lcom/squareup/moshi/JsonReader$Token;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Expected a value but was "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonReader;->z()Lcom/squareup/moshi/JsonReader$Token;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonReader;->n()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v2, p0}, Ld20;->k(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :pswitch_0
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonReader;->u()V

    return-object v1

    :pswitch_1
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonReader;->p()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonReader;->q()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonReader;->w()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    new-instance v0, Lcom/squareup/moshi/LinkedHashTreeMap;

    invoke-direct {v0}, Lcom/squareup/moshi/LinkedHashTreeMap;-><init>()V

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonReader;->j()V

    :goto_0
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonReader;->o()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonReader;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonReader;->F()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v2, v8}, Lcom/squareup/moshi/LinkedHashTreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Map key \'"

    const-string v3, "\' has multiple values at path "

    invoke-static {v0, v2, v3}, Lpq0;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonReader;->n()Ljava/lang/String;

    move-result-object v4

    const-string v5, ": "

    const-string v7, " and "

    invoke-static/range {v3 .. v8}, Ld20;->l(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonReader;->m()V

    return-object v0

    :pswitch_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonReader;->h()V

    :goto_1
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonReader;->o()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonReader;->F()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/squareup/moshi/JsonReader;->k()V

    return-object v0

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

.method public abstract G(Lcom/squareup/moshi/JsonReader$Options;)I
.end method

.method public abstract H(Lcom/squareup/moshi/JsonReader$Options;)I
.end method

.method public abstract h()V
.end method

.method public abstract i0()V
.end method

.method public abstract j()V
.end method

.method public abstract j0()V
.end method

.method public abstract k()V
.end method

.method public final k0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/squareup/moshi/JsonEncodingException;

    const-string v1, " at path "

    invoke-static {p1, v1}, Ln00;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonReader;->n()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/squareup/moshi/JsonEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final l0(Ljava/lang/Object;Ljava/lang/Object;)Lcom/squareup/moshi/JsonDataException;
    .locals 3

    const-string v0, "Expected "

    if-nez p1, :cond_0

    new-instance p1, Lcom/squareup/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " but was null at path "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonReader;->n()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    return-object p1

    :cond_0
    new-instance v1, Lcom/squareup/moshi/JsonDataException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " but was "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", a "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", at path "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/squareup/moshi/JsonReader;->n()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public abstract m()V
.end method

.method public final n()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/squareup/moshi/JsonReader;->b:I

    iget-object v1, p0, Lcom/squareup/moshi/JsonReader;->c:[I

    iget-object v2, p0, Lcom/squareup/moshi/JsonReader;->d:[Ljava/lang/String;

    iget-object p0, p0, Lcom/squareup/moshi/JsonReader;->e:[I

    invoke-static {v0, v1, v2, p0}, Lcom/squareup/moshi/JsonScope;->a(I[I[Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract o()Z
.end method

.method public abstract p()Z
.end method

.method public abstract q()D
.end method

.method public abstract r()I
.end method

.method public abstract s()J
.end method

.method public abstract t()Ljava/lang/String;
.end method

.method public abstract u()V
.end method

.method public abstract w()Ljava/lang/String;
.end method

.method public abstract z()Lcom/squareup/moshi/JsonReader$Token;
.end method
