.class final Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/crypto/tink/shaded/protobuf/Schema;


# annotations
.annotation runtime Lcom/google/crypto/tink/shaded/protobuf/CheckReturnValue;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/crypto/tink/shaded/protobuf/Schema<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final q:[I

.field public static final r:Lsun/misc/Unsafe;


# instance fields
.field public final a:[I

.field public final b:[Ljava/lang/Object;

.field public final c:I

.field public final d:I

.field public final e:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:[I

.field public final j:I

.field public final k:I

.field public final l:Lcom/google/crypto/tink/shaded/protobuf/NewInstanceSchema;

.field public final m:Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;

.field public final n:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;

.field public final o:Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;

.field public final p:Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->q:[I

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->j()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->r:Lsun/misc/Unsafe;

    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IILcom/google/crypto/tink/shaded/protobuf/MessageLite;Z[IIILcom/google/crypto/tink/shaded/protobuf/NewInstanceSchema;Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->a:[I

    iput-object p2, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->b:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->c:I

    iput p4, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->d:I

    instance-of p1, p5, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    iput-boolean p1, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->g:Z

    iput-boolean p6, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->h:Z

    if-eqz p13, :cond_0

    instance-of p1, p5, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->f:Z

    iput-object p7, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->i:[I

    iput p8, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->j:I

    iput p9, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->k:I

    iput-object p10, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->l:Lcom/google/crypto/tink/shaded/protobuf/NewInstanceSchema;

    iput-object p11, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->m:Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;

    iput-object p12, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->n:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;

    iput-object p13, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->o:Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;

    iput-object p5, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->e:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    iput-object p14, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->p:Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;

    return-void
.end method

.method public static C(Lcom/google/crypto/tink/shaded/protobuf/MessageInfo;Lcom/google/crypto/tink/shaded/protobuf/NewInstanceSchema;Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;)Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;
    .locals 1

    instance-of v0, p0, Lcom/google/crypto/tink/shaded/protobuf/RawMessageInfo;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/RawMessageInfo;

    invoke-static/range {p0 .. p5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->D(Lcom/google/crypto/tink/shaded/protobuf/RawMessageInfo;Lcom/google/crypto/tink/shaded/protobuf/NewInstanceSchema;Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;)Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lr81;->h()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static D(Lcom/google/crypto/tink/shaded/protobuf/RawMessageInfo;Lcom/google/crypto/tink/shaded/protobuf/NewInstanceSchema;Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;)Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;
    .locals 34

    move-object/from16 v0, p0

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/RawMessageInfo;->c()Lcom/google/crypto/tink/shaded/protobuf/ProtoSyntax;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/shaded/protobuf/ProtoSyntax;->PROTO3:Lcom/google/crypto/tink/shaded/protobuf/ProtoSyntax;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    move v11, v3

    :goto_0
    iget-object v1, v0, Lcom/google/crypto/tink/shaded/protobuf/RawMessageInfo;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v6, 0xd800

    if-lt v5, v6, :cond_1

    const/4 v5, 0x1

    :goto_1
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_2

    move v5, v7

    goto :goto_1

    :cond_1
    const/4 v7, 0x1

    :cond_2
    add-int/lit8 v5, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_4

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_2
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_3

    and-int/lit16 v5, v5, 0x1fff

    shl-int/2addr v5, v9

    or-int/2addr v7, v5

    add-int/lit8 v9, v9, 0xd

    move v5, v10

    goto :goto_2

    :cond_3
    shl-int/2addr v5, v9

    or-int/2addr v7, v5

    move v5, v10

    :cond_4
    if-nez v7, :cond_5

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->q:[I

    move v9, v3

    move v10, v9

    move v13, v10

    move v14, v13

    move v15, v14

    move-object v12, v7

    move v7, v15

    :goto_3
    const/16 v16, 0x1

    goto/16 :goto_c

    :cond_5
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_7

    and-int/lit16 v5, v5, 0x1fff

    const/16 v9, 0xd

    :goto_4
    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_6

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v9

    or-int/2addr v5, v7

    add-int/lit8 v9, v9, 0xd

    move v7, v10

    goto :goto_4

    :cond_6
    shl-int/2addr v7, v9

    or-int/2addr v5, v7

    move v7, v10

    :cond_7
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_9

    and-int/lit16 v7, v7, 0x1fff

    const/16 v10, 0xd

    :goto_5
    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_8

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    add-int/lit8 v10, v10, 0xd

    move v9, v12

    goto :goto_5

    :cond_8
    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    move v9, v12

    :cond_9
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_b

    and-int/lit16 v9, v9, 0x1fff

    const/16 v12, 0xd

    :goto_6
    add-int/lit8 v13, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_a

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v12

    or-int/2addr v9, v10

    add-int/lit8 v12, v12, 0xd

    move v10, v13

    goto :goto_6

    :cond_a
    shl-int/2addr v10, v12

    or-int/2addr v9, v10

    move v10, v13

    :cond_b
    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_d

    and-int/lit16 v10, v10, 0x1fff

    const/16 v13, 0xd

    :goto_7
    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_c

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v10, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_7

    :cond_c
    shl-int/2addr v12, v13

    or-int/2addr v10, v12

    move v12, v14

    :cond_d
    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_f

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_8
    add-int/lit8 v15, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_e

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_8

    :cond_e
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_f
    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_11

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_9
    add-int/lit8 v16, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_10

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_9

    :cond_10
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_11
    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_13

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_a
    add-int/lit8 v17, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_12

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_a

    :cond_12
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_13
    add-int/lit8 v16, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_15

    and-int/lit16 v15, v15, 0x1fff

    move/from16 v3, v16

    const/16 v16, 0xd

    :goto_b
    add-int/lit8 v18, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v6, :cond_14

    and-int/lit16 v3, v3, 0x1fff

    shl-int v3, v3, v16

    or-int/2addr v15, v3

    add-int/lit8 v16, v16, 0xd

    move/from16 v3, v18

    goto :goto_b

    :cond_14
    shl-int v3, v3, v16

    or-int/2addr v15, v3

    move/from16 v16, v18

    :cond_15
    add-int v3, v15, v13

    add-int/2addr v3, v14

    new-array v3, v3, [I

    mul-int/lit8 v14, v5, 0x2

    add-int/2addr v14, v7

    move v7, v12

    move-object v12, v3

    move v3, v5

    move/from16 v5, v16

    goto/16 :goto_3

    :goto_c
    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->r:Lsun/misc/Unsafe;

    iget-object v8, v0, Lcom/google/crypto/tink/shaded/protobuf/RawMessageInfo;->c:[Ljava/lang/Object;

    iget-object v6, v0, Lcom/google/crypto/tink/shaded/protobuf/RawMessageInfo;->a:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    move/from16 v20, v3

    mul-int/lit8 v3, v7, 0x3

    new-array v3, v3, [I

    mul-int/lit8 v7, v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    add-int/2addr v13, v15

    move/from16 v24, v13

    move/from16 v23, v15

    const/16 v21, 0x0

    const/16 v22, 0x0

    :goto_d
    if-ge v5, v2, :cond_32

    add-int/lit8 v25, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move/from16 v26, v2

    const v2, 0xd800

    if-lt v5, v2, :cond_17

    and-int/lit16 v5, v5, 0x1fff

    move/from16 v2, v25

    const/16 v25, 0xd

    :goto_e
    add-int/lit8 v27, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move-object/from16 v28, v3

    const v3, 0xd800

    if-lt v2, v3, :cond_16

    and-int/lit16 v2, v2, 0x1fff

    shl-int v2, v2, v25

    or-int/2addr v5, v2

    add-int/lit8 v25, v25, 0xd

    move/from16 v2, v27

    move-object/from16 v3, v28

    goto :goto_e

    :cond_16
    shl-int v2, v2, v25

    or-int/2addr v5, v2

    move/from16 v2, v27

    goto :goto_f

    :cond_17
    move-object/from16 v28, v3

    move/from16 v2, v25

    :goto_f
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move/from16 v25, v3

    const v3, 0xd800

    if-lt v2, v3, :cond_19

    and-int/lit16 v2, v2, 0x1fff

    move/from16 v3, v25

    const/16 v25, 0xd

    :goto_10
    add-int/lit8 v27, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move/from16 v29, v2

    const v2, 0xd800

    if-lt v3, v2, :cond_18

    and-int/lit16 v2, v3, 0x1fff

    shl-int v2, v2, v25

    or-int v2, v29, v2

    add-int/lit8 v25, v25, 0xd

    move/from16 v3, v27

    goto :goto_10

    :cond_18
    shl-int v2, v3, v25

    or-int v2, v29, v2

    move/from16 v3, v27

    goto :goto_11

    :cond_19
    move/from16 v3, v25

    :goto_11
    move/from16 v25, v5

    and-int/lit16 v5, v2, 0xff

    move-object/from16 v27, v7

    and-int/lit16 v7, v2, 0x400

    if-eqz v7, :cond_1a

    add-int/lit8 v7, v21, 0x1

    aput v22, v12, v21

    move/from16 v21, v7

    :cond_1a
    const/16 v7, 0x33

    move-object/from16 v31, v8

    if-lt v5, v7, :cond_22

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const v8, 0xd800

    if-lt v3, v8, :cond_1c

    and-int/lit16 v3, v3, 0x1fff

    const/16 v32, 0xd

    :goto_12
    add-int/lit8 v33, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v8, :cond_1b

    and-int/lit16 v7, v7, 0x1fff

    shl-int v7, v7, v32

    or-int/2addr v3, v7

    add-int/lit8 v32, v32, 0xd

    move/from16 v7, v33

    const v8, 0xd800

    goto :goto_12

    :cond_1b
    shl-int v7, v7, v32

    or-int/2addr v3, v7

    move/from16 v7, v33

    :cond_1c
    add-int/lit8 v8, v5, -0x33

    move/from16 v32, v3

    const/16 v3, 0x9

    if-eq v8, v3, :cond_1e

    const/16 v3, 0x11

    if-ne v8, v3, :cond_1d

    goto :goto_14

    :cond_1d
    const/16 v3, 0xc

    if-ne v8, v3, :cond_1f

    if-nez v11, :cond_1f

    div-int/lit8 v3, v22, 0x3

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v8, v14, 0x1

    aget-object v14, v31, v14

    aput-object v14, v27, v3

    :goto_13
    move v14, v8

    goto :goto_15

    :cond_1e
    :goto_14
    div-int/lit8 v3, v22, 0x3

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v8, v14, 0x1

    aget-object v14, v31, v14

    aput-object v14, v27, v3

    goto :goto_13

    :cond_1f
    :goto_15
    mul-int/lit8 v3, v32, 0x2

    aget-object v8, v31, v3

    move/from16 v29, v3

    instance-of v3, v8, Ljava/lang/reflect/Field;

    if-eqz v3, :cond_20

    check-cast v8, Ljava/lang/reflect/Field;

    :goto_16
    move v3, v7

    goto :goto_17

    :cond_20
    check-cast v8, Ljava/lang/String;

    invoke-static {v6, v8}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->N(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    aput-object v8, v31, v29

    goto :goto_16

    :goto_17
    invoke-virtual {v4, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v7

    long-to-int v7, v7

    add-int/lit8 v8, v29, 0x1

    move/from16 v29, v3

    aget-object v3, v31, v8

    move/from16 v30, v7

    instance-of v7, v3, Ljava/lang/reflect/Field;

    if-eqz v7, :cond_21

    check-cast v3, Ljava/lang/reflect/Field;

    goto :goto_18

    :cond_21
    check-cast v3, Ljava/lang/String;

    invoke-static {v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->N(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    aput-object v3, v31, v8

    :goto_18
    invoke-virtual {v4, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v7

    long-to-int v3, v7

    move/from16 v7, v30

    move/from16 v30, v29

    move/from16 v29, v7

    move v7, v3

    const/4 v3, 0x0

    goto/16 :goto_22

    :cond_22
    add-int/lit8 v7, v14, 0x1

    aget-object v8, v31, v14

    check-cast v8, Ljava/lang/String;

    invoke-static {v6, v8}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->N(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    move/from16 v32, v7

    const/16 v7, 0x9

    if-eq v5, v7, :cond_29

    const/16 v7, 0x11

    if-ne v5, v7, :cond_23

    goto :goto_1c

    :cond_23
    const/16 v7, 0x1b

    if-eq v5, v7, :cond_28

    const/16 v7, 0x31

    if-ne v5, v7, :cond_24

    goto :goto_1b

    :cond_24
    const/16 v7, 0xc

    if-eq v5, v7, :cond_27

    const/16 v7, 0x1e

    if-eq v5, v7, :cond_27

    const/16 v7, 0x2c

    if-ne v5, v7, :cond_25

    goto :goto_1a

    :cond_25
    const/16 v7, 0x32

    if-ne v5, v7, :cond_2a

    add-int/lit8 v7, v23, 0x1

    aput v22, v12, v23

    div-int/lit8 v23, v22, 0x3

    mul-int/lit8 v23, v23, 0x2

    add-int/lit8 v29, v14, 0x2

    aget-object v30, v31, v32

    aput-object v30, v27, v23

    move/from16 v30, v7

    and-int/lit16 v7, v2, 0x800

    if-eqz v7, :cond_26

    add-int/lit8 v23, v23, 0x1

    add-int/lit8 v7, v14, 0x3

    aget-object v14, v31, v29

    aput-object v14, v27, v23

    move v14, v7

    :goto_19
    move/from16 v23, v30

    goto :goto_1d

    :cond_26
    move/from16 v14, v29

    goto :goto_19

    :cond_27
    :goto_1a
    if-nez v11, :cond_2a

    div-int/lit8 v7, v22, 0x3

    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v14, v14, 0x2

    aget-object v29, v31, v32

    aput-object v29, v27, v7

    goto :goto_1d

    :cond_28
    :goto_1b
    div-int/lit8 v7, v22, 0x3

    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v14, v14, 0x2

    aget-object v29, v31, v32

    aput-object v29, v27, v7

    goto :goto_1d

    :cond_29
    :goto_1c
    div-int/lit8 v7, v22, 0x3

    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v14

    aput-object v14, v27, v7

    :cond_2a
    move/from16 v14, v32

    :goto_1d
    invoke-virtual {v4, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v7

    long-to-int v7, v7

    and-int/lit16 v8, v2, 0x1000

    move/from16 v29, v7

    const/16 v7, 0x1000

    if-ne v8, v7, :cond_2e

    const/16 v7, 0x11

    if-gt v5, v7, :cond_2e

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const v8, 0xd800

    if-lt v3, v8, :cond_2c

    and-int/lit16 v3, v3, 0x1fff

    const/16 v19, 0xd

    :goto_1e
    add-int/lit8 v30, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v8, :cond_2b

    and-int/lit16 v7, v7, 0x1fff

    shl-int v7, v7, v19

    or-int/2addr v3, v7

    add-int/lit8 v19, v19, 0xd

    move/from16 v7, v30

    goto :goto_1e

    :cond_2b
    shl-int v7, v7, v19

    or-int/2addr v3, v7

    goto :goto_1f

    :cond_2c
    move/from16 v30, v7

    :goto_1f
    mul-int/lit8 v7, v20, 0x2

    div-int/lit8 v19, v3, 0x20

    add-int v19, v19, v7

    aget-object v7, v31, v19

    instance-of v8, v7, Ljava/lang/reflect/Field;

    if-eqz v8, :cond_2d

    check-cast v7, Ljava/lang/reflect/Field;

    goto :goto_20

    :cond_2d
    check-cast v7, Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->N(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    aput-object v7, v31, v19

    :goto_20
    invoke-virtual {v4, v7}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v7

    long-to-int v7, v7

    rem-int/lit8 v3, v3, 0x20

    goto :goto_21

    :cond_2e
    const v7, 0xfffff

    move/from16 v30, v3

    const/4 v3, 0x0

    :goto_21
    const/16 v8, 0x12

    if-lt v5, v8, :cond_2f

    const/16 v8, 0x31

    if-gt v5, v8, :cond_2f

    add-int/lit8 v8, v24, 0x1

    aput v29, v12, v24

    move/from16 v24, v8

    :cond_2f
    :goto_22
    add-int/lit8 v8, v22, 0x1

    aput v25, v28, v22

    add-int/lit8 v19, v22, 0x2

    move-object/from16 v25, v1

    and-int/lit16 v1, v2, 0x200

    if-eqz v1, :cond_30

    const/high16 v1, 0x20000000

    goto :goto_23

    :cond_30
    const/4 v1, 0x0

    :goto_23
    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_31

    const/high16 v2, 0x10000000

    goto :goto_24

    :cond_31
    const/4 v2, 0x0

    :goto_24
    or-int/2addr v1, v2

    shl-int/lit8 v2, v5, 0x14

    or-int/2addr v1, v2

    or-int v1, v1, v29

    aput v1, v28, v8

    add-int/lit8 v22, v22, 0x3

    shl-int/lit8 v1, v3, 0x14

    or-int/2addr v1, v7

    aput v1, v28, v19

    move-object/from16 v1, v25

    move/from16 v2, v26

    move-object/from16 v7, v27

    move-object/from16 v3, v28

    move/from16 v5, v30

    move-object/from16 v8, v31

    goto/16 :goto_d

    :cond_32
    move-object/from16 v28, v3

    move-object/from16 v27, v7

    new-instance v5, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;

    iget-object v0, v0, Lcom/google/crypto/tink/shaded/protobuf/RawMessageInfo;->a:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    move v8, v9

    move v9, v10

    move v14, v13

    move v13, v15

    move-object/from16 v6, v28

    move-object/from16 v15, p1

    move-object v10, v0

    invoke-direct/range {v5 .. v19}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;-><init>([I[Ljava/lang/Object;IILcom/google/crypto/tink/shaded/protobuf/MessageLite;Z[IIILcom/google/crypto/tink/shaded/protobuf/NewInstanceSchema;Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;)V

    return-object v5
.end method

.method public static E(I)J
    .locals 2

    const v0, 0xfffff

    and-int/2addr p0, v0

    int-to-long v0, p0

    return-wide v0
.end method

.method public static F(JLjava/lang/Object;)I
    .locals 1

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static G(JLjava/lang/Object;)J
    .locals 1

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static N(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Field "

    const-string v3, " for "

    invoke-static {v2, p1, v3}, Lpq0;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " not found. Known fields are "

    invoke-static {p0, p1, v2}, Lo60;->z(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static T(I)I
    .locals 1

    const/high16 v0, 0xff00000

    and-int/2addr p0, v0

    ushr-int/lit8 p0, p0, 0x14

    return p0
.end method

.method public static X(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Writer;)V
    .locals 1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->e(ILjava/lang/String;)V

    return-void

    :cond_0
    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    invoke-interface {p2, p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->L(ILcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return-void
.end method

.method public static l(Ljava/lang/Object;)V
    .locals 1

    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->u(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Mutating immutable message: "

    invoke-static {p0, v0}, Lcj;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method

.method public static q(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;
    .locals 2

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;->f:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;->c()Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    :cond_0
    return-object v0
.end method

.method public static u(Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of v0, p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->v()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static w(Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite;J)Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p1, p2, p0}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final A(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->p(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->U(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/Schema;->b()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->r:Lsun/misc/Unsafe;

    invoke-virtual {p0, p2, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->u(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/Schema;->b()Ljava/lang/Object;

    move-result-object p1

    if-eqz p0, :cond_2

    invoke-interface {v0, p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/Schema;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p1
.end method

.method public final B(IILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->p(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/Schema;->b()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->r:Lsun/misc/Unsafe;

    invoke-virtual {p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->U(I)I

    move-result p0

    const p2, 0xfffff

    and-int/2addr p0, p2

    int-to-long v1, p0

    invoke-virtual {p1, p3, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->u(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    invoke-interface {v0}, Lcom/google/crypto/tink/shaded/protobuf/Schema;->b()Ljava/lang/Object;

    move-result-object p1

    if-eqz p0, :cond_2

    invoke-interface {v0, p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/Schema;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p1
.end method

.method public final H(Ljava/lang/Object;[BIIIJLcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I
    .locals 0

    sget-object p2, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->r:Lsun/misc/Unsafe;

    invoke-virtual {p0, p5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->o(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p1, p6, p7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p4

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->p:Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;

    invoke-interface {p0, p4}, Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;->g(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_0

    invoke-interface {p0}, Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;->f()Lcom/google/crypto/tink/shaded/protobuf/MapFieldLite;

    move-result-object p5

    invoke-interface {p0, p5, p4}, Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/MapFieldLite;

    invoke-virtual {p2, p1, p6, p7, p5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_0
    invoke-interface {p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;->b(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;

    const/4 p0, 0x0

    throw p0
.end method

.method public final I(Ljava/lang/Object;[BIIIIIIIJILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I
    .locals 14

    move/from16 v1, p5

    move/from16 v8, p6

    move/from16 v2, p7

    move-wide/from16 v3, p10

    move/from16 v9, p12

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->r:Lsun/misc/Unsafe;

    add-int/lit8 v6, v9, 0x2

    iget-object v7, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->a:[I

    aget v6, v7, v6

    const v7, 0xfffff

    and-int/2addr v6, v7

    int-to-long v6, v6

    const/4 v10, 0x5

    const/4 v11, 0x1

    const/4 v12, 0x2

    packed-switch p9, :pswitch_data_0

    :cond_0
    move/from16 p0, p3

    goto/16 :goto_4

    :pswitch_0
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v8, v9, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->B(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    and-int/lit8 v1, v1, -0x8

    or-int/lit8 v6, v1, 0x4

    invoke-virtual {p0, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->p(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v7, p13

    invoke-virtual/range {v1 .. v7}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->J(Ljava/lang/Object;[BIIILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    move-object v10, v7

    iput-object v2, v10, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    invoke-virtual {p0, p1, v8, v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->S(Ljava/lang/Object;ILjava/lang/Object;I)V

    return v1

    :pswitch_1
    move-object/from16 v13, p2

    move/from16 v11, p3

    move-object/from16 v10, p13

    if-nez v2, :cond_1

    invoke-static {v13, v11, v10}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->k([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    iget-wide v1, v10, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->b:J

    invoke-static {v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->c(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, p1, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v5, p1, v6, v7, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return p0

    :cond_1
    move p0, v11

    goto/16 :goto_4

    :pswitch_2
    move-object/from16 v13, p2

    move/from16 v11, p3

    move-object/from16 v10, p13

    if-nez v2, :cond_1

    invoke-static {v13, v11, v10}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->i([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    iget v1, v10, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->a:I

    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->b(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, p1, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v5, p1, v6, v7, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return p0

    :pswitch_3
    move-object/from16 v13, p2

    move/from16 v11, p3

    move-object/from16 v10, p13

    if-nez v2, :cond_1

    invoke-static {v13, v11, v10}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->i([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    iget v10, v10, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->a:I

    invoke-virtual {p0, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->n(I)Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;->a()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->q(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    move-result-object p0

    int-to-long v3, v10

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;->d(ILjava/lang/Object;)V

    return v2

    :cond_3
    :goto_0
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v5, p1, v3, v4, p0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v5, p1, v6, v7, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_4
    move-object/from16 v13, p2

    move/from16 v11, p3

    move-object/from16 v10, p13

    if-ne v2, v12, :cond_1

    invoke-static {v13, v11, v10}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->a([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    iget-object v1, v10, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    invoke-virtual {v5, p1, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v5, p1, v6, v7, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return p0

    :pswitch_5
    move-object/from16 v13, p2

    move/from16 v11, p3

    move-object/from16 v10, p13

    if-ne v2, v12, :cond_1

    invoke-virtual {p0, v8, v9, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->B(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->p(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v2

    move/from16 v5, p4

    move-object v6, v10

    move v4, v11

    move-object v3, v13

    invoke-static/range {v1 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->l(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Schema;[BIILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    invoke-virtual {p0, p1, v8, v1, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->S(Ljava/lang/Object;ILjava/lang/Object;I)V

    return v2

    :pswitch_6
    move-object/from16 v13, p2

    move/from16 p0, p3

    move-object/from16 v10, p13

    if-ne v2, v12, :cond_8

    invoke-static {v13, p0, v10}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->i([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    iget v1, v10, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->a:I

    if-nez v1, :cond_4

    const-string v1, ""

    invoke-virtual {v5, p1, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_2

    :cond_4
    const/high16 v2, 0x20000000

    and-int v2, p8, v2

    if-eqz v2, :cond_6

    add-int v2, p0, v1

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/Utf8;->a:Lcom/google/crypto/tink/shaded/protobuf/Utf8$Processor;

    invoke-virtual {v9, p0, v2, v13}, Lcom/google/crypto/tink/shaded/protobuf/Utf8$Processor;->c(II[B)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->b()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_6
    :goto_1
    new-instance v2, Ljava/lang/String;

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/Internal;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v13, p0, v1, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v5, p1, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr p0, v1

    :goto_2
    invoke-virtual {v5, p1, v6, v7, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return p0

    :pswitch_7
    move-object/from16 v13, p2

    move/from16 p0, p3

    move-object/from16 v10, p13

    if-nez v2, :cond_8

    invoke-static {v13, p0, v10}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->k([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    iget-wide v1, v10, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->b:J

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-eqz v1, :cond_7

    goto :goto_3

    :cond_7
    const/4 v11, 0x0

    :goto_3
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v5, p1, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v5, p1, v6, v7, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return p0

    :pswitch_8
    move-object/from16 v13, p2

    move/from16 p0, p3

    if-ne v2, v10, :cond_8

    invoke-static {p0, v13}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->b(I[B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, p1, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 p0, p0, 0x4

    invoke-virtual {v5, p1, v6, v7, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return p0

    :pswitch_9
    move-object/from16 v13, p2

    move/from16 p0, p3

    if-ne v2, v11, :cond_8

    invoke-static {p0, v13}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->c(I[B)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, p1, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 p0, p0, 0x8

    invoke-virtual {v5, p1, v6, v7, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return p0

    :pswitch_a
    move-object/from16 v13, p2

    move/from16 p0, p3

    move-object/from16 v10, p13

    if-nez v2, :cond_8

    invoke-static {v13, p0, v10}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->i([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    iget v1, v10, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, p1, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v5, p1, v6, v7, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return p0

    :pswitch_b
    move-object/from16 v13, p2

    move/from16 p0, p3

    move-object/from16 v10, p13

    if-nez v2, :cond_8

    invoke-static {v13, p0, v10}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->k([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    iget-wide v1, v10, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, p1, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {v5, p1, v6, v7, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return p0

    :pswitch_c
    move-object/from16 v13, p2

    move/from16 p0, p3

    if-ne v2, v10, :cond_8

    invoke-static {p0, v13}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->b(I[B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v5, p1, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 p0, p0, 0x4

    invoke-virtual {v5, p1, v6, v7, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return p0

    :pswitch_d
    move-object/from16 v13, p2

    move/from16 p0, p3

    if-ne v2, v11, :cond_8

    invoke-static {p0, v13}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->c(I[B)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v5, p1, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/lit8 p0, p0, 0x8

    invoke-virtual {v5, p1, v6, v7, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_8
    :goto_4
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final J(Ljava/lang/Object;[BIIILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p4

    move/from16 v15, p5

    move-object/from16 v5, p6

    iget-object v9, v5, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->d:Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->l(Ljava/lang/Object;)V

    sget-object v10, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->r:Lsun/misc/Unsafe;

    move/from16 v3, p3

    const/4 v6, -0x1

    const/4 v7, 0x0

    const v8, 0xfffff

    const/4 v14, 0x0

    const/16 v16, 0x0

    :goto_0
    if-ge v3, v4, :cond_20

    const v17, 0xfffff

    add-int/lit8 v11, v3, 0x1

    aget-byte v3, v2, v3

    if-gez v3, :cond_0

    invoke-static {v3, v2, v11, v5}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->h(I[BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v11

    iget v3, v5, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->a:I

    :cond_0
    move/from16 v28, v11

    move v11, v3

    move/from16 v3, v28

    ushr-int/lit8 v13, v11, 0x3

    move/from16 v16, v7

    and-int/lit8 v7, v11, 0x7

    iget v12, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->d:I

    const/16 p3, 0x3

    iget v2, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->c:I

    if-le v13, v6, :cond_2

    div-int/lit8 v6, v16, 0x3

    if-lt v13, v2, :cond_1

    if-gt v13, v12, :cond_1

    invoke-virtual {v0, v13, v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->Q(II)I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    :goto_1
    const/4 v12, 0x0

    :goto_2
    const/4 v6, -0x1

    goto :goto_3

    :cond_2
    if-lt v13, v2, :cond_3

    if-gt v13, v12, :cond_3

    const/4 v12, 0x0

    invoke-virtual {v0, v13, v12}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->Q(II)I

    move-result v2

    goto :goto_2

    :cond_3
    const/4 v12, 0x0

    const/4 v2, -0x1

    goto :goto_2

    :goto_3
    if-ne v2, v6, :cond_4

    move v2, v3

    move/from16 v18, v6

    move-object/from16 v26, v9

    move-object/from16 v27, v10

    move v7, v12

    move/from16 v19, v7

    move v6, v13

    move-object v9, v0

    move-object v10, v1

    :goto_4
    move v0, v11

    goto/16 :goto_1b

    :cond_4
    add-int/lit8 v16, v2, 0x1

    iget-object v6, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->a:[I

    aget v12, v6, v16

    move/from16 v16, v3

    invoke-static {v12}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->T(I)I

    move-result v3

    and-int v4, v12, v17

    int-to-long v4, v4

    move-wide/from16 v20, v4

    const/16 v4, 0x11

    if-gt v3, v4, :cond_13

    add-int/lit8 v4, v2, 0x2

    aget v4, v6, v4

    ushr-int/lit8 v6, v4, 0x14

    const/4 v5, 0x1

    shl-int v23, v5, v6

    and-int v4, v4, v17

    if-eq v4, v8, :cond_6

    move/from16 v6, v17

    if-eq v8, v6, :cond_5

    int-to-long v5, v8

    invoke-virtual {v10, v1, v5, v6, v14}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_5
    int-to-long v5, v4

    invoke-virtual {v10, v1, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    move v14, v4

    move/from16 v25, v5

    goto :goto_5

    :cond_6
    move/from16 v25, v14

    move v14, v8

    :goto_5
    const/4 v4, 0x5

    packed-switch v3, :pswitch_data_0

    move-object/from16 v12, p6

    move-object/from16 v20, v9

    move-object v7, v10

    move/from16 v8, v16

    const/16 v18, -0x1

    const v24, 0xfffff

    :goto_6
    move-object/from16 v10, p2

    move v9, v2

    goto/16 :goto_15

    :pswitch_0
    move/from16 v3, p3

    if-ne v7, v3, :cond_7

    invoke-virtual {v0, v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->A(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    shl-int/lit8 v4, v13, 0x3

    or-int/lit8 v7, v4, 0x4

    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->p(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v4

    check-cast v4, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;

    move/from16 v6, p4

    move-object/from16 v8, p6

    move v12, v2

    move-object v2, v4

    move/from16 v5, v16

    const/16 v18, -0x1

    const v24, 0xfffff

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v8}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->J(Ljava/lang/Object;[BIIILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    move-object/from16 v28, v4

    move-object v4, v3

    move-object v3, v8

    move-object/from16 v8, v28

    iput-object v4, v3, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1, v4, v12}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->R(Ljava/lang/Object;Ljava/lang/Object;I)V

    or-int v4, v25, v23

    move-object v5, v3

    move/from16 v16, v11

    move v7, v12

    move v6, v13

    move v3, v2

    :goto_7
    move-object v2, v8

    move v8, v14

    :goto_8
    move v14, v4

    :goto_9
    move/from16 v4, p4

    goto/16 :goto_0

    :cond_7
    const/16 v18, -0x1

    const v24, 0xfffff

    move-object/from16 v12, p6

    move-object/from16 v20, v9

    move-object v7, v10

    move/from16 v8, v16

    goto :goto_6

    :pswitch_1
    move-object/from16 v8, p2

    move-object/from16 v3, p6

    move v12, v2

    move/from16 v4, v16

    const/16 v18, -0x1

    const v24, 0xfffff

    if-nez v7, :cond_8

    invoke-static {v8, v4, v3}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->k([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v7

    iget-wide v4, v3, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->b:J

    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->c(J)J

    move-result-wide v5

    move-object v2, v1

    move-object v1, v10

    move-object v10, v3

    move-wide/from16 v3, v20

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move-object/from16 v28, v2

    move-object v2, v1

    move-object/from16 v1, v28

    or-int v3, v25, v23

    move/from16 v4, p4

    move-object v5, v10

    move/from16 v16, v11

    move v6, v13

    move-object v10, v2

    move-object v2, v8

    move v8, v14

    move v14, v3

    move v3, v7

    move v7, v12

    goto/16 :goto_0

    :cond_8
    move-object v2, v10

    move-object v7, v2

    move-object v10, v8

    move-object/from16 v20, v9

    move v9, v12

    move-object v12, v3

    :goto_a
    move v8, v4

    goto/16 :goto_15

    :pswitch_2
    move-object/from16 v8, p2

    move v12, v2

    move-object v2, v10

    move/from16 v4, v16

    move-wide/from16 v5, v20

    const/16 v18, -0x1

    const v24, 0xfffff

    move-object/from16 v10, p6

    if-nez v7, :cond_9

    invoke-static {v8, v4, v10}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->i([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    iget v4, v10, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->a:I

    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->b(I)I

    move-result v4

    invoke-virtual {v2, v1, v5, v6, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_b
    or-int v4, v25, v23

    move-object v5, v10

    move/from16 v16, v11

    move v7, v12

    move v6, v13

    move-object v10, v2

    goto :goto_7

    :cond_9
    move-object v7, v2

    move-object/from16 v20, v9

    move v9, v12

    move-object v12, v10

    move-object v10, v8

    goto :goto_a

    :pswitch_3
    move-object/from16 v8, p2

    move v12, v2

    move-object v2, v10

    move/from16 v4, v16

    move-wide/from16 v5, v20

    const/16 v18, -0x1

    const v24, 0xfffff

    move-object/from16 v10, p6

    if-nez v7, :cond_9

    invoke-static {v8, v4, v10}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->i([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    iget v4, v10, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->a:I

    invoke-virtual {v0, v12}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->n(I)Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;

    move-result-object v7

    if-eqz v7, :cond_b

    invoke-interface {v7}, Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;->a()Z

    move-result v7

    if-eqz v7, :cond_a

    goto :goto_c

    :cond_a
    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->q(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    move-result-object v5

    int-to-long v6, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v5, v11, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;->d(ILjava/lang/Object;)V

    move/from16 v4, p4

    move-object v5, v10

    move/from16 v16, v11

    move v7, v12

    move v6, v13

    move-object v10, v2

    move-object v2, v8

    move v8, v14

    move/from16 v14, v25

    goto/16 :goto_0

    :cond_b
    :goto_c
    invoke-virtual {v2, v1, v5, v6, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_b

    :pswitch_4
    move-object/from16 v8, p2

    move v12, v2

    move-object v2, v10

    move/from16 v4, v16

    move-wide/from16 v5, v20

    const/4 v3, 0x2

    const/16 v18, -0x1

    const v24, 0xfffff

    move-object/from16 v10, p6

    if-ne v7, v3, :cond_9

    invoke-static {v8, v4, v10}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->a([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    iget-object v4, v10, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    invoke-virtual {v2, v1, v5, v6, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_b

    :pswitch_5
    move-object/from16 v8, p2

    move v12, v2

    move-object v2, v10

    move/from16 v4, v16

    const/4 v3, 0x2

    const/16 v18, -0x1

    const v24, 0xfffff

    move-object/from16 v10, p6

    if-ne v7, v3, :cond_c

    move-object v3, v1

    invoke-virtual {v0, v12, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->A(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v2

    invoke-virtual {v0, v12}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->p(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v2

    move-object v6, v8

    move-object v8, v3

    move-object v3, v6

    move-object v6, v10

    move-object v10, v5

    move/from16 v5, p4

    invoke-static/range {v1 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->l(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Schema;[BIILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    move-object v4, v3

    move-object v3, v1

    move-object v1, v4

    move-object v4, v6

    invoke-virtual {v0, v8, v3, v12}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->R(Ljava/lang/Object;Ljava/lang/Object;I)V

    or-int v3, v25, v23

    move v5, v2

    move-object v2, v1

    move-object v1, v8

    move v8, v14

    move v14, v3

    move v3, v5

    move-object v5, v4

    move/from16 v16, v11

    move v7, v12

    move v6, v13

    goto/16 :goto_9

    :cond_c
    move-object/from16 v28, v8

    move-object v8, v1

    move-object/from16 v1, v28

    move-object/from16 v28, v10

    move-object v10, v2

    move v2, v4

    move-object/from16 v4, v28

    move-object/from16 v20, v9

    move-object v7, v10

    move v9, v12

    move-object v10, v1

    move-object v12, v4

    :goto_d
    move-object v1, v8

    move v8, v2

    goto/16 :goto_15

    :pswitch_6
    move-object/from16 v4, p6

    move-object v8, v1

    move-wide/from16 v5, v20

    const/4 v3, 0x2

    const/16 v18, -0x1

    const v24, 0xfffff

    move-object/from16 v1, p2

    move-object/from16 v20, v9

    move v9, v2

    move/from16 v2, v16

    if-ne v7, v3, :cond_e

    const/high16 v3, 0x20000000

    and-int/2addr v3, v12

    if-nez v3, :cond_d

    invoke-static {v1, v2, v4}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->e([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    :goto_e
    move v3, v2

    goto :goto_f

    :cond_d
    invoke-static {v1, v2, v4}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->f([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    goto :goto_e

    :goto_f
    iget-object v2, v4, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    invoke-virtual {v10, v8, v5, v6, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    or-int v2, v25, v23

    move v5, v2

    move-object v2, v1

    move-object v1, v8

    move v8, v14

    move v14, v5

    :goto_10
    move-object v5, v4

    move v7, v9

    move/from16 v16, v11

    move v6, v13

    move-object/from16 v9, v20

    goto/16 :goto_9

    :cond_e
    move-object v12, v4

    :cond_f
    move-object v7, v10

    move-object v10, v1

    goto :goto_d

    :pswitch_7
    move-object/from16 v4, p6

    move-object v8, v1

    move-wide/from16 v5, v20

    const/16 v18, -0x1

    const v24, 0xfffff

    move-object/from16 v1, p2

    move-object/from16 v20, v9

    move v9, v2

    move/from16 v2, v16

    if-nez v7, :cond_e

    invoke-static {v1, v2, v4}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->k([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    move/from16 p3, v3

    iget-wide v2, v4, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->b:J

    const-wide/16 v21, 0x0

    cmp-long v2, v2, v21

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    sget-object v3, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v3, v8, v5, v6, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->k(Ljava/lang/Object;JZ)V

    or-int v2, v25, v23

    move v3, v2

    move-object v2, v1

    move-object v1, v8

    move v8, v14

    move v14, v3

    move/from16 v3, p3

    goto :goto_10

    :pswitch_8
    move-object/from16 v12, p6

    move-object v8, v1

    move-wide/from16 v5, v20

    const/16 v18, -0x1

    const v24, 0xfffff

    move-object/from16 v1, p2

    move-object/from16 v20, v9

    move v9, v2

    move/from16 v2, v16

    if-ne v7, v4, :cond_f

    invoke-static {v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->b(I[B)I

    move-result v3

    invoke-virtual {v10, v8, v5, v6, v3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v3, v2, 0x4

    or-int v2, v25, v23

    move v4, v2

    move-object v2, v1

    move-object v1, v8

    move v8, v14

    move v14, v4

    move/from16 v4, p4

    move v7, v9

    move/from16 v16, v11

    move-object v5, v12

    move v6, v13

    :goto_12
    move-object/from16 v9, v20

    goto/16 :goto_0

    :pswitch_9
    move-object/from16 v12, p6

    move-object v8, v1

    move-wide/from16 v5, v20

    const/4 v3, 0x1

    const/16 v18, -0x1

    const v24, 0xfffff

    move-object/from16 v1, p2

    move-object/from16 v20, v9

    move v9, v2

    move/from16 v2, v16

    if-ne v7, v3, :cond_11

    move-wide v3, v5

    invoke-static {v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->c(I[B)J

    move-result-wide v5

    move-object/from16 v28, v10

    move-object v10, v1

    move-object/from16 v1, v28

    move-object/from16 v28, v8

    move v8, v2

    move-object/from16 v2, v28

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move-object v2, v1

    move-object/from16 v1, v28

    add-int/lit8 v3, v8, 0x8

    :goto_13
    or-int v4, v25, v23

    move-object v5, v10

    move-object v10, v2

    move-object v2, v5

    move v7, v9

    move/from16 v16, v11

    move-object v5, v12

    move v6, v13

    move v8, v14

    move-object/from16 v9, v20

    goto/16 :goto_8

    :cond_11
    move-object/from16 v28, v10

    move-object v10, v1

    move-object v1, v8

    move v8, v2

    move-object/from16 v2, v28

    :cond_12
    move-object v7, v2

    goto/16 :goto_15

    :pswitch_a
    move-object/from16 v12, p6

    move/from16 v8, v16

    move-wide/from16 v3, v20

    const/16 v18, -0x1

    const v24, 0xfffff

    move-object/from16 v20, v9

    move v9, v2

    move-object v2, v10

    move-object/from16 v10, p2

    if-nez v7, :cond_12

    invoke-static {v10, v8, v12}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->i([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v5

    iget v6, v12, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->a:I

    invoke-virtual {v2, v1, v3, v4, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v3, v25, v23

    move-object v4, v10

    move-object v10, v2

    move-object v2, v4

    move/from16 v4, p4

    move v7, v9

    move/from16 v16, v11

    move v6, v13

    move v8, v14

    move-object/from16 v9, v20

    move v14, v3

    move v3, v5

    move-object v5, v12

    goto/16 :goto_0

    :pswitch_b
    move-object/from16 v12, p6

    move/from16 v8, v16

    move-wide/from16 v3, v20

    const/16 v18, -0x1

    const v24, 0xfffff

    move-object/from16 v20, v9

    move v9, v2

    move-object v2, v10

    move-object/from16 v10, p2

    if-nez v7, :cond_12

    invoke-static {v10, v8, v12}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->k([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v7

    iget-wide v5, v12, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->b:J

    move-object/from16 v28, v2

    move-object v2, v1

    move-object/from16 v1, v28

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move-object/from16 v28, v2

    move-object v2, v1

    move-object/from16 v1, v28

    or-int v3, v25, v23

    move-object v4, v10

    move-object v10, v2

    move-object v2, v4

    move/from16 v4, p4

    move/from16 v16, v11

    move-object v5, v12

    move v6, v13

    move v8, v14

    move v14, v3

    move v3, v7

    :goto_14
    move v7, v9

    goto/16 :goto_12

    :pswitch_c
    move-object/from16 v12, p6

    move/from16 v8, v16

    move-wide/from16 v5, v20

    const/16 v18, -0x1

    const v24, 0xfffff

    move-object/from16 v20, v9

    move v9, v2

    move-object v2, v10

    move-object/from16 v10, p2

    if-ne v7, v4, :cond_12

    invoke-static {v8, v10}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->b(I[B)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v1, v5, v6, v3}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->n(Ljava/lang/Object;JF)V

    add-int/lit8 v3, v8, 0x4

    goto/16 :goto_13

    :pswitch_d
    move-object/from16 v12, p6

    move/from16 v8, v16

    move-wide/from16 v5, v20

    const/4 v3, 0x1

    const/16 v18, -0x1

    const v24, 0xfffff

    move-object/from16 v20, v9

    move v9, v2

    move-object v2, v10

    move-object/from16 v10, p2

    if-ne v7, v3, :cond_12

    invoke-static {v8, v10}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->c(I[B)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    move-wide/from16 v28, v5

    move-wide v5, v3

    move-wide/from16 v3, v28

    move-object v7, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->m(Ljava/lang/Object;JD)V

    move-object v1, v2

    add-int/lit8 v3, v8, 0x8

    or-int v2, v25, v23

    move/from16 v4, p4

    move/from16 v16, v11

    move-object v5, v12

    move v6, v13

    move v8, v14

    move v14, v2

    move-object v2, v10

    move-object v10, v7

    goto :goto_14

    :goto_15
    move-object v10, v1

    move-object/from16 v27, v7

    move v2, v8

    move v7, v9

    move v6, v13

    move v8, v14

    move-object/from16 v26, v20

    move/from16 v14, v25

    const/16 v19, 0x0

    move-object v9, v0

    goto/16 :goto_4

    :cond_13
    move/from16 v24, v17

    move-wide/from16 v5, v20

    const/16 v18, -0x1

    move-object/from16 v20, v9

    move v9, v2

    move-object v2, v10

    move-object/from16 v10, p2

    const/16 v4, 0x1b

    if-ne v3, v4, :cond_17

    const/4 v4, 0x2

    if-ne v7, v4, :cond_16

    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v3}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->m0()Z

    move-result v4

    if-nez v4, :cond_15

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_14

    const/16 v4, 0xa

    goto :goto_16

    :cond_14
    mul-int/lit8 v4, v4, 0x2

    :goto_16
    invoke-interface {v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->c(I)Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    move-result-object v3

    invoke-virtual {v2, v1, v5, v6, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_15
    move-object v6, v3

    invoke-virtual {v0, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->p(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v1

    move/from16 v5, p4

    move-object/from16 v7, p6

    move-object v3, v10

    move/from16 v4, v16

    move-object v10, v2

    move v2, v11

    invoke-static/range {v1 .. v7}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->d(Lcom/google/crypto/tink/shaded/protobuf/Schema;I[BIILcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    move/from16 v4, p4

    move-object/from16 v5, p6

    move v3, v1

    move/from16 v16, v2

    move v7, v9

    move v6, v13

    move-object/from16 v9, v20

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    goto/16 :goto_0

    :cond_16
    move-object v10, v2

    move/from16 v17, v8

    move v8, v9

    move-object/from16 v27, v10

    move v9, v13

    move/from16 v25, v14

    move/from16 v4, v16

    move-object/from16 v26, v20

    const/16 v19, 0x0

    move/from16 v16, v11

    goto/16 :goto_1a

    :cond_17
    move-object v10, v2

    move v2, v11

    move/from16 v4, v16

    const/16 v1, 0x31

    if-gt v3, v1, :cond_19

    move v11, v8

    move v8, v9

    move-object v1, v10

    int-to-long v9, v12

    move-wide/from16 v25, v5

    move v6, v13

    move-wide/from16 v12, v25

    move-object/from16 v27, v1

    move v5, v2

    move/from16 v17, v11

    move/from16 v25, v14

    move-object/from16 v26, v20

    const/16 v19, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v14, p6

    move v11, v3

    move v3, v4

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v14}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->L(Ljava/lang/Object;[BIIIIIIJIJLcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v7

    move v4, v3

    move/from16 v16, v5

    move v9, v6

    if-eq v7, v4, :cond_18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v5, p6

    move v3, v7

    move v7, v8

    move v6, v9

    :goto_17
    move/from16 v8, v17

    move/from16 v14, v25

    move-object/from16 v9, v26

    :goto_18
    move-object/from16 v10, v27

    goto/16 :goto_0

    :cond_18
    move-object/from16 v10, p1

    move v2, v7

    :goto_19
    move v7, v8

    move v6, v9

    move/from16 v0, v16

    move/from16 v8, v17

    move/from16 v14, v25

    move-object/from16 v9, p0

    goto/16 :goto_1b

    :cond_19
    move/from16 v16, v2

    move v11, v3

    move/from16 v17, v8

    move v8, v9

    move-object/from16 v27, v10

    move v9, v13

    move/from16 v25, v14

    move-object/from16 v26, v20

    const/16 v19, 0x0

    const/16 v0, 0x32

    if-ne v11, v0, :cond_1b

    const/4 v3, 0x2

    if-eq v7, v3, :cond_1a

    :goto_1a
    move-object/from16 v10, p1

    move v2, v4

    goto :goto_19

    :cond_1a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v4

    move-wide v6, v5

    move v5, v8

    move/from16 v4, p4

    move-object/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->H(Ljava/lang/Object;[BIIIJLcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    const/4 v0, 0x0

    throw v0

    :cond_1b
    move-wide v0, v5

    move v6, v9

    move v9, v11

    move-wide v10, v0

    move v0, v12

    move v12, v8

    move v8, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v13, p6

    move v3, v4

    move/from16 v5, v16

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v13}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->I(Ljava/lang/Object;[BIIIIIIIJILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v7

    move-object v9, v0

    move-object v10, v1

    move v4, v3

    move v0, v5

    move v8, v12

    if-eq v7, v4, :cond_1c

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v5, p6

    move/from16 v16, v0

    move v3, v7

    move v7, v8

    move-object v0, v9

    move-object v1, v10

    goto :goto_17

    :cond_1c
    move v2, v7

    move v7, v8

    move/from16 v8, v17

    move/from16 v14, v25

    :goto_1b
    if-ne v0, v15, :cond_1d

    if-eqz v15, :cond_1d

    move/from16 v12, p4

    move v7, v0

    move v6, v2

    :goto_1c
    const v0, 0xfffff

    goto :goto_1f

    :cond_1d
    iget-boolean v1, v9, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->f:Z

    if-eqz v1, :cond_1e

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->b()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v1

    move-object/from16 v11, v26

    if-eq v11, v1, :cond_1f

    iget-object v1, v9, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->e:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    invoke-virtual {v11, v1, v6}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->a(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;I)V

    invoke-static {v10}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->q(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    move-result-object v4

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->g(I[BIILcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    move/from16 v12, p4

    :goto_1d
    move v3, v2

    goto :goto_1e

    :cond_1e
    move-object/from16 v11, v26

    :cond_1f
    invoke-static {v10}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->q(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    move-result-object v4

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->g(I[BIILcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    move v12, v3

    goto :goto_1d

    :goto_1e
    move-object/from16 v2, p2

    move-object/from16 v5, p6

    move/from16 v16, v0

    move-object v0, v9

    move-object v1, v10

    move-object v9, v11

    move v4, v12

    goto/16 :goto_18

    :cond_20
    move-object v9, v0

    move v12, v4

    move/from16 v17, v8

    move-object/from16 v27, v10

    move/from16 v25, v14

    move-object v10, v1

    move v6, v3

    move/from16 v7, v16

    goto :goto_1c

    :goto_1f
    if-eq v8, v0, :cond_21

    int-to-long v0, v8

    move-object/from16 v2, v27

    invoke-virtual {v2, v10, v0, v1, v14}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_21
    iget v0, v9, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->j:I

    move v8, v0

    :goto_20
    iget v0, v9, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->k:I

    if-ge v8, v0, :cond_22

    iget-object v0, v9, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->i:[I

    aget v2, v0, v8

    iget-object v4, v9, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->n:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;

    const/4 v3, 0x0

    move-object/from16 v5, p1

    move-object v0, v9

    move-object v1, v10

    invoke-virtual/range {v0 .. v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->m(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    goto :goto_20

    :cond_22
    if-nez v15, :cond_24

    if-ne v6, v12, :cond_23

    goto :goto_21

    :cond_23
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->f()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :cond_24
    if-gt v6, v12, :cond_25

    if-ne v7, v15, :cond_25

    :goto_21
    return v6

    :cond_25
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->f()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final K(Ljava/lang/Object;[BIILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v7, p2

    move/from16 v8, p4

    move-object/from16 v13, p5

    invoke-static {v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->l(Ljava/lang/Object;)V

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->r:Lsun/misc/Unsafe;

    move/from16 v3, p3

    const/4 v4, -0x1

    const/4 v5, 0x0

    const v11, 0xfffff

    const/4 v12, 0x0

    :goto_0
    if-ge v3, v8, :cond_1b

    add-int/lit8 v6, v3, 0x1

    aget-byte v3, v7, v3

    if-gez v3, :cond_0

    invoke-static {v3, v7, v6, v13}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->h(I[BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v6

    iget v3, v13, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->a:I

    :cond_0
    ushr-int/lit8 v14, v3, 0x3

    const v16, 0xfffff

    and-int/lit8 v15, v3, 0x7

    iget v10, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->d:I

    iget v9, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->c:I

    if-le v14, v4, :cond_2

    div-int/lit8 v5, v5, 0x3

    if-lt v14, v9, :cond_1

    if-gt v14, v10, :cond_1

    invoke-virtual {v0, v14, v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->Q(II)I

    move-result v4

    goto :goto_1

    :cond_1
    const/4 v4, -0x1

    :goto_1
    const/4 v9, 0x0

    :goto_2
    move v10, v4

    const/4 v4, -0x1

    goto :goto_3

    :cond_2
    if-lt v14, v9, :cond_3

    if-gt v14, v10, :cond_3

    const/4 v9, 0x0

    invoke-virtual {v0, v14, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->Q(II)I

    move-result v4

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    const/4 v4, -0x1

    goto :goto_2

    :goto_3
    if-ne v10, v4, :cond_4

    move-object/from16 v24, v1

    move v5, v3

    move/from16 v17, v4

    move v8, v9

    move/from16 v18, v8

    move-object v9, v2

    move v2, v6

    move v6, v14

    goto/16 :goto_1a

    :cond_4
    add-int/lit8 v5, v10, 0x1

    iget-object v4, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->a:[I

    aget v5, v4, v5

    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->T(I)I

    move-result v9

    move/from16 p3, v3

    and-int v3, v5, v16

    move-object/from16 v19, v4

    int-to-long v3, v3

    move-wide/from16 v20, v3

    const/16 v3, 0x11

    if-gt v9, v3, :cond_11

    add-int/lit8 v3, v10, 0x2

    aget v3, v19, v3

    ushr-int/lit8 v19, v3, 0x14

    const/4 v4, 0x1

    shl-int v19, v4, v19

    and-int v3, v3, v16

    if-eq v3, v11, :cond_7

    move/from16 v4, v16

    move/from16 v22, v5

    if-eq v11, v4, :cond_5

    int-to-long v4, v11

    invoke-virtual {v1, v2, v4, v5, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    const v4, 0xfffff

    :cond_5
    if-eq v3, v4, :cond_6

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v12

    :cond_6
    move v11, v3

    goto :goto_4

    :cond_7
    move/from16 v22, v5

    :goto_4
    const/4 v3, 0x5

    packed-switch v9, :pswitch_data_0

    move-object v8, v1

    move-object v1, v2

    move-object v9, v13

    const/16 v17, -0x1

    :goto_5
    move-object v13, v7

    :goto_6
    move v7, v6

    goto/16 :goto_14

    :pswitch_0
    if-nez v15, :cond_8

    invoke-static {v7, v6, v13}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->k([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v9

    iget-wide v3, v13, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->b:J

    invoke-static {v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->c(J)J

    move-result-wide v5

    move-wide/from16 v3, v20

    const/16 v17, -0x1

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move-object/from16 v25, v2

    move-object v2, v1

    move-object/from16 v1, v25

    or-int v12, v12, v19

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    move v3, v9

    :goto_7
    move v5, v10

    move v4, v14

    goto/16 :goto_0

    :cond_8
    move-object/from16 v17, v2

    move-object v2, v1

    move-object/from16 v1, v17

    const/16 v17, -0x1

    :cond_9
    move-object v8, v2

    move-object v9, v13

    goto :goto_5

    :pswitch_1
    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    move-wide/from16 v4, v20

    const/16 v17, -0x1

    if-nez v15, :cond_9

    invoke-static {v7, v6, v13}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->i([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    iget v6, v13, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->a:I

    invoke-static {v6}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->b(I)I

    move-result v6

    invoke-virtual {v2, v1, v4, v5, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_8
    or-int v12, v12, v19

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    goto :goto_7

    :pswitch_2
    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    move-wide/from16 v4, v20

    const/16 v17, -0x1

    if-nez v15, :cond_9

    invoke-static {v7, v6, v13}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->i([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    iget v6, v13, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->a:I

    invoke-virtual {v2, v1, v4, v5, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_8

    :pswitch_3
    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    move-wide/from16 v4, v20

    const/4 v3, 0x2

    const/16 v17, -0x1

    if-ne v15, v3, :cond_9

    invoke-static {v7, v6, v13}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->a([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    iget-object v6, v13, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    invoke-virtual {v2, v1, v4, v5, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_8

    :pswitch_4
    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    const/4 v3, 0x2

    const/16 v17, -0x1

    if-ne v15, v3, :cond_a

    move-object v3, v1

    invoke-virtual {v0, v10, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->A(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v2

    invoke-virtual {v0, v10}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->p(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v2

    move-object v5, v7

    move-object v7, v3

    move-object v3, v5

    move v5, v8

    move-object v8, v4

    move v4, v6

    move-object v6, v13

    invoke-static/range {v1 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->l(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Schema;[BIILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    move-object v13, v3

    move-object v9, v6

    invoke-virtual {v0, v7, v1, v10}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->R(Ljava/lang/Object;Ljava/lang/Object;I)V

    or-int v12, v12, v19

    move v3, v2

    :goto_9
    move-object v2, v7

    :goto_a
    move-object v1, v8

    :goto_b
    move v5, v10

    move-object v7, v13

    move v4, v14

    move/from16 v8, p4

    :goto_c
    move-object v13, v9

    goto/16 :goto_0

    :cond_a
    move-object v9, v13

    move-object v13, v7

    move-object v7, v1

    move-object v8, v2

    goto/16 :goto_6

    :pswitch_5
    move-object v8, v1

    move v1, v6

    move-object v9, v13

    move-wide/from16 v4, v20

    const/4 v3, 0x2

    const/16 v17, -0x1

    move-object v13, v7

    move-object v7, v2

    if-ne v15, v3, :cond_c

    const/high16 v2, 0x20000000

    and-int v2, v22, v2

    if-nez v2, :cond_b

    invoke-static {v13, v1, v9}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->e([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    :goto_d
    move v3, v1

    goto :goto_e

    :cond_b
    invoke-static {v13, v1, v9}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->f([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    goto :goto_d

    :goto_e
    iget-object v1, v9, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    invoke-virtual {v8, v7, v4, v5, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_f
    or-int v12, v12, v19

    goto :goto_9

    :cond_c
    move-object/from16 v25, v7

    move v7, v1

    move-object/from16 v1, v25

    goto/16 :goto_14

    :pswitch_6
    move-object v8, v1

    move v1, v6

    move-object v9, v13

    move-wide/from16 v4, v20

    const/16 v17, -0x1

    move-object v13, v7

    move-object v7, v2

    if-nez v15, :cond_c

    invoke-static {v13, v1, v9}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->k([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    iget-wide v1, v9, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->b:J

    const-wide/16 v20, 0x0

    cmp-long v1, v1, v20

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    goto :goto_10

    :cond_d
    const/4 v1, 0x0

    :goto_10
    sget-object v2, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v2, v7, v4, v5, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->k(Ljava/lang/Object;JZ)V

    goto :goto_f

    :pswitch_7
    move-object v8, v1

    move v1, v6

    move-object v9, v13

    move-wide/from16 v4, v20

    const/16 v17, -0x1

    move-object v13, v7

    move-object v7, v2

    if-ne v15, v3, :cond_c

    invoke-static {v1, v13}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->b(I[B)I

    move-result v2

    invoke-virtual {v8, v7, v4, v5, v2}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v3, v1, 0x4

    goto :goto_f

    :pswitch_8
    move-object v8, v1

    move v1, v6

    move-object v9, v13

    move-wide/from16 v4, v20

    const/16 v17, -0x1

    move-object v13, v7

    move-object v7, v2

    const/4 v2, 0x1

    if-ne v15, v2, :cond_e

    move-wide v3, v4

    invoke-static {v1, v13}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->c(I[B)J

    move-result-wide v5

    move-object v2, v7

    move v7, v1

    move-object v1, v8

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v3, v7, 0x8

    or-int v12, v12, v19

    move/from16 v8, p4

    :goto_11
    move v5, v10

    move-object v7, v13

    move v4, v14

    goto/16 :goto_c

    :cond_e
    move-object v2, v7

    move v7, v1

    :cond_f
    :goto_12
    move-object v1, v2

    goto/16 :goto_14

    :pswitch_9
    move-object v9, v13

    move-wide/from16 v3, v20

    const/16 v17, -0x1

    move-object v13, v7

    move v7, v6

    if-nez v15, :cond_10

    invoke-static {v13, v7, v9}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->i([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v5

    iget v6, v9, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->a:I

    invoke-virtual {v1, v2, v3, v4, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    or-int v12, v12, v19

    move/from16 v8, p4

    move v3, v5

    goto :goto_11

    :cond_10
    move-object v8, v1

    goto :goto_12

    :pswitch_a
    move-object v9, v13

    move-wide/from16 v3, v20

    const/16 v17, -0x1

    move-object v13, v7

    move v7, v6

    if-nez v15, :cond_10

    invoke-static {v13, v7, v9}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->k([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v7

    iget-wide v5, v9, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->b:J

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move-object v8, v1

    or-int v12, v12, v19

    move v3, v7

    goto/16 :goto_b

    :pswitch_b
    move-object v8, v1

    move-object v9, v13

    move-wide/from16 v4, v20

    const/16 v17, -0x1

    move-object v13, v7

    move v7, v6

    if-ne v15, v3, :cond_f

    invoke-static {v7, v13}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->b(I[B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    sget-object v3, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v3, v2, v4, v5, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->n(Ljava/lang/Object;JF)V

    add-int/lit8 v3, v7, 0x4

    :goto_13
    or-int v12, v12, v19

    goto/16 :goto_a

    :pswitch_c
    move-object v8, v1

    move-object v9, v13

    move-wide/from16 v4, v20

    const/4 v1, 0x1

    const/16 v17, -0x1

    move-object v13, v7

    move v7, v6

    if-ne v15, v1, :cond_f

    invoke-static {v7, v13}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->c(I[B)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v20

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    move-wide v3, v4

    move-wide/from16 v5, v20

    invoke-virtual/range {v1 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->m(Ljava/lang/Object;JD)V

    move-object v1, v2

    add-int/lit8 v3, v7, 0x8

    goto :goto_13

    :goto_14
    move/from16 v5, p3

    move-object v9, v1

    move v2, v7

    move-object/from16 v24, v8

    move v8, v10

    move v6, v14

    const/16 v18, 0x0

    goto/16 :goto_1a

    :cond_11
    move-object v8, v1

    move-object v1, v2

    move/from16 v22, v5

    move-object v13, v7

    move-wide/from16 v3, v20

    const/16 v17, -0x1

    move v7, v6

    const/16 v2, 0x1b

    if-ne v9, v2, :cond_15

    const/4 v2, 0x2

    if-ne v15, v2, :cond_14

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->m0()Z

    move-result v5

    if-nez v5, :cond_13

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_12

    const/16 v5, 0xa

    goto :goto_15

    :cond_12
    mul-int/lit8 v5, v5, 0x2

    :goto_15
    invoke-interface {v2, v5}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->c(I)Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    move-result-object v2

    invoke-virtual {v8, v1, v3, v4, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_13
    move-object v6, v2

    invoke-virtual {v0, v10}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->p(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v1

    move/from16 v2, p3

    move/from16 v5, p4

    move v4, v7

    move-object v3, v13

    move-object/from16 v7, p5

    invoke-static/range {v1 .. v7}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->d(Lcom/google/crypto/tink/shaded/protobuf/Schema;I[BIILcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    move-object/from16 v2, p1

    move-object/from16 v7, p2

    move-object/from16 v13, p5

    move v3, v1

    move-object v1, v8

    move v5, v10

    move v4, v14

    :goto_16
    move/from16 v8, p4

    goto/16 :goto_0

    :cond_14
    move v3, v7

    move-object/from16 v24, v8

    move v8, v10

    move v15, v11

    move/from16 v23, v12

    move v9, v14

    const/16 v18, 0x0

    move/from16 v10, p3

    goto/16 :goto_19

    :cond_15
    move/from16 v5, p3

    move v1, v7

    const/16 v2, 0x31

    if-gt v9, v2, :cond_17

    move-object v6, v8

    move v8, v10

    move v7, v11

    move/from16 v2, v22

    move v11, v9

    int-to-long v9, v2

    move v2, v15

    move v15, v7

    move v7, v2

    move-object/from16 v2, p2

    move-object/from16 v24, v6

    move/from16 v23, v12

    move v6, v14

    const/16 v18, 0x0

    move-object/from16 v14, p5

    move-wide v12, v3

    move/from16 v4, p4

    move v3, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v14}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->L(Ljava/lang/Object;[BIIIIIIJIJLcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v7

    move v10, v5

    move v9, v6

    if-eq v7, v3, :cond_16

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v13, p5

    move v3, v7

    move v5, v8

    move v4, v9

    :goto_17
    move v11, v15

    move/from16 v12, v23

    move-object/from16 v1, v24

    move-object/from16 v7, p2

    goto :goto_16

    :cond_16
    move v2, v7

    :goto_18
    move v6, v9

    move v5, v10

    move v11, v15

    move/from16 v12, v23

    move-object/from16 v9, p1

    goto/16 :goto_1a

    :cond_17
    move-object/from16 v24, v8

    move v8, v10

    move/from16 v23, v12

    move v7, v15

    move/from16 v2, v22

    const/16 v18, 0x0

    move v10, v5

    move v15, v11

    move-wide v4, v3

    move v11, v9

    move v9, v14

    move v3, v1

    const/16 v0, 0x32

    if-ne v11, v0, :cond_19

    const/4 v0, 0x2

    if-eq v7, v0, :cond_18

    :goto_19
    move v2, v3

    goto :goto_18

    :cond_18
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide v6, v4

    move v5, v8

    move/from16 v4, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v0 .. v8}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->H(Ljava/lang/Object;[BIIIJLcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    const/4 v0, 0x0

    throw v0

    :cond_19
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v13, p5

    move v12, v8

    move v6, v9

    move v9, v11

    move v8, v2

    move-object/from16 v2, p2

    move-wide/from16 v25, v4

    move/from16 v4, p4

    move v5, v10

    move-wide/from16 v10, v25

    invoke-virtual/range {v0 .. v13}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->I(Ljava/lang/Object;[BIIIIIIIJILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v7

    move-object v9, v1

    move v8, v12

    if-eq v7, v3, :cond_1a

    move-object/from16 v0, p0

    move-object/from16 v13, p5

    move v4, v6

    move v3, v7

    move v5, v8

    move-object v2, v9

    goto :goto_17

    :cond_1a
    move v2, v7

    move v11, v15

    move/from16 v12, v23

    :goto_1a
    invoke-static {v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->q(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    move-result-object v4

    move-object/from16 v1, p2

    move/from16 v3, p4

    move v0, v5

    move-object/from16 v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->g(I[BIILcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v0

    move-object/from16 v7, p2

    move-object/from16 v13, p5

    move v4, v6

    move v5, v8

    move-object v2, v9

    move-object/from16 v1, v24

    move v8, v3

    move v3, v0

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_1b
    move-object/from16 v24, v1

    move-object v9, v2

    move v4, v8

    move v15, v11

    move/from16 v23, v12

    const v0, 0xfffff

    if-eq v15, v0, :cond_1c

    int-to-long v0, v15

    move/from16 v12, v23

    move-object/from16 v8, v24

    invoke-virtual {v8, v9, v0, v1, v12}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_1c
    if-ne v3, v4, :cond_1d

    return-void

    :cond_1d
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->f()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final L(Ljava/lang/Object;[BIIIIIIJIJLcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I
    .locals 11

    move/from16 v0, p5

    move/from16 v1, p7

    move/from16 v6, p8

    move-wide/from16 v2, p12

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->r:Lsun/misc/Unsafe;

    invoke-virtual {v4, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    invoke-interface {v5}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->m0()Z

    move-result v7

    const/4 v8, 0x2

    if-nez v7, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_0

    const/16 v7, 0xa

    goto :goto_0

    :cond_0
    mul-int/2addr v7, v8

    :goto_0
    invoke-interface {v5, v7}, Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;->c(I)Lcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;

    move-result-object v5

    invoke-virtual {v4, p1, v2, v3, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1
    move-object v4, v5

    const/4 v2, 0x5

    const-wide/16 v9, 0x0

    const/4 v3, 0x1

    packed-switch p11, :pswitch_data_0

    goto/16 :goto_2a

    :pswitch_0
    const/4 p1, 0x3

    if-ne v1, p1, :cond_4c

    invoke-virtual {p0, v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->p(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object p0

    and-int/lit8 p1, v0, -0x8

    or-int/lit8 p1, p1, 0x4

    invoke-interface {p0}, Lcom/google/crypto/tink/shaded/protobuf/Schema;->b()Ljava/lang/Object;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;

    move/from16 p11, p1

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p12, p14

    move-object/from16 p7, v1

    move-object/from16 p6, v2

    invoke-virtual/range {p6 .. p12}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->J(Ljava/lang/Object;[BIIILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    move-object/from16 v7, p6

    move-object/from16 v6, p7

    move/from16 v3, p10

    move/from16 v2, p11

    move-object/from16 v5, p12

    iput-object v6, v5, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    invoke-interface {p0, v6}, Lcom/google/crypto/tink/shaded/protobuf/Schema;->c(Ljava/lang/Object;)V

    iput-object v6, v5, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    if-ge p1, v3, :cond_3

    invoke-static {p2, p1, v5}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->i([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v6

    iget v8, v5, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->a:I

    if-eq v0, v8, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {p0}, Lcom/google/crypto/tink/shaded/protobuf/Schema;->b()Ljava/lang/Object;

    move-result-object p1

    move-object/from16 p7, p1

    move-object/from16 p8, p2

    move/from16 p11, v2

    move/from16 p10, v3

    move-object/from16 p12, v5

    move/from16 p9, v6

    move-object/from16 p6, v7

    invoke-virtual/range {p6 .. p12}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->J(Ljava/lang/Object;[BIIILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    move-object/from16 v6, p7

    move/from16 v1, p11

    iput-object v6, v5, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    invoke-interface {p0, v6}, Lcom/google/crypto/tink/shaded/protobuf/Schema;->c(Ljava/lang/Object;)V

    iput-object v6, v5, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->c:Ljava/lang/Object;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v1

    goto :goto_1

    :cond_3
    :goto_2
    return p1

    :pswitch_1
    move v3, p4

    move-object/from16 v5, p14

    if-ne v1, v8, :cond_6

    check-cast v4, Lcom/google/crypto/tink/shaded/protobuf/LongArrayList;

    invoke-static {p2, p3, v5}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->i([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    iget p1, v5, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->a:I

    add-int/2addr p1, p0

    :goto_3
    if-ge p0, p1, :cond_4

    invoke-static {p2, p0, v5}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->k([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    iget-wide v0, v5, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->b:J

    invoke-static {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->c(J)J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/LongArrayList;->h(J)V

    goto :goto_3

    :cond_4
    if-ne p0, p1, :cond_5

    return p0

    :cond_5
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->g()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_6
    if-nez v1, :cond_4c

    check-cast v4, Lcom/google/crypto/tink/shaded/protobuf/LongArrayList;

    invoke-static {p2, p3, v5}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->k([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    iget-wide v6, v5, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->b:J

    invoke-static {v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->c(J)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/LongArrayList;->h(J)V

    :goto_4
    if-ge p0, v3, :cond_8

    invoke-static {p2, p0, v5}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->i([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    iget v1, v5, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->a:I

    if-eq v0, v1, :cond_7

    goto :goto_5

    :cond_7
    invoke-static {p2, p1, v5}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->k([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    iget-wide v6, v5, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->b:J

    invoke-static {v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->c(J)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/LongArrayList;->h(J)V

    goto :goto_4

    :cond_8
    :goto_5
    return p0

    :pswitch_2
    move v3, p4

    move-object/from16 v5, p14

    if-ne v1, v8, :cond_b

    check-cast v4, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;

    invoke-static {p2, p3, v5}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->i([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    iget p1, v5, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->a:I

    add-int/2addr p1, p0

    :goto_6
    if-ge p0, p1, :cond_9

    invoke-static {p2, p0, v5}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->i([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    iget v0, v5, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->a:I

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->b(I)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->h(I)V

    goto :goto_6

    :cond_9
    if-ne p0, p1, :cond_a

    return p0

    :cond_a
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->g()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_b
    if-nez v1, :cond_4c

    check-cast v4, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;

    invoke-static {p2, p3, v5}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->i([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    iget p1, v5, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->a:I

    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->b(I)I

    move-result p1

    invoke-virtual {v4, p1}, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->h(I)V

    :goto_7
    if-ge p0, v3, :cond_d

    invoke-static {p2, p0, v5}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->i([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result p1

    iget v1, v5, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->a:I

    if-eq v0, v1, :cond_c

    goto :goto_8

    :cond_c
    invoke-static {p2, p1, v5}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->i([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    iget p1, v5, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->a:I

    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;->b(I)I

    move-result p1

    invoke-virtual {v4, p1}, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->h(I)V

    goto :goto_7

    :cond_d
    :goto_8
    return p0

    :pswitch_3
    move v3, p4

    move-object/from16 v5, p14

    if-ne v1, v8, :cond_10

    move-object v0, v4

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;

    invoke-static {p2, p3, v5}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->i([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    iget v3, v5, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->a:I

    add-int/2addr v3, v1

    :goto_9
    if-ge v1, v3, :cond_e

    invoke-static {p2, v1, v5}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->i([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    iget v7, v5, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->a:I

    invoke-virtual {v0, v7}, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->h(I)V

    goto :goto_9

    :cond_e
    if-ne v1, v3, :cond_f

    goto :goto_a

    :cond_f
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->g()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_10
    if-nez v1, :cond_4c

    move-object v1, p2

    move v2, p3

    invoke-static/range {v0 .. v5}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->j(I[BIILcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    :goto_a
    invoke-virtual {p0, v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->n(I)Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;

    move-result-object v0

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->n:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;

    move-object/from16 p12, p0

    move-object/from16 p7, p1

    move/from16 p8, p6

    move-object/from16 p10, v0

    move-object/from16 p11, v2

    move-object/from16 p9, v4

    invoke-static/range {p7 .. p12}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->w(Ljava/lang/Object;ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    return v1

    :pswitch_4
    move v3, p4

    move-object/from16 v5, p14

    if-ne v1, v8, :cond_4c

    invoke-static {p2, p3, v5}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->i([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    iget v1, v5, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->a:I

    if-ltz v1, :cond_18

    array-length v2, p2

    sub-int/2addr v2, p0

    if-gt v1, v2, :cond_17

    if-nez v1, :cond_11

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->c:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_11
    invoke-static {p0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->h(II[B)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_b
    add-int/2addr p0, v1

    :goto_c
    if-ge p0, v3, :cond_16

    invoke-static {p2, p0, v5}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->i([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    iget v2, v5, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->a:I

    if-eq v0, v2, :cond_12

    goto :goto_d

    :cond_12
    invoke-static {p2, v1, v5}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->i([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    iget v1, v5, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->a:I

    if-ltz v1, :cond_15

    array-length v2, p2

    sub-int/2addr v2, p0

    if-gt v1, v2, :cond_14

    if-nez v1, :cond_13

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->c:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_13
    invoke-static {p0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->h(II[B)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_14
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->g()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_15
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->e()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_16
    :goto_d
    return p0

    :cond_17
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->g()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_18
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->e()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :pswitch_5
    move v3, p4

    move-object/from16 v5, p14

    if-ne v1, v8, :cond_4c

    invoke-virtual {p0, v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->p(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object p0

    move-object/from16 p6, p0

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p7, v0

    move/from16 p10, v3

    move-object/from16 p11, v4

    move-object/from16 p12, v5

    invoke-static/range {p6 .. p12}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->d(Lcom/google/crypto/tink/shaded/protobuf/Schema;I[BIILcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    return p0

    :pswitch_6
    move p0, p4

    move-object/from16 v5, p14

    if-ne v1, v8, :cond_4c

    const-wide/32 v1, 0x20000000

    and-long v1, p9, v1

    cmp-long v1, v1, v9

    const-string v2, ""

    if-nez v1, :cond_1f

    invoke-static {p2, p3, v5}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->i([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    iget v3, v5, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->a:I

    if-ltz v3, :cond_1e

    if-nez v3, :cond_19

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_19
    new-instance v6, Ljava/lang/String;

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/Internal;->a:Ljava/nio/charset/Charset;

    invoke-direct {v6, p2, v1, v3, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_e
    add-int/2addr v1, v3

    :goto_f
    if-ge v1, p0, :cond_1d

    invoke-static {p2, v1, v5}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->i([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    iget v6, v5, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->a:I

    if-eq v0, v6, :cond_1a

    goto :goto_10

    :cond_1a
    invoke-static {p2, v3, v5}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->i([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    iget v3, v5, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->a:I

    if-ltz v3, :cond_1c

    if-nez v3, :cond_1b

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_1b
    new-instance v6, Ljava/lang/String;

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/Internal;->a:Ljava/nio/charset/Charset;

    invoke-direct {v6, p2, v1, v3, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_1c
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->e()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_1d
    :goto_10
    return v1

    :cond_1e
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->e()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_1f
    invoke-static {p2, p3, v5}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->i([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    iget v3, v5, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->a:I

    if-ltz v3, :cond_27

    if-nez v3, :cond_20

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_20
    add-int v6, v1, v3

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/Utf8;->a:Lcom/google/crypto/tink/shaded/protobuf/Utf8$Processor;

    invoke-virtual {v7, v1, v6, p2}, Lcom/google/crypto/tink/shaded/protobuf/Utf8$Processor;->c(II[B)Z

    move-result v7

    if-eqz v7, :cond_26

    new-instance v7, Ljava/lang/String;

    sget-object v8, Lcom/google/crypto/tink/shaded/protobuf/Internal;->a:Ljava/nio/charset/Charset;

    invoke-direct {v7, p2, v1, v3, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_11
    move v1, v6

    :goto_12
    if-ge v1, p0, :cond_25

    invoke-static {p2, v1, v5}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->i([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v3

    iget v6, v5, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->a:I

    if-eq v0, v6, :cond_21

    goto :goto_13

    :cond_21
    invoke-static {p2, v3, v5}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->i([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    iget v3, v5, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->a:I

    if-ltz v3, :cond_24

    if-nez v3, :cond_22

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_22
    add-int v6, v1, v3

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/Utf8;->a:Lcom/google/crypto/tink/shaded/protobuf/Utf8$Processor;

    invoke-virtual {v7, v1, v6, p2}, Lcom/google/crypto/tink/shaded/protobuf/Utf8$Processor;->c(II[B)Z

    move-result v7

    if-eqz v7, :cond_23

    new-instance v7, Ljava/lang/String;

    sget-object v8, Lcom/google/crypto/tink/shaded/protobuf/Internal;->a:Ljava/nio/charset/Charset;

    invoke-direct {v7, p2, v1, v3, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_23
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->b()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_24
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->e()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_25
    :goto_13
    return v1

    :cond_26
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->b()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_27
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->e()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :pswitch_7
    move p0, p4

    move-object/from16 v5, p14

    const/4 v2, 0x0

    if-ne v1, v8, :cond_2b

    check-cast v4, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;

    invoke-static {p2, p3, v5}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->i([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    iget v0, v5, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->a:I

    add-int/2addr v0, p0

    :goto_14
    if-ge p0, v0, :cond_29

    invoke-static {p2, p0, v5}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->k([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    iget-wide v6, v5, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->b:J

    cmp-long v1, v6, v9

    if-eqz v1, :cond_28

    move v1, v3

    goto :goto_15

    :cond_28
    move v1, v2

    :goto_15
    invoke-virtual {v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->h(Z)V

    goto :goto_14

    :cond_29
    if-ne p0, v0, :cond_2a

    return p0

    :cond_2a
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->g()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_2b
    if-nez v1, :cond_4c

    check-cast v4, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;

    invoke-static {p2, p3, v5}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->k([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    iget-wide v6, v5, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->b:J

    cmp-long v6, v6, v9

    if-eqz v6, :cond_2c

    move v6, v3

    goto :goto_16

    :cond_2c
    move v6, v2

    :goto_16
    invoke-virtual {v4, v6}, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->h(Z)V

    :goto_17
    if-ge v1, p0, :cond_2f

    invoke-static {p2, v1, v5}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->i([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v6

    iget v7, v5, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->a:I

    if-eq v0, v7, :cond_2d

    goto :goto_19

    :cond_2d
    invoke-static {p2, v6, v5}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->k([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    iget-wide v6, v5, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->b:J

    cmp-long v6, v6, v9

    if-eqz v6, :cond_2e

    move v6, v3

    goto :goto_18

    :cond_2e
    move v6, v2

    :goto_18
    invoke-virtual {v4, v6}, Lcom/google/crypto/tink/shaded/protobuf/BooleanArrayList;->h(Z)V

    goto :goto_17

    :cond_2f
    :goto_19
    return v1

    :pswitch_8
    move p0, p4

    move-object/from16 v5, p14

    if-ne v1, v8, :cond_32

    check-cast v4, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;

    invoke-static {p2, p3, v5}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->i([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    iget v0, v5, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->a:I

    add-int/2addr v0, p0

    :goto_1a
    if-ge p0, v0, :cond_30

    invoke-static {p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->b(I[B)I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->h(I)V

    add-int/lit8 p0, p0, 0x4

    goto :goto_1a

    :cond_30
    if-ne p0, v0, :cond_31

    return p0

    :cond_31
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->g()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_32
    if-ne v1, v2, :cond_4c

    check-cast v4, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;

    invoke-static {p3, p2}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->b(I[B)I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->h(I)V

    add-int/lit8 v1, p3, 0x4

    :goto_1b
    if-ge v1, p0, :cond_34

    invoke-static {p2, v1, v5}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->i([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    iget v3, v5, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->a:I

    if-eq v0, v3, :cond_33

    goto :goto_1c

    :cond_33
    invoke-static {v2, p2}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->b(I[B)I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->h(I)V

    add-int/lit8 v1, v2, 0x4

    goto :goto_1b

    :cond_34
    :goto_1c
    return v1

    :pswitch_9
    move p0, p4

    move-object/from16 v5, p14

    if-ne v1, v8, :cond_37

    check-cast v4, Lcom/google/crypto/tink/shaded/protobuf/LongArrayList;

    invoke-static {p2, p3, v5}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->i([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    iget v0, v5, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->a:I

    add-int/2addr v0, p0

    :goto_1d
    if-ge p0, v0, :cond_35

    invoke-static {p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->c(I[B)J

    move-result-wide v1

    invoke-virtual {v4, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/LongArrayList;->h(J)V

    add-int/lit8 p0, p0, 0x8

    goto :goto_1d

    :cond_35
    if-ne p0, v0, :cond_36

    return p0

    :cond_36
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->g()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_37
    if-ne v1, v3, :cond_4c

    check-cast v4, Lcom/google/crypto/tink/shaded/protobuf/LongArrayList;

    invoke-static {p3, p2}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->c(I[B)J

    move-result-wide v1

    invoke-virtual {v4, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/LongArrayList;->h(J)V

    add-int/lit8 v1, p3, 0x8

    :goto_1e
    if-ge v1, p0, :cond_39

    invoke-static {p2, v1, v5}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->i([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    iget v3, v5, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->a:I

    if-eq v0, v3, :cond_38

    goto :goto_1f

    :cond_38
    invoke-static {v2, p2}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->c(I[B)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/LongArrayList;->h(J)V

    add-int/lit8 v1, v2, 0x8

    goto :goto_1e

    :cond_39
    :goto_1f
    return v1

    :pswitch_a
    move p0, p4

    move-object/from16 v5, p14

    if-ne v1, v8, :cond_3c

    check-cast v4, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;

    invoke-static {p2, p3, v5}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->i([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    iget v0, v5, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->a:I

    add-int/2addr v0, p0

    :goto_20
    if-ge p0, v0, :cond_3a

    invoke-static {p2, p0, v5}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->i([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    iget v1, v5, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->a:I

    invoke-virtual {v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/IntArrayList;->h(I)V

    goto :goto_20

    :cond_3a
    if-ne p0, v0, :cond_3b

    return p0

    :cond_3b
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->g()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_3c
    if-nez v1, :cond_4c

    move/from16 p9, p0

    move-object/from16 p7, p2

    move/from16 p8, p3

    move/from16 p6, v0

    move-object/from16 p10, v4

    move-object/from16 p11, v5

    invoke-static/range {p6 .. p11}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->j(I[BIILcom/google/crypto/tink/shaded/protobuf/Internal$ProtobufList;Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    return p0

    :pswitch_b
    move p0, p4

    move-object/from16 v5, p14

    if-ne v1, v8, :cond_3f

    check-cast v4, Lcom/google/crypto/tink/shaded/protobuf/LongArrayList;

    invoke-static {p2, p3, v5}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->i([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    iget v0, v5, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->a:I

    add-int/2addr v0, p0

    :goto_21
    if-ge p0, v0, :cond_3d

    invoke-static {p2, p0, v5}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->k([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    iget-wide v1, v5, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->b:J

    invoke-virtual {v4, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/LongArrayList;->h(J)V

    goto :goto_21

    :cond_3d
    if-ne p0, v0, :cond_3e

    return p0

    :cond_3e
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->g()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_3f
    if-nez v1, :cond_4c

    check-cast v4, Lcom/google/crypto/tink/shaded/protobuf/LongArrayList;

    invoke-static {p2, p3, v5}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->k([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    iget-wide v2, v5, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->b:J

    invoke-virtual {v4, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/LongArrayList;->h(J)V

    :goto_22
    if-ge v1, p0, :cond_41

    invoke-static {p2, v1, v5}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->i([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    iget v3, v5, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->a:I

    if-eq v0, v3, :cond_40

    goto :goto_23

    :cond_40
    invoke-static {p2, v2, v5}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->k([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v1

    iget-wide v2, v5, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->b:J

    invoke-virtual {v4, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/LongArrayList;->h(J)V

    goto :goto_22

    :cond_41
    :goto_23
    return v1

    :pswitch_c
    move p0, p4

    move-object/from16 v5, p14

    if-ne v1, v8, :cond_44

    check-cast v4, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;

    invoke-static {p2, p3, v5}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->i([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    iget v0, v5, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->a:I

    add-int/2addr v0, p0

    :goto_24
    if-ge p0, v0, :cond_42

    invoke-static {p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->b(I[B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-virtual {v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->h(F)V

    add-int/lit8 p0, p0, 0x4

    goto :goto_24

    :cond_42
    if-ne p0, v0, :cond_43

    return p0

    :cond_43
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->g()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_44
    if-ne v1, v2, :cond_4c

    check-cast v4, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;

    invoke-static {p3, p2}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->b(I[B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-virtual {v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->h(F)V

    add-int/lit8 v1, p3, 0x4

    :goto_25
    if-ge v1, p0, :cond_46

    invoke-static {p2, v1, v5}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->i([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    iget v3, v5, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->a:I

    if-eq v0, v3, :cond_45

    goto :goto_26

    :cond_45
    invoke-static {v2, p2}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->b(I[B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-virtual {v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/FloatArrayList;->h(F)V

    add-int/lit8 v1, v2, 0x4

    goto :goto_25

    :cond_46
    :goto_26
    return v1

    :pswitch_d
    move p0, p4

    move-object/from16 v5, p14

    if-ne v1, v8, :cond_49

    check-cast v4, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;

    invoke-static {p2, p3, v5}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->i([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result p0

    iget v0, v5, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->a:I

    add-int/2addr v0, p0

    :goto_27
    if-ge p0, v0, :cond_47

    invoke-static {p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->c(I[B)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    invoke-virtual {v4, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->h(D)V

    add-int/lit8 p0, p0, 0x8

    goto :goto_27

    :cond_47
    if-ne p0, v0, :cond_48

    return p0

    :cond_48
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->g()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :cond_49
    if-ne v1, v3, :cond_4c

    check-cast v4, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;

    invoke-static {p3, p2}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->c(I[B)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    invoke-virtual {v4, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->h(D)V

    add-int/lit8 v1, p3, 0x8

    :goto_28
    if-ge v1, p0, :cond_4b

    invoke-static {p2, v1, v5}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->i([BILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    move-result v2

    iget v3, v5, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;->a:I

    if-eq v0, v3, :cond_4a

    goto :goto_29

    :cond_4a
    invoke-static {v2, p2}, Lcom/google/crypto/tink/shaded/protobuf/ArrayDecoders;->c(I[B)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/DoubleArrayList;->h(D)V

    add-int/lit8 v1, v2, 0x8

    goto :goto_28

    :cond_4b
    :goto_29
    return v1

    :cond_4c
    :goto_2a
    return p3

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_3
        :pswitch_8
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final M(Ljava/lang/Object;ILcom/google/crypto/tink/shaded/protobuf/Reader;)V
    .locals 2

    const/high16 v0, 0x20000000

    and-int/2addr v0, p2

    const v1, 0xfffff

    if-eqz v0, :cond_0

    and-int p0, p2, v1

    int-to-long v0, p0

    invoke-interface {p3}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->i()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->p(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-boolean p0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->g:Z

    if-eqz p0, :cond_1

    and-int p0, p2, v1

    int-to-long v0, p0

    invoke-interface {p3}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->d()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->p(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    and-int p0, p2, v1

    int-to-long v0, p0

    invoke-interface {p3}, Lcom/google/crypto/tink/shaded/protobuf/Reader;->b()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p0

    invoke-static {v0, v1, p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->p(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final O(ILjava/lang/Object;)V
    .locals 4

    add-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->a:[I

    aget p0, p0, p1

    const p1, 0xfffff

    and-int/2addr p1, p0

    int-to-long v0, p1

    const-wide/32 v2, 0xfffff

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    return-void

    :cond_0
    ushr-int/lit8 p0, p0, 0x14

    const/4 p1, 0x1

    shl-int p0, p1, p0

    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p1, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)I

    move-result p1

    or-int/2addr p0, p1

    invoke-static {p2, v0, v1, p0}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->n(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final P(IILjava/lang/Object;)V
    .locals 2

    add-int/lit8 p2, p2, 0x2

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->a:[I

    aget p0, p0, p2

    const p2, 0xfffff

    and-int/2addr p0, p2

    int-to-long v0, p0

    invoke-static {p3, v0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->n(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final Q(II)I
    .locals 4

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->a:[I

    array-length v0, p0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gt p2, v0, :cond_2

    add-int v1, v0, p2

    ushr-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v1, 0x3

    aget v3, p0, v2

    if-ne p1, v3, :cond_0

    return v2

    :cond_0
    if-ge p1, v3, :cond_1

    add-int/lit8 v1, v1, -0x1

    move v0, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    move p2, v1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public final R(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 3

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->r:Lsun/misc/Unsafe;

    invoke-virtual {p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->U(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p3, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->O(ILjava/lang/Object;)V

    return-void
.end method

.method public final S(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 3

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->r:Lsun/misc/Unsafe;

    invoke-virtual {p0, p4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->U(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p2, p4, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->P(IILjava/lang/Object;)V

    return-void
.end method

.method public final U(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->a:[I

    aget p0, p0, p1

    return p0
.end method

.method public final V(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Writer;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-boolean v3, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->f:Z

    iget-object v4, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->o:Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;

    if-eqz v3, :cond_0

    move-object v3, v4

    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchemaLite;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v3, v1

    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object v3, v3, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/crypto/tink/shaded/protobuf/FieldSet;

    iget-object v6, v3, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->a:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap$1;

    invoke-virtual {v6}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->i()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v6, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->a:[I

    array-length v7, v6

    sget-object v8, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->r:Lsun/misc/Unsafe;

    const/4 v11, 0x0

    const v12, 0xfffff

    const/4 v13, 0x0

    :goto_1
    if-ge v11, v7, :cond_6

    invoke-virtual {v0, v11}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->U(I)I

    move-result v14

    aget v15, v6, v11

    const/16 v16, 0x0

    invoke-static {v14}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->T(I)I

    move-result v5

    const v17, 0xfffff

    const/16 v9, 0x11

    if-gt v5, v9, :cond_2

    add-int/lit8 v9, v11, 0x2

    aget v9, v6, v9

    const/16 v18, 0x1

    and-int v10, v9, v17

    if-eq v10, v12, :cond_1

    int-to-long v12, v10

    invoke-virtual {v8, v1, v12, v13}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v13

    move v12, v10

    :cond_1
    ushr-int/lit8 v9, v9, 0x14

    shl-int v9, v18, v9

    goto :goto_2

    :cond_2
    const/16 v18, 0x1

    const/4 v9, 0x0

    :goto_2
    if-nez v3, :cond_5

    and-int v10, v14, v17

    move-object/from16 v19, v3

    move-object v14, v4

    int-to-long v3, v10

    packed-switch v5, :pswitch_data_0

    :cond_3
    :goto_3
    const/4 v10, 0x0

    goto/16 :goto_5

    :pswitch_0
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v11}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->p(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v4

    invoke-interface {v2, v15, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->J(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Schema;)V

    goto :goto_3

    :pswitch_1
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v3, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->G(JLjava/lang/Object;)J

    move-result-wide v3

    invoke-interface {v2, v15, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->p(IJ)V

    goto :goto_3

    :pswitch_2
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v3, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->F(JLjava/lang/Object;)I

    move-result v3

    invoke-interface {v2, v15, v3}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->H(II)V

    goto :goto_3

    :pswitch_3
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v3, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->G(JLjava/lang/Object;)J

    move-result-wide v3

    invoke-interface {v2, v15, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->o(IJ)V

    goto :goto_3

    :pswitch_4
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v3, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->F(JLjava/lang/Object;)I

    move-result v3

    invoke-interface {v2, v15, v3}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->y(II)V

    goto :goto_3

    :pswitch_5
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v3, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->F(JLjava/lang/Object;)I

    move-result v3

    invoke-interface {v2, v15, v3}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->F(II)V

    goto :goto_3

    :pswitch_6
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v3, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->F(JLjava/lang/Object;)I

    move-result v3

    invoke-interface {v2, v15, v3}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->q(II)V

    goto :goto_3

    :pswitch_7
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    invoke-interface {v2, v15, v3}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->L(ILcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    goto :goto_3

    :pswitch_8
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v11}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->p(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v4

    invoke-interface {v2, v15, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->M(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Schema;)V

    goto/16 :goto_3

    :pswitch_9
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v15, v3, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->X(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Writer;)V

    goto/16 :goto_3

    :pswitch_a
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v3, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v2, v15, v3}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->x(IZ)V

    goto/16 :goto_3

    :pswitch_b
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v3, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->F(JLjava/lang/Object;)I

    move-result v3

    invoke-interface {v2, v15, v3}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->b(II)V

    goto/16 :goto_3

    :pswitch_c
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v3, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->G(JLjava/lang/Object;)J

    move-result-wide v3

    invoke-interface {v2, v15, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->r(IJ)V

    goto/16 :goto_3

    :pswitch_d
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v3, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->F(JLjava/lang/Object;)I

    move-result v3

    invoke-interface {v2, v15, v3}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->l(II)V

    goto/16 :goto_3

    :pswitch_e
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v3, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->G(JLjava/lang/Object;)J

    move-result-wide v3

    invoke-interface {v2, v15, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->f(IJ)V

    goto/16 :goto_3

    :pswitch_f
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v3, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->G(JLjava/lang/Object;)J

    move-result-wide v3

    invoke-interface {v2, v15, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->w(IJ)V

    goto/16 :goto_3

    :pswitch_10
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v3, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-interface {v2, v3, v15}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->v(FI)V

    goto/16 :goto_3

    :pswitch_11
    invoke-virtual {v0, v15, v11, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v3, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-interface {v2, v3, v4, v15}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->m(DI)V

    goto/16 :goto_3

    :pswitch_12
    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v15, v3, v11}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->W(Lcom/google/crypto/tink/shaded/protobuf/Writer;ILjava/lang/Object;I)V

    goto/16 :goto_3

    :pswitch_13
    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v0, v11}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->p(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v4

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    invoke-interface {v2, v5, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->N(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Schema;)V

    goto/16 :goto_3

    :pswitch_14
    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move/from16 v9, v18

    invoke-static {v5, v3, v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->N(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_3

    :pswitch_15
    move/from16 v9, v18

    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v5, v3, v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->M(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_3

    :pswitch_16
    move/from16 v9, v18

    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v5, v3, v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->L(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_3

    :pswitch_17
    move/from16 v9, v18

    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v5, v3, v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->K(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_3

    :pswitch_18
    move/from16 v9, v18

    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v5, v3, v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->E(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_3

    :pswitch_19
    move/from16 v9, v18

    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v5, v3, v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->O(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_3

    :pswitch_1a
    move/from16 v9, v18

    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v5, v3, v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->C(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_3

    :pswitch_1b
    move/from16 v9, v18

    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v5, v3, v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->F(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_3

    :pswitch_1c
    move/from16 v9, v18

    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v5, v3, v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->G(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_3

    :pswitch_1d
    move/from16 v9, v18

    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v5, v3, v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->I(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_3

    :pswitch_1e
    move/from16 v9, v18

    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v5, v3, v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->P(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_3

    :pswitch_1f
    move/from16 v9, v18

    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v5, v3, v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->J(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_3

    :pswitch_20
    move/from16 v9, v18

    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v5, v3, v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->H(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_3

    :pswitch_21
    move/from16 v9, v18

    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v5, v3, v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->D(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_3

    :pswitch_22
    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v9, 0x0

    invoke-static {v5, v3, v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->N(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    :goto_4
    move v10, v9

    goto/16 :goto_5

    :pswitch_23
    const/4 v9, 0x0

    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v5, v3, v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->M(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto :goto_4

    :pswitch_24
    const/4 v9, 0x0

    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v5, v3, v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->L(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto :goto_4

    :pswitch_25
    const/4 v9, 0x0

    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v5, v3, v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->K(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto :goto_4

    :pswitch_26
    const/4 v9, 0x0

    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v5, v3, v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->E(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto :goto_4

    :pswitch_27
    const/4 v9, 0x0

    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v5, v3, v2, v9}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->O(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto :goto_4

    :pswitch_28
    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v2, v5, v3}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->I(ILjava/util/List;)V

    goto/16 :goto_3

    :pswitch_29
    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v0, v11}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->p(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v4

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    invoke-interface {v2, v5, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->K(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Schema;)V

    goto/16 :goto_3

    :pswitch_2a
    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v2, v5, v3}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->d(ILjava/util/List;)V

    goto/16 :goto_3

    :pswitch_2b
    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v10, 0x0

    invoke-static {v5, v3, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->C(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_5

    :pswitch_2c
    const/4 v10, 0x0

    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v5, v3, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->F(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_5

    :pswitch_2d
    const/4 v10, 0x0

    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v5, v3, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->G(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_5

    :pswitch_2e
    const/4 v10, 0x0

    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v5, v3, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->I(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_5

    :pswitch_2f
    const/4 v10, 0x0

    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v5, v3, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->P(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_5

    :pswitch_30
    const/4 v10, 0x0

    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v5, v3, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->J(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_5

    :pswitch_31
    const/4 v10, 0x0

    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v5, v3, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->H(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_5

    :pswitch_32
    const/4 v10, 0x0

    aget v5, v6, v11

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v5, v3, v2, v10}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->D(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_5

    :pswitch_33
    const/4 v10, 0x0

    and-int v5, v13, v9

    if-eqz v5, :cond_4

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v11}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->p(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v4

    invoke-interface {v2, v15, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->J(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Schema;)V

    goto/16 :goto_5

    :pswitch_34
    const/4 v10, 0x0

    and-int v5, v13, v9

    if-eqz v5, :cond_4

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-interface {v2, v15, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->p(IJ)V

    goto/16 :goto_5

    :pswitch_35
    const/4 v10, 0x0

    and-int v5, v13, v9

    if-eqz v5, :cond_4

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {v2, v15, v3}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->H(II)V

    goto/16 :goto_5

    :pswitch_36
    const/4 v10, 0x0

    and-int v5, v13, v9

    if-eqz v5, :cond_4

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-interface {v2, v15, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->o(IJ)V

    goto/16 :goto_5

    :pswitch_37
    const/4 v10, 0x0

    and-int v5, v13, v9

    if-eqz v5, :cond_4

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {v2, v15, v3}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->y(II)V

    goto/16 :goto_5

    :pswitch_38
    const/4 v10, 0x0

    and-int v5, v13, v9

    if-eqz v5, :cond_4

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {v2, v15, v3}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->F(II)V

    goto/16 :goto_5

    :pswitch_39
    const/4 v10, 0x0

    and-int v5, v13, v9

    if-eqz v5, :cond_4

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {v2, v15, v3}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->q(II)V

    goto/16 :goto_5

    :pswitch_3a
    const/4 v10, 0x0

    and-int v5, v13, v9

    if-eqz v5, :cond_4

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    invoke-interface {v2, v15, v3}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->L(ILcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    goto/16 :goto_5

    :pswitch_3b
    const/4 v10, 0x0

    and-int v5, v13, v9

    if-eqz v5, :cond_4

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v11}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->p(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v4

    invoke-interface {v2, v15, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->M(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Schema;)V

    goto/16 :goto_5

    :pswitch_3c
    const/4 v10, 0x0

    and-int v5, v13, v9

    if-eqz v5, :cond_4

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v15, v3, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->X(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Writer;)V

    goto/16 :goto_5

    :pswitch_3d
    const/4 v10, 0x0

    and-int v5, v13, v9

    if-eqz v5, :cond_4

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v3, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->c(JLjava/lang/Object;)Z

    move-result v3

    invoke-interface {v2, v15, v3}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->x(IZ)V

    goto :goto_5

    :pswitch_3e
    const/4 v10, 0x0

    and-int v5, v13, v9

    if-eqz v5, :cond_4

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {v2, v15, v3}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->b(II)V

    goto :goto_5

    :pswitch_3f
    const/4 v10, 0x0

    and-int v5, v13, v9

    if-eqz v5, :cond_4

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-interface {v2, v15, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->r(IJ)V

    goto :goto_5

    :pswitch_40
    const/4 v10, 0x0

    and-int v5, v13, v9

    if-eqz v5, :cond_4

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-interface {v2, v15, v3}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->l(II)V

    goto :goto_5

    :pswitch_41
    const/4 v10, 0x0

    and-int v5, v13, v9

    if-eqz v5, :cond_4

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-interface {v2, v15, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->f(IJ)V

    goto :goto_5

    :pswitch_42
    const/4 v10, 0x0

    and-int v5, v13, v9

    if-eqz v5, :cond_4

    invoke-virtual {v8, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-interface {v2, v15, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->w(IJ)V

    goto :goto_5

    :pswitch_43
    const/4 v10, 0x0

    and-int v5, v13, v9

    if-eqz v5, :cond_4

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v3, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)F

    move-result v3

    invoke-interface {v2, v3, v15}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->v(FI)V

    goto :goto_5

    :pswitch_44
    const/4 v10, 0x0

    and-int v5, v13, v9

    if-eqz v5, :cond_4

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v3, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->e(JLjava/lang/Object;)D

    move-result-wide v3

    invoke-interface {v2, v3, v4, v15}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->m(DI)V

    :cond_4
    :goto_5
    add-int/lit8 v11, v11, 0x3

    move-object v4, v14

    move-object/from16 v3, v19

    goto/16 :goto_1

    :cond_5
    move-object/from16 v19, v3

    move-object v14, v4

    move-object v4, v14

    check-cast v4, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchemaLite;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ltr;->x(Ljava/lang/Object;)V

    throw v16

    :cond_6
    move-object/from16 v19, v3

    move-object v14, v4

    const/16 v16, 0x0

    if-nez v19, :cond_7

    iget-object v0, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->n:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLiteSchema;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, v1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    iget-object v0, v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;->f(Lcom/google/crypto/tink/shaded/protobuf/Writer;)V

    return-void

    :cond_7
    move-object v4, v14

    check-cast v4, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchemaLite;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ltr;->x(Ljava/lang/Object;)V

    throw v16

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final W(Lcom/google/crypto/tink/shaded/protobuf/Writer;ILjava/lang/Object;I)V
    .locals 0

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->o(I)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->p:Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;

    invoke-interface {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;->b(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;

    const/4 p0, 0x0

    throw p0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10

    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->l(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->a:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->U(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    int-to-long v6, v3

    aget v1, v1, v0

    invoke-static {v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->T(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->z(Ljava/lang/Object;Ljava/lang/Object;I)V

    :cond_0
    :goto_1
    move-object v5, p1

    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {p0, v1, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v2, v6, v7, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v7, p1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->p(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->P(IILjava/lang/Object;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->z(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, v1, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v2, v6, v7, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v7, p1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->p(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->P(IILjava/lang/Object;)V

    goto :goto_1

    :pswitch_4
    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v1, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v6, v7, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->p:Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;

    invoke-interface {v3, v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/MapFieldLite;

    move-result-object v1

    invoke-static {v6, v7, p1, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->p(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_5
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->m:Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;

    invoke-virtual {v1, v6, v7, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->b(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->y(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v1, v6, v7, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {v6, v7, p1, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->o(JLjava/lang/Object;J)V

    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->O(ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_8
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v1, v6, v7, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)I

    move-result v1

    invoke-static {p1, v6, v7, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->n(Ljava/lang/Object;JI)V

    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->O(ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_9
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v1, v6, v7, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {v6, v7, p1, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->o(JLjava/lang/Object;J)V

    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->O(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v1, v6, v7, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)I

    move-result v1

    invoke-static {p1, v6, v7, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->n(Ljava/lang/Object;JI)V

    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->O(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v1, v6, v7, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)I

    move-result v1

    invoke-static {p1, v6, v7, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->n(Ljava/lang/Object;JI)V

    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->O(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v1, v6, v7, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)I

    move-result v1

    invoke-static {p1, v6, v7, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->n(Ljava/lang/Object;JI)V

    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->O(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v1, v6, v7, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v6, v7, p1, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->p(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->O(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->y(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v1, v6, v7, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v6, v7, p1, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->p(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->O(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v1, v6, v7, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->c(JLjava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, p1, v6, v7, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->k(Ljava/lang/Object;JZ)V

    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->O(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v1, v6, v7, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)I

    move-result v1

    invoke-static {p1, v6, v7, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->n(Ljava/lang/Object;JI)V

    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->O(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_12
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v1, v6, v7, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {v6, v7, p1, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->o(JLjava/lang/Object;J)V

    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->O(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_13
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v1, v6, v7, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)I

    move-result v1

    invoke-static {p1, v6, v7, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->n(Ljava/lang/Object;JI)V

    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->O(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_14
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v1, v6, v7, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {v6, v7, p1, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->o(JLjava/lang/Object;J)V

    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->O(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_15
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v1, v6, v7, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {v6, v7, p1, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->o(JLjava/lang/Object;J)V

    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->O(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_16
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v1, v6, v7, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)F

    move-result v2

    invoke-virtual {v1, p1, v6, v7, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->n(Ljava/lang/Object;JF)V

    invoke-virtual {p0, v0, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->O(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_17
    invoke-virtual {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->e(JLjava/lang/Object;)D

    move-result-wide v8

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->m(Ljava/lang/Object;JD)V

    invoke-virtual {p0, v0, v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->O(ILjava/lang/Object;)V

    :goto_2
    add-int/lit8 v0, v0, 0x3

    move-object p1, v5

    goto/16 :goto_0

    :cond_1
    move-object v5, p1

    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->n:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;

    invoke-static {p1, v5, p2}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->z(Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->f:Z

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->o:Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;

    invoke-static {p0, v5, p2}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->y(Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->l:Lcom/google/crypto/tink/shaded/protobuf/NewInstanceSchema;

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->e:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    invoke-interface {v0, p0}, Lcom/google/crypto/tink/shaded/protobuf/NewInstanceSchema;->a(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 8

    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->u(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    instance-of v0, p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->l(I)V

    iput v1, v0, Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite;->memoizedHashCode:I

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->w()V

    :cond_1
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->a:[I

    array-length v0, v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    invoke-virtual {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->U(I)I

    move-result v3

    const v4, 0xfffff

    and-int/2addr v4, v3

    int-to-long v4, v4

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->T(I)I

    move-result v3

    const/16 v6, 0x9

    if-eq v3, v6, :cond_2

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-object v3, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->r:Lsun/misc/Unsafe;

    invoke-virtual {v3, p1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v7, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->p:Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;

    invoke-interface {v7, v6}, Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, p1, v4, v5, v6}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    iget-object v3, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->m:Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;

    invoke-virtual {v3, v4, v5, p1}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)V

    goto :goto_1

    :cond_2
    :pswitch_2
    invoke-virtual {p0, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->p(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v3

    sget-object v6, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->r:Lsun/misc/Unsafe;

    invoke-virtual {v6, p1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/Schema;->c(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->n:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLiteSchema;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    iget-object v0, v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    iput-boolean v1, v0, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;->e:Z

    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->f:Z

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->o:Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchemaLite;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object p0, p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/crypto/tink/shaded/protobuf/FieldSet;

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->j()V

    :cond_5
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Ljava/lang/Object;)Z
    .locals 13

    const v0, 0xfffff

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    move v4, v2

    :goto_0
    iget v5, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->j:I

    const/4 v6, 0x1

    if-ge v2, v5, :cond_f

    iget-object v5, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->i:[I

    aget v5, v5, v2

    iget-object v7, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->a:[I

    aget v8, v7, v5

    invoke-virtual {p0, v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->U(I)I

    move-result v9

    add-int/lit8 v10, v5, 0x2

    aget v7, v7, v10

    and-int v10, v7, v0

    ushr-int/lit8 v7, v7, 0x14

    shl-int v7, v6, v7

    if-eq v10, v3, :cond_1

    if-eq v10, v0, :cond_0

    sget-object v3, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->r:Lsun/misc/Unsafe;

    int-to-long v11, v10

    invoke-virtual {v3, p1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    :cond_0
    move v3, v10

    :cond_1
    const/high16 v10, 0x10000000

    and-int/2addr v10, v9

    if-eqz v10, :cond_4

    if-ne v3, v0, :cond_2

    invoke-virtual {p0, v5, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v10

    goto :goto_1

    :cond_2
    and-int v10, v4, v7

    if-eqz v10, :cond_3

    move v10, v6

    goto :goto_1

    :cond_3
    move v10, v1

    :goto_1
    if-nez v10, :cond_4

    goto/16 :goto_5

    :cond_4
    invoke-static {v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->T(I)I

    move-result v10

    const/16 v11, 0x9

    if-eq v10, v11, :cond_b

    const/16 v11, 0x11

    if-eq v10, v11, :cond_b

    const/16 v6, 0x1b

    if-eq v10, v6, :cond_8

    const/16 v6, 0x3c

    if-eq v10, v6, :cond_7

    const/16 v6, 0x44

    if-eq v10, v6, :cond_7

    const/16 v6, 0x31

    if-eq v10, v6, :cond_8

    const/16 v6, 0x32

    if-eq v10, v6, :cond_5

    goto/16 :goto_4

    :cond_5
    and-int v6, v9, v0

    int-to-long v6, v6

    sget-object v8, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v8, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->p:Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;

    invoke-interface {v7, v6}, Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;->d(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/MapFieldLite;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    goto/16 :goto_4

    :cond_6
    invoke-virtual {p0, v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->o(I)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v7, p0}, Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;->b(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;

    const/4 p0, 0x0

    throw p0

    :cond_7
    invoke-virtual {p0, v8, v5, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual {p0, v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->p(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v5

    and-int v6, v9, v0

    int-to-long v6, v6

    sget-object v8, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v8, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/Schema;->d(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    goto/16 :goto_5

    :cond_8
    and-int v6, v9, v0

    int-to-long v6, v6

    sget-object v8, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v8, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {p0, v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->p(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v5

    move v7, v1

    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_e

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5, v8}, Lcom/google/crypto/tink/shaded/protobuf/Schema;->d(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    goto :goto_5

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_b
    if-ne v3, v0, :cond_c

    invoke-virtual {p0, v5, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v6

    goto :goto_3

    :cond_c
    and-int/2addr v7, v4

    if-eqz v7, :cond_d

    goto :goto_3

    :cond_d
    move v6, v1

    :goto_3
    if-eqz v6, :cond_e

    invoke-virtual {p0, v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->p(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v5

    and-int v6, v9, v0

    int-to-long v6, v6

    sget-object v8, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v8, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/Schema;->d(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    goto :goto_5

    :cond_e
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_f
    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->f:Z

    if-eqz v0, :cond_10

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->o:Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchemaLite;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object p0, p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/crypto/tink/shaded/protobuf/FieldSet;

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->g()Z

    move-result p0

    if-nez p0, :cond_10

    :goto_5
    return v1

    :cond_10
    return v6
.end method

.method public final e(Ljava/lang/Object;[BIILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)V
    .locals 8

    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->h:Z

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->K(Ljava/lang/Object;[BIILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)V

    return-void

    :cond_0
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->J(Ljava/lang/Object;[BIIILcom/google/crypto/tink/shaded/protobuf/ArrayDecoders$Registers;)I

    return-void
.end method

.method public final f(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v6, p2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->l(Ljava/lang/Object;)V

    move-object/from16 v0, p3

    iget-object v5, v1, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->n:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;

    iget-object v7, v1, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->o:Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;

    iget-object v8, v1, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->i:[I

    iget v9, v1, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->k:I

    iget v10, v1, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->j:I

    const/4 v4, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {v6}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->f()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_16

    :try_start_1
    iget v3, v1, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->c:I

    const/4 v12, 0x0

    if-lt v2, v3, :cond_0

    iget v3, v1, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->d:I

    if-gt v2, v3, :cond_0

    invoke-virtual {v1, v2, v12}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->Q(II)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_15

    goto :goto_2

    :goto_1
    move-object/from16 v2, p1

    move-object v13, v4

    goto :goto_5

    :cond_0
    const/4 v3, -0x1

    :goto_2
    if-gez v3, :cond_7

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_2

    :goto_3
    if-ge v10, v9, :cond_1

    aget v3, v8, v10

    move-object/from16 v6, p1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->m(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v2

    move-object v13, v4

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_1
    move-object/from16 v3, p1

    move-object v13, v4

    if-eqz v13, :cond_14

    invoke-virtual {v5, v3, v13}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_26

    :cond_2
    move-object/from16 v3, p1

    move-object v13, v4

    :try_start_2
    iget-boolean v4, v1, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->f:Z

    if-nez v4, :cond_3

    goto :goto_4

    :cond_3
    iget-object v4, v1, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->e:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-object v12, v7

    check-cast v12, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchemaLite;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->a(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;I)V

    :goto_4
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v13, :cond_4

    :try_start_3
    invoke-virtual {v5, v3}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;->a(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_5
    move-object v15, v8

    :goto_6
    move-object v4, v13

    goto/16 :goto_28

    :cond_4
    move-object v4, v13

    :goto_7
    :try_start_4
    invoke-virtual {v5, v4, v6}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;->b(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Reader;)Z

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_5

    goto :goto_0

    :cond_5
    :goto_8
    if-ge v10, v9, :cond_6

    aget v3, v8, v10

    move-object/from16 v6, p1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->m(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v14, v5

    move-object v5, v2

    add-int/lit8 v10, v10, 0x1

    move-object v3, v5

    move-object v5, v14

    goto :goto_8

    :cond_6
    move-object v14, v5

    move-object v5, v3

    if-eqz v4, :cond_14

    :goto_9
    invoke-virtual {v14, v5, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_26

    :catchall_1
    move-exception v0

    move-object v14, v5

    move-object v5, v3

    :goto_a
    move-object v2, v5

    move-object v15, v8

    :goto_b
    move-object v5, v14

    goto/16 :goto_28

    :catchall_2
    move-exception v0

    move-object v14, v5

    move-object v5, v3

    :goto_c
    move-object v2, v5

    move-object v15, v8

    :goto_d
    move-object v4, v13

    goto :goto_b

    :cond_7
    move-object v13, v4

    move-object v14, v5

    move-object/from16 v5, p1

    :try_start_5
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->U(I)I

    move-result v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_14

    :try_start_6
    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->T(I)I

    move-result v15
    :try_end_6
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_6 .. :try_end_6} :catch_c
    .catchall {:try_start_6 .. :try_end_6} :catchall_12

    const v16, 0xfffff

    const/16 v17, 0x0

    iget-object v11, v1, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->m:Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;

    packed-switch v15, :pswitch_data_0

    if-nez v13, :cond_8

    :try_start_7
    invoke-virtual {v14, v5}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;->a(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    move-result-object v4
    :try_end_7
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_f

    :catchall_3
    move-exception v0

    goto :goto_c

    :catch_0
    move-object v2, v5

    move-object/from16 v18, v7

    move-object v15, v8

    move-object v4, v13

    :goto_e
    move-object v7, v1

    move-object v8, v6

    goto/16 :goto_23

    :cond_8
    move-object v4, v13

    :goto_f
    :try_start_8
    invoke-virtual {v14, v4, v6}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;->b(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Reader;)Z

    move-result v2
    :try_end_8
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-nez v2, :cond_a

    :goto_10
    if-ge v10, v9, :cond_9

    aget v3, v8, v10

    move-object/from16 v6, p1

    move-object v2, v5

    move-object v5, v14

    invoke-virtual/range {v1 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->m(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v2

    add-int/lit8 v10, v10, 0x1

    goto :goto_10

    :cond_9
    if-eqz v4, :cond_14

    goto :goto_9

    :cond_a
    :goto_11
    move-object v2, v5

    move-object/from16 v18, v7

    move-object v15, v8

    move-object v7, v1

    move-object v8, v6

    goto/16 :goto_22

    :catchall_4
    move-exception v0

    goto :goto_a

    :catch_1
    move-object v2, v5

    move-object/from16 v18, v7

    move-object v15, v8

    goto :goto_e

    :pswitch_0
    :try_start_9
    invoke-virtual {v1, v2, v3, v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->B(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->p(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v11

    invoke-virtual {v6, v4, v11, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->j(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Lcom/google/crypto/tink/shaded/protobuf/Schema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1, v5, v2, v4, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->S(Ljava/lang/Object;ILjava/lang/Object;I)V

    :goto_12
    move-object v2, v5

    move-object/from16 v18, v7

    move-object v15, v8

    move-object v7, v1

    :goto_13
    move-object v8, v6

    goto/16 :goto_21

    :pswitch_1
    and-int v4, v4, v16

    int-to-long v11, v4

    invoke-virtual {v6}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->J()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v11, v12, v5, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->p(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3, v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->P(IILjava/lang/Object;)V

    goto :goto_12

    :pswitch_2
    and-int v4, v4, v16

    int-to-long v11, v4

    invoke-virtual {v6}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->H()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v11, v12, v5, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->p(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3, v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->P(IILjava/lang/Object;)V

    goto :goto_12

    :pswitch_3
    and-int v4, v4, v16

    int-to-long v11, v4

    invoke-virtual {v6}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->F()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v11, v12, v5, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->p(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3, v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->P(IILjava/lang/Object;)V

    goto :goto_12

    :pswitch_4
    and-int v4, v4, v16

    int-to-long v11, v4

    invoke-virtual {v6}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->D()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v11, v12, v5, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->p(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3, v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->P(IILjava/lang/Object;)V
    :try_end_9
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_12

    :pswitch_5
    :try_start_a
    invoke-virtual {v6}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->s()I

    move-result v11

    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->n(I)Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;

    move-result-object v12
    :try_end_a
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    if-eqz v12, :cond_c

    :try_start_b
    invoke-interface {v12}, Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;->a()Z

    move-result v12

    if-eqz v12, :cond_b

    goto :goto_14

    :cond_b
    invoke-static {v5, v2, v11, v13, v14}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->B(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v4
    :try_end_b
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto/16 :goto_11

    :cond_c
    :goto_14
    and-int v4, v4, v16

    move-object/from16 v18, v7

    move-object v15, v8

    int-to-long v7, v4

    :try_start_c
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v7, v8, v5, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->p(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3, v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->P(IILjava/lang/Object;)V

    :goto_15
    move-object v7, v1

    move-object v2, v5

    goto :goto_13

    :catchall_5
    move-exception v0

    :goto_16
    move-object v2, v5

    goto/16 :goto_d

    :catch_2
    :goto_17
    move-object v7, v1

    move-object v2, v5

    :goto_18
    move-object v8, v6

    :catch_3
    :goto_19
    move-object v4, v13

    goto/16 :goto_23

    :catchall_6
    move-exception v0

    move-object v15, v8

    goto :goto_16

    :catch_4
    move-object/from16 v18, v7

    move-object v15, v8

    goto :goto_17

    :pswitch_6
    move-object/from16 v18, v7

    move-object v15, v8

    and-int v4, v4, v16

    int-to-long v7, v4

    invoke-virtual {v6}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->e()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v7, v8, v5, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->p(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3, v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->P(IILjava/lang/Object;)V

    goto :goto_15

    :pswitch_7
    move-object/from16 v18, v7

    move-object v15, v8

    and-int v4, v4, v16

    int-to-long v7, v4

    invoke-virtual {v6}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->b()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v4

    invoke-static {v7, v8, v5, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->p(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3, v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->P(IILjava/lang/Object;)V

    goto :goto_15

    :pswitch_8
    move-object/from16 v18, v7

    move-object v15, v8

    invoke-virtual {v1, v2, v3, v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->B(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->p(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v7

    invoke-virtual {v6, v4, v7, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->l(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Lcom/google/crypto/tink/shaded/protobuf/Schema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1, v5, v2, v4, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->S(Ljava/lang/Object;ILjava/lang/Object;I)V

    goto :goto_15

    :pswitch_9
    move-object/from16 v18, v7

    move-object v15, v8

    invoke-virtual {v1, v5, v4, v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->M(Ljava/lang/Object;ILcom/google/crypto/tink/shaded/protobuf/Reader;)V

    invoke-virtual {v1, v2, v3, v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->P(IILjava/lang/Object;)V

    goto :goto_15

    :pswitch_a
    move-object/from16 v18, v7

    move-object v15, v8

    and-int v4, v4, v16

    int-to-long v7, v4

    invoke-virtual {v6}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->n()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v7, v8, v5, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->p(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3, v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->P(IILjava/lang/Object;)V

    goto :goto_15

    :pswitch_b
    move-object/from16 v18, v7

    move-object v15, v8

    and-int v4, v4, v16

    int-to-long v7, v4

    invoke-virtual {v6}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->c()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v7, v8, v5, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->p(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3, v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->P(IILjava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_c
    move-object/from16 v18, v7

    move-object v15, v8

    and-int v4, v4, v16

    int-to-long v7, v4

    invoke-virtual {v6}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->a()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v7, v8, v5, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->p(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3, v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->P(IILjava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_d
    move-object/from16 v18, v7

    move-object v15, v8

    and-int v4, v4, v16

    int-to-long v7, v4

    invoke-virtual {v6}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->z()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v7, v8, v5, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->p(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3, v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->P(IILjava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_e
    move-object/from16 v18, v7

    move-object v15, v8

    and-int v4, v4, v16

    int-to-long v7, v4

    invoke-virtual {v6}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->N()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v7, v8, v5, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->p(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3, v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->P(IILjava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_f
    move-object/from16 v18, v7

    move-object v15, v8

    and-int v4, v4, v16

    int-to-long v7, v4

    invoke-virtual {v6}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->h()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v7, v8, v5, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->p(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3, v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->P(IILjava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_10
    move-object/from16 v18, v7

    move-object v15, v8

    and-int v4, v4, v16

    int-to-long v7, v4

    invoke-virtual {v6}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->w()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v7, v8, v5, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->p(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3, v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->P(IILjava/lang/Object;)V

    goto/16 :goto_15

    :pswitch_11
    move-object/from16 v18, v7

    move-object v15, v8

    and-int v4, v4, v16

    int-to-long v7, v4

    invoke-virtual {v6}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->q()D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v7, v8, v5, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->p(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3, v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->P(IILjava/lang/Object;)V
    :try_end_c
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto/16 :goto_15

    :pswitch_12
    move-object/from16 v18, v7

    move-object v15, v8

    :try_start_d
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->o(I)Ljava/lang/Object;

    move-result-object v4
    :try_end_d
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    move-object v2, v5

    move-object v5, v0

    :try_start_e
    invoke-virtual/range {v1 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->x(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;Lcom/google/crypto/tink/shaded/protobuf/Reader;)V
    :try_end_e
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    move-object v7, v1

    move-object v1, v2

    move-object v0, v5

    move-object v8, v6

    :try_start_f
    throw v17

    :catchall_7
    move-exception v0

    move-object v7, v1

    move-object v1, v2

    :goto_1a
    move-object v2, v1

    goto/16 :goto_d

    :catch_5
    move-object v7, v1

    move-object v1, v2

    move-object v0, v5

    move-object v8, v6

    :catch_6
    :goto_1b
    move-object v2, v1

    goto/16 :goto_19

    :catchall_8
    move-exception v0

    move-object v7, v1

    move-object v1, v5

    goto :goto_1a

    :catch_7
    move-object v7, v1

    move-object v8, v6

    move-object v2, v5

    goto/16 :goto_19

    :pswitch_13
    move-object/from16 v18, v7

    move-object v15, v8

    move-object v7, v1

    move-object v1, v5

    move-object v8, v6

    move v6, v3

    and-int v2, v4, v16

    int-to-long v2, v2

    invoke-virtual {v7, v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->p(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v4

    invoke-virtual {v11, v2, v3, v1}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v8, v2, v4, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->y(Ljava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Schema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)V

    :goto_1c
    move-object v2, v1

    goto/16 :goto_21

    :catchall_9
    move-exception v0

    goto :goto_1a

    :pswitch_14
    move-object/from16 v18, v7

    move-object v15, v8

    move-object v7, v1

    move-object v1, v5

    move-object v8, v6

    and-int v2, v4, v16

    int-to-long v2, v2

    invoke-virtual {v11, v2, v3, v1}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->K(Ljava/util/List;)V

    goto :goto_1c

    :pswitch_15
    move-object/from16 v18, v7

    move-object v15, v8

    move-object v7, v1

    move-object v1, v5

    move-object v8, v6

    and-int v2, v4, v16

    int-to-long v2, v2

    invoke-virtual {v11, v2, v3, v1}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->I(Ljava/util/List;)V

    goto :goto_1c

    :pswitch_16
    move-object/from16 v18, v7

    move-object v15, v8

    move-object v7, v1

    move-object v1, v5

    move-object v8, v6

    and-int v2, v4, v16

    int-to-long v2, v2

    invoke-virtual {v11, v2, v3, v1}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->G(Ljava/util/List;)V

    goto :goto_1c

    :pswitch_17
    move-object/from16 v18, v7

    move-object v15, v8

    move-object v7, v1

    move-object v1, v5

    move-object v8, v6

    and-int v2, v4, v16

    int-to-long v2, v2

    invoke-virtual {v11, v2, v3, v1}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->E(Ljava/util/List;)V
    :try_end_f
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    goto :goto_1c

    :pswitch_18
    move-object/from16 v18, v7

    move-object v15, v8

    move-object v7, v1

    move-object v1, v5

    move-object v8, v6

    move v6, v3

    and-int v3, v4, v16

    int-to-long v3, v3

    :try_start_10
    invoke-virtual {v11, v3, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->t(Ljava/util/List;)V

    invoke-virtual {v7, v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->n(I)Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;

    move-result-object v4
    :try_end_10
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_b

    move-object v5, v13

    move-object v6, v14

    :try_start_11
    invoke-static/range {v1 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->w(Ljava/lang/Object;ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v4
    :try_end_11
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_11 .. :try_end_11} :catch_8
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    move-object v2, v1

    move-object v5, v6

    move-object v14, v5

    goto/16 :goto_22

    :catchall_a
    move-exception v0

    move-object v2, v1

    move-object v13, v5

    move-object v5, v6

    goto/16 :goto_6

    :catch_8
    move-object v13, v5

    move-object v2, v1

    move-object v14, v6

    goto/16 :goto_19

    :catchall_b
    move-exception v0

    move-object v2, v1

    :goto_1d
    move-object v5, v14

    goto/16 :goto_6

    :pswitch_19
    move-object v2, v5

    move-object/from16 v18, v7

    move-object v15, v8

    move-object v5, v14

    move-object v7, v1

    move-object v8, v6

    and-int v1, v4, v16

    int-to-long v3, v1

    :try_start_12
    invoke-virtual {v11, v3, v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->M(Ljava/util/List;)V

    :goto_1e
    move-object v14, v5

    goto/16 :goto_21

    :catchall_c
    move-exception v0

    goto/16 :goto_6

    :catch_9
    move-object v14, v5

    goto/16 :goto_19

    :pswitch_1a
    move-object v2, v5

    move-object/from16 v18, v7

    move-object v15, v8

    move-object v5, v14

    move-object v7, v1

    move-object v8, v6

    and-int v1, v4, v16

    int-to-long v3, v1

    invoke-virtual {v11, v3, v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->o(Ljava/util/List;)V

    goto :goto_1e

    :pswitch_1b
    move-object v2, v5

    move-object/from16 v18, v7

    move-object v15, v8

    move-object v5, v14

    move-object v7, v1

    move-object v8, v6

    and-int v1, v4, v16

    int-to-long v3, v1

    invoke-virtual {v11, v3, v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->u(Ljava/util/List;)V

    goto :goto_1e

    :pswitch_1c
    move-object v2, v5

    move-object/from16 v18, v7

    move-object v15, v8

    move-object v5, v14

    move-object v7, v1

    move-object v8, v6

    and-int v1, v4, v16

    int-to-long v3, v1

    invoke-virtual {v11, v3, v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->v(Ljava/util/List;)V

    goto :goto_1e

    :pswitch_1d
    move-object v2, v5

    move-object/from16 v18, v7

    move-object v15, v8

    move-object v5, v14

    move-object v7, v1

    move-object v8, v6

    and-int v1, v4, v16

    int-to-long v3, v1

    invoke-virtual {v11, v3, v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->A(Ljava/util/List;)V

    goto :goto_1e

    :pswitch_1e
    move-object v2, v5

    move-object/from16 v18, v7

    move-object v15, v8

    move-object v5, v14

    move-object v7, v1

    move-object v8, v6

    and-int v1, v4, v16

    int-to-long v3, v1

    invoke-virtual {v11, v3, v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->O(Ljava/util/List;)V

    goto :goto_1e

    :pswitch_1f
    move-object v2, v5

    move-object/from16 v18, v7

    move-object v15, v8

    move-object v5, v14

    move-object v7, v1

    move-object v8, v6

    and-int v1, v4, v16

    int-to-long v3, v1

    invoke-virtual {v11, v3, v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->B(Ljava/util/List;)V

    goto :goto_1e

    :pswitch_20
    move-object v2, v5

    move-object/from16 v18, v7

    move-object v15, v8

    move-object v5, v14

    move-object v7, v1

    move-object v8, v6

    and-int v1, v4, v16

    int-to-long v3, v1

    invoke-virtual {v11, v3, v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->x(Ljava/util/List;)V

    goto/16 :goto_1e

    :pswitch_21
    move-object v2, v5

    move-object/from16 v18, v7

    move-object v15, v8

    move-object v5, v14

    move-object v7, v1

    move-object v8, v6

    and-int v1, v4, v16

    int-to-long v3, v1

    invoke-virtual {v11, v3, v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->r(Ljava/util/List;)V

    goto/16 :goto_1e

    :pswitch_22
    move-object v2, v5

    move-object/from16 v18, v7

    move-object v15, v8

    move-object v5, v14

    move-object v7, v1

    move-object v8, v6

    and-int v1, v4, v16

    int-to-long v3, v1

    invoke-virtual {v11, v3, v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->K(Ljava/util/List;)V

    goto/16 :goto_1e

    :pswitch_23
    move-object v2, v5

    move-object/from16 v18, v7

    move-object v15, v8

    move-object v5, v14

    move-object v7, v1

    move-object v8, v6

    and-int v1, v4, v16

    int-to-long v3, v1

    invoke-virtual {v11, v3, v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->I(Ljava/util/List;)V

    goto/16 :goto_1e

    :pswitch_24
    move-object v2, v5

    move-object/from16 v18, v7

    move-object v15, v8

    move-object v5, v14

    move-object v7, v1

    move-object v8, v6

    and-int v1, v4, v16

    int-to-long v3, v1

    invoke-virtual {v11, v3, v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->G(Ljava/util/List;)V

    goto/16 :goto_1e

    :pswitch_25
    move-object v2, v5

    move-object/from16 v18, v7

    move-object v15, v8

    move-object v5, v14

    move-object v7, v1

    move-object v8, v6

    and-int v1, v4, v16

    int-to-long v3, v1

    invoke-virtual {v11, v3, v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->E(Ljava/util/List;)V
    :try_end_12
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_12 .. :try_end_12} :catch_9
    .catchall {:try_start_12 .. :try_end_12} :catchall_c

    goto/16 :goto_1e

    :pswitch_26
    move-object/from16 v18, v7

    move-object v15, v8

    move-object v7, v1

    move v1, v2

    move-object v2, v5

    move-object v8, v6

    move-object v5, v14

    move v6, v3

    and-int v3, v4, v16

    int-to-long v3, v3

    :try_start_13
    invoke-virtual {v11, v3, v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->t(Ljava/util/List;)V

    invoke-virtual {v7, v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->n(I)Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;

    move-result-object v4
    :try_end_13
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_13 .. :try_end_13} :catch_9
    .catchall {:try_start_13 .. :try_end_13} :catchall_e

    move-object v6, v2

    move v2, v1

    move-object v1, v6

    move-object v6, v5

    move-object v5, v13

    :try_start_14
    invoke-static/range {v1 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->w(Ljava/lang/Object;ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v4
    :try_end_14
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_14 .. :try_end_14} :catch_a
    .catchall {:try_start_14 .. :try_end_14} :catchall_d

    move-object v2, v1

    move-object v14, v6

    goto/16 :goto_22

    :catchall_d
    move-exception v0

    move-object v2, v1

    move-object v13, v5

    move-object v14, v6

    goto/16 :goto_d

    :catch_a
    move-object v13, v5

    move-object v14, v6

    goto/16 :goto_1b

    :catchall_e
    move-exception v0

    move-object v14, v5

    goto/16 :goto_6

    :pswitch_27
    move-object v2, v5

    move-object/from16 v18, v7

    move-object v15, v8

    move-object v7, v1

    move-object v8, v6

    and-int v1, v4, v16

    int-to-long v3, v1

    :try_start_15
    invoke-virtual {v11, v3, v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->M(Ljava/util/List;)V

    goto/16 :goto_21

    :catchall_f
    move-exception v0

    goto/16 :goto_d

    :pswitch_28
    move-object v2, v5

    move-object/from16 v18, v7

    move-object v15, v8

    move-object v7, v1

    move-object v8, v6

    and-int v1, v4, v16

    int-to-long v3, v1

    invoke-virtual {v11, v3, v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->p(Ljava/util/List;)V

    goto/16 :goto_21

    :pswitch_29
    move-object v2, v5

    move-object/from16 v18, v7

    move-object v15, v8

    move-object v7, v1

    move-object v8, v6

    move v6, v3

    invoke-virtual {v7, v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->p(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v1

    and-int v3, v4, v16

    int-to-long v3, v3

    invoke-virtual {v11, v3, v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v8, v3, v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->C(Ljava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Schema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)V

    goto/16 :goto_21

    :pswitch_2a
    move-object v2, v5

    move-object/from16 v18, v7

    move-object v15, v8

    move-object v7, v1

    move-object v8, v6

    const/high16 v1, 0x20000000

    and-int/2addr v1, v4

    const/4 v3, 0x1

    if-eqz v1, :cond_d

    move v1, v3

    goto :goto_1f

    :cond_d
    move v1, v12

    :goto_1f
    if-eqz v1, :cond_e

    and-int v1, v4, v16

    int-to-long v4, v1

    invoke-virtual {v11, v4, v5, v2}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v8, v1, v3}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->L(Ljava/util/List;Z)V

    goto/16 :goto_21

    :cond_e
    and-int v1, v4, v16

    int-to-long v3, v1

    invoke-virtual {v11, v3, v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v8, v1, v12}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->L(Ljava/util/List;Z)V

    goto/16 :goto_21

    :pswitch_2b
    move-object v2, v5

    move-object/from16 v18, v7

    move-object v15, v8

    move-object v7, v1

    move-object v8, v6

    and-int v1, v4, v16

    int-to-long v3, v1

    invoke-virtual {v11, v3, v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->o(Ljava/util/List;)V

    goto/16 :goto_21

    :pswitch_2c
    move-object v2, v5

    move-object/from16 v18, v7

    move-object v15, v8

    move-object v7, v1

    move-object v8, v6

    and-int v1, v4, v16

    int-to-long v3, v1

    invoke-virtual {v11, v3, v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->u(Ljava/util/List;)V

    goto/16 :goto_21

    :pswitch_2d
    move-object v2, v5

    move-object/from16 v18, v7

    move-object v15, v8

    move-object v7, v1

    move-object v8, v6

    and-int v1, v4, v16

    int-to-long v3, v1

    invoke-virtual {v11, v3, v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->v(Ljava/util/List;)V

    goto/16 :goto_21

    :pswitch_2e
    move-object v2, v5

    move-object/from16 v18, v7

    move-object v15, v8

    move-object v7, v1

    move-object v8, v6

    and-int v1, v4, v16

    int-to-long v3, v1

    invoke-virtual {v11, v3, v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->A(Ljava/util/List;)V

    goto/16 :goto_21

    :pswitch_2f
    move-object v2, v5

    move-object/from16 v18, v7

    move-object v15, v8

    move-object v7, v1

    move-object v8, v6

    and-int v1, v4, v16

    int-to-long v3, v1

    invoke-virtual {v11, v3, v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->O(Ljava/util/List;)V

    goto/16 :goto_21

    :pswitch_30
    move-object v2, v5

    move-object/from16 v18, v7

    move-object v15, v8

    move-object v7, v1

    move-object v8, v6

    and-int v1, v4, v16

    int-to-long v3, v1

    invoke-virtual {v11, v3, v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->B(Ljava/util/List;)V

    goto/16 :goto_21

    :pswitch_31
    move-object v2, v5

    move-object/from16 v18, v7

    move-object v15, v8

    move-object v7, v1

    move-object v8, v6

    and-int v1, v4, v16

    int-to-long v3, v1

    invoke-virtual {v11, v3, v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->x(Ljava/util/List;)V

    goto/16 :goto_21

    :pswitch_32
    move-object v2, v5

    move-object/from16 v18, v7

    move-object v15, v8

    move-object v7, v1

    move-object v8, v6

    and-int v1, v4, v16

    int-to-long v3, v1

    invoke-virtual {v11, v3, v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/ListFieldSchema;->c(JLjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->r(Ljava/util/List;)V

    goto/16 :goto_21

    :pswitch_33
    move-object v2, v5

    move-object/from16 v18, v7

    move-object v15, v8

    move-object v7, v1

    move-object v8, v6

    move v6, v3

    invoke-virtual {v7, v6, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->A(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    invoke-virtual {v7, v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->p(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v3

    invoke-virtual {v8, v1, v3, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->j(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Lcom/google/crypto/tink/shaded/protobuf/Schema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v7, v2, v1, v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->R(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_21

    :pswitch_34
    move-object v2, v5

    move-object/from16 v18, v7

    move-object v15, v8

    move-object v7, v1

    move-object v8, v6

    move v6, v3

    and-int v1, v4, v16

    int-to-long v3, v1

    invoke-virtual {v8}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->J()J

    move-result-wide v11

    invoke-static {v3, v4, v2, v11, v12}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->o(JLjava/lang/Object;J)V

    invoke-virtual {v7, v6, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->O(ILjava/lang/Object;)V

    goto/16 :goto_21

    :pswitch_35
    move-object v2, v5

    move-object/from16 v18, v7

    move-object v15, v8

    move-object v7, v1

    move-object v8, v6

    move v6, v3

    and-int v1, v4, v16

    int-to-long v3, v1

    invoke-virtual {v8}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->H()I

    move-result v1

    invoke-static {v2, v3, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->n(Ljava/lang/Object;JI)V

    invoke-virtual {v7, v6, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->O(ILjava/lang/Object;)V

    goto/16 :goto_21

    :pswitch_36
    move-object v2, v5

    move-object/from16 v18, v7

    move-object v15, v8

    move-object v7, v1

    move-object v8, v6

    move v6, v3

    and-int v1, v4, v16

    int-to-long v3, v1

    invoke-virtual {v8}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->F()J

    move-result-wide v11

    invoke-static {v3, v4, v2, v11, v12}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->o(JLjava/lang/Object;J)V

    invoke-virtual {v7, v6, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->O(ILjava/lang/Object;)V

    goto/16 :goto_21

    :pswitch_37
    move-object v2, v5

    move-object/from16 v18, v7

    move-object v15, v8

    move-object v7, v1

    move-object v8, v6

    move v6, v3

    and-int v1, v4, v16

    int-to-long v3, v1

    invoke-virtual {v8}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->D()I

    move-result v1

    invoke-static {v2, v3, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->n(Ljava/lang/Object;JI)V

    invoke-virtual {v7, v6, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->O(ILjava/lang/Object;)V

    goto/16 :goto_21

    :pswitch_38
    move-object/from16 v18, v7

    move-object v15, v8

    move-object v7, v1

    move v1, v2

    move-object v2, v5

    move-object v8, v6

    move v6, v3

    invoke-virtual {v8}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->s()I

    move-result v3

    invoke-virtual {v7, v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->n(I)Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;

    move-result-object v5

    if-eqz v5, :cond_10

    invoke-interface {v5}, Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;->a()Z

    move-result v5

    if-eqz v5, :cond_f

    goto :goto_20

    :cond_f
    invoke-static {v2, v1, v3, v13, v14}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->B(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v4

    goto/16 :goto_22

    :cond_10
    :goto_20
    and-int v1, v4, v16

    int-to-long v4, v1

    invoke-static {v2, v4, v5, v3}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->n(Ljava/lang/Object;JI)V

    invoke-virtual {v7, v6, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->O(ILjava/lang/Object;)V

    goto/16 :goto_21

    :pswitch_39
    move-object v2, v5

    move-object/from16 v18, v7

    move-object v15, v8

    move-object v7, v1

    move-object v8, v6

    move v6, v3

    and-int v1, v4, v16

    int-to-long v3, v1

    invoke-virtual {v8}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->e()I

    move-result v1

    invoke-static {v2, v3, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->n(Ljava/lang/Object;JI)V

    invoke-virtual {v7, v6, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->O(ILjava/lang/Object;)V

    goto/16 :goto_21

    :pswitch_3a
    move-object v2, v5

    move-object/from16 v18, v7

    move-object v15, v8

    move-object v7, v1

    move-object v8, v6

    move v6, v3

    and-int v1, v4, v16

    int-to-long v3, v1

    invoke-virtual {v8}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->b()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v1

    invoke-static {v3, v4, v2, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->p(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v7, v6, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->O(ILjava/lang/Object;)V

    goto/16 :goto_21

    :pswitch_3b
    move-object v2, v5

    move-object/from16 v18, v7

    move-object v15, v8

    move-object v7, v1

    move-object v8, v6

    move v6, v3

    invoke-virtual {v7, v6, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->A(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    invoke-virtual {v7, v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->p(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v3

    invoke-virtual {v8, v1, v3, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->l(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;Lcom/google/crypto/tink/shaded/protobuf/Schema;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v7, v2, v1, v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->R(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_21

    :pswitch_3c
    move-object v2, v5

    move-object/from16 v18, v7

    move-object v15, v8

    move-object v7, v1

    move-object v8, v6

    move v6, v3

    invoke-virtual {v7, v2, v4, v8}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->M(Ljava/lang/Object;ILcom/google/crypto/tink/shaded/protobuf/Reader;)V

    invoke-virtual {v7, v6, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->O(ILjava/lang/Object;)V

    goto/16 :goto_21

    :pswitch_3d
    move-object v2, v5

    move-object/from16 v18, v7

    move-object v15, v8

    move-object v7, v1

    move-object v8, v6

    move v6, v3

    and-int v1, v4, v16

    int-to-long v3, v1

    invoke-virtual {v8}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->n()Z

    move-result v1

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v2, v3, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->k(Ljava/lang/Object;JZ)V

    invoke-virtual {v7, v6, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->O(ILjava/lang/Object;)V

    goto/16 :goto_21

    :pswitch_3e
    move-object v2, v5

    move-object/from16 v18, v7

    move-object v15, v8

    move-object v7, v1

    move-object v8, v6

    move v6, v3

    and-int v1, v4, v16

    int-to-long v3, v1

    invoke-virtual {v8}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->c()I

    move-result v1

    invoke-static {v2, v3, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->n(Ljava/lang/Object;JI)V

    invoke-virtual {v7, v6, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->O(ILjava/lang/Object;)V

    goto/16 :goto_21

    :pswitch_3f
    move-object v2, v5

    move-object/from16 v18, v7

    move-object v15, v8

    move-object v7, v1

    move-object v8, v6

    move v6, v3

    and-int v1, v4, v16

    int-to-long v3, v1

    invoke-virtual {v8}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->a()J

    move-result-wide v11

    invoke-static {v3, v4, v2, v11, v12}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->o(JLjava/lang/Object;J)V

    invoke-virtual {v7, v6, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->O(ILjava/lang/Object;)V

    goto/16 :goto_21

    :pswitch_40
    move-object v2, v5

    move-object/from16 v18, v7

    move-object v15, v8

    move-object v7, v1

    move-object v8, v6

    move v6, v3

    and-int v1, v4, v16

    int-to-long v3, v1

    invoke-virtual {v8}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->z()I

    move-result v1

    invoke-static {v2, v3, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->n(Ljava/lang/Object;JI)V

    invoke-virtual {v7, v6, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->O(ILjava/lang/Object;)V

    goto/16 :goto_21

    :pswitch_41
    move-object v2, v5

    move-object/from16 v18, v7

    move-object v15, v8

    move-object v7, v1

    move-object v8, v6

    move v6, v3

    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->E(I)J

    move-result-wide v3

    invoke-virtual {v8}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->N()J

    move-result-wide v11

    invoke-static {v3, v4, v2, v11, v12}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->o(JLjava/lang/Object;J)V

    invoke-virtual {v7, v6, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->O(ILjava/lang/Object;)V

    goto :goto_21

    :pswitch_42
    move-object v2, v5

    move-object/from16 v18, v7

    move-object v15, v8

    move-object v7, v1

    move-object v8, v6

    move v6, v3

    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->E(I)J

    move-result-wide v3

    invoke-virtual {v8}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->h()J

    move-result-wide v11

    invoke-static {v3, v4, v2, v11, v12}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->o(JLjava/lang/Object;J)V

    invoke-virtual {v7, v6, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->O(ILjava/lang/Object;)V

    goto :goto_21

    :pswitch_43
    move-object v2, v5

    move-object/from16 v18, v7

    move-object v15, v8

    move-object v7, v1

    move-object v8, v6

    move v6, v3

    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->E(I)J

    move-result-wide v3

    invoke-virtual {v8}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->w()F

    move-result v1

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v2, v3, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->n(Ljava/lang/Object;JF)V

    invoke-virtual {v7, v6, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->O(ILjava/lang/Object;)V

    goto :goto_21

    :pswitch_44
    move-object v2, v5

    move-object/from16 v18, v7

    move-object v15, v8

    move-object v7, v1

    move-object v8, v6

    move v6, v3

    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->E(I)J

    move-result-wide v3
    :try_end_15
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_15 .. :try_end_15} :catch_3
    .catchall {:try_start_15 .. :try_end_15} :catchall_f

    move-wide v2, v3

    :try_start_16
    invoke-virtual {v8}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStreamReader;->q()D

    move-result-wide v4

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;
    :try_end_16
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_16 .. :try_end_16} :catch_b
    .catchall {:try_start_16 .. :try_end_16} :catchall_11

    move-object/from16 v1, p1

    :try_start_17
    invoke-virtual/range {v0 .. v5}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->m(Ljava/lang/Object;JD)V
    :try_end_17
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_17 .. :try_end_17} :catch_6
    .catchall {:try_start_17 .. :try_end_17} :catchall_10

    move-object v2, v1

    :try_start_18
    invoke-virtual {v7, v6, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->O(ILjava/lang/Object;)V
    :try_end_18
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_18 .. :try_end_18} :catch_3
    .catchall {:try_start_18 .. :try_end_18} :catchall_f

    :goto_21
    move-object v4, v13

    :cond_11
    :goto_22
    move-object v5, v14

    goto :goto_27

    :catchall_10
    move-exception v0

    goto/16 :goto_1a

    :catchall_11
    move-exception v0

    move-object/from16 v2, p1

    goto/16 :goto_d

    :catch_b
    move-object/from16 v2, p1

    goto/16 :goto_19

    :catchall_12
    move-exception v0

    move-object v7, v1

    goto/16 :goto_c

    :catch_c
    move-object v2, v5

    move-object/from16 v18, v7

    move-object v15, v8

    const/16 v17, 0x0

    move-object v7, v1

    goto/16 :goto_18

    :goto_23
    :try_start_19
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v4, :cond_12

    invoke-virtual {v14, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;->a(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    move-result-object v4

    goto :goto_24

    :catchall_13
    move-exception v0

    goto/16 :goto_b

    :cond_12
    :goto_24
    invoke-virtual {v14, v4, v8}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;->b(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Reader;)Z

    move-result v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_13

    if-nez v0, :cond_11

    :goto_25
    if-ge v10, v9, :cond_13

    aget v3, v15, v10

    move-object/from16 v6, p1

    move-object v1, v7

    move-object v5, v14

    invoke-virtual/range {v1 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->m(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v7, p0

    goto :goto_25

    :cond_13
    move-object v5, v14

    if-eqz v4, :cond_14

    invoke-virtual {v5, v2, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_14
    :goto_26
    return-void

    :goto_27
    move-object/from16 v1, p0

    move-object/from16 v0, p3

    move-object v6, v8

    move-object v8, v15

    move-object/from16 v7, v18

    goto/16 :goto_0

    :catchall_14
    move-exception v0

    move-object v2, v5

    move-object v15, v8

    goto/16 :goto_1d

    :catchall_15
    move-exception v0

    goto/16 :goto_1

    :catchall_16
    move-exception v0

    move-object/from16 v2, p1

    move-object v13, v4

    move-object v15, v8

    :goto_28
    if-ge v10, v9, :cond_15

    aget v3, v15, v10

    move-object/from16 v6, p1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->m(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    goto :goto_28

    :cond_15
    if-eqz v4, :cond_16

    invoke-virtual {v5, v2, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_16
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)Z
    .locals 11

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->a:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_2

    invoke-virtual {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->U(I)I

    move-result v5

    const v6, 0xfffff

    and-int v7, v5, v6

    int-to-long v7, v7

    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->T(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    add-int/lit8 v5, v3, 0x2

    aget v5, v0, v5

    and-int/2addr v5, v6

    int-to-long v5, v5

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v9, v5, v6, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)I

    move-result v10

    invoke-virtual {v9, v5, v6, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)I

    move-result v5

    if-ne v10, v5, :cond_0

    invoke-virtual {v9, v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v9, v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->A(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :cond_0
    move v4, v2

    goto/16 :goto_1

    :pswitch_1
    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->A(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    goto/16 :goto_1

    :pswitch_2
    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->A(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->k(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->A(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->k(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-nez v5, :cond_0

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->k(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->k(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-nez v5, :cond_0

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->k(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->k(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->k(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->k(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->A(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->k(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->A(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->k(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->A(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->k(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->c(JLjava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->c(JLjava/lang/Object;)Z

    move-result v5

    if-ne v6, v5, :cond_0

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->k(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->k(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-nez v5, :cond_0

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->k(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto :goto_1

    :pswitch_11
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->k(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-nez v5, :cond_0

    goto :goto_1

    :pswitch_12
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->k(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-nez v5, :cond_0

    goto :goto_1

    :pswitch_13
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->k(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto :goto_1

    :pswitch_14
    invoke-virtual {p0, p1, p2, v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->k(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->e(JLjava/lang/Object;)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->e(JLjava/lang/Object;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-nez v5, :cond_0

    :goto_1
    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x3

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->n:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLiteSchema;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p2, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_2
    return v2

    :cond_3
    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->f:Z

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->o:Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchemaLite;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object p1, p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/crypto/tink/shaded/protobuf/FieldSet;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object p0, p2, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/crypto/tink/shaded/protobuf/FieldSet;

    invoke-virtual {p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4
    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final h(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;)I
    .locals 11

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->a:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->U(I)I

    move-result v4

    aget v5, v0, v2

    const v6, 0xfffff

    and-int/2addr v6, v4

    int-to-long v6, v6

    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->T(I)I

    move-result v4

    const/16 v8, 0x4d5

    const/16 v9, 0x4cf

    const/16 v10, 0x25

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    mul-int/lit8 v3, v3, 0x35

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_1
    add-int/2addr v4, v3

    move v3, v4

    goto/16 :goto_5

    :pswitch_1
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->G(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/Internal;->b(J)I

    move-result v4

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->F(JLjava/lang/Object;)I

    move-result v4

    :goto_2
    add-int/2addr v3, v4

    goto/16 :goto_5

    :pswitch_3
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->G(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/Internal;->b(J)I

    move-result v4

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->F(JLjava/lang/Object;)I

    move-result v4

    goto :goto_2

    :pswitch_5
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->F(JLjava/lang/Object;)I

    move-result v4

    goto :goto_2

    :pswitch_6
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->F(JLjava/lang/Object;)I

    move-result v4

    goto :goto_2

    :pswitch_7
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_1

    :pswitch_8
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    mul-int/lit8 v3, v3, 0x35

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/Internal;->a:Ljava/nio/charset/Charset;

    if-eqz v4, :cond_0

    :goto_3
    move v8, v9

    :cond_0
    add-int/2addr v8, v3

    move v3, v8

    goto/16 :goto_5

    :pswitch_b
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->F(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_2

    :pswitch_c
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->G(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/Internal;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->F(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_2

    :pswitch_e
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->G(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/Internal;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->G(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/Internal;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, v5, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/Internal;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_12
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_13
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_14
    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v10

    :cond_1
    :goto_4
    mul-int/lit8 v3, v3, 0x35

    add-int/2addr v3, v10

    goto/16 :goto_5

    :pswitch_15
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/Internal;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_16
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_2

    :pswitch_17
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/Internal;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_18
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_2

    :pswitch_19
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_2

    :pswitch_1a
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_2

    :pswitch_1b
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_1c
    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v10

    goto :goto_4

    :pswitch_1d
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_1e
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->c(JLjava/lang/Object;)Z

    move-result v4

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/Internal;->a:Ljava/nio/charset/Charset;

    if-eqz v4, :cond_0

    goto/16 :goto_3

    :pswitch_1f
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_2

    :pswitch_20
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/Internal;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_21
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_2

    :pswitch_22
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/Internal;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_23
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/Internal;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_24
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto/16 :goto_1

    :pswitch_25
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->e(JLjava/lang/Object;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/Internal;->b(J)I

    move-result v4

    goto/16 :goto_1

    :cond_2
    :goto_5
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    :cond_3
    mul-int/lit8 v3, v3, 0x35

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->n:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLiteSchema;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;->hashCode()I

    move-result v0

    add-int/2addr v0, v3

    iget-boolean v1, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->f:Z

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x35

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->o:Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchemaLite;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object p0, p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/crypto/tink/shaded/protobuf/FieldSet;

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->a:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap$1;

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    :cond_4
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Writer;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-boolean v3, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->f:Z

    iget-object v4, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->n:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;

    iget-object v5, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->a:[I

    iget-object v6, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->o:Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;

    invoke-interface {v2}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->s()Lcom/google/crypto/tink/shaded/protobuf/Writer$FieldOrder;

    move-result-object v7

    sget-object v8, Lcom/google/crypto/tink/shaded/protobuf/Writer$FieldOrder;->DESCENDING:Lcom/google/crypto/tink/shaded/protobuf/Writer$FieldOrder;

    const/4 v9, 0x0

    const v10, 0xfffff

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-ne v7, v8, :cond_8

    check-cast v4, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLiteSchema;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, v1

    check-cast v4, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    iget-object v4, v4, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    invoke-virtual {v4, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;->f(Lcom/google/crypto/tink/shaded/protobuf/Writer;)V

    if-eqz v3, :cond_3

    move-object v3, v6

    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchemaLite;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v3, v1

    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object v3, v3, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/crypto/tink/shaded/protobuf/FieldSet;

    iget-object v4, v3, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->a:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap$1;

    invoke-virtual {v4}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    iget-boolean v4, v3, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->c:Z

    iget-object v3, v3, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->a:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap$1;

    if-eqz v4, :cond_1

    new-instance v4, Lcom/google/crypto/tink/shaded/protobuf/LazyField$LazyIterator;

    iget-object v7, v3, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->h:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap$DescendingEntrySet;

    if-nez v7, :cond_0

    new-instance v7, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap$DescendingEntrySet;

    invoke-direct {v7, v3}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap$DescendingEntrySet;-><init>(Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;)V

    iput-object v7, v3, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->h:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap$DescendingEntrySet;

    :cond_0
    iget-object v3, v3, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->h:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap$DescendingEntrySet;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/google/crypto/tink/shaded/protobuf/LazyField$LazyIterator;-><init>(Ljava/util/Iterator;)V

    goto :goto_0

    :cond_1
    iget-object v4, v3, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->h:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap$DescendingEntrySet;

    if-nez v4, :cond_2

    new-instance v4, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap$DescendingEntrySet;

    invoke-direct {v4, v3}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap$DescendingEntrySet;-><init>(Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;)V

    iput-object v4, v3, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->h:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap$DescendingEntrySet;

    :cond_2
    iget-object v3, v3, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->h:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap$DescendingEntrySet;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    goto :goto_1

    :cond_3
    move-object v3, v9

    :goto_1
    array-length v4, v5

    add-int/lit8 v4, v4, -0x3

    :goto_2
    if-ltz v4, :cond_6

    invoke-virtual {v0, v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->U(I)I

    move-result v7

    aget v8, v5, v4

    if-nez v3, :cond_5

    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->T(I)I

    move-result v13

    packed-switch v13, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    invoke-virtual {v0, v8, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    and-int/2addr v7, v10

    int-to-long v13, v7

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v7, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->p(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v13

    invoke-interface {v2, v8, v7, v13}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->J(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Schema;)V

    goto/16 :goto_3

    :pswitch_1
    invoke-virtual {v0, v8, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    and-int/2addr v7, v10

    int-to-long v13, v7

    invoke-static {v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->G(JLjava/lang/Object;)J

    move-result-wide v13

    invoke-interface {v2, v8, v13, v14}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->p(IJ)V

    goto/16 :goto_3

    :pswitch_2
    invoke-virtual {v0, v8, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    and-int/2addr v7, v10

    int-to-long v13, v7

    invoke-static {v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->F(JLjava/lang/Object;)I

    move-result v7

    invoke-interface {v2, v8, v7}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->H(II)V

    goto/16 :goto_3

    :pswitch_3
    invoke-virtual {v0, v8, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    and-int/2addr v7, v10

    int-to-long v13, v7

    invoke-static {v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->G(JLjava/lang/Object;)J

    move-result-wide v13

    invoke-interface {v2, v8, v13, v14}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->o(IJ)V

    goto/16 :goto_3

    :pswitch_4
    invoke-virtual {v0, v8, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    and-int/2addr v7, v10

    int-to-long v13, v7

    invoke-static {v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->F(JLjava/lang/Object;)I

    move-result v7

    invoke-interface {v2, v8, v7}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->y(II)V

    goto/16 :goto_3

    :pswitch_5
    invoke-virtual {v0, v8, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    and-int/2addr v7, v10

    int-to-long v13, v7

    invoke-static {v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->F(JLjava/lang/Object;)I

    move-result v7

    invoke-interface {v2, v8, v7}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->F(II)V

    goto/16 :goto_3

    :pswitch_6
    invoke-virtual {v0, v8, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    and-int/2addr v7, v10

    int-to-long v13, v7

    invoke-static {v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->F(JLjava/lang/Object;)I

    move-result v7

    invoke-interface {v2, v8, v7}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->q(II)V

    goto/16 :goto_3

    :pswitch_7
    invoke-virtual {v0, v8, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    and-int/2addr v7, v10

    int-to-long v13, v7

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v7, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    invoke-interface {v2, v8, v7}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->L(ILcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    goto/16 :goto_3

    :pswitch_8
    invoke-virtual {v0, v8, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    and-int/2addr v7, v10

    int-to-long v13, v7

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v7, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->p(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v13

    invoke-interface {v2, v8, v7, v13}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->M(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Schema;)V

    goto/16 :goto_3

    :pswitch_9
    invoke-virtual {v0, v8, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    and-int/2addr v7, v10

    int-to-long v13, v7

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v7, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v8, v7, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->X(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Writer;)V

    goto/16 :goto_3

    :pswitch_a
    invoke-virtual {v0, v8, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    and-int/2addr v7, v10

    int-to-long v13, v7

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v7, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-interface {v2, v8, v7}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->x(IZ)V

    goto/16 :goto_3

    :pswitch_b
    invoke-virtual {v0, v8, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    and-int/2addr v7, v10

    int-to-long v13, v7

    invoke-static {v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->F(JLjava/lang/Object;)I

    move-result v7

    invoke-interface {v2, v8, v7}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->b(II)V

    goto/16 :goto_3

    :pswitch_c
    invoke-virtual {v0, v8, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    and-int/2addr v7, v10

    int-to-long v13, v7

    invoke-static {v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->G(JLjava/lang/Object;)J

    move-result-wide v13

    invoke-interface {v2, v8, v13, v14}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->r(IJ)V

    goto/16 :goto_3

    :pswitch_d
    invoke-virtual {v0, v8, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    and-int/2addr v7, v10

    int-to-long v13, v7

    invoke-static {v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->F(JLjava/lang/Object;)I

    move-result v7

    invoke-interface {v2, v8, v7}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->l(II)V

    goto/16 :goto_3

    :pswitch_e
    invoke-virtual {v0, v8, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    and-int/2addr v7, v10

    int-to-long v13, v7

    invoke-static {v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->G(JLjava/lang/Object;)J

    move-result-wide v13

    invoke-interface {v2, v8, v13, v14}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->f(IJ)V

    goto/16 :goto_3

    :pswitch_f
    invoke-virtual {v0, v8, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    and-int/2addr v7, v10

    int-to-long v13, v7

    invoke-static {v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->G(JLjava/lang/Object;)J

    move-result-wide v13

    invoke-interface {v2, v8, v13, v14}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->w(IJ)V

    goto/16 :goto_3

    :pswitch_10
    invoke-virtual {v0, v8, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    and-int/2addr v7, v10

    int-to-long v13, v7

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v7, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-interface {v2, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->v(FI)V

    goto/16 :goto_3

    :pswitch_11
    invoke-virtual {v0, v8, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    and-int/2addr v7, v10

    int-to-long v13, v7

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v7, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    invoke-interface {v2, v13, v14, v8}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->m(DI)V

    goto/16 :goto_3

    :pswitch_12
    and-int/2addr v7, v10

    int-to-long v13, v7

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v7, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v2, v8, v7, v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->W(Lcom/google/crypto/tink/shaded/protobuf/Writer;ILjava/lang/Object;I)V

    goto/16 :goto_3

    :pswitch_13
    aget v8, v5, v4

    and-int/2addr v7, v10

    int-to-long v13, v7

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v7, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-virtual {v0, v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->p(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v13

    sget-object v14, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v7, :cond_4

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_4

    invoke-interface {v2, v8, v7, v13}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->N(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Schema;)V

    goto/16 :goto_3

    :pswitch_14
    aget v8, v5, v4

    and-int/2addr v7, v10

    int-to-long v13, v7

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v7, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->N(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_3

    :pswitch_15
    aget v8, v5, v4

    and-int/2addr v7, v10

    int-to-long v13, v7

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v7, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->M(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_3

    :pswitch_16
    aget v8, v5, v4

    and-int/2addr v7, v10

    int-to-long v13, v7

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v7, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->L(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_3

    :pswitch_17
    aget v8, v5, v4

    and-int/2addr v7, v10

    int-to-long v13, v7

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v7, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->K(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_3

    :pswitch_18
    aget v8, v5, v4

    and-int/2addr v7, v10

    int-to-long v13, v7

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v7, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->E(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_3

    :pswitch_19
    aget v8, v5, v4

    and-int/2addr v7, v10

    int-to-long v13, v7

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v7, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->O(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_3

    :pswitch_1a
    aget v8, v5, v4

    and-int/2addr v7, v10

    int-to-long v13, v7

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v7, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->C(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_3

    :pswitch_1b
    aget v8, v5, v4

    and-int/2addr v7, v10

    int-to-long v13, v7

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v7, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->F(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_3

    :pswitch_1c
    aget v8, v5, v4

    and-int/2addr v7, v10

    int-to-long v13, v7

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v7, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->G(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_3

    :pswitch_1d
    aget v8, v5, v4

    and-int/2addr v7, v10

    int-to-long v13, v7

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v7, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->I(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_3

    :pswitch_1e
    aget v8, v5, v4

    and-int/2addr v7, v10

    int-to-long v13, v7

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v7, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->P(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_3

    :pswitch_1f
    aget v8, v5, v4

    and-int/2addr v7, v10

    int-to-long v13, v7

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v7, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->J(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_3

    :pswitch_20
    aget v8, v5, v4

    and-int/2addr v7, v10

    int-to-long v13, v7

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v7, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->H(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_3

    :pswitch_21
    aget v8, v5, v4

    and-int/2addr v7, v10

    int-to-long v13, v7

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v7, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->D(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_3

    :pswitch_22
    aget v8, v5, v4

    and-int/2addr v7, v10

    int-to-long v13, v7

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v7, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, v2, v12}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->N(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_3

    :pswitch_23
    aget v8, v5, v4

    and-int/2addr v7, v10

    int-to-long v13, v7

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v7, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, v2, v12}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->M(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_3

    :pswitch_24
    aget v8, v5, v4

    and-int/2addr v7, v10

    int-to-long v13, v7

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v7, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, v2, v12}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->L(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_3

    :pswitch_25
    aget v8, v5, v4

    and-int/2addr v7, v10

    int-to-long v13, v7

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v7, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, v2, v12}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->K(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_3

    :pswitch_26
    aget v8, v5, v4

    and-int/2addr v7, v10

    int-to-long v13, v7

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v7, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, v2, v12}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->E(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_3

    :pswitch_27
    aget v8, v5, v4

    and-int/2addr v7, v10

    int-to-long v13, v7

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v7, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, v2, v12}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->O(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_3

    :pswitch_28
    aget v8, v5, v4

    and-int/2addr v7, v10

    int-to-long v13, v7

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v7, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    sget-object v13, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v7, :cond_4

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    invoke-interface {v2, v8, v7}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->I(ILjava/util/List;)V

    goto/16 :goto_3

    :pswitch_29
    aget v8, v5, v4

    and-int/2addr v7, v10

    int-to-long v13, v7

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v7, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-virtual {v0, v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->p(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v13

    sget-object v14, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v7, :cond_4

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_4

    invoke-interface {v2, v8, v7, v13}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->K(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Schema;)V

    goto/16 :goto_3

    :pswitch_2a
    aget v8, v5, v4

    and-int/2addr v7, v10

    int-to-long v13, v7

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v7, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    sget-object v13, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v7, :cond_4

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    invoke-interface {v2, v8, v7}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->d(ILjava/util/List;)V

    goto/16 :goto_3

    :pswitch_2b
    aget v8, v5, v4

    and-int/2addr v7, v10

    int-to-long v13, v7

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v7, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, v2, v12}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->C(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_3

    :pswitch_2c
    aget v8, v5, v4

    and-int/2addr v7, v10

    int-to-long v13, v7

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v7, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, v2, v12}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->F(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_3

    :pswitch_2d
    aget v8, v5, v4

    and-int/2addr v7, v10

    int-to-long v13, v7

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v7, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, v2, v12}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->G(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_3

    :pswitch_2e
    aget v8, v5, v4

    and-int/2addr v7, v10

    int-to-long v13, v7

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v7, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, v2, v12}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->I(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_3

    :pswitch_2f
    aget v8, v5, v4

    and-int/2addr v7, v10

    int-to-long v13, v7

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v7, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, v2, v12}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->P(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_3

    :pswitch_30
    aget v8, v5, v4

    and-int/2addr v7, v10

    int-to-long v13, v7

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v7, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, v2, v12}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->J(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_3

    :pswitch_31
    aget v8, v5, v4

    and-int/2addr v7, v10

    int-to-long v13, v7

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v7, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, v2, v12}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->H(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_3

    :pswitch_32
    aget v8, v5, v4

    and-int/2addr v7, v10

    int-to-long v13, v7

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v7, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v8, v7, v2, v12}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->D(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_3

    :pswitch_33
    invoke-virtual {v0, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    and-int/2addr v7, v10

    int-to-long v13, v7

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v7, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->p(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v13

    invoke-interface {v2, v8, v7, v13}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->J(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Schema;)V

    goto/16 :goto_3

    :pswitch_34
    invoke-virtual {v0, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    and-int/2addr v7, v10

    int-to-long v13, v7

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v7, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)J

    move-result-wide v13

    invoke-interface {v2, v8, v13, v14}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->p(IJ)V

    goto/16 :goto_3

    :pswitch_35
    invoke-virtual {v0, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    and-int/2addr v7, v10

    int-to-long v13, v7

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v7, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)I

    move-result v7

    invoke-interface {v2, v8, v7}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->H(II)V

    goto/16 :goto_3

    :pswitch_36
    invoke-virtual {v0, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    and-int/2addr v7, v10

    int-to-long v13, v7

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v7, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)J

    move-result-wide v13

    invoke-interface {v2, v8, v13, v14}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->o(IJ)V

    goto/16 :goto_3

    :pswitch_37
    invoke-virtual {v0, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    and-int/2addr v7, v10

    int-to-long v13, v7

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v7, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)I

    move-result v7

    invoke-interface {v2, v8, v7}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->y(II)V

    goto/16 :goto_3

    :pswitch_38
    invoke-virtual {v0, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    and-int/2addr v7, v10

    int-to-long v13, v7

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v7, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)I

    move-result v7

    invoke-interface {v2, v8, v7}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->F(II)V

    goto/16 :goto_3

    :pswitch_39
    invoke-virtual {v0, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    and-int/2addr v7, v10

    int-to-long v13, v7

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v7, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)I

    move-result v7

    invoke-interface {v2, v8, v7}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->q(II)V

    goto/16 :goto_3

    :pswitch_3a
    invoke-virtual {v0, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    and-int/2addr v7, v10

    int-to-long v13, v7

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v7, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    invoke-interface {v2, v8, v7}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->L(ILcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    goto/16 :goto_3

    :pswitch_3b
    invoke-virtual {v0, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    and-int/2addr v7, v10

    int-to-long v13, v7

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v7, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v4}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->p(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v13

    invoke-interface {v2, v8, v7, v13}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->M(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Schema;)V

    goto/16 :goto_3

    :pswitch_3c
    invoke-virtual {v0, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    and-int/2addr v7, v10

    int-to-long v13, v7

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v7, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v8, v7, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->X(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Writer;)V

    goto/16 :goto_3

    :pswitch_3d
    invoke-virtual {v0, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    and-int/2addr v7, v10

    int-to-long v13, v7

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v7, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->c(JLjava/lang/Object;)Z

    move-result v7

    invoke-interface {v2, v8, v7}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->x(IZ)V

    goto/16 :goto_3

    :pswitch_3e
    invoke-virtual {v0, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    and-int/2addr v7, v10

    int-to-long v13, v7

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v7, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)I

    move-result v7

    invoke-interface {v2, v8, v7}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->b(II)V

    goto :goto_3

    :pswitch_3f
    invoke-virtual {v0, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    and-int/2addr v7, v10

    int-to-long v13, v7

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v7, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)J

    move-result-wide v13

    invoke-interface {v2, v8, v13, v14}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->r(IJ)V

    goto :goto_3

    :pswitch_40
    invoke-virtual {v0, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    and-int/2addr v7, v10

    int-to-long v13, v7

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v7, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)I

    move-result v7

    invoke-interface {v2, v8, v7}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->l(II)V

    goto :goto_3

    :pswitch_41
    invoke-virtual {v0, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    and-int/2addr v7, v10

    int-to-long v13, v7

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v7, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)J

    move-result-wide v13

    invoke-interface {v2, v8, v13, v14}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->f(IJ)V

    goto :goto_3

    :pswitch_42
    invoke-virtual {v0, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    and-int/2addr v7, v10

    int-to-long v13, v7

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v7, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)J

    move-result-wide v13

    invoke-interface {v2, v8, v13, v14}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->w(IJ)V

    goto :goto_3

    :pswitch_43
    invoke-virtual {v0, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    and-int/2addr v7, v10

    int-to-long v13, v7

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v7, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)F

    move-result v7

    invoke-interface {v2, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->v(FI)V

    goto :goto_3

    :pswitch_44
    invoke-virtual {v0, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    and-int/2addr v7, v10

    int-to-long v13, v7

    sget-object v7, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v7, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->e(JLjava/lang/Object;)D

    move-result-wide v13

    invoke-interface {v2, v13, v14, v8}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->m(DI)V

    :cond_4
    :goto_3
    add-int/lit8 v4, v4, -0x3

    goto/16 :goto_2

    :cond_5
    check-cast v6, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchemaLite;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ltr;->x(Ljava/lang/Object;)V

    throw v9

    :cond_6
    if-nez v3, :cond_7

    return-void

    :cond_7
    check-cast v6, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchemaLite;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ltr;->x(Ljava/lang/Object;)V

    throw v9

    :cond_8
    iget-boolean v7, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->h:Z

    if-eqz v7, :cond_f

    if-eqz v3, :cond_9

    move-object v3, v6

    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchemaLite;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v3, v1

    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object v3, v3, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/crypto/tink/shaded/protobuf/FieldSet;

    iget-object v7, v3, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->a:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap$1;

    invoke-virtual {v7}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->i()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    goto :goto_4

    :cond_9
    move-object v3, v9

    :goto_4
    array-length v7, v5

    move v8, v12

    :goto_5
    if-ge v8, v7, :cond_d

    invoke-virtual {v0, v8}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->U(I)I

    move-result v13

    aget v14, v5, v8

    if-nez v3, :cond_c

    invoke-static {v13}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->T(I)I

    move-result v15

    packed-switch v15, :pswitch_data_1

    :cond_a
    move-object v15, v9

    move/from16 v16, v10

    goto/16 :goto_6

    :pswitch_45
    invoke-virtual {v0, v14, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    and-int/2addr v13, v10

    move-object v15, v9

    move/from16 v16, v10

    int-to-long v9, v13

    sget-object v13, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v13, v9, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v8}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->p(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v10

    invoke-interface {v2, v14, v9, v10}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->J(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Schema;)V

    goto/16 :goto_6

    :pswitch_46
    move-object v15, v9

    move/from16 v16, v10

    invoke-virtual {v0, v14, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    and-int v9, v13, v16

    int-to-long v9, v9

    invoke-static {v9, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->G(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->p(IJ)V

    goto/16 :goto_6

    :pswitch_47
    move-object v15, v9

    move/from16 v16, v10

    invoke-virtual {v0, v14, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    and-int v9, v13, v16

    int-to-long v9, v9

    invoke-static {v9, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->F(JLjava/lang/Object;)I

    move-result v9

    invoke-interface {v2, v14, v9}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->H(II)V

    goto/16 :goto_6

    :pswitch_48
    move-object v15, v9

    move/from16 v16, v10

    invoke-virtual {v0, v14, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    and-int v9, v13, v16

    int-to-long v9, v9

    invoke-static {v9, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->G(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->o(IJ)V

    goto/16 :goto_6

    :pswitch_49
    move-object v15, v9

    move/from16 v16, v10

    invoke-virtual {v0, v14, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    and-int v9, v13, v16

    int-to-long v9, v9

    invoke-static {v9, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->F(JLjava/lang/Object;)I

    move-result v9

    invoke-interface {v2, v14, v9}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->y(II)V

    goto/16 :goto_6

    :pswitch_4a
    move-object v15, v9

    move/from16 v16, v10

    invoke-virtual {v0, v14, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    and-int v9, v13, v16

    int-to-long v9, v9

    invoke-static {v9, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->F(JLjava/lang/Object;)I

    move-result v9

    invoke-interface {v2, v14, v9}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->F(II)V

    goto/16 :goto_6

    :pswitch_4b
    move-object v15, v9

    move/from16 v16, v10

    invoke-virtual {v0, v14, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    and-int v9, v13, v16

    int-to-long v9, v9

    invoke-static {v9, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->F(JLjava/lang/Object;)I

    move-result v9

    invoke-interface {v2, v14, v9}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->q(II)V

    goto/16 :goto_6

    :pswitch_4c
    move-object v15, v9

    move/from16 v16, v10

    invoke-virtual {v0, v14, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    and-int v9, v13, v16

    int-to-long v9, v9

    sget-object v13, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v13, v9, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    invoke-interface {v2, v14, v9}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->L(ILcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    goto/16 :goto_6

    :pswitch_4d
    move-object v15, v9

    move/from16 v16, v10

    invoke-virtual {v0, v14, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    and-int v9, v13, v16

    int-to-long v9, v9

    sget-object v13, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v13, v9, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v8}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->p(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v10

    invoke-interface {v2, v14, v9, v10}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->M(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Schema;)V

    goto/16 :goto_6

    :pswitch_4e
    move-object v15, v9

    move/from16 v16, v10

    invoke-virtual {v0, v14, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    and-int v9, v13, v16

    int-to-long v9, v9

    sget-object v13, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v13, v9, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v14, v9, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->X(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Writer;)V

    goto/16 :goto_6

    :pswitch_4f
    move-object v15, v9

    move/from16 v16, v10

    invoke-virtual {v0, v14, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    and-int v9, v13, v16

    int-to-long v9, v9

    sget-object v13, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v13, v9, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-interface {v2, v14, v9}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->x(IZ)V

    goto/16 :goto_6

    :pswitch_50
    move-object v15, v9

    move/from16 v16, v10

    invoke-virtual {v0, v14, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    and-int v9, v13, v16

    int-to-long v9, v9

    invoke-static {v9, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->F(JLjava/lang/Object;)I

    move-result v9

    invoke-interface {v2, v14, v9}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->b(II)V

    goto/16 :goto_6

    :pswitch_51
    move-object v15, v9

    move/from16 v16, v10

    invoke-virtual {v0, v14, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    and-int v9, v13, v16

    int-to-long v9, v9

    invoke-static {v9, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->G(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->r(IJ)V

    goto/16 :goto_6

    :pswitch_52
    move-object v15, v9

    move/from16 v16, v10

    invoke-virtual {v0, v14, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    and-int v9, v13, v16

    int-to-long v9, v9

    invoke-static {v9, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->F(JLjava/lang/Object;)I

    move-result v9

    invoke-interface {v2, v14, v9}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->l(II)V

    goto/16 :goto_6

    :pswitch_53
    move-object v15, v9

    move/from16 v16, v10

    invoke-virtual {v0, v14, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    and-int v9, v13, v16

    int-to-long v9, v9

    invoke-static {v9, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->G(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->f(IJ)V

    goto/16 :goto_6

    :pswitch_54
    move-object v15, v9

    move/from16 v16, v10

    invoke-virtual {v0, v14, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    and-int v9, v13, v16

    int-to-long v9, v9

    invoke-static {v9, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->G(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->w(IJ)V

    goto/16 :goto_6

    :pswitch_55
    move-object v15, v9

    move/from16 v16, v10

    invoke-virtual {v0, v14, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    and-int v9, v13, v16

    int-to-long v9, v9

    sget-object v13, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v13, v9, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-interface {v2, v9, v14}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->v(FI)V

    goto/16 :goto_6

    :pswitch_56
    move-object v15, v9

    move/from16 v16, v10

    invoke-virtual {v0, v14, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    and-int v9, v13, v16

    int-to-long v9, v9

    sget-object v13, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v13, v9, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    invoke-interface {v2, v9, v10, v14}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->m(DI)V

    goto/16 :goto_6

    :pswitch_57
    move-object v15, v9

    move/from16 v16, v10

    and-int v9, v13, v16

    int-to-long v9, v9

    sget-object v13, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v13, v9, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v2, v14, v9, v8}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->W(Lcom/google/crypto/tink/shaded/protobuf/Writer;ILjava/lang/Object;I)V

    goto/16 :goto_6

    :pswitch_58
    move-object v15, v9

    move/from16 v16, v10

    aget v9, v5, v8

    and-int v10, v13, v16

    int-to-long v13, v10

    sget-object v10, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v10, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-virtual {v0, v8}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->p(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v13

    sget-object v14, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v10, :cond_b

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_b

    invoke-interface {v2, v9, v10, v13}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->N(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Schema;)V

    goto/16 :goto_6

    :pswitch_59
    move-object v15, v9

    move/from16 v16, v10

    aget v9, v5, v8

    and-int v10, v13, v16

    int-to-long v13, v10

    sget-object v10, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v10, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v9, v10, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->N(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_6

    :pswitch_5a
    move-object v15, v9

    move/from16 v16, v10

    aget v9, v5, v8

    and-int v10, v13, v16

    int-to-long v13, v10

    sget-object v10, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v10, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v9, v10, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->M(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_6

    :pswitch_5b
    move-object v15, v9

    move/from16 v16, v10

    aget v9, v5, v8

    and-int v10, v13, v16

    int-to-long v13, v10

    sget-object v10, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v10, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v9, v10, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->L(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_6

    :pswitch_5c
    move-object v15, v9

    move/from16 v16, v10

    aget v9, v5, v8

    and-int v10, v13, v16

    int-to-long v13, v10

    sget-object v10, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v10, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v9, v10, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->K(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_6

    :pswitch_5d
    move-object v15, v9

    move/from16 v16, v10

    aget v9, v5, v8

    and-int v10, v13, v16

    int-to-long v13, v10

    sget-object v10, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v10, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v9, v10, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->E(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_6

    :pswitch_5e
    move-object v15, v9

    move/from16 v16, v10

    aget v9, v5, v8

    and-int v10, v13, v16

    int-to-long v13, v10

    sget-object v10, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v10, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v9, v10, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->O(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_6

    :pswitch_5f
    move-object v15, v9

    move/from16 v16, v10

    aget v9, v5, v8

    and-int v10, v13, v16

    int-to-long v13, v10

    sget-object v10, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v10, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v9, v10, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->C(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_6

    :pswitch_60
    move-object v15, v9

    move/from16 v16, v10

    aget v9, v5, v8

    and-int v10, v13, v16

    int-to-long v13, v10

    sget-object v10, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v10, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v9, v10, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->F(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_6

    :pswitch_61
    move-object v15, v9

    move/from16 v16, v10

    aget v9, v5, v8

    and-int v10, v13, v16

    int-to-long v13, v10

    sget-object v10, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v10, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v9, v10, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->G(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_6

    :pswitch_62
    move-object v15, v9

    move/from16 v16, v10

    aget v9, v5, v8

    and-int v10, v13, v16

    int-to-long v13, v10

    sget-object v10, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v10, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v9, v10, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->I(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_6

    :pswitch_63
    move-object v15, v9

    move/from16 v16, v10

    aget v9, v5, v8

    and-int v10, v13, v16

    int-to-long v13, v10

    sget-object v10, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v10, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v9, v10, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->P(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_6

    :pswitch_64
    move-object v15, v9

    move/from16 v16, v10

    aget v9, v5, v8

    and-int v10, v13, v16

    int-to-long v13, v10

    sget-object v10, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v10, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v9, v10, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->J(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_6

    :pswitch_65
    move-object v15, v9

    move/from16 v16, v10

    aget v9, v5, v8

    and-int v10, v13, v16

    int-to-long v13, v10

    sget-object v10, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v10, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v9, v10, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->H(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_6

    :pswitch_66
    move-object v15, v9

    move/from16 v16, v10

    aget v9, v5, v8

    and-int v10, v13, v16

    int-to-long v13, v10

    sget-object v10, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v10, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v9, v10, v2, v11}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->D(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_6

    :pswitch_67
    move-object v15, v9

    move/from16 v16, v10

    aget v9, v5, v8

    and-int v10, v13, v16

    int-to-long v13, v10

    sget-object v10, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v10, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v9, v10, v2, v12}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->N(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_6

    :pswitch_68
    move-object v15, v9

    move/from16 v16, v10

    aget v9, v5, v8

    and-int v10, v13, v16

    int-to-long v13, v10

    sget-object v10, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v10, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v9, v10, v2, v12}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->M(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_6

    :pswitch_69
    move-object v15, v9

    move/from16 v16, v10

    aget v9, v5, v8

    and-int v10, v13, v16

    int-to-long v13, v10

    sget-object v10, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v10, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v9, v10, v2, v12}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->L(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_6

    :pswitch_6a
    move-object v15, v9

    move/from16 v16, v10

    aget v9, v5, v8

    and-int v10, v13, v16

    int-to-long v13, v10

    sget-object v10, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v10, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v9, v10, v2, v12}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->K(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_6

    :pswitch_6b
    move-object v15, v9

    move/from16 v16, v10

    aget v9, v5, v8

    and-int v10, v13, v16

    int-to-long v13, v10

    sget-object v10, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v10, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v9, v10, v2, v12}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->E(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_6

    :pswitch_6c
    move-object v15, v9

    move/from16 v16, v10

    aget v9, v5, v8

    and-int v10, v13, v16

    int-to-long v13, v10

    sget-object v10, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v10, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v9, v10, v2, v12}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->O(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_6

    :pswitch_6d
    move-object v15, v9

    move/from16 v16, v10

    aget v9, v5, v8

    and-int v10, v13, v16

    int-to-long v13, v10

    sget-object v10, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v10, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    sget-object v13, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v10, :cond_b

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_b

    invoke-interface {v2, v9, v10}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->I(ILjava/util/List;)V

    goto/16 :goto_6

    :pswitch_6e
    move-object v15, v9

    move/from16 v16, v10

    aget v9, v5, v8

    and-int v10, v13, v16

    int-to-long v13, v10

    sget-object v10, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v10, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-virtual {v0, v8}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->p(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v13

    sget-object v14, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v10, :cond_b

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_b

    invoke-interface {v2, v9, v10, v13}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->K(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Schema;)V

    goto/16 :goto_6

    :pswitch_6f
    move-object v15, v9

    move/from16 v16, v10

    aget v9, v5, v8

    and-int v10, v13, v16

    int-to-long v13, v10

    sget-object v10, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v10, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    sget-object v13, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v10, :cond_b

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_b

    invoke-interface {v2, v9, v10}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->d(ILjava/util/List;)V

    goto/16 :goto_6

    :pswitch_70
    move-object v15, v9

    move/from16 v16, v10

    aget v9, v5, v8

    and-int v10, v13, v16

    int-to-long v13, v10

    sget-object v10, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v10, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v9, v10, v2, v12}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->C(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_6

    :pswitch_71
    move-object v15, v9

    move/from16 v16, v10

    aget v9, v5, v8

    and-int v10, v13, v16

    int-to-long v13, v10

    sget-object v10, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v10, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v9, v10, v2, v12}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->F(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_6

    :pswitch_72
    move-object v15, v9

    move/from16 v16, v10

    aget v9, v5, v8

    and-int v10, v13, v16

    int-to-long v13, v10

    sget-object v10, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v10, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v9, v10, v2, v12}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->G(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_6

    :pswitch_73
    move-object v15, v9

    move/from16 v16, v10

    aget v9, v5, v8

    and-int v10, v13, v16

    int-to-long v13, v10

    sget-object v10, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v10, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v9, v10, v2, v12}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->I(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_6

    :pswitch_74
    move-object v15, v9

    move/from16 v16, v10

    aget v9, v5, v8

    and-int v10, v13, v16

    int-to-long v13, v10

    sget-object v10, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v10, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v9, v10, v2, v12}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->P(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_6

    :pswitch_75
    move-object v15, v9

    move/from16 v16, v10

    aget v9, v5, v8

    and-int v10, v13, v16

    int-to-long v13, v10

    sget-object v10, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v10, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v9, v10, v2, v12}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->J(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_6

    :pswitch_76
    move-object v15, v9

    move/from16 v16, v10

    aget v9, v5, v8

    and-int v10, v13, v16

    int-to-long v13, v10

    sget-object v10, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v10, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v9, v10, v2, v12}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->H(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_6

    :pswitch_77
    move-object v15, v9

    move/from16 v16, v10

    aget v9, v5, v8

    and-int v10, v13, v16

    int-to-long v13, v10

    sget-object v10, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v10, v13, v14, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-static {v9, v10, v2, v12}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->D(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Writer;Z)V

    goto/16 :goto_6

    :pswitch_78
    move-object v15, v9

    move/from16 v16, v10

    invoke-virtual {v0, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    and-int v9, v13, v16

    int-to-long v9, v9

    sget-object v13, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v13, v9, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v8}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->p(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v10

    invoke-interface {v2, v14, v9, v10}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->J(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Schema;)V

    goto/16 :goto_6

    :pswitch_79
    move-object v15, v9

    move/from16 v16, v10

    invoke-virtual {v0, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    and-int v9, v13, v16

    int-to-long v9, v9

    sget-object v13, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v13, v9, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->p(IJ)V

    goto/16 :goto_6

    :pswitch_7a
    move-object v15, v9

    move/from16 v16, v10

    invoke-virtual {v0, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    and-int v9, v13, v16

    int-to-long v9, v9

    sget-object v13, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v13, v9, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)I

    move-result v9

    invoke-interface {v2, v14, v9}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->H(II)V

    goto/16 :goto_6

    :pswitch_7b
    move-object v15, v9

    move/from16 v16, v10

    invoke-virtual {v0, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    and-int v9, v13, v16

    int-to-long v9, v9

    sget-object v13, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v13, v9, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->o(IJ)V

    goto/16 :goto_6

    :pswitch_7c
    move-object v15, v9

    move/from16 v16, v10

    invoke-virtual {v0, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    and-int v9, v13, v16

    int-to-long v9, v9

    sget-object v13, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v13, v9, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)I

    move-result v9

    invoke-interface {v2, v14, v9}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->y(II)V

    goto/16 :goto_6

    :pswitch_7d
    move-object v15, v9

    move/from16 v16, v10

    invoke-virtual {v0, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    and-int v9, v13, v16

    int-to-long v9, v9

    sget-object v13, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v13, v9, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)I

    move-result v9

    invoke-interface {v2, v14, v9}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->F(II)V

    goto/16 :goto_6

    :pswitch_7e
    move-object v15, v9

    move/from16 v16, v10

    invoke-virtual {v0, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    and-int v9, v13, v16

    int-to-long v9, v9

    sget-object v13, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v13, v9, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)I

    move-result v9

    invoke-interface {v2, v14, v9}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->q(II)V

    goto/16 :goto_6

    :pswitch_7f
    move-object v15, v9

    move/from16 v16, v10

    invoke-virtual {v0, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    and-int v9, v13, v16

    int-to-long v9, v9

    sget-object v13, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v13, v9, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    invoke-interface {v2, v14, v9}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->L(ILcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    goto/16 :goto_6

    :pswitch_80
    move-object v15, v9

    move/from16 v16, v10

    invoke-virtual {v0, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    and-int v9, v13, v16

    int-to-long v9, v9

    sget-object v13, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v13, v9, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v8}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->p(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v10

    invoke-interface {v2, v14, v9, v10}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->M(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Schema;)V

    goto/16 :goto_6

    :pswitch_81
    move-object v15, v9

    move/from16 v16, v10

    invoke-virtual {v0, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    and-int v9, v13, v16

    int-to-long v9, v9

    sget-object v13, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v13, v9, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v14, v9, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->X(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Writer;)V

    goto/16 :goto_6

    :pswitch_82
    move-object v15, v9

    move/from16 v16, v10

    invoke-virtual {v0, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    and-int v9, v13, v16

    int-to-long v9, v9

    sget-object v13, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v13, v9, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->c(JLjava/lang/Object;)Z

    move-result v9

    invoke-interface {v2, v14, v9}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->x(IZ)V

    goto/16 :goto_6

    :pswitch_83
    move-object v15, v9

    move/from16 v16, v10

    invoke-virtual {v0, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    and-int v9, v13, v16

    int-to-long v9, v9

    sget-object v13, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v13, v9, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)I

    move-result v9

    invoke-interface {v2, v14, v9}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->b(II)V

    goto/16 :goto_6

    :pswitch_84
    move-object v15, v9

    move/from16 v16, v10

    invoke-virtual {v0, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    and-int v9, v13, v16

    int-to-long v9, v9

    sget-object v13, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v13, v9, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->r(IJ)V

    goto/16 :goto_6

    :pswitch_85
    move-object v15, v9

    move/from16 v16, v10

    invoke-virtual {v0, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    and-int v9, v13, v16

    int-to-long v9, v9

    sget-object v13, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v13, v9, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)I

    move-result v9

    invoke-interface {v2, v14, v9}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->l(II)V

    goto :goto_6

    :pswitch_86
    move-object v15, v9

    move/from16 v16, v10

    invoke-virtual {v0, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    and-int v9, v13, v16

    int-to-long v9, v9

    sget-object v13, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v13, v9, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->f(IJ)V

    goto :goto_6

    :pswitch_87
    move-object v15, v9

    move/from16 v16, v10

    invoke-virtual {v0, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    and-int v9, v13, v16

    int-to-long v9, v9

    sget-object v13, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v13, v9, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-interface {v2, v14, v9, v10}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->w(IJ)V

    goto :goto_6

    :pswitch_88
    move-object v15, v9

    move/from16 v16, v10

    invoke-virtual {v0, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    and-int v9, v13, v16

    int-to-long v9, v9

    sget-object v13, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v13, v9, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)F

    move-result v9

    invoke-interface {v2, v9, v14}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->v(FI)V

    goto :goto_6

    :pswitch_89
    move-object v15, v9

    move/from16 v16, v10

    invoke-virtual {v0, v8, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    and-int v9, v13, v16

    int-to-long v9, v9

    sget-object v13, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v13, v9, v10, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->e(JLjava/lang/Object;)D

    move-result-wide v9

    invoke-interface {v2, v9, v10, v14}, Lcom/google/crypto/tink/shaded/protobuf/Writer;->m(DI)V

    :cond_b
    :goto_6
    add-int/lit8 v8, v8, 0x3

    move-object v9, v15

    move/from16 v10, v16

    goto/16 :goto_5

    :cond_c
    move-object v15, v9

    check-cast v6, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchemaLite;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ltr;->x(Ljava/lang/Object;)V

    throw v15

    :cond_d
    move-object v15, v9

    if-nez v3, :cond_e

    check-cast v4, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLiteSchema;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, v1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    iget-object v0, v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;->f(Lcom/google/crypto/tink/shaded/protobuf/Writer;)V

    return-void

    :cond_e
    check-cast v6, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchemaLite;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ltr;->x(Ljava/lang/Object;)V

    throw v15

    :cond_f
    invoke-virtual/range {p0 .. p2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->V(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Writer;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
    .end packed-switch
.end method

.method public final j(Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite;)I
    .locals 1

    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->h:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->s(Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite;)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->r(Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite;)I

    move-result p0

    return p0
.end method

.method public final k(Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;I)Z
    .locals 0

    invoke-virtual {p0, p3, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p3, p2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final m(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object p4, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->a:[I

    aget p4, p4, p2

    invoke-virtual {p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->U(I)I

    move-result p4

    const p5, 0xfffff

    and-int/2addr p4, p5

    int-to-long p4, p4

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p4, p5, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->n(I)Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;

    move-result-object p4

    if-nez p4, :cond_1

    :goto_0
    return-object p3

    :cond_1
    iget-object p3, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->p:Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;

    invoke-interface {p3, p1}, Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;->c(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/MapFieldLite;

    invoke-virtual {p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->o(I)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p3, p0}, Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;->b(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;

    const/4 p0, 0x0

    throw p0
.end method

.method public final n(I)Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;
    .locals 0

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->b:[Ljava/lang/Object;

    aget-object p0, p0, p1

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/Internal$EnumVerifier;

    return-object p0
.end method

.method public final o(I)Ljava/lang/Object;
    .locals 0

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->b:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final p(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;
    .locals 2

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->b:[Ljava/lang/Object;

    aget-object v0, p0, p1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/Schema;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->c:Lcom/google/crypto/tink/shaded/protobuf/Protobuf;

    add-int/lit8 v1, p1, 0x1

    aget-object v1, p0, v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->a(Ljava/lang/Class;)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v0

    aput-object v0, p0, p1

    return-object v0
.end method

.method public final r(Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite;)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->r:Lsun/misc/Unsafe;

    const v4, 0xfffff

    move v7, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_0
    iget-object v9, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->a:[I

    array-length v10, v9

    if-ge v5, v10, :cond_8

    invoke-virtual {v0, v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->U(I)I

    move-result v10

    aget v11, v9, v5

    invoke-static {v10}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->T(I)I

    move-result v12

    const/16 v13, 0x11

    const/4 v14, 0x1

    if-gt v12, v13, :cond_0

    add-int/lit8 v13, v5, 0x2

    aget v9, v9, v13

    and-int v13, v9, v4

    ushr-int/lit8 v9, v9, 0x14

    shl-int v9, v14, v9

    if-eq v13, v7, :cond_1

    int-to-long v7, v13

    invoke-virtual {v2, v1, v7, v8}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    move v7, v13

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    :cond_1
    :goto_1
    and-int/2addr v10, v4

    int-to-long v3, v10

    const/16 v15, 0x3f

    const/4 v10, 0x4

    const/16 v13, 0x8

    packed-switch v12, :pswitch_data_0

    goto/16 :goto_b

    :pswitch_0
    invoke-virtual {v0, v11, v5, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    invoke-virtual {v0, v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->p(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v4

    invoke-static {v11, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->e(ILcom/google/crypto/tink/shaded/protobuf/MessageLite;Lcom/google/crypto/tink/shaded/protobuf/Schema;)I

    move-result v3

    :goto_2
    add-int/2addr v6, v3

    goto/16 :goto_b

    :pswitch_1
    invoke-virtual {v0, v11, v5, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-static {v3, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->G(JLjava/lang/Object;)J

    move-result-wide v3

    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->i(I)I

    move-result v9

    shl-long v10, v3, v14

    shr-long/2addr v3, v15

    xor-long/2addr v3, v10

    invoke-static {v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->l(J)I

    move-result v3

    :goto_3
    add-int/2addr v3, v9

    goto :goto_2

    :pswitch_2
    invoke-virtual {v0, v11, v5, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-static {v3, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->F(JLjava/lang/Object;)I

    move-result v3

    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->i(I)I

    move-result v4

    shl-int/lit8 v9, v3, 0x1

    shr-int/lit8 v3, v3, 0x1f

    xor-int/2addr v3, v9

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->k(I)I

    move-result v3

    :goto_4
    add-int/2addr v3, v4

    goto :goto_2

    :pswitch_3
    invoke-virtual {v0, v11, v5, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {v11, v13, v6}, Lo60;->a(III)I

    move-result v6

    goto/16 :goto_b

    :pswitch_4
    invoke-virtual {v0, v11, v5, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {v11, v10, v6}, Lo60;->a(III)I

    move-result v6

    goto/16 :goto_b

    :pswitch_5
    invoke-virtual {v0, v11, v5, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-static {v3, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->F(JLjava/lang/Object;)I

    move-result v3

    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->i(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->f(I)I

    move-result v3

    goto :goto_4

    :pswitch_6
    invoke-virtual {v0, v11, v5, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-static {v3, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->F(JLjava/lang/Object;)I

    move-result v3

    invoke-static {v11, v3}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->j(II)I

    move-result v3

    goto :goto_2

    :pswitch_7
    invoke-virtual {v0, v11, v5, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    invoke-static {v11, v3}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->a(ILcom/google/crypto/tink/shaded/protobuf/ByteString;)I

    move-result v3

    goto :goto_2

    :pswitch_8
    invoke-virtual {v0, v11, v5, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->p(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v4

    invoke-static {v11, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->l(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Schema;)I

    move-result v3

    :goto_5
    add-int/2addr v6, v3

    goto/16 :goto_b

    :pswitch_9
    invoke-virtual {v0, v11, v5, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    if-eqz v4, :cond_2

    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->i(I)I

    move-result v4

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->size()I

    move-result v3

    invoke-static {v3, v3, v4, v6}, Ltr;->c(IIII)I

    move-result v3

    :goto_6
    move v6, v3

    goto/16 :goto_b

    :cond_2
    check-cast v3, Ljava/lang/String;

    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->i(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->h(Ljava/lang/String;)I

    move-result v3

    :goto_7
    add-int/2addr v3, v4

    add-int/2addr v3, v6

    goto :goto_6

    :pswitch_a
    invoke-virtual {v0, v11, v5, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {v11, v14, v6}, Lo60;->a(III)I

    move-result v6

    goto/16 :goto_b

    :pswitch_b
    invoke-virtual {v0, v11, v5, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->c(I)I

    move-result v3

    goto/16 :goto_2

    :pswitch_c
    invoke-virtual {v0, v11, v5, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->d(I)I

    move-result v3

    goto/16 :goto_2

    :pswitch_d
    invoke-virtual {v0, v11, v5, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-static {v3, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->F(JLjava/lang/Object;)I

    move-result v3

    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->i(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->f(I)I

    move-result v3

    goto/16 :goto_4

    :pswitch_e
    invoke-virtual {v0, v11, v5, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-static {v3, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->G(JLjava/lang/Object;)J

    move-result-wide v3

    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->i(I)I

    move-result v9

    invoke-static {v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->l(J)I

    move-result v3

    goto/16 :goto_3

    :pswitch_f
    invoke-virtual {v0, v11, v5, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-static {v3, v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->G(JLjava/lang/Object;)J

    move-result-wide v3

    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->i(I)I

    move-result v9

    invoke-static {v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->l(J)I

    move-result v3

    goto/16 :goto_3

    :pswitch_10
    invoke-virtual {v0, v11, v5, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {v11, v10, v6}, Lo60;->a(III)I

    move-result v6

    goto/16 :goto_b

    :pswitch_11
    invoke-virtual {v0, v11, v5, v1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {v11, v13, v6}, Lo60;->a(III)I

    move-result v6

    goto/16 :goto_b

    :pswitch_12
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->o(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v9, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->p:Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;

    invoke-interface {v9, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_b

    :pswitch_13
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v0, v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->p(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v4

    sget-object v9, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_3

    const/4 v12, 0x0

    goto :goto_9

    :cond_3
    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_8
    if-ge v10, v9, :cond_4

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    invoke-static {v11, v13, v4}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->e(ILcom/google/crypto/tink/shaded/protobuf/MessageLite;Lcom/google/crypto/tink/shaded/protobuf/Schema;)I

    move-result v13

    add-int/2addr v12, v13

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_4
    :goto_9
    add-int/2addr v6, v12

    goto/16 :goto_b

    :pswitch_14
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->q(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_7

    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->i(I)I

    move-result v4

    invoke-static {v3, v4, v3, v6}, Ltr;->c(IIII)I

    move-result v6

    goto/16 :goto_b

    :pswitch_15
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->o(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_7

    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->i(I)I

    move-result v4

    invoke-static {v3, v4, v3, v6}, Ltr;->c(IIII)I

    move-result v6

    goto/16 :goto_b

    :pswitch_16
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->g(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_7

    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->i(I)I

    move-result v4

    invoke-static {v3, v4, v3, v6}, Ltr;->c(IIII)I

    move-result v6

    goto/16 :goto_b

    :pswitch_17
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->e(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_7

    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->i(I)I

    move-result v4

    invoke-static {v3, v4, v3, v6}, Ltr;->c(IIII)I

    move-result v6

    goto/16 :goto_b

    :pswitch_18
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->c(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_7

    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->i(I)I

    move-result v4

    invoke-static {v3, v4, v3, v6}, Ltr;->c(IIII)I

    move-result v6

    goto/16 :goto_b

    :pswitch_19
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->t(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_7

    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->i(I)I

    move-result v4

    invoke-static {v3, v4, v3, v6}, Ltr;->c(IIII)I

    move-result v6

    goto/16 :goto_b

    :pswitch_1a
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7

    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->i(I)I

    move-result v4

    invoke-static {v3, v4, v3, v6}, Ltr;->c(IIII)I

    move-result v6

    goto/16 :goto_b

    :pswitch_1b
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->e(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_7

    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->i(I)I

    move-result v4

    invoke-static {v3, v4, v3, v6}, Ltr;->c(IIII)I

    move-result v6

    goto/16 :goto_b

    :pswitch_1c
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->g(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_7

    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->i(I)I

    move-result v4

    invoke-static {v3, v4, v3, v6}, Ltr;->c(IIII)I

    move-result v6

    goto/16 :goto_b

    :pswitch_1d
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->i(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_7

    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->i(I)I

    move-result v4

    invoke-static {v3, v4, v3, v6}, Ltr;->c(IIII)I

    move-result v6

    goto/16 :goto_b

    :pswitch_1e
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->v(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_7

    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->i(I)I

    move-result v4

    invoke-static {v3, v4, v3, v6}, Ltr;->c(IIII)I

    move-result v6

    goto/16 :goto_b

    :pswitch_1f
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->k(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_7

    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->i(I)I

    move-result v4

    invoke-static {v3, v4, v3, v6}, Ltr;->c(IIII)I

    move-result v6

    goto/16 :goto_b

    :pswitch_20
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->e(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_7

    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->i(I)I

    move-result v4

    invoke-static {v3, v4, v3, v6}, Ltr;->c(IIII)I

    move-result v6

    goto/16 :goto_b

    :pswitch_21
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->g(Ljava/util/List;)I

    move-result v3

    if-lez v3, :cond_7

    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->i(I)I

    move-result v4

    invoke-static {v3, v4, v3, v6}, Ltr;->c(IIII)I

    move-result v6

    goto/16 :goto_b

    :pswitch_22
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->p(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_5

    :pswitch_23
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->n(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_5

    :pswitch_24
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->f(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_5

    :pswitch_25
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->d(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_5

    :pswitch_26
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->b(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_5

    :pswitch_27
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->s(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_5

    :pswitch_28
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->a(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_5

    :pswitch_29
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {v0, v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->p(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v4

    invoke-static {v11, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->m(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Schema;)I

    move-result v3

    goto/16 :goto_5

    :pswitch_2a
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->r(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_5

    :pswitch_2b
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_5

    const/4 v4, 0x0

    goto :goto_a

    :cond_5
    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->i(I)I

    move-result v4

    add-int/2addr v4, v14

    mul-int/2addr v4, v3

    :goto_a
    add-int/2addr v6, v4

    goto/16 :goto_b

    :pswitch_2c
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->d(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_5

    :pswitch_2d
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->f(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_5

    :pswitch_2e
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->h(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_5

    :pswitch_2f
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->u(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_5

    :pswitch_30
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->j(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_5

    :pswitch_31
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->d(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_5

    :pswitch_32
    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v11, v3}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->f(ILjava/util/List;)I

    move-result v3

    goto/16 :goto_5

    :pswitch_33
    and-int/2addr v9, v8

    if-eqz v9, :cond_7

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    invoke-virtual {v0, v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->p(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v4

    invoke-static {v11, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->e(ILcom/google/crypto/tink/shaded/protobuf/MessageLite;Lcom/google/crypto/tink/shaded/protobuf/Schema;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_34
    and-int/2addr v9, v8

    if-eqz v9, :cond_7

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->i(I)I

    move-result v9

    shl-long v10, v3, v14

    shr-long/2addr v3, v15

    xor-long/2addr v3, v10

    invoke-static {v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->l(J)I

    move-result v3

    goto/16 :goto_3

    :pswitch_35
    and-int/2addr v9, v8

    if-eqz v9, :cond_7

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->i(I)I

    move-result v4

    shl-int/lit8 v9, v3, 0x1

    shr-int/lit8 v3, v3, 0x1f

    xor-int/2addr v3, v9

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->k(I)I

    move-result v3

    goto/16 :goto_4

    :pswitch_36
    and-int v3, v8, v9

    if-eqz v3, :cond_7

    invoke-static {v11, v13, v6}, Lo60;->a(III)I

    move-result v6

    goto/16 :goto_b

    :pswitch_37
    and-int v3, v8, v9

    if-eqz v3, :cond_7

    invoke-static {v11, v10, v6}, Lo60;->a(III)I

    move-result v6

    goto/16 :goto_b

    :pswitch_38
    and-int/2addr v9, v8

    if-eqz v9, :cond_7

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->i(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->f(I)I

    move-result v3

    goto/16 :goto_4

    :pswitch_39
    and-int/2addr v9, v8

    if-eqz v9, :cond_7

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v11, v3}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->j(II)I

    move-result v3

    goto/16 :goto_2

    :pswitch_3a
    and-int/2addr v9, v8

    if-eqz v9, :cond_7

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    invoke-static {v11, v3}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->a(ILcom/google/crypto/tink/shaded/protobuf/ByteString;)I

    move-result v3

    goto/16 :goto_2

    :pswitch_3b
    and-int/2addr v9, v8

    if-eqz v9, :cond_7

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->p(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v4

    invoke-static {v11, v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->l(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Schema;)I

    move-result v3

    goto/16 :goto_5

    :pswitch_3c
    and-int/2addr v9, v8

    if-eqz v9, :cond_7

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    if-eqz v4, :cond_6

    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->i(I)I

    move-result v4

    invoke-virtual {v3}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->size()I

    move-result v3

    invoke-static {v3, v3, v4, v6}, Ltr;->c(IIII)I

    move-result v3

    goto/16 :goto_6

    :cond_6
    check-cast v3, Ljava/lang/String;

    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->i(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->h(Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_7

    :pswitch_3d
    and-int v3, v8, v9

    if-eqz v3, :cond_7

    invoke-static {v11, v14, v6}, Lo60;->a(III)I

    move-result v6

    goto :goto_b

    :pswitch_3e
    and-int v3, v8, v9

    if-eqz v3, :cond_7

    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->c(I)I

    move-result v3

    goto/16 :goto_2

    :pswitch_3f
    and-int v3, v8, v9

    if-eqz v3, :cond_7

    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->d(I)I

    move-result v3

    goto/16 :goto_2

    :pswitch_40
    and-int/2addr v9, v8

    if-eqz v9, :cond_7

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->i(I)I

    move-result v4

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->f(I)I

    move-result v3

    goto/16 :goto_4

    :pswitch_41
    and-int/2addr v9, v8

    if-eqz v9, :cond_7

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->i(I)I

    move-result v9

    invoke-static {v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->l(J)I

    move-result v3

    goto/16 :goto_3

    :pswitch_42
    and-int/2addr v9, v8

    if-eqz v9, :cond_7

    invoke-virtual {v2, v1, v3, v4}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v11}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->i(I)I

    move-result v9

    invoke-static {v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->l(J)I

    move-result v3

    goto/16 :goto_3

    :pswitch_43
    and-int v3, v8, v9

    if-eqz v3, :cond_7

    invoke-static {v11, v10, v6}, Lo60;->a(III)I

    move-result v6

    goto :goto_b

    :pswitch_44
    and-int v3, v8, v9

    if-eqz v3, :cond_7

    invoke-static {v11, v13, v6}, Lo60;->a(III)I

    move-result v6

    :cond_7
    :goto_b
    add-int/lit8 v5, v5, 0x3

    const v4, 0xfffff

    goto/16 :goto_0

    :cond_8
    iget-object v2, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->n:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;

    check-cast v2, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLiteSchema;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, v1

    check-cast v2, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    iget-object v2, v2, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    invoke-virtual {v2}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;->b()I

    move-result v2

    add-int/2addr v2, v6

    iget-boolean v3, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->f:Z

    if-eqz v3, :cond_b

    iget-object v0, v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->o:Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchema;

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/ExtensionSchemaLite;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, v1

    check-cast v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object v0, v0, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/google/crypto/tink/shaded/protobuf/FieldSet;

    iget-object v0, v0, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->a:Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap$1;

    const/4 v3, 0x0

    const/16 v16, 0x0

    :goto_c
    iget-object v1, v0, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_9

    invoke-virtual {v0, v3}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->d(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->d(Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)I

    move-result v1

    add-int v16, v16, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_9
    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/SmallSortedMap;->e()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/crypto/tink/shaded/protobuf/FieldSet;->d(Lcom/google/crypto/tink/shaded/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)I

    move-result v1

    add-int v16, v16, v1

    goto :goto_d

    :cond_a
    add-int v2, v2, v16

    :cond_b
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final s(Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite;)I
    .locals 12

    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->r:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->a:[I

    array-length v5, v4

    if-ge v2, v5, :cond_7

    invoke-virtual {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->U(I)I

    move-result v5

    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->T(I)I

    move-result v6

    aget v7, v4, v2

    const v8, 0xfffff

    and-int/2addr v5, v8

    int-to-long v8, v5

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/FieldType;->DOUBLE_LIST_PACKED:Lcom/google/crypto/tink/shaded/protobuf/FieldType;

    invoke-virtual {v5}, Lcom/google/crypto/tink/shaded/protobuf/FieldType;->a()I

    move-result v5

    if-lt v6, v5, :cond_0

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/FieldType;->SINT64_LIST_PACKED:Lcom/google/crypto/tink/shaded/protobuf/FieldType;

    invoke-virtual {v5}, Lcom/google/crypto/tink/shaded/protobuf/FieldType;->a()I

    move-result v5

    if-gt v6, v5, :cond_0

    add-int/lit8 v5, v2, 0x2

    aget v4, v4, v5

    :cond_0
    const/16 v4, 0x3f

    const/4 v5, 0x4

    const/16 v10, 0x8

    const/4 v11, 0x1

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_a

    :pswitch_0
    invoke-virtual {p0, v7, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v8, v9, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    invoke-virtual {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->p(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v5

    invoke-static {v7, v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->e(ILcom/google/crypto/tink/shaded/protobuf/MessageLite;Lcom/google/crypto/tink/shaded/protobuf/Schema;)I

    move-result v4

    :goto_1
    add-int/2addr v3, v4

    goto/16 :goto_a

    :pswitch_1
    invoke-virtual {p0, v7, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v8, v9, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->G(JLjava/lang/Object;)J

    move-result-wide v5

    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->i(I)I

    move-result v7

    shl-long v8, v5, v11

    shr-long v4, v5, v4

    xor-long/2addr v4, v8

    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->l(J)I

    move-result v4

    :goto_2
    add-int/2addr v4, v7

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, v7, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v8, v9, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->F(JLjava/lang/Object;)I

    move-result v4

    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->i(I)I

    move-result v5

    shl-int/lit8 v6, v4, 0x1

    shr-int/lit8 v4, v4, 0x1f

    xor-int/2addr v4, v6

    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->k(I)I

    move-result v4

    :goto_3
    add-int/2addr v4, v5

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, v7, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v7, v10, v3}, Lo60;->a(III)I

    move-result v3

    goto/16 :goto_a

    :pswitch_4
    invoke-virtual {p0, v7, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v7, v5, v3}, Lo60;->a(III)I

    move-result v3

    goto/16 :goto_a

    :pswitch_5
    invoke-virtual {p0, v7, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v8, v9, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->F(JLjava/lang/Object;)I

    move-result v4

    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->i(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->f(I)I

    move-result v4

    goto :goto_3

    :pswitch_6
    invoke-virtual {p0, v7, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v8, v9, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->F(JLjava/lang/Object;)I

    move-result v4

    invoke-static {v7, v4}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->j(II)I

    move-result v4

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0, v7, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v8, v9, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    invoke-static {v7, v4}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->a(ILcom/google/crypto/tink/shaded/protobuf/ByteString;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p0, v7, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v8, v9, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->p(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v5

    invoke-static {v7, v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->l(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Schema;)I

    move-result v4

    :goto_4
    add-int/2addr v3, v4

    goto/16 :goto_a

    :pswitch_9
    invoke-virtual {p0, v7, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v8, v9, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    if-eqz v5, :cond_1

    check-cast v4, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->i(I)I

    move-result v5

    invoke-virtual {v4}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->size()I

    move-result v4

    invoke-static {v4, v4, v5, v3}, Ltr;->c(IIII)I

    move-result v3

    goto/16 :goto_a

    :cond_1
    check-cast v4, Ljava/lang/String;

    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->i(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->h(Ljava/lang/String;)I

    move-result v4

    :goto_5
    add-int/2addr v4, v5

    add-int/2addr v4, v3

    move v3, v4

    goto/16 :goto_a

    :pswitch_a
    invoke-virtual {p0, v7, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v7, v11, v3}, Lo60;->a(III)I

    move-result v3

    goto/16 :goto_a

    :pswitch_b
    invoke-virtual {p0, v7, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->c(I)I

    move-result v4

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, v7, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->d(I)I

    move-result v4

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, v7, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v8, v9, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->F(JLjava/lang/Object;)I

    move-result v4

    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->i(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->f(I)I

    move-result v4

    goto/16 :goto_3

    :pswitch_e
    invoke-virtual {p0, v7, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v8, v9, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->G(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->i(I)I

    move-result v6

    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->l(J)I

    move-result v4

    :goto_6
    add-int/2addr v4, v6

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, v7, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v8, v9, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->G(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->i(I)I

    move-result v6

    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->l(J)I

    move-result v4

    goto :goto_6

    :pswitch_10
    invoke-virtual {p0, v7, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v7, v5, v3}, Lo60;->a(III)I

    move-result v3

    goto/16 :goto_a

    :pswitch_11
    invoke-virtual {p0, v7, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v7, v10, v3}, Lo60;->a(III)I

    move-result v3

    goto/16 :goto_a

    :pswitch_12
    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v8, v9, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->o(I)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->p:Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;

    invoke-interface {v6, v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_13
    invoke-static {p1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->w(Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite;J)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->p(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v5

    sget-object v6, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_2

    move v9, v1

    goto :goto_8

    :cond_2
    move v8, v1

    move v9, v8

    :goto_7
    if-ge v8, v6, :cond_3

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    invoke-static {v7, v10, v5}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->e(ILcom/google/crypto/tink/shaded/protobuf/MessageLite;Lcom/google/crypto/tink/shaded/protobuf/Schema;)I

    move-result v10

    add-int/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_3
    :goto_8
    add-int/2addr v3, v9

    goto/16 :goto_a

    :pswitch_14
    invoke-virtual {v0, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->q(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_6

    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->i(I)I

    move-result v5

    invoke-static {v4, v5, v4, v3}, Ltr;->c(IIII)I

    move-result v3

    goto/16 :goto_a

    :pswitch_15
    invoke-virtual {v0, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->o(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_6

    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->i(I)I

    move-result v5

    invoke-static {v4, v5, v4, v3}, Ltr;->c(IIII)I

    move-result v3

    goto/16 :goto_a

    :pswitch_16
    invoke-virtual {v0, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->g(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_6

    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->i(I)I

    move-result v5

    invoke-static {v4, v5, v4, v3}, Ltr;->c(IIII)I

    move-result v3

    goto/16 :goto_a

    :pswitch_17
    invoke-virtual {v0, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->e(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_6

    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->i(I)I

    move-result v5

    invoke-static {v4, v5, v4, v3}, Ltr;->c(IIII)I

    move-result v3

    goto/16 :goto_a

    :pswitch_18
    invoke-virtual {v0, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->c(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_6

    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->i(I)I

    move-result v5

    invoke-static {v4, v5, v4, v3}, Ltr;->c(IIII)I

    move-result v3

    goto/16 :goto_a

    :pswitch_19
    invoke-virtual {v0, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->t(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_6

    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->i(I)I

    move-result v5

    invoke-static {v4, v5, v4, v3}, Ltr;->c(IIII)I

    move-result v3

    goto/16 :goto_a

    :pswitch_1a
    invoke-virtual {v0, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6

    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->i(I)I

    move-result v5

    invoke-static {v4, v5, v4, v3}, Ltr;->c(IIII)I

    move-result v3

    goto/16 :goto_a

    :pswitch_1b
    invoke-virtual {v0, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->e(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_6

    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->i(I)I

    move-result v5

    invoke-static {v4, v5, v4, v3}, Ltr;->c(IIII)I

    move-result v3

    goto/16 :goto_a

    :pswitch_1c
    invoke-virtual {v0, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->g(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_6

    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->i(I)I

    move-result v5

    invoke-static {v4, v5, v4, v3}, Ltr;->c(IIII)I

    move-result v3

    goto/16 :goto_a

    :pswitch_1d
    invoke-virtual {v0, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->i(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_6

    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->i(I)I

    move-result v5

    invoke-static {v4, v5, v4, v3}, Ltr;->c(IIII)I

    move-result v3

    goto/16 :goto_a

    :pswitch_1e
    invoke-virtual {v0, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->v(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_6

    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->i(I)I

    move-result v5

    invoke-static {v4, v5, v4, v3}, Ltr;->c(IIII)I

    move-result v3

    goto/16 :goto_a

    :pswitch_1f
    invoke-virtual {v0, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->k(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_6

    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->i(I)I

    move-result v5

    invoke-static {v4, v5, v4, v3}, Ltr;->c(IIII)I

    move-result v3

    goto/16 :goto_a

    :pswitch_20
    invoke-virtual {v0, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->e(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_6

    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->i(I)I

    move-result v5

    invoke-static {v4, v5, v4, v3}, Ltr;->c(IIII)I

    move-result v3

    goto/16 :goto_a

    :pswitch_21
    invoke-virtual {v0, p1, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->g(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_6

    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->i(I)I

    move-result v5

    invoke-static {v4, v5, v4, v3}, Ltr;->c(IIII)I

    move-result v3

    goto/16 :goto_a

    :pswitch_22
    invoke-static {p1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->w(Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->p(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_4

    :pswitch_23
    invoke-static {p1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->w(Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->n(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_4

    :pswitch_24
    invoke-static {p1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->w(Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->f(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_4

    :pswitch_25
    invoke-static {p1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->w(Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->d(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_4

    :pswitch_26
    invoke-static {p1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->w(Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->b(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_4

    :pswitch_27
    invoke-static {p1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->w(Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->s(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_4

    :pswitch_28
    invoke-static {p1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->w(Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->a(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_4

    :pswitch_29
    invoke-static {p1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->w(Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite;J)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->p(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v5

    invoke-static {v7, v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->m(ILjava/util/List;Lcom/google/crypto/tink/shaded/protobuf/Schema;)I

    move-result v4

    goto/16 :goto_4

    :pswitch_2a
    invoke-static {p1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->w(Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->r(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_4

    :pswitch_2b
    invoke-static {p1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->w(Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite;J)Ljava/util/List;

    move-result-object v4

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_4

    move v5, v1

    goto :goto_9

    :cond_4
    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->i(I)I

    move-result v5

    add-int/2addr v5, v11

    mul-int/2addr v5, v4

    :goto_9
    add-int/2addr v3, v5

    goto/16 :goto_a

    :pswitch_2c
    invoke-static {p1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->w(Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->d(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_4

    :pswitch_2d
    invoke-static {p1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->w(Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->f(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_4

    :pswitch_2e
    invoke-static {p1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->w(Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->h(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_4

    :pswitch_2f
    invoke-static {p1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->w(Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->u(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_4

    :pswitch_30
    invoke-static {p1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->w(Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->j(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_4

    :pswitch_31
    invoke-static {p1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->w(Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->d(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_4

    :pswitch_32
    invoke-static {p1, v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->w(Lcom/google/crypto/tink/shaded/protobuf/AbstractMessageLite;J)Ljava/util/List;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->f(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_4

    :pswitch_33
    invoke-virtual {p0, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v8, v9, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    invoke-virtual {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->p(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v5

    invoke-static {v7, v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->e(ILcom/google/crypto/tink/shaded/protobuf/MessageLite;Lcom/google/crypto/tink/shaded/protobuf/Schema;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_34
    invoke-virtual {p0, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v8, v9, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)J

    move-result-wide v5

    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->i(I)I

    move-result v7

    shl-long v8, v5, v11

    shr-long v4, v5, v4

    xor-long/2addr v4, v8

    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->l(J)I

    move-result v4

    goto/16 :goto_2

    :pswitch_35
    invoke-virtual {p0, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v8, v9, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)I

    move-result v4

    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->i(I)I

    move-result v5

    shl-int/lit8 v6, v4, 0x1

    shr-int/lit8 v4, v4, 0x1f

    xor-int/2addr v4, v6

    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->k(I)I

    move-result v4

    goto/16 :goto_3

    :pswitch_36
    invoke-virtual {p0, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v7, v10, v3}, Lo60;->a(III)I

    move-result v3

    goto/16 :goto_a

    :pswitch_37
    invoke-virtual {p0, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v7, v5, v3}, Lo60;->a(III)I

    move-result v3

    goto/16 :goto_a

    :pswitch_38
    invoke-virtual {p0, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v8, v9, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)I

    move-result v4

    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->i(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->f(I)I

    move-result v4

    goto/16 :goto_3

    :pswitch_39
    invoke-virtual {p0, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v8, v9, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)I

    move-result v4

    invoke-static {v7, v4}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->j(II)I

    move-result v4

    goto/16 :goto_1

    :pswitch_3a
    invoke-virtual {p0, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v8, v9, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    invoke-static {v7, v4}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->a(ILcom/google/crypto/tink/shaded/protobuf/ByteString;)I

    move-result v4

    goto/16 :goto_1

    :pswitch_3b
    invoke-virtual {p0, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v8, v9, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->p(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object v5

    invoke-static {v7, v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/SchemaUtil;->l(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Schema;)I

    move-result v4

    goto/16 :goto_4

    :pswitch_3c
    invoke-virtual {p0, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v8, v9, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    if-eqz v5, :cond_5

    check-cast v4, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->i(I)I

    move-result v5

    invoke-virtual {v4}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->size()I

    move-result v4

    invoke-static {v4, v4, v5, v3}, Ltr;->c(IIII)I

    move-result v3

    goto/16 :goto_a

    :cond_5
    check-cast v4, Ljava/lang/String;

    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->i(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->h(Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_5

    :pswitch_3d
    invoke-virtual {p0, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v7, v11, v3}, Lo60;->a(III)I

    move-result v3

    goto/16 :goto_a

    :pswitch_3e
    invoke-virtual {p0, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->c(I)I

    move-result v4

    goto/16 :goto_1

    :pswitch_3f
    invoke-virtual {p0, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->d(I)I

    move-result v4

    goto/16 :goto_1

    :pswitch_40
    invoke-virtual {p0, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v8, v9, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)I

    move-result v4

    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->i(I)I

    move-result v5

    invoke-static {v4}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->f(I)I

    move-result v4

    goto/16 :goto_3

    :pswitch_41
    invoke-virtual {p0, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v8, v9, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->i(I)I

    move-result v6

    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->l(J)I

    move-result v4

    goto/16 :goto_6

    :pswitch_42
    invoke-virtual {p0, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v8, v9, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v7}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->i(I)I

    move-result v6

    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->l(J)I

    move-result v4

    goto/16 :goto_6

    :pswitch_43
    invoke-virtual {p0, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v7, v5, v3}, Lo60;->a(III)I

    move-result v3

    goto :goto_a

    :pswitch_44
    invoke-virtual {p0, v2, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v7, v10, v3}, Lo60;->a(III)I

    move-result v3

    :cond_6
    :goto_a
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    :cond_7
    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->n:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSchema;

    check-cast p0, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLiteSchema;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    iget-object p0, p1, Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/UnknownFieldSetLite;->b()I

    move-result p0

    add-int/2addr p0, v3

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final t(ILjava/lang/Object;)Z
    .locals 7

    add-int/lit8 v0, p1, 0x2

    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->a:[I

    aget v0, v1, v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const-wide/32 v4, 0xfffff

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_2

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->U(I)I

    move-result p0

    and-int p1, p0, v1

    int-to-long v0, p1

    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->T(I)I

    move-result p0

    const-wide/16 v2, 0x0

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lct0;->c()V

    return v5

    :pswitch_0
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_1
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_2
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_3
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_4
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_5
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_6
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_7
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->c:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p1, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v6

    return p0

    :pswitch_8
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_9
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v6

    return p0

    :cond_0
    instance-of p1, p0, Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->c:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    invoke-virtual {p1, p0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v6

    return p0

    :cond_1
    invoke-static {}, Lct0;->c()V

    return v5

    :pswitch_a
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->c(JLjava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_b
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :pswitch_c
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    goto :goto_0

    :pswitch_d
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :pswitch_e
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    goto :goto_0

    :pswitch_f
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    goto :goto_0

    :pswitch_10
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :pswitch_11
    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p0, v0, v1, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->e(JLjava/lang/Object;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_2
    ushr-int/lit8 p0, v0, 0x14

    shl-int p0, v6, p0

    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p1, v2, v3, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)I

    move-result p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_3

    :goto_0
    return v6

    :cond_3
    return v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final v(IILjava/lang/Object;)Z
    .locals 2

    add-int/lit8 p2, p2, 0x2

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->a:[I

    aget p0, p0, p2

    const p2, 0xfffff

    and-int/2addr p0, p2

    int-to-long v0, p0

    sget-object p0, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p0, v0, v1, p3}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final x(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;Lcom/google/crypto/tink/shaded/protobuf/Reader;)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->U(I)I

    move-result p2

    const p4, 0xfffff

    and-int/2addr p2, p4

    int-to-long p4, p2

    sget-object p2, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->c:Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p2, p4, p5, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil$MemoryAccessor;->i(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->p:Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;

    if-eqz p2, :cond_0

    invoke-interface {p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;->g(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;->f()Lcom/google/crypto/tink/shaded/protobuf/MapFieldLite;

    move-result-object v0

    invoke-interface {p0, v0, p2}, Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/MapFieldLite;

    invoke-static {p4, p5, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->p(JLjava/lang/Object;Ljava/lang/Object;)V

    move-object p2, v0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;->f()Lcom/google/crypto/tink/shaded/protobuf/MapFieldLite;

    move-result-object p2

    invoke-static {p4, p5, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->p(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    invoke-interface {p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;->c(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/MapFieldLite;

    invoke-interface {p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/MapFieldSchema;->b(Ljava/lang/Object;)Lcom/google/crypto/tink/shaded/protobuf/MapEntryLite$Metadata;

    const/4 p0, 0x0

    throw p0
.end method

.method public final y(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 5

    invoke-virtual {p0, p3, p2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->U(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    sget-object v2, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->r:Lsun/misc/Unsafe;

    invoke-virtual {v2, p2, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->p(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object p2

    invoke-virtual {p0, p3, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->t(ILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->u(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2, p1, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lcom/google/crypto/tink/shaded/protobuf/Schema;->b()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2, v4, v3}, Lcom/google/crypto/tink/shaded/protobuf/Schema;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p1, v0, v1, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p3, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->O(ILjava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {v2, p1, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->u(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    invoke-interface {p2}, Lcom/google/crypto/tink/shaded/protobuf/Schema;->b()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p2, p3, p0}, Lcom/google/crypto/tink/shaded/protobuf/Schema;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p1, v0, v1, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p0, p3

    :cond_3
    invoke-interface {p2, p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/Schema;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    iget-object p0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->a:[I

    aget p0, p0, p3

    invoke-static {p0, p2}, Llc0;->h(ILjava/lang/Object;)V

    return-void
.end method

.method public final z(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 6

    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->a:[I

    aget v1, v0, p3

    invoke-virtual {p0, v1, p3, p2}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->U(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    sget-object v4, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->r:Lsun/misc/Unsafe;

    invoke-virtual {v4, p2, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->p(I)Lcom/google/crypto/tink/shaded/protobuf/Schema;

    move-result-object p2

    invoke-virtual {p0, v1, p3, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->v(IILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v5}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->u(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v4, p1, v2, v3, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lcom/google/crypto/tink/shaded/protobuf/Schema;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0, v5}, Lcom/google/crypto/tink/shaded/protobuf/Schema;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, p1, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, v1, p3, p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->P(IILjava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {v4, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/MessageSchema;->u(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    invoke-interface {p2}, Lcom/google/crypto/tink/shaded/protobuf/Schema;->b()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p2, p3, p0}, Lcom/google/crypto/tink/shaded/protobuf/Schema;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, p1, v2, v3, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p0, p3

    :cond_3
    invoke-interface {p2, p0, v5}, Lcom/google/crypto/tink/shaded/protobuf/Schema;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    aget p0, v0, p3

    invoke-static {p0, p2}, Llc0;->h(ILjava/lang/Object;)V

    return-void
.end method
