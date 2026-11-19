.class final Lcom/squareup/moshi/LinkedHashTreeMap;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/moshi/LinkedHashTreeMap$Node;,
        Lcom/squareup/moshi/LinkedHashTreeMap$EntrySet;,
        Lcom/squareup/moshi/LinkedHashTreeMap$KeySet;,
        Lcom/squareup/moshi/LinkedHashTreeMap$AvlIterator;,
        Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder;,
        Lcom/squareup/moshi/LinkedHashTreeMap$LinkedTreeMapIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final j:Ljava/util/Comparator;


# instance fields
.field public final b:Ljava/util/Comparator;

.field public c:[Lcom/squareup/moshi/LinkedHashTreeMap$Node;

.field public final d:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

.field public e:I

.field public f:I

.field public g:I

.field public h:Lcom/squareup/moshi/LinkedHashTreeMap$EntrySet;

.field public i:Lcom/squareup/moshi/LinkedHashTreeMap$KeySet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/squareup/moshi/LinkedHashTreeMap$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/squareup/moshi/LinkedHashTreeMap;->j:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap;->e:I

    iput v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap;->f:I

    sget-object v0, Lcom/squareup/moshi/LinkedHashTreeMap;->j:Ljava/util/Comparator;

    iput-object v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap;->b:Ljava/util/Comparator;

    new-instance v0, Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    invoke-direct {v0}, Lcom/squareup/moshi/LinkedHashTreeMap$Node;-><init>()V

    iput-object v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap;->d:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    iput-object v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap;->c:[Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    const/16 v0, 0xc

    iput v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap;->g:I

    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Z)Lcom/squareup/moshi/LinkedHashTreeMap$Node;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    iget-object v7, v0, Lcom/squareup/moshi/LinkedHashTreeMap;->c:[Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    ushr-int/lit8 v2, v1, 0x14

    ushr-int/lit8 v4, v1, 0xc

    xor-int/2addr v2, v4

    xor-int/2addr v1, v2

    ushr-int/lit8 v2, v1, 0x7

    xor-int/2addr v2, v1

    ushr-int/lit8 v1, v1, 0x4

    xor-int v4, v2, v1

    array-length v1, v7

    const/4 v8, 0x1

    sub-int/2addr v1, v8

    and-int v9, v4, v1

    aget-object v1, v7, v9

    sget-object v2, Lcom/squareup/moshi/LinkedHashTreeMap;->j:Ljava/util/Comparator;

    const/4 v10, 0x0

    iget-object v5, v0, Lcom/squareup/moshi/LinkedHashTreeMap;->b:Ljava/util/Comparator;

    if-eqz v1, :cond_5

    if-ne v5, v2, :cond_0

    move-object v6, v3

    check-cast v6, Ljava/lang/Comparable;

    goto :goto_0

    :cond_0
    move-object v6, v10

    :goto_0
    iget-object v12, v1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->g:Ljava/lang/Object;

    if-eqz v6, :cond_1

    invoke-interface {v6, v12}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v12

    goto :goto_1

    :cond_1
    invoke-interface {v5, v3, v12}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v12

    :goto_1
    if-nez v12, :cond_2

    return-object v1

    :cond_2
    if-gez v12, :cond_3

    iget-object v13, v1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->c:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    goto :goto_2

    :cond_3
    iget-object v13, v1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->d:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    :goto_2
    if-nez v13, :cond_4

    goto :goto_3

    :cond_4
    move-object v1, v13

    goto :goto_0

    :cond_5
    const/4 v12, 0x0

    :goto_3
    if-nez p2, :cond_6

    return-object v10

    :cond_6
    iget-object v6, v0, Lcom/squareup/moshi/LinkedHashTreeMap;->d:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    if-nez v1, :cond_9

    if-ne v5, v2, :cond_7

    instance-of v2, v3, Ljava/lang/Comparable;

    if-eqz v2, :cond_8

    :cond_7
    move-object v2, v1

    goto :goto_4

    :cond_8
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, " is not Comparable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_4
    new-instance v1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    move-object v5, v6

    iget-object v6, v5, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->f:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    invoke-direct/range {v1 .. v6}, Lcom/squareup/moshi/LinkedHashTreeMap$Node;-><init>(Lcom/squareup/moshi/LinkedHashTreeMap$Node;Ljava/lang/Object;ILcom/squareup/moshi/LinkedHashTreeMap$Node;Lcom/squareup/moshi/LinkedHashTreeMap$Node;)V

    aput-object v1, v7, v9

    goto :goto_6

    :cond_9
    move-object v2, v1

    move-object v5, v6

    new-instance v1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    iget-object v6, v5, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->f:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/squareup/moshi/LinkedHashTreeMap$Node;-><init>(Lcom/squareup/moshi/LinkedHashTreeMap$Node;Ljava/lang/Object;ILcom/squareup/moshi/LinkedHashTreeMap$Node;Lcom/squareup/moshi/LinkedHashTreeMap$Node;)V

    if-gez v12, :cond_a

    iput-object v1, v2, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->c:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    goto :goto_5

    :cond_a
    iput-object v1, v2, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->d:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    :goto_5
    invoke-virtual {v0, v2, v8}, Lcom/squareup/moshi/LinkedHashTreeMap;->c(Lcom/squareup/moshi/LinkedHashTreeMap$Node;Z)V

    :goto_6
    iget v2, v0, Lcom/squareup/moshi/LinkedHashTreeMap;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lcom/squareup/moshi/LinkedHashTreeMap;->e:I

    iget v3, v0, Lcom/squareup/moshi/LinkedHashTreeMap;->g:I

    if-le v2, v3, :cond_1b

    iget-object v2, v0, Lcom/squareup/moshi/LinkedHashTreeMap;->c:[Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    array-length v3, v2

    mul-int/lit8 v4, v3, 0x2

    new-array v5, v4, [Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    new-instance v6, Lcom/squareup/moshi/LinkedHashTreeMap$AvlIterator;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    new-instance v7, Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    new-instance v9, Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    const/4 v12, 0x0

    :goto_7
    if-ge v12, v3, :cond_1a

    aget-object v13, v2, v12

    if-nez v13, :cond_b

    move/from16 v16, v8

    move-object/from16 v17, v10

    const/4 v8, 0x0

    goto/16 :goto_13

    :cond_b
    move-object v15, v10

    move-object v14, v13

    :goto_8
    if-eqz v14, :cond_c

    iput-object v15, v14, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->b:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    iget-object v15, v14, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->c:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    move-object/from16 v18, v15

    move-object v15, v14

    move-object/from16 v14, v18

    goto :goto_8

    :cond_c
    iput-object v15, v6, Lcom/squareup/moshi/LinkedHashTreeMap$AvlIterator;->a:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    move/from16 v16, v8

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_9
    iget-object v8, v6, Lcom/squareup/moshi/LinkedHashTreeMap$AvlIterator;->a:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    if-nez v8, :cond_d

    move-object v8, v10

    goto :goto_b

    :cond_d
    iget-object v11, v8, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->b:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    iput-object v10, v8, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->b:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    iget-object v10, v8, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->d:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    :goto_a
    move-object/from16 v18, v11

    move-object v11, v10

    move-object/from16 v10, v18

    if-eqz v11, :cond_e

    iput-object v10, v11, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->b:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    iget-object v10, v11, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->c:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    goto :goto_a

    :cond_e
    iput-object v10, v6, Lcom/squareup/moshi/LinkedHashTreeMap$AvlIterator;->a:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    :goto_b
    if-eqz v8, :cond_10

    iget v8, v8, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->h:I

    and-int/2addr v8, v3

    if-nez v8, :cond_f

    add-int/lit8 v14, v14, 0x1

    :goto_c
    const/4 v10, 0x0

    goto :goto_9

    :cond_f
    add-int/lit8 v15, v15, 0x1

    goto :goto_c

    :cond_10
    invoke-static {v14}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    add-int/lit8 v8, v8, -0x1

    sub-int/2addr v8, v14

    iput v8, v7, Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder;->b:I

    const/4 v8, 0x0

    iput v8, v7, Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder;->d:I

    iput v8, v7, Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder;->c:I

    const/4 v10, 0x0

    iput-object v10, v7, Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder;->a:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    invoke-static {v15}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v11

    mul-int/lit8 v11, v11, 0x2

    add-int/lit8 v11, v11, -0x1

    sub-int/2addr v11, v15

    iput v11, v9, Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder;->b:I

    iput v8, v9, Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder;->d:I

    iput v8, v9, Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder;->c:I

    iput-object v10, v9, Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder;->a:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    const/4 v10, 0x0

    :goto_d
    if-eqz v13, :cond_11

    iput-object v10, v13, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->b:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    iget-object v10, v13, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->c:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    move-object/from16 v18, v13

    move-object v13, v10

    move-object/from16 v10, v18

    goto :goto_d

    :cond_11
    iput-object v10, v6, Lcom/squareup/moshi/LinkedHashTreeMap$AvlIterator;->a:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    :goto_e
    iget-object v10, v6, Lcom/squareup/moshi/LinkedHashTreeMap$AvlIterator;->a:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    if-nez v10, :cond_12

    const/4 v10, 0x0

    goto :goto_10

    :cond_12
    iget-object v11, v10, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->b:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    const/4 v13, 0x0

    iput-object v13, v10, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->b:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    iget-object v13, v10, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->d:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    :goto_f
    move-object/from16 v18, v13

    move-object v13, v11

    move-object/from16 v11, v18

    if-eqz v11, :cond_13

    iput-object v13, v11, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->b:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    iget-object v13, v11, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->c:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    goto :goto_f

    :cond_13
    iput-object v13, v6, Lcom/squareup/moshi/LinkedHashTreeMap$AvlIterator;->a:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    :goto_10
    if-eqz v10, :cond_15

    iget v11, v10, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->h:I

    and-int/2addr v11, v3

    if-nez v11, :cond_14

    invoke-virtual {v7, v10}, Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder;->a(Lcom/squareup/moshi/LinkedHashTreeMap$Node;)V

    goto :goto_e

    :cond_14
    invoke-virtual {v9, v10}, Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder;->a(Lcom/squareup/moshi/LinkedHashTreeMap$Node;)V

    goto :goto_e

    :cond_15
    if-lez v14, :cond_17

    iget-object v10, v7, Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder;->a:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    iget-object v11, v10, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->b:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    if-nez v11, :cond_16

    const/16 v17, 0x0

    goto :goto_11

    :cond_16
    invoke-static {}, Lr81;->b()V

    const/16 v17, 0x0

    return-object v17

    :cond_17
    const/16 v17, 0x0

    move-object/from16 v10, v17

    :goto_11
    aput-object v10, v5, v12

    add-int v10, v12, v3

    if-lez v15, :cond_19

    iget-object v11, v9, Lcom/squareup/moshi/LinkedHashTreeMap$AvlBuilder;->a:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    iget-object v13, v11, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->b:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    if-nez v13, :cond_18

    goto :goto_12

    :cond_18
    invoke-static {}, Lr81;->b()V

    return-object v17

    :cond_19
    move-object/from16 v11, v17

    :goto_12
    aput-object v11, v5, v10

    :goto_13
    add-int/lit8 v12, v12, 0x1

    move/from16 v8, v16

    move-object/from16 v10, v17

    goto/16 :goto_7

    :cond_1a
    move/from16 v16, v8

    iput-object v5, v0, Lcom/squareup/moshi/LinkedHashTreeMap;->c:[Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    div-int/lit8 v2, v4, 0x2

    div-int/lit8 v4, v4, 0x4

    add-int/2addr v4, v2

    iput v4, v0, Lcom/squareup/moshi/LinkedHashTreeMap;->g:I

    goto :goto_14

    :cond_1b
    move/from16 v16, v8

    :goto_14
    iget v2, v0, Lcom/squareup/moshi/LinkedHashTreeMap;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/squareup/moshi/LinkedHashTreeMap;->f:I

    return-object v1
.end method

.method public final c(Lcom/squareup/moshi/LinkedHashTreeMap$Node;Z)V
    .locals 7

    :goto_0
    if-eqz p1, :cond_e

    iget-object v0, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->c:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    iget-object v1, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->d:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v3, v0, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->j:I

    goto :goto_1

    :cond_0
    move v3, v2

    :goto_1
    if-eqz v1, :cond_1

    iget v4, v1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->j:I

    goto :goto_2

    :cond_1
    move v4, v2

    :goto_2
    sub-int v5, v3, v4

    const/4 v6, -0x2

    if-ne v5, v6, :cond_6

    iget-object v0, v1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->c:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    iget-object v3, v1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->d:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    if-eqz v3, :cond_2

    iget v3, v3, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->j:I

    goto :goto_3

    :cond_2
    move v3, v2

    :goto_3
    if-eqz v0, :cond_3

    iget v2, v0, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->j:I

    :cond_3
    sub-int/2addr v2, v3

    const/4 v0, -0x1

    if-eq v2, v0, :cond_5

    if-nez v2, :cond_4

    if-eqz p2, :cond_5

    :cond_4
    invoke-virtual {p0, v1}, Lcom/squareup/moshi/LinkedHashTreeMap;->g(Lcom/squareup/moshi/LinkedHashTreeMap$Node;)V

    :cond_5
    invoke-virtual {p0, p1}, Lcom/squareup/moshi/LinkedHashTreeMap;->f(Lcom/squareup/moshi/LinkedHashTreeMap$Node;)V

    if-eqz p2, :cond_d

    goto :goto_5

    :cond_6
    const/4 v1, 0x2

    const/4 v6, 0x1

    if-ne v5, v1, :cond_b

    iget-object v1, v0, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->c:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    iget-object v3, v0, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->d:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    if-eqz v3, :cond_7

    iget v3, v3, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->j:I

    goto :goto_4

    :cond_7
    move v3, v2

    :goto_4
    if-eqz v1, :cond_8

    iget v2, v1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->j:I

    :cond_8
    sub-int/2addr v2, v3

    if-eq v2, v6, :cond_a

    if-nez v2, :cond_9

    if-eqz p2, :cond_a

    :cond_9
    invoke-virtual {p0, v0}, Lcom/squareup/moshi/LinkedHashTreeMap;->f(Lcom/squareup/moshi/LinkedHashTreeMap$Node;)V

    :cond_a
    invoke-virtual {p0, p1}, Lcom/squareup/moshi/LinkedHashTreeMap;->g(Lcom/squareup/moshi/LinkedHashTreeMap$Node;)V

    if-eqz p2, :cond_d

    goto :goto_5

    :cond_b
    if-nez v5, :cond_c

    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->j:I

    if-eqz p2, :cond_d

    goto :goto_5

    :cond_c
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v6

    iput v0, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->j:I

    if-nez p2, :cond_d

    goto :goto_5

    :cond_d
    iget-object p1, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->b:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    goto :goto_0

    :cond_e
    :goto_5
    return-void
.end method

.method public final clear()V
    .locals 3

    iget-object v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap;->c:[Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap;->e:I

    iget v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap;->f:I

    iget-object p0, p0, Lcom/squareup/moshi/LinkedHashTreeMap;->d:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    iget-object v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->e:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    :goto_0
    if-eq v0, p0, :cond_0

    iget-object v2, v0, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->e:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    iput-object v1, v0, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->f:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    iput-object v1, v0, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->e:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    move-object v0, v2

    goto :goto_0

    :cond_0
    iput-object p0, p0, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->f:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    iput-object p0, p0, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->e:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/squareup/moshi/LinkedHashTreeMap;->a(Ljava/lang/Object;Z)Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public final d(Lcom/squareup/moshi/LinkedHashTreeMap$Node;Z)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->f:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    iget-object v1, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->e:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    iput-object v1, p2, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->e:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    iget-object v1, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->e:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    iput-object p2, v1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->f:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    iput-object v0, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->f:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    iput-object v0, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->e:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    :cond_0
    iget-object p2, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->c:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    iget-object v1, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->d:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    iget-object v2, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->b:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    const/4 v3, 0x0

    if-eqz p2, :cond_6

    if-eqz v1, :cond_6

    iget v2, p2, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->j:I

    iget v4, v1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->j:I

    if-le v2, v4, :cond_1

    iget-object v1, p2, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->d:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    :goto_0
    move-object v5, v1

    move-object v1, p2

    move-object p2, v5

    if-eqz p2, :cond_3

    iget-object v1, p2, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->d:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    goto :goto_0

    :cond_1
    iget-object p2, v1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->c:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    :goto_1
    move-object v5, v1

    move-object v1, p2

    move-object p2, v5

    if-eqz v1, :cond_2

    iget-object p2, v1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->c:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    goto :goto_1

    :cond_2
    move-object v1, p2

    :cond_3
    invoke-virtual {p0, v1, v3}, Lcom/squareup/moshi/LinkedHashTreeMap;->d(Lcom/squareup/moshi/LinkedHashTreeMap$Node;Z)V

    iget-object p2, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->c:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    if-eqz p2, :cond_4

    iget v2, p2, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->j:I

    iput-object p2, v1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->c:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    iput-object v1, p2, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->b:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    iput-object v0, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->c:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    iget-object p2, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->d:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    if-eqz p2, :cond_5

    iget v3, p2, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->j:I

    iput-object p2, v1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->d:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    iput-object v1, p2, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->b:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    iput-object v0, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->d:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    :cond_5
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    iput p2, v1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->j:I

    invoke-virtual {p0, p1, v1}, Lcom/squareup/moshi/LinkedHashTreeMap;->e(Lcom/squareup/moshi/LinkedHashTreeMap$Node;Lcom/squareup/moshi/LinkedHashTreeMap$Node;)V

    return-void

    :cond_6
    if-eqz p2, :cond_7

    invoke-virtual {p0, p1, p2}, Lcom/squareup/moshi/LinkedHashTreeMap;->e(Lcom/squareup/moshi/LinkedHashTreeMap$Node;Lcom/squareup/moshi/LinkedHashTreeMap$Node;)V

    iput-object v0, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->c:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    goto :goto_3

    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {p0, p1, v1}, Lcom/squareup/moshi/LinkedHashTreeMap;->e(Lcom/squareup/moshi/LinkedHashTreeMap$Node;Lcom/squareup/moshi/LinkedHashTreeMap$Node;)V

    iput-object v0, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->d:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    goto :goto_3

    :cond_8
    invoke-virtual {p0, p1, v0}, Lcom/squareup/moshi/LinkedHashTreeMap;->e(Lcom/squareup/moshi/LinkedHashTreeMap$Node;Lcom/squareup/moshi/LinkedHashTreeMap$Node;)V

    :goto_3
    invoke-virtual {p0, v2, v3}, Lcom/squareup/moshi/LinkedHashTreeMap;->c(Lcom/squareup/moshi/LinkedHashTreeMap$Node;Z)V

    iget p1, p0, Lcom/squareup/moshi/LinkedHashTreeMap;->e:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/squareup/moshi/LinkedHashTreeMap;->e:I

    iget p1, p0, Lcom/squareup/moshi/LinkedHashTreeMap;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/squareup/moshi/LinkedHashTreeMap;->f:I

    return-void
.end method

.method public final e(Lcom/squareup/moshi/LinkedHashTreeMap$Node;Lcom/squareup/moshi/LinkedHashTreeMap$Node;)V
    .locals 2

    iget-object v0, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->b:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->b:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    if-eqz p2, :cond_0

    iput-object v0, p2, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->b:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    :cond_0
    if-eqz v0, :cond_2

    iget-object p0, v0, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->c:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    if-ne p0, p1, :cond_1

    iput-object p2, v0, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->c:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    return-void

    :cond_1
    iput-object p2, v0, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->d:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    return-void

    :cond_2
    iget p1, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->h:I

    iget-object p0, p0, Lcom/squareup/moshi/LinkedHashTreeMap;->c:[Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    and-int/2addr p1, v0

    aput-object p2, p0, p1

    return-void
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap;->h:Lcom/squareup/moshi/LinkedHashTreeMap$EntrySet;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/squareup/moshi/LinkedHashTreeMap$EntrySet;

    invoke-direct {v0, p0}, Lcom/squareup/moshi/LinkedHashTreeMap$EntrySet;-><init>(Lcom/squareup/moshi/LinkedHashTreeMap;)V

    iput-object v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap;->h:Lcom/squareup/moshi/LinkedHashTreeMap$EntrySet;

    return-object v0
.end method

.method public final f(Lcom/squareup/moshi/LinkedHashTreeMap$Node;)V
    .locals 4

    iget-object v0, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->c:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    iget-object v1, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->d:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    iget-object v2, v1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->c:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    iget-object v3, v1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->d:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    iput-object v2, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->d:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    if-eqz v2, :cond_0

    iput-object p1, v2, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->b:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/squareup/moshi/LinkedHashTreeMap;->e(Lcom/squareup/moshi/LinkedHashTreeMap$Node;Lcom/squareup/moshi/LinkedHashTreeMap$Node;)V

    iput-object p1, v1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->c:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    iput-object v1, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->b:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    const/4 p0, 0x0

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->j:I

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    if-eqz v2, :cond_2

    iget v2, v2, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->j:I

    goto :goto_1

    :cond_2
    move v2, p0

    :goto_1
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->j:I

    if-eqz v3, :cond_3

    iget p0, v3, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->j:I

    :cond_3
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    iput p0, v1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->j:I

    return-void
.end method

.method public final g(Lcom/squareup/moshi/LinkedHashTreeMap$Node;)V
    .locals 4

    iget-object v0, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->c:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    iget-object v1, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->d:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    iget-object v2, v0, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->c:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    iget-object v3, v0, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->d:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    iput-object v3, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->c:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    if-eqz v3, :cond_0

    iput-object p1, v3, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->b:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/squareup/moshi/LinkedHashTreeMap;->e(Lcom/squareup/moshi/LinkedHashTreeMap$Node;Lcom/squareup/moshi/LinkedHashTreeMap$Node;)V

    iput-object p1, v0, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->d:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    iput-object v0, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->b:Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    const/4 p0, 0x0

    if-eqz v1, :cond_1

    iget v1, v1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->j:I

    goto :goto_0

    :cond_1
    move v1, p0

    :goto_0
    if-eqz v3, :cond_2

    iget v3, v3, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->j:I

    goto :goto_1

    :cond_2
    move v3, p0

    :goto_1
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->j:I

    if-eqz v2, :cond_3

    iget p0, v2, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->j:I

    :cond_3
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    iput p0, v0, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->j:I

    return-void
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/squareup/moshi/LinkedHashTreeMap;->a(Ljava/lang/Object;Z)Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->i:Ljava/lang/Object;

    return-object p0

    :cond_1
    return-object v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap;->i:Lcom/squareup/moshi/LinkedHashTreeMap$KeySet;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/squareup/moshi/LinkedHashTreeMap$KeySet;

    invoke-direct {v0, p0}, Lcom/squareup/moshi/LinkedHashTreeMap$KeySet;-><init>(Lcom/squareup/moshi/LinkedHashTreeMap;)V

    iput-object v0, p0, Lcom/squareup/moshi/LinkedHashTreeMap;->i:Lcom/squareup/moshi/LinkedHashTreeMap$KeySet;

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/squareup/moshi/LinkedHashTreeMap;->a(Ljava/lang/Object;Z)Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    move-result-object p0

    iget-object p1, p0, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->i:Ljava/lang/Object;

    iput-object p2, p0, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->i:Ljava/lang/Object;

    return-object p1

    :cond_0
    const-string p0, "key == null"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/squareup/moshi/LinkedHashTreeMap;->a(Ljava/lang/Object;Z)Lcom/squareup/moshi/LinkedHashTreeMap$Node;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/squareup/moshi/LinkedHashTreeMap;->d(Lcom/squareup/moshi/LinkedHashTreeMap$Node;Z)V

    :cond_1
    if-eqz p1, :cond_2

    iget-object p0, p1, Lcom/squareup/moshi/LinkedHashTreeMap$Node;->i:Ljava/lang/Object;

    return-object p0

    :cond_2
    return-object v0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lcom/squareup/moshi/LinkedHashTreeMap;->e:I

    return p0
.end method
