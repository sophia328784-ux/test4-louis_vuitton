.class final Landroidx/datastore/preferences/protobuf/MessageSchema;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/Schema;


# annotations
.annotation runtime Landroidx/datastore/preferences/protobuf/CheckReturnValue;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/datastore/preferences/protobuf/Schema<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final p:[I

.field public static final q:Lsun/misc/Unsafe;


# instance fields
.field public final a:[I

.field public final b:[Ljava/lang/Object;

.field public final c:I

.field public final d:I

.field public final e:Landroidx/datastore/preferences/protobuf/MessageLite;

.field public final f:Z

.field public final g:Z

.field public final h:[I

.field public final i:I

.field public final j:I

.field public final k:Landroidx/datastore/preferences/protobuf/NewInstanceSchema;

.field public final l:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

.field public final m:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

.field public final n:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

.field public final o:Landroidx/datastore/preferences/protobuf/MapFieldSchema;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->p:[I

    invoke-static {}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->i()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->q:Lsun/misc/Unsafe;

    return-void
.end method

.method public constructor <init>([I[Ljava/lang/Object;IILandroidx/datastore/preferences/protobuf/MessageLite;[IIILandroidx/datastore/preferences/protobuf/NewInstanceSchema;Landroidx/datastore/preferences/protobuf/ListFieldSchema;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Landroidx/datastore/preferences/protobuf/ExtensionSchema;Landroidx/datastore/preferences/protobuf/MapFieldSchema;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->a:[I

    iput-object p2, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->b:[Ljava/lang/Object;

    iput p3, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->c:I

    iput p4, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->d:I

    instance-of p1, p5, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    iput-boolean p1, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->g:Z

    if-eqz p12, :cond_0

    instance-of p1, p5, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtendableMessage;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->f:Z

    iput-object p6, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->h:[I

    iput p7, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->i:I

    iput p8, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->j:I

    iput-object p9, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->k:Landroidx/datastore/preferences/protobuf/NewInstanceSchema;

    iput-object p10, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->l:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    iput-object p11, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->m:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    iput-object p12, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->n:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    iput-object p5, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->e:Landroidx/datastore/preferences/protobuf/MessageLite;

    iput-object p13, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->o:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    return-void
.end method

.method public static A(JLjava/lang/Object;)J
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static C(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
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

.method public static H(I)I
    .locals 1

    const/high16 v0, 0xff00000

    and-int/2addr p0, v0

    ushr-int/lit8 p0, p0, 0x14

    return p0
.end method

.method public static K(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V
    .locals 1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Landroidx/datastore/preferences/protobuf/Writer;->e(ILjava/lang/String;)V

    return-void

    :cond_0
    check-cast p1, Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-interface {p2, p0, p1}, Landroidx/datastore/preferences/protobuf/Writer;->K(ILandroidx/datastore/preferences/protobuf/ByteString;)V

    return-void
.end method

.method public static q(Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of v0, p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    if-eqz v0, :cond_1

    check-cast p0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->t()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static x(Landroidx/datastore/preferences/protobuf/RawMessageInfo;Landroidx/datastore/preferences/protobuf/NewInstanceSchema;Landroidx/datastore/preferences/protobuf/ListFieldSchema;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Landroidx/datastore/preferences/protobuf/ExtensionSchema;Landroidx/datastore/preferences/protobuf/MapFieldSchema;)Landroidx/datastore/preferences/protobuf/MessageSchema;
    .locals 33

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/datastore/preferences/protobuf/RawMessageInfo;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v6, 0xd800

    if-lt v4, v6, :cond_0

    const/4 v4, 0x1

    :goto_0
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_1

    move v4, v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x1

    :cond_1
    add-int/lit8 v4, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_3

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_1
    add-int/lit8 v10, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_2

    and-int/lit16 v4, v4, 0x1fff

    shl-int/2addr v4, v9

    or-int/2addr v7, v4

    add-int/lit8 v9, v9, 0xd

    move v4, v10

    goto :goto_1

    :cond_2
    shl-int/2addr v4, v9

    or-int/2addr v7, v4

    move v4, v10

    :cond_3
    if-nez v7, :cond_4

    sget-object v7, Landroidx/datastore/preferences/protobuf/MessageSchema;->p:[I

    move v9, v3

    move v10, v9

    move v11, v10

    move v12, v11

    move v13, v12

    move/from16 v16, v13

    move-object v15, v7

    move/from16 v7, v16

    goto/16 :goto_a

    :cond_4
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_6

    and-int/lit16 v4, v4, 0x1fff

    const/16 v9, 0xd

    :goto_2
    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_5

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v9

    or-int/2addr v4, v7

    add-int/lit8 v9, v9, 0xd

    move v7, v10

    goto :goto_2

    :cond_5
    shl-int/2addr v7, v9

    or-int/2addr v4, v7

    move v7, v10

    :cond_6
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_8

    and-int/lit16 v7, v7, 0x1fff

    const/16 v10, 0xd

    :goto_3
    add-int/lit8 v11, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_7

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    add-int/lit8 v10, v10, 0xd

    move v9, v11

    goto :goto_3

    :cond_7
    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    move v9, v11

    :cond_8
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_a

    and-int/lit16 v9, v9, 0x1fff

    const/16 v11, 0xd

    :goto_4
    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_9

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    add-int/lit8 v11, v11, 0xd

    move v10, v12

    goto :goto_4

    :cond_9
    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    move v10, v12

    :cond_a
    add-int/lit8 v11, v10, 0x1

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_c

    and-int/lit16 v10, v10, 0x1fff

    const/16 v12, 0xd

    :goto_5
    add-int/lit8 v13, v11, 0x1

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v6, :cond_b

    and-int/lit16 v11, v11, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    add-int/lit8 v12, v12, 0xd

    move v11, v13

    goto :goto_5

    :cond_b
    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    move v11, v13

    :cond_c
    add-int/lit8 v12, v11, 0x1

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v6, :cond_e

    and-int/lit16 v11, v11, 0x1fff

    const/16 v13, 0xd

    :goto_6
    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_d

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_6

    :cond_d
    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    move v12, v14

    :cond_e
    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_10

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_7
    add-int/lit8 v15, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_f

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_7

    :cond_f
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_10
    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_12

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_8
    add-int/lit8 v16, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_11

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_8

    :cond_11
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_12
    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_14

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_9
    add-int/lit8 v17, v15, 0x1

    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_13

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_9

    :cond_13
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_14
    add-int v16, v14, v12

    add-int v13, v16, v13

    new-array v13, v13, [I

    mul-int/lit8 v16, v4, 0x2

    add-int v16, v16, v7

    move v7, v12

    move v12, v9

    move v9, v7

    move v7, v4

    move v4, v15

    move-object v15, v13

    move v13, v10

    move/from16 v10, v16

    move/from16 v16, v14

    :goto_a
    sget-object v14, Landroidx/datastore/preferences/protobuf/MessageSchema;->q:Lsun/misc/Unsafe;

    iget-object v3, v0, Landroidx/datastore/preferences/protobuf/RawMessageInfo;->c:[Ljava/lang/Object;

    const/16 v18, 0x1

    iget-object v5, v0, Landroidx/datastore/preferences/protobuf/RawMessageInfo;->a:Landroidx/datastore/preferences/protobuf/MessageLite;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    mul-int/lit8 v8, v11, 0x3

    new-array v8, v8, [I

    mul-int/lit8 v11, v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    add-int v9, v16, v9

    move/from16 v23, v9

    move/from16 v22, v16

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_b
    if-ge v4, v2, :cond_35

    add-int/lit8 v24, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v6, :cond_16

    and-int/lit16 v4, v4, 0x1fff

    move/from16 v6, v24

    const/16 v24, 0xd

    :goto_c
    add-int/lit8 v26, v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move/from16 v27, v2

    const v2, 0xd800

    if-lt v6, v2, :cond_15

    and-int/lit16 v2, v6, 0x1fff

    shl-int v2, v2, v24

    or-int/2addr v4, v2

    add-int/lit8 v24, v24, 0xd

    move/from16 v6, v26

    move/from16 v2, v27

    goto :goto_c

    :cond_15
    shl-int v2, v6, v24

    or-int/2addr v4, v2

    move/from16 v2, v26

    goto :goto_d

    :cond_16
    move/from16 v27, v2

    move/from16 v2, v24

    :goto_d
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move-object/from16 v24, v3

    const v3, 0xd800

    if-lt v2, v3, :cond_18

    and-int/lit16 v2, v2, 0x1fff

    const/16 v26, 0xd

    :goto_e
    add-int/lit8 v28, v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v3, :cond_17

    and-int/lit16 v3, v6, 0x1fff

    shl-int v3, v3, v26

    or-int/2addr v2, v3

    add-int/lit8 v26, v26, 0xd

    move/from16 v6, v28

    const v3, 0xd800

    goto :goto_e

    :cond_17
    shl-int v3, v6, v26

    or-int/2addr v2, v3

    move/from16 v6, v28

    :cond_18
    and-int/lit16 v3, v2, 0xff

    move/from16 v26, v4

    and-int/lit16 v4, v2, 0x400

    if-eqz v4, :cond_19

    add-int/lit8 v4, v20, 0x1

    aput v21, v15, v20

    move/from16 v20, v4

    :cond_19
    const/16 v4, 0x33

    move/from16 v30, v7

    if-lt v3, v4, :cond_22

    add-int/lit8 v4, v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const v7, 0xd800

    if-lt v6, v7, :cond_1b

    and-int/lit16 v6, v6, 0x1fff

    const/16 v31, 0xd

    :goto_f
    add-int/lit8 v32, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v7, :cond_1a

    and-int/lit16 v4, v4, 0x1fff

    shl-int v4, v4, v31

    or-int/2addr v6, v4

    add-int/lit8 v31, v31, 0xd

    move/from16 v4, v32

    const v7, 0xd800

    goto :goto_f

    :cond_1a
    shl-int v4, v4, v31

    or-int/2addr v6, v4

    move/from16 v4, v32

    :cond_1b
    add-int/lit8 v7, v3, -0x33

    move/from16 v31, v4

    const/16 v4, 0x9

    if-eq v7, v4, :cond_1e

    const/16 v4, 0x11

    if-ne v7, v4, :cond_1c

    goto :goto_11

    :cond_1c
    const/16 v4, 0xc

    if-ne v7, v4, :cond_1f

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/RawMessageInfo;->c()Landroidx/datastore/preferences/protobuf/ProtoSyntax;

    move-result-object v4

    sget-object v7, Landroidx/datastore/preferences/protobuf/ProtoSyntax;->PROTO2:Landroidx/datastore/preferences/protobuf/ProtoSyntax;

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    and-int/lit16 v4, v2, 0x800

    if-eqz v4, :cond_1f

    :cond_1d
    div-int/lit8 v4, v21, 0x3

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v7, v10, 0x1

    aget-object v10, v24, v10

    aput-object v10, v11, v4

    :goto_10
    move v10, v7

    goto :goto_12

    :cond_1e
    :goto_11
    div-int/lit8 v4, v21, 0x3

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v7, v10, 0x1

    aget-object v10, v24, v10

    aput-object v10, v11, v4

    goto :goto_10

    :cond_1f
    :goto_12
    mul-int/lit8 v6, v6, 0x2

    aget-object v4, v24, v6

    instance-of v7, v4, Ljava/lang/reflect/Field;

    if-eqz v7, :cond_20

    check-cast v4, Ljava/lang/reflect/Field;

    :goto_13
    move/from16 v28, v6

    goto :goto_14

    :cond_20
    check-cast v4, Ljava/lang/String;

    invoke-static {v5, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->C(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    aput-object v4, v24, v6

    goto :goto_13

    :goto_14
    invoke-virtual {v14, v4}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    long-to-int v4, v6

    add-int/lit8 v6, v28, 0x1

    aget-object v7, v24, v6

    move/from16 v28, v4

    instance-of v4, v7, Ljava/lang/reflect/Field;

    if-eqz v4, :cond_21

    check-cast v7, Ljava/lang/reflect/Field;

    goto :goto_15

    :cond_21
    check-cast v7, Ljava/lang/String;

    invoke-static {v5, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->C(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    aput-object v7, v24, v6

    :goto_15
    invoke-virtual {v14, v7}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    long-to-int v4, v6

    move/from16 v25, v10

    move/from16 v29, v31

    const/4 v6, 0x0

    move-object v10, v5

    move v5, v4

    move/from16 v4, v28

    move-object/from16 v28, v8

    goto/16 :goto_21

    :cond_22
    add-int/lit8 v4, v10, 0x1

    aget-object v7, v24, v10

    check-cast v7, Ljava/lang/String;

    invoke-static {v5, v7}, Landroidx/datastore/preferences/protobuf/MessageSchema;->C(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    move/from16 v31, v4

    const/16 v4, 0x9

    if-eq v3, v4, :cond_23

    const/16 v4, 0x11

    if-ne v3, v4, :cond_24

    :cond_23
    move-object/from16 v28, v8

    goto/16 :goto_19

    :cond_24
    const/16 v4, 0x1b

    if-eq v3, v4, :cond_25

    const/16 v4, 0x31

    if-ne v3, v4, :cond_26

    :cond_25
    move-object/from16 v28, v8

    goto :goto_18

    :cond_26
    const/16 v4, 0xc

    if-eq v3, v4, :cond_2a

    const/16 v4, 0x1e

    if-eq v3, v4, :cond_2a

    const/16 v4, 0x2c

    if-ne v3, v4, :cond_27

    goto :goto_16

    :cond_27
    const/16 v4, 0x32

    if-ne v3, v4, :cond_29

    add-int/lit8 v4, v22, 0x1

    aput v21, v15, v22

    div-int/lit8 v22, v21, 0x3

    mul-int/lit8 v22, v22, 0x2

    add-int/lit8 v28, v10, 0x2

    aget-object v29, v24, v31

    aput-object v29, v11, v22

    move/from16 v29, v4

    and-int/lit16 v4, v2, 0x800

    if-eqz v4, :cond_28

    add-int/lit8 v22, v22, 0x1

    add-int/lit8 v4, v10, 0x3

    aget-object v10, v24, v28

    aput-object v10, v11, v22

    move-object/from16 v28, v8

    move/from16 v22, v29

    goto :goto_1b

    :cond_28
    move/from16 v4, v28

    move/from16 v22, v29

    move-object/from16 v28, v8

    goto :goto_1b

    :cond_29
    move-object/from16 v28, v8

    goto :goto_1a

    :cond_2a
    :goto_16
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/RawMessageInfo;->c()Landroidx/datastore/preferences/protobuf/ProtoSyntax;

    move-result-object v4

    move-object/from16 v28, v8

    sget-object v8, Landroidx/datastore/preferences/protobuf/ProtoSyntax;->PROTO2:Landroidx/datastore/preferences/protobuf/ProtoSyntax;

    if-eq v4, v8, :cond_2b

    and-int/lit16 v4, v2, 0x800

    if-eqz v4, :cond_2c

    :cond_2b
    div-int/lit8 v4, v21, 0x3

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v10, v10, 0x2

    aget-object v8, v24, v31

    aput-object v8, v11, v4

    :goto_17
    move v4, v10

    goto :goto_1b

    :goto_18
    div-int/lit8 v4, v21, 0x3

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v10, v10, 0x2

    aget-object v8, v24, v31

    aput-object v8, v11, v4

    goto :goto_17

    :goto_19
    div-int/lit8 v4, v21, 0x3

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v11, v4

    :cond_2c
    :goto_1a
    move/from16 v4, v31

    :goto_1b
    invoke-virtual {v14, v7}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v7

    long-to-int v7, v7

    and-int/lit16 v8, v2, 0x1000

    if-eqz v8, :cond_30

    const/16 v8, 0x11

    if-gt v3, v8, :cond_30

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const v10, 0xd800

    if-lt v6, v10, :cond_2e

    and-int/lit16 v6, v6, 0x1fff

    const/16 v25, 0xd

    :goto_1c
    add-int/lit8 v29, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v10, :cond_2d

    and-int/lit16 v8, v8, 0x1fff

    shl-int v8, v8, v25

    or-int/2addr v6, v8

    add-int/lit8 v25, v25, 0xd

    move/from16 v8, v29

    goto :goto_1c

    :cond_2d
    shl-int v8, v8, v25

    or-int/2addr v6, v8

    goto :goto_1d

    :cond_2e
    move/from16 v29, v8

    :goto_1d
    mul-int/lit8 v8, v30, 0x2

    div-int/lit8 v25, v6, 0x20

    add-int v25, v25, v8

    aget-object v8, v24, v25

    instance-of v10, v8, Ljava/lang/reflect/Field;

    if-eqz v10, :cond_2f

    check-cast v8, Ljava/lang/reflect/Field;

    :goto_1e
    move/from16 v25, v4

    move-object v10, v5

    goto :goto_1f

    :cond_2f
    check-cast v8, Ljava/lang/String;

    invoke-static {v5, v8}, Landroidx/datastore/preferences/protobuf/MessageSchema;->C(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    aput-object v8, v24, v25

    goto :goto_1e

    :goto_1f
    invoke-virtual {v14, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    long-to-int v4, v4

    rem-int/lit8 v6, v6, 0x20

    goto :goto_20

    :cond_30
    move/from16 v25, v4

    move-object v10, v5

    const v4, 0xfffff

    move/from16 v29, v6

    const/4 v6, 0x0

    :goto_20
    const/16 v5, 0x12

    if-lt v3, v5, :cond_31

    const/16 v5, 0x31

    if-gt v3, v5, :cond_31

    add-int/lit8 v5, v23, 0x1

    aput v7, v15, v23

    move/from16 v23, v5

    :cond_31
    move v5, v4

    move v4, v7

    :goto_21
    add-int/lit8 v7, v21, 0x1

    aput v26, v28, v21

    add-int/lit8 v8, v21, 0x2

    move-object/from16 v26, v1

    and-int/lit16 v1, v2, 0x200

    if-eqz v1, :cond_32

    const/high16 v1, 0x20000000

    goto :goto_22

    :cond_32
    const/4 v1, 0x0

    :goto_22
    move/from16 v31, v1

    and-int/lit16 v1, v2, 0x100

    if-eqz v1, :cond_33

    const/high16 v1, 0x10000000

    goto :goto_23

    :cond_33
    const/4 v1, 0x0

    :goto_23
    or-int v1, v31, v1

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_34

    const/high16 v2, -0x80000000

    goto :goto_24

    :cond_34
    const/4 v2, 0x0

    :goto_24
    or-int/2addr v1, v2

    shl-int/lit8 v2, v3, 0x14

    or-int/2addr v1, v2

    or-int/2addr v1, v4

    aput v1, v28, v7

    add-int/lit8 v21, v21, 0x3

    shl-int/lit8 v1, v6, 0x14

    or-int/2addr v1, v5

    aput v1, v28, v8

    move-object v5, v10

    move-object/from16 v3, v24

    move/from16 v10, v25

    move-object/from16 v1, v26

    move/from16 v2, v27

    move-object/from16 v8, v28

    move/from16 v4, v29

    move/from16 v7, v30

    const v6, 0xd800

    goto/16 :goto_b

    :cond_35
    move-object/from16 v28, v8

    new-instance v1, Landroidx/datastore/preferences/protobuf/MessageSchema;

    iget-object v14, v0, Landroidx/datastore/preferences/protobuf/RawMessageInfo;->a:Landroidx/datastore/preferences/protobuf/MessageLite;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/RawMessageInfo;->c()Landroidx/datastore/preferences/protobuf/ProtoSyntax;

    move-object/from16 v18, p1

    move-object/from16 v19, p2

    move-object/from16 v20, p3

    move-object/from16 v21, p4

    move-object/from16 v22, p5

    move/from16 v17, v9

    move-object/from16 v10, v28

    move-object v9, v1

    invoke-direct/range {v9 .. v22}, Landroidx/datastore/preferences/protobuf/MessageSchema;-><init>([I[Ljava/lang/Object;IILandroidx/datastore/preferences/protobuf/MessageLite;[IIILandroidx/datastore/preferences/protobuf/NewInstanceSchema;Landroidx/datastore/preferences/protobuf/ListFieldSchema;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Landroidx/datastore/preferences/protobuf/ExtensionSchema;Landroidx/datastore/preferences/protobuf/MapFieldSchema;)V

    return-object v9
.end method

.method public static y(I)J
    .locals 2

    const v0, 0xfffff

    and-int/2addr p0, v0

    int-to-long v0, p0

    return-wide v0
.end method

.method public static z(JLjava/lang/Object;)I
    .locals 1

    sget-object v0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final B(ILandroidx/datastore/preferences/protobuf/Reader;Ljava/lang/Object;)V
    .locals 2

    const/high16 v0, 0x20000000

    and-int/2addr v0, p1

    const v1, 0xfffff

    if-eqz v0, :cond_0

    and-int p0, p1, v1

    int-to-long p0, p0

    invoke-interface {p2}, Landroidx/datastore/preferences/protobuf/Reader;->i()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p3, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->o(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-boolean p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->g:Z

    if-eqz p0, :cond_1

    and-int p0, p1, v1

    int-to-long p0, p0

    invoke-interface {p2}, Landroidx/datastore/preferences/protobuf/Reader;->d()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p3, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->o(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    and-int p0, p1, v1

    int-to-long p0, p0

    invoke-interface {p2}, Landroidx/datastore/preferences/protobuf/Reader;->b()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object p2

    invoke-static {p0, p1, p3, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->o(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final D(ILjava/lang/Object;)V
    .locals 4

    add-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->a:[I

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

    sget-object p1, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p1, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    move-result p1

    or-int/2addr p0, p1

    invoke-static {p2, v0, v1, p0}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->m(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final E(IILjava/lang/Object;)V
    .locals 2

    add-int/lit8 p2, p2, 0x2

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->a:[I

    aget p0, p0, p2

    const p2, 0xfffff

    and-int/2addr p0, p2

    int-to-long v0, p0

    invoke-static {p3, v0, v1, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->m(Ljava/lang/Object;JI)V

    return-void
.end method

.method public final F(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/MessageLite;)V
    .locals 3

    sget-object v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->q:Lsun/misc/Unsafe;

    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->I(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->D(ILjava/lang/Object;)V

    return-void
.end method

.method public final G(Ljava/lang/Object;IILandroidx/datastore/preferences/protobuf/MessageLite;)V
    .locals 3

    sget-object v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->q:Lsun/misc/Unsafe;

    invoke-virtual {p0, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->I(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    invoke-virtual {p0, p2, p3, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->E(IILjava/lang/Object;)V

    return-void
.end method

.method public final I(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->a:[I

    aget p0, p0, p1

    return p0
.end method

.method public final J(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v6, p2

    iget-boolean v1, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->f:Z

    iget-object v7, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->n:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    if-eqz v1, :cond_0

    move-object v1, v7

    check-cast v1, Landroidx/datastore/preferences/protobuf/ExtensionSchemaLite;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, v2

    check-cast v1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object v1, v1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Landroidx/datastore/preferences/protobuf/FieldSet;

    iget-object v3, v1, Landroidx/datastore/preferences/protobuf/FieldSet;->a:Landroidx/datastore/preferences/protobuf/SmallSortedMap$1;

    invoke-virtual {v3}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/FieldSet;->i()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    move-object v9, v1

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    iget-object v10, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->a:[I

    array-length v11, v10

    sget-object v12, Landroidx/datastore/preferences/protobuf/MessageSchema;->q:Lsun/misc/Unsafe;

    const/4 v1, 0x0

    const v3, 0xfffff

    const/4 v4, 0x0

    :goto_1
    if-ge v1, v11, :cond_9

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->I(I)I

    move-result v5

    aget v15, v10, v1

    const/16 v16, 0x0

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->H(I)I

    move-result v8

    const/16 v14, 0x11

    const v18, 0xfffff

    if-gt v8, v14, :cond_3

    add-int/lit8 v14, v1, 0x2

    aget v14, v10, v14

    const/16 v19, 0x1

    and-int v13, v14, v18

    if-eq v13, v3, :cond_2

    move/from16 v3, v18

    if-ne v13, v3, :cond_1

    const/4 v4, 0x0

    goto :goto_2

    :cond_1
    int-to-long v3, v13

    invoke-virtual {v12, v2, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    move v4, v3

    :goto_2
    move v3, v13

    goto :goto_3

    :cond_2
    move/from16 v20, v3

    :goto_3
    ushr-int/lit8 v13, v14, 0x14

    shl-int v13, v19, v13

    move/from16 v21, v13

    move v13, v5

    move/from16 v5, v21

    goto :goto_4

    :cond_3
    move/from16 v20, v3

    const/16 v19, 0x1

    move v13, v5

    const/4 v5, 0x0

    :goto_4
    if-nez v9, :cond_8

    const v18, 0xfffff

    and-int v13, v13, v18

    int-to-long v13, v13

    packed-switch v8, :pswitch_data_0

    :cond_4
    :goto_5
    const/16 v17, 0x0

    goto/16 :goto_8

    :pswitch_0
    invoke-virtual {v0, v15, v1, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v12, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v8

    invoke-interface {v6, v15, v5, v8}, Landroidx/datastore/preferences/protobuf/Writer;->N(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V

    goto :goto_5

    :pswitch_1
    invoke-virtual {v0, v15, v1, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v13, v14, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->A(JLjava/lang/Object;)J

    move-result-wide v13

    invoke-interface {v6, v15, v13, v14}, Landroidx/datastore/preferences/protobuf/Writer;->p(IJ)V

    goto :goto_5

    :pswitch_2
    invoke-virtual {v0, v15, v1, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v13, v14, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->z(JLjava/lang/Object;)I

    move-result v5

    invoke-interface {v6, v15, v5}, Landroidx/datastore/preferences/protobuf/Writer;->H(II)V

    goto :goto_5

    :pswitch_3
    invoke-virtual {v0, v15, v1, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v13, v14, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->A(JLjava/lang/Object;)J

    move-result-wide v13

    invoke-interface {v6, v15, v13, v14}, Landroidx/datastore/preferences/protobuf/Writer;->o(IJ)V

    goto :goto_5

    :pswitch_4
    invoke-virtual {v0, v15, v1, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v13, v14, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->z(JLjava/lang/Object;)I

    move-result v5

    invoke-interface {v6, v15, v5}, Landroidx/datastore/preferences/protobuf/Writer;->y(II)V

    goto :goto_5

    :pswitch_5
    invoke-virtual {v0, v15, v1, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v13, v14, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->z(JLjava/lang/Object;)I

    move-result v5

    invoke-interface {v6, v15, v5}, Landroidx/datastore/preferences/protobuf/Writer;->F(II)V

    goto :goto_5

    :pswitch_6
    invoke-virtual {v0, v15, v1, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v13, v14, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->z(JLjava/lang/Object;)I

    move-result v5

    invoke-interface {v6, v15, v5}, Landroidx/datastore/preferences/protobuf/Writer;->q(II)V

    goto :goto_5

    :pswitch_7
    invoke-virtual {v0, v15, v1, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v12, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-interface {v6, v15, v5}, Landroidx/datastore/preferences/protobuf/Writer;->K(ILandroidx/datastore/preferences/protobuf/ByteString;)V

    goto :goto_5

    :pswitch_8
    invoke-virtual {v0, v15, v1, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v12, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v8

    invoke-interface {v6, v15, v5, v8}, Landroidx/datastore/preferences/protobuf/Writer;->L(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V

    goto/16 :goto_5

    :pswitch_9
    invoke-virtual {v0, v15, v1, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v12, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v15, v5, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->K(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V

    goto/16 :goto_5

    :pswitch_a
    invoke-virtual {v0, v15, v1, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v13, v14, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface {v6, v15, v5}, Landroidx/datastore/preferences/protobuf/Writer;->x(IZ)V

    goto/16 :goto_5

    :pswitch_b
    invoke-virtual {v0, v15, v1, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v13, v14, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->z(JLjava/lang/Object;)I

    move-result v5

    invoke-interface {v6, v15, v5}, Landroidx/datastore/preferences/protobuf/Writer;->b(II)V

    goto/16 :goto_5

    :pswitch_c
    invoke-virtual {v0, v15, v1, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v13, v14, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->A(JLjava/lang/Object;)J

    move-result-wide v13

    invoke-interface {v6, v15, v13, v14}, Landroidx/datastore/preferences/protobuf/Writer;->r(IJ)V

    goto/16 :goto_5

    :pswitch_d
    invoke-virtual {v0, v15, v1, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v13, v14, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->z(JLjava/lang/Object;)I

    move-result v5

    invoke-interface {v6, v15, v5}, Landroidx/datastore/preferences/protobuf/Writer;->l(II)V

    goto/16 :goto_5

    :pswitch_e
    invoke-virtual {v0, v15, v1, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v13, v14, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->A(JLjava/lang/Object;)J

    move-result-wide v13

    invoke-interface {v6, v15, v13, v14}, Landroidx/datastore/preferences/protobuf/Writer;->f(IJ)V

    goto/16 :goto_5

    :pswitch_f
    invoke-virtual {v0, v15, v1, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v13, v14, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->A(JLjava/lang/Object;)J

    move-result-wide v13

    invoke-interface {v6, v15, v13, v14}, Landroidx/datastore/preferences/protobuf/Writer;->w(IJ)V

    goto/16 :goto_5

    :pswitch_10
    invoke-virtual {v0, v15, v1, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v13, v14, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-interface {v6, v5, v15}, Landroidx/datastore/preferences/protobuf/Writer;->v(FI)V

    goto/16 :goto_5

    :pswitch_11
    invoke-virtual {v0, v15, v1, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v13, v14, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    invoke-interface {v6, v13, v14, v15}, Landroidx/datastore/preferences/protobuf/Writer;->m(DI)V

    goto/16 :goto_5

    :pswitch_12
    invoke-virtual {v12, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->m(I)Ljava/lang/Object;

    move-result-object v8

    iget-object v13, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->o:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    invoke-interface {v13, v8}, Landroidx/datastore/preferences/protobuf/MapFieldSchema;->b(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;

    move-result-object v8

    invoke-interface {v13, v5}, Landroidx/datastore/preferences/protobuf/MapFieldSchema;->d(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/MapFieldLite;

    move-result-object v5

    invoke-interface {v6, v15, v8, v5}, Landroidx/datastore/preferences/protobuf/Writer;->M(ILandroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;Ljava/util/Map;)V

    goto/16 :goto_5

    :pswitch_13
    aget v5, v10, v1

    invoke-virtual {v12, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v13

    sget-object v14, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v8, :cond_4

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_4

    invoke-interface {v6, v5, v8, v13}, Landroidx/datastore/preferences/protobuf/Writer;->J(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Schema;)V

    goto/16 :goto_5

    :pswitch_14
    aget v5, v10, v1

    invoke-virtual {v12, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v13, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v8, :cond_4

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    move/from16 v13, v19

    invoke-interface {v6, v8, v5, v13}, Landroidx/datastore/preferences/protobuf/Writer;->g(Ljava/util/List;IZ)V

    goto/16 :goto_5

    :pswitch_15
    aget v5, v10, v1

    invoke-virtual {v12, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v13, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v8, :cond_4

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    const/4 v13, 0x1

    invoke-interface {v6, v8, v5, v13}, Landroidx/datastore/preferences/protobuf/Writer;->u(Ljava/util/List;IZ)V

    goto/16 :goto_5

    :pswitch_16
    aget v5, v10, v1

    invoke-virtual {v12, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v13, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v8, :cond_4

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    const/4 v13, 0x1

    invoke-interface {v6, v8, v5, v13}, Landroidx/datastore/preferences/protobuf/Writer;->A(Ljava/util/List;IZ)V

    goto/16 :goto_5

    :pswitch_17
    aget v5, v10, v1

    invoke-virtual {v12, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v13, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v8, :cond_4

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    const/4 v13, 0x1

    invoke-interface {v6, v8, v5, v13}, Landroidx/datastore/preferences/protobuf/Writer;->k(Ljava/util/List;IZ)V

    goto/16 :goto_5

    :pswitch_18
    aget v5, v10, v1

    invoke-virtual {v12, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v13, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v8, :cond_4

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    const/4 v13, 0x1

    invoke-interface {v6, v8, v5, v13}, Landroidx/datastore/preferences/protobuf/Writer;->t(Ljava/util/List;IZ)V

    goto/16 :goto_5

    :pswitch_19
    aget v5, v10, v1

    invoke-virtual {v12, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v13, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v8, :cond_4

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    const/4 v13, 0x1

    invoke-interface {v6, v8, v5, v13}, Landroidx/datastore/preferences/protobuf/Writer;->B(Ljava/util/List;IZ)V

    goto/16 :goto_5

    :pswitch_1a
    aget v5, v10, v1

    invoke-virtual {v12, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v13, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v8, :cond_4

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    const/4 v13, 0x1

    invoke-interface {v6, v8, v5, v13}, Landroidx/datastore/preferences/protobuf/Writer;->C(Ljava/util/List;IZ)V

    goto/16 :goto_5

    :pswitch_1b
    aget v5, v10, v1

    invoke-virtual {v12, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v13, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v8, :cond_4

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    const/4 v13, 0x1

    invoke-interface {v6, v8, v5, v13}, Landroidx/datastore/preferences/protobuf/Writer;->D(Ljava/util/List;IZ)V

    goto/16 :goto_5

    :pswitch_1c
    aget v5, v10, v1

    invoke-virtual {v12, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v13, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v8, :cond_4

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    const/4 v13, 0x1

    invoke-interface {v6, v8, v5, v13}, Landroidx/datastore/preferences/protobuf/Writer;->n(Ljava/util/List;IZ)V

    goto/16 :goto_5

    :pswitch_1d
    aget v5, v10, v1

    invoke-virtual {v12, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v13, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v8, :cond_4

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    const/4 v13, 0x1

    invoke-interface {v6, v8, v5, v13}, Landroidx/datastore/preferences/protobuf/Writer;->h(Ljava/util/List;IZ)V

    goto/16 :goto_5

    :pswitch_1e
    aget v5, v10, v1

    invoke-virtual {v12, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v13, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v8, :cond_4

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    const/4 v13, 0x1

    invoke-interface {v6, v8, v5, v13}, Landroidx/datastore/preferences/protobuf/Writer;->c(Ljava/util/List;IZ)V

    goto/16 :goto_5

    :pswitch_1f
    aget v5, v10, v1

    invoke-virtual {v12, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v13, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v8, :cond_4

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    const/4 v13, 0x1

    invoke-interface {v6, v8, v5, v13}, Landroidx/datastore/preferences/protobuf/Writer;->j(Ljava/util/List;IZ)V

    goto/16 :goto_5

    :pswitch_20
    aget v5, v10, v1

    invoke-virtual {v12, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v13, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v8, :cond_4

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    const/4 v13, 0x1

    invoke-interface {v6, v8, v5, v13}, Landroidx/datastore/preferences/protobuf/Writer;->G(Ljava/util/List;IZ)V

    goto/16 :goto_5

    :pswitch_21
    aget v5, v10, v1

    invoke-virtual {v12, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v13, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v8, :cond_4

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    const/4 v13, 0x1

    invoke-interface {v6, v8, v5, v13}, Landroidx/datastore/preferences/protobuf/Writer;->i(Ljava/util/List;IZ)V

    goto/16 :goto_5

    :pswitch_22
    aget v5, v10, v1

    invoke-virtual {v12, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v13, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v8, :cond_4

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    const/4 v13, 0x0

    invoke-interface {v6, v8, v5, v13}, Landroidx/datastore/preferences/protobuf/Writer;->g(Ljava/util/List;IZ)V

    goto/16 :goto_5

    :pswitch_23
    aget v5, v10, v1

    invoke-virtual {v12, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v13, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v8, :cond_4

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    const/4 v13, 0x0

    invoke-interface {v6, v8, v5, v13}, Landroidx/datastore/preferences/protobuf/Writer;->u(Ljava/util/List;IZ)V

    goto/16 :goto_5

    :pswitch_24
    aget v5, v10, v1

    invoke-virtual {v12, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v13, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v8, :cond_4

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    const/4 v13, 0x0

    invoke-interface {v6, v8, v5, v13}, Landroidx/datastore/preferences/protobuf/Writer;->A(Ljava/util/List;IZ)V

    goto/16 :goto_5

    :pswitch_25
    aget v5, v10, v1

    invoke-virtual {v12, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v13, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v8, :cond_4

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    const/4 v13, 0x0

    invoke-interface {v6, v8, v5, v13}, Landroidx/datastore/preferences/protobuf/Writer;->k(Ljava/util/List;IZ)V

    goto/16 :goto_5

    :pswitch_26
    aget v5, v10, v1

    invoke-virtual {v12, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v13, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v8, :cond_4

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    const/4 v13, 0x0

    invoke-interface {v6, v8, v5, v13}, Landroidx/datastore/preferences/protobuf/Writer;->t(Ljava/util/List;IZ)V

    goto/16 :goto_5

    :pswitch_27
    aget v5, v10, v1

    invoke-virtual {v12, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v13, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v8, :cond_4

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    const/4 v13, 0x0

    invoke-interface {v6, v8, v5, v13}, Landroidx/datastore/preferences/protobuf/Writer;->B(Ljava/util/List;IZ)V

    goto/16 :goto_5

    :pswitch_28
    aget v5, v10, v1

    invoke-virtual {v12, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v13, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v8, :cond_4

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    invoke-interface {v6, v5, v8}, Landroidx/datastore/preferences/protobuf/Writer;->I(ILjava/util/List;)V

    goto/16 :goto_5

    :pswitch_29
    aget v5, v10, v1

    invoke-virtual {v12, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v13

    sget-object v14, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v8, :cond_4

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_4

    invoke-interface {v6, v5, v8, v13}, Landroidx/datastore/preferences/protobuf/Writer;->O(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Schema;)V

    goto/16 :goto_5

    :pswitch_2a
    aget v5, v10, v1

    invoke-virtual {v12, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v13, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v8, :cond_4

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    invoke-interface {v6, v5, v8}, Landroidx/datastore/preferences/protobuf/Writer;->d(ILjava/util/List;)V

    goto/16 :goto_5

    :pswitch_2b
    aget v5, v10, v1

    invoke-virtual {v12, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v13, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v8, :cond_4

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    const/4 v13, 0x0

    invoke-interface {v6, v8, v5, v13}, Landroidx/datastore/preferences/protobuf/Writer;->C(Ljava/util/List;IZ)V

    goto/16 :goto_5

    :pswitch_2c
    aget v5, v10, v1

    invoke-virtual {v12, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v13, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v8, :cond_4

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    const/4 v13, 0x0

    invoke-interface {v6, v8, v5, v13}, Landroidx/datastore/preferences/protobuf/Writer;->D(Ljava/util/List;IZ)V

    goto/16 :goto_5

    :pswitch_2d
    aget v5, v10, v1

    invoke-virtual {v12, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v13, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v8, :cond_4

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    const/4 v13, 0x0

    invoke-interface {v6, v8, v5, v13}, Landroidx/datastore/preferences/protobuf/Writer;->n(Ljava/util/List;IZ)V

    goto/16 :goto_5

    :pswitch_2e
    aget v5, v10, v1

    invoke-virtual {v12, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v13, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v8, :cond_4

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    const/4 v13, 0x0

    invoke-interface {v6, v8, v5, v13}, Landroidx/datastore/preferences/protobuf/Writer;->h(Ljava/util/List;IZ)V

    goto/16 :goto_5

    :pswitch_2f
    aget v5, v10, v1

    invoke-virtual {v12, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v13, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v8, :cond_4

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    const/4 v13, 0x0

    invoke-interface {v6, v8, v5, v13}, Landroidx/datastore/preferences/protobuf/Writer;->c(Ljava/util/List;IZ)V

    goto/16 :goto_5

    :pswitch_30
    aget v5, v10, v1

    invoke-virtual {v12, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v13, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v8, :cond_4

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    const/4 v13, 0x0

    invoke-interface {v6, v8, v5, v13}, Landroidx/datastore/preferences/protobuf/Writer;->j(Ljava/util/List;IZ)V

    goto/16 :goto_5

    :pswitch_31
    aget v5, v10, v1

    invoke-virtual {v12, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v13, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v8, :cond_4

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_4

    const/4 v13, 0x0

    invoke-interface {v6, v8, v5, v13}, Landroidx/datastore/preferences/protobuf/Writer;->G(Ljava/util/List;IZ)V

    goto/16 :goto_5

    :pswitch_32
    aget v5, v10, v1

    invoke-virtual {v12, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    sget-object v13, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v8, :cond_5

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_5

    const/4 v13, 0x0

    invoke-interface {v6, v8, v5, v13}, Landroidx/datastore/preferences/protobuf/Writer;->i(Ljava/util/List;IZ)V

    goto :goto_6

    :cond_5
    const/4 v13, 0x0

    :goto_6
    move/from16 v17, v13

    goto/16 :goto_8

    :pswitch_33
    const/16 v17, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->p(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v12, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v8

    invoke-interface {v6, v15, v5, v8}, Landroidx/datastore/preferences/protobuf/Writer;->N(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V

    goto/16 :goto_8

    :pswitch_34
    const/16 v17, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->p(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v12, v2, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v6, v15, v13, v14}, Landroidx/datastore/preferences/protobuf/Writer;->p(IJ)V

    :cond_6
    :goto_7
    move-object/from16 v0, p0

    goto/16 :goto_8

    :pswitch_35
    const/16 v17, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->p(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v12, v2, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v6, v15, v0}, Landroidx/datastore/preferences/protobuf/Writer;->H(II)V

    goto :goto_7

    :pswitch_36
    const/16 v17, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->p(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v12, v2, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v6, v15, v13, v14}, Landroidx/datastore/preferences/protobuf/Writer;->o(IJ)V

    goto :goto_7

    :pswitch_37
    const/16 v17, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->p(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v12, v2, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v6, v15, v0}, Landroidx/datastore/preferences/protobuf/Writer;->y(II)V

    goto :goto_7

    :pswitch_38
    const/16 v17, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->p(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v12, v2, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v6, v15, v0}, Landroidx/datastore/preferences/protobuf/Writer;->F(II)V

    goto :goto_7

    :pswitch_39
    const/16 v17, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->p(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v12, v2, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v6, v15, v0}, Landroidx/datastore/preferences/protobuf/Writer;->q(II)V

    goto :goto_7

    :pswitch_3a
    const/16 v17, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->p(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v12, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-interface {v6, v15, v0}, Landroidx/datastore/preferences/protobuf/Writer;->K(ILandroidx/datastore/preferences/protobuf/ByteString;)V

    goto :goto_7

    :pswitch_3b
    const/16 v17, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->p(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v12, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v8

    invoke-interface {v6, v15, v5, v8}, Landroidx/datastore/preferences/protobuf/Writer;->L(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V

    goto/16 :goto_8

    :pswitch_3c
    const/16 v17, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->p(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v12, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v15, v0, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->K(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V

    goto/16 :goto_7

    :pswitch_3d
    const/16 v17, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->p(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object v0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, v13, v14, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->c(JLjava/lang/Object;)Z

    move-result v0

    invoke-interface {v6, v15, v0}, Landroidx/datastore/preferences/protobuf/Writer;->x(IZ)V

    goto/16 :goto_7

    :pswitch_3e
    const/16 v17, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->p(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v12, v2, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v6, v15, v0}, Landroidx/datastore/preferences/protobuf/Writer;->b(II)V

    goto/16 :goto_7

    :pswitch_3f
    const/16 v17, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->p(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v12, v2, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v6, v15, v13, v14}, Landroidx/datastore/preferences/protobuf/Writer;->r(IJ)V

    goto/16 :goto_7

    :pswitch_40
    const/16 v17, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->p(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v12, v2, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v6, v15, v0}, Landroidx/datastore/preferences/protobuf/Writer;->l(II)V

    goto/16 :goto_7

    :pswitch_41
    const/16 v17, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->p(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v12, v2, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v6, v15, v13, v14}, Landroidx/datastore/preferences/protobuf/Writer;->f(IJ)V

    goto/16 :goto_7

    :pswitch_42
    const/16 v17, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->p(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v12, v2, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v6, v15, v13, v14}, Landroidx/datastore/preferences/protobuf/Writer;->w(IJ)V

    goto/16 :goto_7

    :pswitch_43
    const/16 v17, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->p(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object v0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, v13, v14, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->e(JLjava/lang/Object;)F

    move-result v0

    invoke-interface {v6, v0, v15}, Landroidx/datastore/preferences/protobuf/Writer;->v(FI)V

    goto/16 :goto_7

    :pswitch_44
    const/16 v17, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->p(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_7

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v13, v14, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->d(JLjava/lang/Object;)D

    move-result-wide v13

    invoke-interface {v6, v13, v14, v15}, Landroidx/datastore/preferences/protobuf/Writer;->m(DI)V

    :cond_7
    :goto_8
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_1

    :cond_8
    check-cast v7, Landroidx/datastore/preferences/protobuf/ExtensionSchemaLite;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ltr;->x(Ljava/lang/Object;)V

    throw v16

    :cond_9
    const/16 v16, 0x0

    if-nez v9, :cond_a

    iget-object v0, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->m:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    check-cast v0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLiteSchema;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, v2

    check-cast v0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    iget-object v0, v0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0, v6}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->e(Landroidx/datastore/preferences/protobuf/Writer;)V

    return-void

    :cond_a
    check-cast v7, Landroidx/datastore/preferences/protobuf/ExtensionSchemaLite;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ltr;->x(Ljava/lang/Object;)V

    throw v16

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

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->a:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->I(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    int-to-long v6, v3

    aget v1, v1, v0

    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->H(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0, p1, p2, v0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->u(Ljava/lang/Object;Ljava/lang/Object;I)V

    :cond_0
    :goto_1
    move-object v5, p1

    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {p0, v1, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v2, v6, v7, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v7, p1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->o(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->E(IILjava/lang/Object;)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, p1, p2, v0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->u(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, v1, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v2, v6, v7, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v7, p1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->o(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->E(IILjava/lang/Object;)V

    goto :goto_1

    :pswitch_4
    sget-object v1, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    sget-object v1, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v1, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v6, v7, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->o:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    invoke-interface {v3, v2, v1}, Landroidx/datastore/preferences/protobuf/MapFieldSchema;->a(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/MapFieldLite;

    move-result-object v1

    invoke-static {v6, v7, p1, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->o(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_5
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->l:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    invoke-interface {v1, v6, v7, p1, p2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->b(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_6
    invoke-virtual {p0, p1, p2, v0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->t(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v1, v6, v7, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {v6, v7, p1, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->n(JLjava/lang/Object;J)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->D(ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_8
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v1, v6, v7, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    move-result v1

    invoke-static {p1, v6, v7, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->m(Ljava/lang/Object;JI)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->D(ILjava/lang/Object;)V

    goto :goto_1

    :pswitch_9
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v1, v6, v7, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {v6, v7, p1, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->n(JLjava/lang/Object;J)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->D(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v1, v6, v7, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    move-result v1

    invoke-static {p1, v6, v7, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->m(Ljava/lang/Object;JI)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->D(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v1, v6, v7, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    move-result v1

    invoke-static {p1, v6, v7, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->m(Ljava/lang/Object;JI)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->D(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v1, v6, v7, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    move-result v1

    invoke-static {p1, v6, v7, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->m(Ljava/lang/Object;JI)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->D(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v1, v6, v7, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v6, v7, p1, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->o(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->D(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, p1, p2, v0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->t(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v1, v6, v7, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v6, v7, p1, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->o(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->D(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v1, v6, v7, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->c(JLjava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, p1, v6, v7, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->j(Ljava/lang/Object;JZ)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->D(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v1, v6, v7, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    move-result v1

    invoke-static {p1, v6, v7, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->m(Ljava/lang/Object;JI)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->D(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_12
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v1, v6, v7, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {v6, v7, p1, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->n(JLjava/lang/Object;J)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->D(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_13
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v1, v6, v7, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    move-result v1

    invoke-static {p1, v6, v7, v1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->m(Ljava/lang/Object;JI)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->D(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_14
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v1, v6, v7, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {v6, v7, p1, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->n(JLjava/lang/Object;J)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->D(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_15
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v1, v6, v7, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)J

    move-result-wide v1

    invoke-static {v6, v7, p1, v1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->n(JLjava/lang/Object;J)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->D(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_16
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v1, v6, v7, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->e(JLjava/lang/Object;)F

    move-result v2

    invoke-virtual {v1, p1, v6, v7, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->m(Ljava/lang/Object;JF)V

    invoke-virtual {p0, v0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->D(ILjava/lang/Object;)V

    goto/16 :goto_1

    :pswitch_17
    invoke-virtual {p0, v0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->d(JLjava/lang/Object;)D

    move-result-wide v8

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->l(Ljava/lang/Object;JD)V

    invoke-virtual {p0, v0, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->D(ILjava/lang/Object;)V

    :goto_2
    add-int/lit8 v0, v0, 0x3

    move-object p1, v5

    goto/16 :goto_0

    :cond_1
    move-object v5, p1

    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->m:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    invoke-static {p1, v5, p2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->l(Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean p1, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->f:Z

    if-eqz p1, :cond_2

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->n:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    invoke-static {p0, v5, p2}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->k(Landroidx/datastore/preferences/protobuf/ExtensionSchema;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    move-object v5, p1

    const-string p0, "Mutating immutable message: "

    invoke-static {v5, p0}, Lcj;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

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

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->k:Landroidx/datastore/preferences/protobuf/NewInstanceSchema;

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->e:Landroidx/datastore/preferences/protobuf/MessageLite;

    invoke-interface {v0, p0}, Landroidx/datastore/preferences/protobuf/NewInstanceSchema;->a(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 9

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->l(I)V

    iput v1, v0, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;->memoizedHashCode:I

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->u()V

    :cond_1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->a:[I

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_5

    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->I(I)I

    move-result v4

    const v5, 0xfffff

    and-int/2addr v5, v4

    int-to-long v5, v5

    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->H(I)I

    move-result v4

    const/16 v7, 0x9

    if-eq v4, v7, :cond_3

    const/16 v7, 0x3c

    if-eq v4, v7, :cond_2

    const/16 v7, 0x44

    if-eq v4, v7, :cond_2

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-object v4, Landroidx/datastore/preferences/protobuf/MessageSchema;->q:Lsun/misc/Unsafe;

    invoke-virtual {v4, p1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v8, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->o:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    invoke-interface {v8, v7}, Landroidx/datastore/preferences/protobuf/MapFieldSchema;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, p1, v5, v6, v7}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    iget-object v4, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->l:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    invoke-interface {v4, v5, v6, p1}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->c(JLjava/lang/Object;)V

    goto :goto_1

    :cond_2
    aget v4, v0, v3

    invoke-virtual {p0, v4, v3, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v4

    sget-object v7, Landroidx/datastore/preferences/protobuf/MessageSchema;->q:Lsun/misc/Unsafe;

    invoke-virtual {v7, p1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Landroidx/datastore/preferences/protobuf/Schema;->c(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    :pswitch_2
    invoke-virtual {p0, v3, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(ILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v4

    sget-object v7, Landroidx/datastore/preferences/protobuf/MessageSchema;->q:Lsun/misc/Unsafe;

    invoke-virtual {v7, p1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Landroidx/datastore/preferences/protobuf/Schema;->c(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x3

    goto :goto_0

    :cond_5
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->m:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    check-cast v0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLiteSchema;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    iget-object v0, v0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    iget-boolean v2, v0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->e:Z

    if-eqz v2, :cond_6

    iput-boolean v1, v0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->e:Z

    :cond_6
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->f:Z

    if-eqz v0, :cond_7

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->n:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    check-cast p0, Landroidx/datastore/preferences/protobuf/ExtensionSchemaLite;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object p0, p1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Landroidx/datastore/preferences/protobuf/FieldSet;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/FieldSet;->j()V

    :cond_7
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
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    const v6, 0xfffff

    const/4 v7, 0x0

    move v1, v6

    move v3, v7

    move v8, v3

    :goto_0
    iget v4, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->i:I

    const/4 v5, 0x1

    if-ge v8, v4, :cond_e

    iget-object v4, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->h:[I

    aget v4, v4, v8

    iget-object v9, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->a:[I

    aget v10, v9, v4

    invoke-virtual {v0, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->I(I)I

    move-result v11

    add-int/lit8 v12, v4, 0x2

    aget v9, v9, v12

    and-int v12, v9, v6

    ushr-int/lit8 v9, v9, 0x14

    shl-int/2addr v5, v9

    if-eq v12, v1, :cond_1

    if-eq v12, v6, :cond_0

    sget-object v1, Landroidx/datastore/preferences/protobuf/MessageSchema;->q:Lsun/misc/Unsafe;

    int-to-long v13, v12

    invoke-virtual {v1, v2, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    :cond_0
    move v1, v4

    move v4, v3

    move v3, v12

    goto :goto_1

    :cond_1
    move v15, v3

    move v3, v1

    move v1, v4

    move v4, v15

    :goto_1
    const/high16 v9, 0x10000000

    and-int/2addr v9, v11

    if-eqz v9, :cond_2

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->p(ILjava/lang/Object;III)Z

    move-result v9

    if-nez v9, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-static {v11}, Landroidx/datastore/preferences/protobuf/MessageSchema;->H(I)I

    move-result v9

    const/16 v12, 0x9

    if-eq v9, v12, :cond_c

    const/16 v12, 0x11

    if-eq v9, v12, :cond_c

    const/16 v5, 0x1b

    if-eq v9, v5, :cond_9

    const/16 v5, 0x3c

    if-eq v9, v5, :cond_8

    const/16 v5, 0x44

    if-eq v9, v5, :cond_8

    const/16 v5, 0x31

    if-eq v9, v5, :cond_9

    const/16 v5, 0x32

    if-eq v9, v5, :cond_3

    goto/16 :goto_3

    :cond_3
    and-int v5, v11, v6

    int-to-long v9, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v9, v10, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iget-object v9, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->o:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    invoke-interface {v9, v5}, Landroidx/datastore/preferences/protobuf/MapFieldSchema;->d(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/MapFieldLite;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_4

    goto/16 :goto_3

    :cond_4
    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->m(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v9, v1}, Landroidx/datastore/preferences/protobuf/MapFieldSchema;->b(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;

    move-result-object v1

    iget-object v1, v1, Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;->c:Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/WireFormat$FieldType;->a()Landroidx/datastore/preferences/protobuf/WireFormat$JavaType;

    move-result-object v1

    sget-object v9, Landroidx/datastore/preferences/protobuf/WireFormat$JavaType;->MESSAGE:Landroidx/datastore/preferences/protobuf/WireFormat$JavaType;

    if-eq v1, v9, :cond_5

    goto/16 :goto_3

    :cond_5
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v5, 0x0

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    if-nez v5, :cond_7

    sget-object v5, Landroidx/datastore/preferences/protobuf/Protobuf;->c:Landroidx/datastore/preferences/protobuf/Protobuf;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroidx/datastore/preferences/protobuf/Protobuf;->a(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v5

    :cond_7
    invoke-interface {v5, v9}, Landroidx/datastore/preferences/protobuf/Schema;->d(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    goto/16 :goto_4

    :cond_8
    invoke-virtual {v0, v10, v1, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v1

    and-int v5, v11, v6

    int-to-long v9, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v9, v10, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Landroidx/datastore/preferences/protobuf/Schema;->d(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_4

    :cond_9
    and-int v5, v11, v6

    int-to-long v9, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v9, v10, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_a

    goto :goto_3

    :cond_a
    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v1

    move v9, v7

    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_d

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v1, v10}, Landroidx/datastore/preferences/protobuf/Schema;->d(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    goto :goto_4

    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_c
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->p(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v1

    and-int v5, v11, v6

    int-to-long v9, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v9, v10, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Landroidx/datastore/preferences/protobuf/Schema;->d(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_4

    :cond_d
    :goto_3
    add-int/lit8 v8, v8, 0x1

    move v1, v3

    move v3, v4

    goto/16 :goto_0

    :cond_e
    iget-boolean v1, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->f:Z

    if-eqz v1, :cond_f

    iget-object v0, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->n:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    check-cast v0, Landroidx/datastore/preferences/protobuf/ExtensionSchemaLite;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, v2

    check-cast v0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object v0, v0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Landroidx/datastore/preferences/protobuf/FieldSet;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/FieldSet;->g()Z

    move-result v0

    if-nez v0, :cond_f

    :goto_4
    return v7

    :cond_f
    return v5
.end method

.method public final e(Landroidx/datastore/preferences/protobuf/AbstractMessageLite;)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    sget-object v6, Landroidx/datastore/preferences/protobuf/MessageSchema;->q:Lsun/misc/Unsafe;

    const/4 v7, 0x0

    const v8, 0xfffff

    move v1, v7

    move v4, v1

    move v9, v4

    move v3, v8

    :goto_0
    iget-object v5, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->a:[I

    array-length v10, v5

    if-ge v1, v10, :cond_1d

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->I(I)I

    move-result v10

    invoke-static {v10}, Landroidx/datastore/preferences/protobuf/MessageSchema;->H(I)I

    move-result v11

    aget v12, v5, v1

    add-int/lit8 v13, v1, 0x2

    aget v5, v5, v13

    and-int v13, v5, v8

    const/16 v14, 0x11

    const/4 v15, 0x1

    if-gt v11, v14, :cond_2

    if-eq v13, v3, :cond_1

    if-ne v13, v8, :cond_0

    move v4, v7

    goto :goto_1

    :cond_0
    int-to-long v3, v13

    invoke-virtual {v6, v2, v3, v4}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    move v4, v3

    :goto_1
    move v3, v13

    :cond_1
    ushr-int/lit8 v5, v5, 0x14

    shl-int v5, v15, v5

    goto :goto_2

    :cond_2
    move v5, v7

    :goto_2
    and-int/2addr v10, v8

    int-to-long v13, v10

    sget-object v10, Landroidx/datastore/preferences/protobuf/FieldType;->DOUBLE_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

    invoke-virtual {v10}, Landroidx/datastore/preferences/protobuf/FieldType;->a()I

    move-result v10

    if-lt v11, v10, :cond_3

    sget-object v10, Landroidx/datastore/preferences/protobuf/FieldType;->SINT64_LIST_PACKED:Landroidx/datastore/preferences/protobuf/FieldType;

    invoke-virtual {v10}, Landroidx/datastore/preferences/protobuf/FieldType;->a()I

    move-result v10

    :cond_3
    const/16 v10, 0x3f

    packed-switch v11, :pswitch_data_0

    goto/16 :goto_23

    :pswitch_0
    invoke-virtual {v0, v12, v1, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/datastore/preferences/protobuf/MessageLite;

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v10

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    move-result v11

    mul-int/lit8 v11, v11, 0x2

    check-cast v5, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;

    invoke-virtual {v5, v10}, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;->k(Landroidx/datastore/preferences/protobuf/Schema;)I

    move-result v5

    :goto_3
    add-int/2addr v5, v11

    :goto_4
    add-int/2addr v9, v5

    goto/16 :goto_23

    :pswitch_1
    invoke-virtual {v0, v12, v1, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-static {v13, v14, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->A(JLjava/lang/Object;)J

    move-result-wide v13

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    move-result v5

    shl-long v11, v13, v15

    shr-long/2addr v13, v10

    xor-long v10, v11, v13

    invoke-static {v10, v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->g(J)I

    move-result v10

    :goto_5
    add-int/2addr v10, v5

    add-int/2addr v9, v10

    goto/16 :goto_23

    :pswitch_2
    invoke-virtual {v0, v12, v1, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-static {v13, v14, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->z(JLjava/lang/Object;)I

    move-result v5

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    move-result v10

    shl-int/lit8 v11, v5, 0x1

    shr-int/lit8 v5, v5, 0x1f

    xor-int/2addr v5, v11

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f(I)I

    move-result v5

    :goto_6
    add-int/2addr v5, v10

    goto :goto_4

    :pswitch_3
    invoke-virtual {v0, v12, v1, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    move-result v5

    :goto_7
    add-int/lit8 v5, v5, 0x8

    goto :goto_4

    :pswitch_4
    invoke-virtual {v0, v12, v1, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    move-result v5

    :goto_8
    add-int/lit8 v5, v5, 0x4

    goto :goto_4

    :pswitch_5
    invoke-virtual {v0, v12, v1, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-static {v13, v14, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->z(JLjava/lang/Object;)I

    move-result v5

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    move-result v10

    int-to-long v11, v5

    invoke-static {v11, v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->g(J)I

    move-result v5

    goto :goto_6

    :pswitch_6
    invoke-virtual {v0, v12, v1, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-static {v13, v14, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->z(JLjava/lang/Object;)I

    move-result v5

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    move-result v10

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f(I)I

    move-result v5

    goto :goto_6

    :pswitch_7
    invoke-virtual {v0, v12, v1, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-static {v12, v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->b(ILandroidx/datastore/preferences/protobuf/ByteString;)I

    move-result v5

    goto/16 :goto_4

    :pswitch_8
    invoke-virtual {v0, v12, v1, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v10

    sget-object v11, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    instance-of v11, v5, Landroidx/datastore/preferences/protobuf/LazyFieldLite;

    if-eqz v11, :cond_4

    check-cast v5, Landroidx/datastore/preferences/protobuf/LazyFieldLite;

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    move-result v10

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->c(Landroidx/datastore/preferences/protobuf/LazyFieldLite;)I

    move-result v5

    :goto_9
    add-int/2addr v5, v10

    goto :goto_b

    :cond_4
    check-cast v5, Landroidx/datastore/preferences/protobuf/MessageLite;

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    move-result v11

    check-cast v5, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;

    invoke-virtual {v5, v10}, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;->k(Landroidx/datastore/preferences/protobuf/Schema;)I

    move-result v5

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f(I)I

    move-result v10

    :goto_a
    add-int/2addr v10, v5

    add-int v5, v10, v11

    :goto_b
    add-int/2addr v9, v5

    goto/16 :goto_23

    :pswitch_9
    invoke-virtual {v0, v12, v1, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    instance-of v10, v5, Landroidx/datastore/preferences/protobuf/ByteString;

    if-eqz v10, :cond_5

    check-cast v5, Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-static {v12, v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->b(ILandroidx/datastore/preferences/protobuf/ByteString;)I

    move-result v5

    :goto_c
    add-int/2addr v5, v9

    move v9, v5

    goto/16 :goto_23

    :cond_5
    check-cast v5, Ljava/lang/String;

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    move-result v10

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v10

    goto :goto_c

    :pswitch_a
    invoke-virtual {v0, v12, v1, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    move-result v5

    add-int/2addr v5, v15

    goto/16 :goto_4

    :pswitch_b
    invoke-virtual {v0, v12, v1, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    move-result v5

    goto/16 :goto_8

    :pswitch_c
    invoke-virtual {v0, v12, v1, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    move-result v5

    goto/16 :goto_7

    :pswitch_d
    invoke-virtual {v0, v12, v1, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-static {v13, v14, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->z(JLjava/lang/Object;)I

    move-result v5

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    move-result v10

    int-to-long v11, v5

    invoke-static {v11, v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->g(J)I

    move-result v5

    goto/16 :goto_6

    :pswitch_e
    invoke-virtual {v0, v12, v1, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-static {v13, v14, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->A(JLjava/lang/Object;)J

    move-result-wide v10

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    move-result v5

    invoke-static {v10, v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->g(J)I

    move-result v10

    goto/16 :goto_5

    :pswitch_f
    invoke-virtual {v0, v12, v1, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-static {v13, v14, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->A(JLjava/lang/Object;)J

    move-result-wide v10

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    move-result v5

    invoke-static {v10, v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->g(J)I

    move-result v10

    goto/16 :goto_5

    :pswitch_10
    invoke-virtual {v0, v12, v1, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    move-result v5

    goto/16 :goto_8

    :pswitch_11
    invoke-virtual {v0, v12, v1, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    move-result v5

    goto/16 :goto_7

    :pswitch_12
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->m(I)Ljava/lang/Object;

    move-result-object v10

    iget-object v11, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->o:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    invoke-interface {v11, v5, v10, v12}, Landroidx/datastore/preferences/protobuf/MapFieldSchema;->h(Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v5

    goto/16 :goto_b

    :pswitch_13
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v10

    sget-object v11, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_6

    move v14, v7

    goto :goto_e

    :cond_6
    move v13, v7

    move v14, v13

    :goto_d
    if-ge v13, v11, :cond_7

    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/datastore/preferences/protobuf/MessageLite;

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    move-result v16

    mul-int/lit8 v16, v16, 0x2

    check-cast v15, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;

    invoke-virtual {v15, v10}, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;->k(Landroidx/datastore/preferences/protobuf/Schema;)I

    move-result v15

    add-int v15, v15, v16

    add-int/2addr v14, v15

    add-int/lit8 v13, v13, 0x1

    goto :goto_d

    :cond_7
    :goto_e
    add-int/2addr v9, v14

    goto/16 :goto_23

    :pswitch_14
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->g(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1c

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    move-result v10

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f(I)I

    move-result v11

    :goto_f
    add-int/2addr v11, v10

    add-int/2addr v11, v5

    add-int/2addr v9, v11

    goto/16 :goto_23

    :pswitch_15
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->f(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1c

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    move-result v10

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f(I)I

    move-result v11

    goto :goto_f

    :pswitch_16
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v10, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x8

    if-lez v5, :cond_1c

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    move-result v10

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f(I)I

    move-result v11

    goto :goto_f

    :pswitch_17
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v10, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    if-lez v5, :cond_1c

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    move-result v10

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f(I)I

    move-result v11

    goto :goto_f

    :pswitch_18
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1c

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    move-result v10

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f(I)I

    move-result v11

    goto :goto_f

    :pswitch_19
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->h(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1c

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    move-result v10

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f(I)I

    move-result v11

    goto :goto_f

    :pswitch_1a
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v10, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1c

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    move-result v10

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f(I)I

    move-result v11

    goto/16 :goto_f

    :pswitch_1b
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v10, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    if-lez v5, :cond_1c

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    move-result v10

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f(I)I

    move-result v11

    goto/16 :goto_f

    :pswitch_1c
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v10, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x8

    if-lez v5, :cond_1c

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    move-result v10

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f(I)I

    move-result v11

    goto/16 :goto_f

    :pswitch_1d
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->d(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1c

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    move-result v10

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f(I)I

    move-result v11

    goto/16 :goto_f

    :pswitch_1e
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->i(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1c

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    move-result v10

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f(I)I

    move-result v11

    goto/16 :goto_f

    :pswitch_1f
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->e(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1c

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    move-result v10

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f(I)I

    move-result v11

    goto/16 :goto_f

    :pswitch_20
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v10, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    if-lez v5, :cond_1c

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    move-result v10

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f(I)I

    move-result v11

    goto/16 :goto_f

    :pswitch_21
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v10, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x8

    if-lez v5, :cond_1c

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    move-result v10

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f(I)I

    move-result v11

    goto/16 :goto_f

    :pswitch_22
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v10, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_8

    :goto_10
    move v11, v7

    goto :goto_12

    :cond_8
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->g(Ljava/util/List;)I

    move-result v5

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    move-result v11

    :goto_11
    mul-int/2addr v11, v10

    add-int/2addr v11, v5

    :cond_9
    :goto_12
    add-int/2addr v9, v11

    goto/16 :goto_23

    :pswitch_23
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v10, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_a

    goto :goto_10

    :cond_a
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->f(Ljava/util/List;)I

    move-result v5

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    move-result v11

    goto :goto_11

    :pswitch_24
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v12, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->c(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_b

    :pswitch_25
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v12, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->b(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_b

    :pswitch_26
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v10, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_b

    goto :goto_10

    :cond_b
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a(Ljava/util/List;)I

    move-result v5

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    move-result v11

    goto :goto_11

    :pswitch_27
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v10, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_c

    goto :goto_10

    :cond_c
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->h(Ljava/util/List;)I

    move-result v5

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    move-result v11

    goto :goto_11

    :pswitch_28
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v10, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_d

    goto :goto_10

    :cond_d
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    move-result v11

    mul-int/2addr v11, v10

    move v10, v7

    :goto_13
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    if-ge v10, v12, :cond_9

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-virtual {v12}, Landroidx/datastore/preferences/protobuf/ByteString;->size()I

    move-result v12

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f(I)I

    move-result v13

    add-int/2addr v13, v12

    add-int/2addr v11, v13

    add-int/lit8 v10, v10, 0x1

    goto :goto_13

    :pswitch_29
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v10

    sget-object v11, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    if-nez v11, :cond_e

    move v12, v7

    goto :goto_16

    :cond_e
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    move-result v12

    mul-int/2addr v12, v11

    move v13, v7

    :goto_14
    if-ge v13, v11, :cond_10

    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    instance-of v15, v14, Landroidx/datastore/preferences/protobuf/LazyFieldLite;

    if-eqz v15, :cond_f

    check-cast v14, Landroidx/datastore/preferences/protobuf/LazyFieldLite;

    invoke-static {v14}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->c(Landroidx/datastore/preferences/protobuf/LazyFieldLite;)I

    move-result v14

    add-int/2addr v14, v12

    move v12, v14

    goto :goto_15

    :cond_f
    check-cast v14, Landroidx/datastore/preferences/protobuf/MessageLite;

    check-cast v14, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;

    invoke-virtual {v14, v10}, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;->k(Landroidx/datastore/preferences/protobuf/Schema;)I

    move-result v14

    invoke-static {v14}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f(I)I

    move-result v15

    add-int/2addr v15, v14

    add-int/2addr v15, v12

    move v12, v15

    :goto_15
    add-int/lit8 v13, v13, 0x1

    goto :goto_14

    :cond_10
    :goto_16
    add-int/2addr v9, v12

    goto/16 :goto_23

    :pswitch_2a
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v10, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_11

    goto/16 :goto_10

    :cond_11
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    move-result v11

    mul-int/2addr v11, v10

    instance-of v12, v5, Landroidx/datastore/preferences/protobuf/LazyStringList;

    if-eqz v12, :cond_13

    check-cast v5, Landroidx/datastore/preferences/protobuf/LazyStringList;

    move v12, v7

    :goto_17
    if-ge v12, v10, :cond_9

    invoke-interface {v5}, Landroidx/datastore/preferences/protobuf/LazyStringList;->M0()Ljava/lang/Object;

    move-result-object v13

    instance-of v14, v13, Landroidx/datastore/preferences/protobuf/ByteString;

    if-eqz v14, :cond_12

    check-cast v13, Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-virtual {v13}, Landroidx/datastore/preferences/protobuf/ByteString;->size()I

    move-result v13

    invoke-static {v13}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f(I)I

    move-result v14

    add-int/2addr v14, v13

    add-int/2addr v14, v11

    move v11, v14

    goto :goto_18

    :cond_12
    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(Ljava/lang/String;)I

    move-result v13

    add-int/2addr v13, v11

    move v11, v13

    :goto_18
    add-int/lit8 v12, v12, 0x1

    goto :goto_17

    :cond_13
    move v12, v7

    :goto_19
    if-ge v12, v10, :cond_9

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    instance-of v14, v13, Landroidx/datastore/preferences/protobuf/ByteString;

    if-eqz v14, :cond_14

    check-cast v13, Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-virtual {v13}, Landroidx/datastore/preferences/protobuf/ByteString;->size()I

    move-result v13

    invoke-static {v13}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f(I)I

    move-result v14

    add-int/2addr v14, v13

    add-int/2addr v14, v11

    move v11, v14

    goto :goto_1a

    :cond_14
    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(Ljava/lang/String;)I

    move-result v13

    add-int/2addr v13, v11

    move v11, v13

    :goto_1a
    add-int/lit8 v12, v12, 0x1

    goto :goto_19

    :pswitch_2b
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v10, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_15

    move v10, v7

    goto :goto_1b

    :cond_15
    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    move-result v10

    add-int/2addr v10, v15

    mul-int/2addr v10, v5

    :goto_1b
    add-int/2addr v9, v10

    goto/16 :goto_23

    :pswitch_2c
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v12, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->b(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_b

    :pswitch_2d
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v12, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->c(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_b

    :pswitch_2e
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v10, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_16

    goto/16 :goto_10

    :cond_16
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->d(Ljava/util/List;)I

    move-result v5

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    move-result v11

    goto/16 :goto_11

    :pswitch_2f
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v10, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_17

    goto/16 :goto_10

    :cond_17
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->i(Ljava/util/List;)I

    move-result v5

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    move-result v11

    goto/16 :goto_11

    :pswitch_30
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v10, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_18

    goto/16 :goto_10

    :cond_18
    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->e(Ljava/util/List;)I

    move-result v10

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    move-result v11

    mul-int/2addr v11, v5

    add-int/2addr v11, v10

    goto/16 :goto_12

    :pswitch_31
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v12, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->b(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_b

    :pswitch_32
    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-static {v12, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->c(ILjava/util/List;)I

    move-result v5

    goto/16 :goto_b

    :pswitch_33
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->p(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/datastore/preferences/protobuf/MessageLite;

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v10

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    move-result v11

    mul-int/lit8 v11, v11, 0x2

    check-cast v5, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;

    invoke-virtual {v5, v10}, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;->k(Landroidx/datastore/preferences/protobuf/Schema;)I

    move-result v5

    goto/16 :goto_3

    :pswitch_34
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->p(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    move-result v0

    shl-long v11, v13, v15

    shr-long/2addr v13, v10

    xor-long v10, v11, v13

    invoke-static {v10, v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->g(J)I

    move-result v5

    :goto_1c
    add-int/2addr v5, v0

    add-int/2addr v9, v5

    :cond_19
    :goto_1d
    move-object/from16 v0, p0

    goto/16 :goto_23

    :pswitch_35
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->p(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    move-result v5

    shl-int/lit8 v10, v0, 0x1

    shr-int/lit8 v0, v0, 0x1f

    xor-int/2addr v0, v10

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f(I)I

    move-result v0

    :goto_1e
    add-int/2addr v0, v5

    :goto_1f
    add-int/2addr v9, v0

    goto :goto_1d

    :pswitch_36
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->p(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    move-result v0

    :goto_20
    add-int/lit8 v0, v0, 0x8

    goto :goto_1f

    :pswitch_37
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->p(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    move-result v0

    :goto_21
    add-int/lit8 v0, v0, 0x4

    goto :goto_1f

    :pswitch_38
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->p(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    move-result v5

    int-to-long v10, v0

    invoke-static {v10, v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->g(J)I

    move-result v0

    goto :goto_1e

    :pswitch_39
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->p(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    move-result v5

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f(I)I

    move-result v0

    goto :goto_1e

    :pswitch_3a
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->p(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-static {v12, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->b(ILandroidx/datastore/preferences/protobuf/ByteString;)I

    move-result v0

    goto :goto_1f

    :pswitch_3b
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->p(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v10

    sget-object v11, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    instance-of v11, v5, Landroidx/datastore/preferences/protobuf/LazyFieldLite;

    if-eqz v11, :cond_1a

    check-cast v5, Landroidx/datastore/preferences/protobuf/LazyFieldLite;

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    move-result v10

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->c(Landroidx/datastore/preferences/protobuf/LazyFieldLite;)I

    move-result v5

    goto/16 :goto_9

    :cond_1a
    check-cast v5, Landroidx/datastore/preferences/protobuf/MessageLite;

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    move-result v11

    check-cast v5, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;

    invoke-virtual {v5, v10}, Landroidx/datastore/preferences/protobuf/AbstractMessageLite;->k(Landroidx/datastore/preferences/protobuf/Schema;)I

    move-result v5

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->f(I)I

    move-result v10

    goto/16 :goto_a

    :pswitch_3c
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->p(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    instance-of v5, v0, Landroidx/datastore/preferences/protobuf/ByteString;

    if-eqz v5, :cond_1b

    check-cast v0, Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-static {v12, v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->b(ILandroidx/datastore/preferences/protobuf/ByteString;)I

    move-result v0

    :goto_22
    add-int/2addr v0, v9

    move v9, v0

    goto/16 :goto_1d

    :cond_1b
    check-cast v0, Ljava/lang/String;

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    move-result v5

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->d(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v5

    goto :goto_22

    :pswitch_3d
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->p(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    move-result v0

    add-int/2addr v0, v15

    goto/16 :goto_1f

    :pswitch_3e
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->p(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    move-result v0

    goto/16 :goto_21

    :pswitch_3f
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->p(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    move-result v0

    goto/16 :goto_20

    :pswitch_40
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->p(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    move-result v5

    int-to-long v10, v0

    invoke-static {v10, v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->g(J)I

    move-result v0

    goto/16 :goto_1e

    :pswitch_41
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->p(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    move-result v0

    invoke-static {v10, v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->g(J)I

    move-result v5

    goto/16 :goto_1c

    :pswitch_42
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->p(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-virtual {v6, v2, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    move-result v0

    invoke-static {v10, v11}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->g(J)I

    move-result v5

    goto/16 :goto_1c

    :pswitch_43
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->p(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    move-result v0

    goto/16 :goto_21

    :pswitch_44
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->p(ILjava/lang/Object;III)Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-static {v12}, Landroidx/datastore/preferences/protobuf/CodedOutputStream;->e(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    add-int/2addr v9, v2

    :cond_1c
    :goto_23
    add-int/lit8 v1, v1, 0x3

    move-object/from16 v2, p1

    goto/16 :goto_0

    :cond_1d
    iget-object v1, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->m:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    check-cast v1, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLiteSchema;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    iget-object v1, v1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->b()I

    move-result v1

    add-int/2addr v1, v9

    iget-boolean v2, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->f:Z

    if-eqz v2, :cond_20

    iget-object v0, v0, Landroidx/datastore/preferences/protobuf/MessageSchema;->n:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    check-cast v0, Landroidx/datastore/preferences/protobuf/ExtensionSchemaLite;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object v0, v0, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Landroidx/datastore/preferences/protobuf/FieldSet;

    iget-object v0, v0, Landroidx/datastore/preferences/protobuf/FieldSet;->a:Landroidx/datastore/preferences/protobuf/SmallSortedMap$1;

    iget-object v2, v0, Landroidx/datastore/preferences/protobuf/SmallSortedMap;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move v3, v7

    :goto_24
    if-ge v7, v2, :cond_1e

    invoke-virtual {v0, v7}, Landroidx/datastore/preferences/protobuf/SmallSortedMap;->d(I)Ljava/util/Map$Entry;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/datastore/preferences/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Landroidx/datastore/preferences/protobuf/FieldSet;->d(Landroidx/datastore/preferences/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v7, v7, 0x1

    goto :goto_24

    :cond_1e
    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/SmallSortedMap;->e()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/datastore/preferences/protobuf/FieldSet$FieldDescriptorLite;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4, v2}, Landroidx/datastore/preferences/protobuf/FieldSet;->d(Landroidx/datastore/preferences/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v3, v2

    goto :goto_25

    :cond_1f
    add-int/2addr v1, v3

    :cond_20
    return v1

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

.method public final f(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v6, p2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p1 .. p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    move-object/from16 v0, p3

    iget-object v5, v1, Landroidx/datastore/preferences/protobuf/MessageSchema;->m:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    iget-object v7, v1, Landroidx/datastore/preferences/protobuf/MessageSchema;->n:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    iget-object v8, v1, Landroidx/datastore/preferences/protobuf/MessageSchema;->h:[I

    iget v9, v1, Landroidx/datastore/preferences/protobuf/MessageSchema;->j:I

    iget v10, v1, Landroidx/datastore/preferences/protobuf/MessageSchema;->i:I

    const/4 v2, 0x0

    move-object v11, v2

    :goto_0
    :try_start_0
    invoke-virtual {v6}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->f()I

    move-result v2

    iget v3, v1, Landroidx/datastore/preferences/protobuf/MessageSchema;->c:I

    const/4 v4, 0x1

    const/4 v12, 0x0

    if-lt v2, v3, :cond_2

    iget v3, v1, Landroidx/datastore/preferences/protobuf/MessageSchema;->d:I

    if-gt v2, v3, :cond_2

    iget-object v3, v1, Landroidx/datastore/preferences/protobuf/MessageSchema;->a:[I

    array-length v13, v3

    div-int/lit8 v13, v13, 0x3

    sub-int/2addr v13, v4

    move v14, v12

    :goto_1
    if-gt v14, v13, :cond_2

    add-int v15, v13, v14

    ushr-int/2addr v15, v4

    mul-int/lit8 v16, v15, 0x3

    aget v4, v3, v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_16

    if-ne v2, v4, :cond_0

    :goto_2
    move/from16 v3, v16

    goto :goto_4

    :cond_0
    if-ge v2, v4, :cond_1

    add-int/lit8 v15, v15, -0x1

    move v13, v15

    goto :goto_3

    :cond_1
    add-int/lit8 v14, v15, 0x1

    :goto_3
    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/16 v16, -0x1

    goto :goto_2

    :goto_4
    if-gez v3, :cond_a

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_4

    move-object v4, v11

    :goto_5
    if-ge v10, v9, :cond_3

    aget v3, v8, v10

    move-object/from16 v6, p1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->k(Ljava/lang/Object;ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v3, v2

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_3
    move-object/from16 v3, p1

    if-eqz v4, :cond_17

    invoke-virtual {v5, v3, v4}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_25

    :cond_4
    move-object/from16 v3, p1

    :try_start_1
    iget-boolean v4, v1, Landroidx/datastore/preferences/protobuf/MessageSchema;->f:Z

    if-nez v4, :cond_5

    goto :goto_6

    :cond_5
    iget-object v4, v1, Landroidx/datastore/preferences/protobuf/MessageSchema;->e:Landroidx/datastore/preferences/protobuf/MessageLite;

    move-object v13, v7

    check-cast v13, Landroidx/datastore/preferences/protobuf/ExtensionSchemaLite;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v13, v0, Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;->a:Ljava/util/Map;

    new-instance v14, Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite$ObjectIntPair;

    invoke-direct {v14, v2, v4}, Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite$ObjectIntPair;-><init>(ILandroidx/datastore/preferences/protobuf/MessageLite;)V

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_9

    :goto_6
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v11, :cond_6

    :try_start_2
    invoke-virtual {v5, v3}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->a(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v11, v2

    goto :goto_8

    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_7
    move-object v15, v8

    goto/16 :goto_27

    :cond_6
    :goto_8
    :try_start_3
    invoke-virtual {v5, v12, v6, v11}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->b(ILandroidx/datastore/preferences/protobuf/Reader;Ljava/lang/Object;)Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_7

    goto/16 :goto_0

    :cond_7
    move-object v4, v11

    :goto_9
    if-ge v10, v9, :cond_8

    aget v3, v8, v10

    move-object/from16 v6, p1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->k(Ljava/lang/Object;ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v5

    move-object v5, v2

    add-int/lit8 v10, v10, 0x1

    move-object v3, v5

    move-object v5, v13

    goto :goto_9

    :cond_8
    move-object v13, v5

    move-object v5, v3

    if-eqz v4, :cond_17

    :goto_a
    invoke-virtual {v13, v5, v4}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_25

    :catchall_1
    move-exception v0

    move-object v13, v5

    move-object v5, v3

    :goto_b
    move-object v2, v5

    move-object v15, v8

    move-object v5, v13

    goto/16 :goto_27

    :cond_9
    move-object v13, v5

    move-object v5, v3

    :try_start_4
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_a
    move-object v13, v5

    move-object/from16 v5, p1

    invoke-virtual {v1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->I(I)I

    move-result v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->H(I)I

    move-result v14
    :try_end_5
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_15

    iget-object v15, v1, Landroidx/datastore/preferences/protobuf/MessageSchema;->l:Landroidx/datastore/preferences/protobuf/ListFieldSchema;

    const v16, 0xfffff

    packed-switch v14, :pswitch_data_0

    if-nez v11, :cond_b

    :try_start_6
    invoke-virtual {v13, v5}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->a(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    move-result-object v2

    move-object v11, v2

    goto :goto_c

    :catchall_2
    move-exception v0

    goto :goto_b

    :catch_0
    move-object v14, v0

    move-object v12, v1

    move-object v2, v5

    move-object/from16 v16, v7

    move-object v15, v8

    move-object v7, v13

    move-object v13, v6

    goto/16 :goto_23

    :cond_b
    :goto_c
    invoke-virtual {v13, v12, v6, v11}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->b(ILandroidx/datastore/preferences/protobuf/Reader;Ljava/lang/Object;)Z

    move-result v2
    :try_end_6
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-nez v2, :cond_d

    move-object v4, v11

    :goto_d
    if-ge v10, v9, :cond_c

    aget v3, v8, v10

    move-object/from16 v6, p1

    move-object v2, v5

    move-object v5, v13

    invoke-virtual/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->k(Ljava/lang/Object;ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v2

    add-int/lit8 v10, v10, 0x1

    goto :goto_d

    :cond_c
    if-eqz v4, :cond_17

    goto :goto_a

    :cond_d
    :goto_e
    move-object v14, v0

    move-object v12, v1

    move-object v2, v5

    move-object/from16 v16, v7

    move-object v15, v8

    move-object v7, v13

    move-object v13, v6

    goto/16 :goto_20

    :pswitch_0
    :try_start_7
    invoke-virtual {v1, v2, v3, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->w(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/datastore/preferences/protobuf/MessageLite;

    invoke-virtual {v1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v14

    invoke-virtual {v6, v4, v14, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->k(Landroidx/datastore/preferences/protobuf/MessageLite;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1, v5, v2, v3, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->G(Ljava/lang/Object;IILandroidx/datastore/preferences/protobuf/MessageLite;)V

    goto :goto_e

    :pswitch_1
    and-int v4, v4, v16

    int-to-long v14, v4

    invoke-virtual {v6}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->L()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v14, v15, v5, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->o(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->E(IILjava/lang/Object;)V

    goto :goto_e

    :pswitch_2
    and-int v4, v4, v16

    int-to-long v14, v4

    invoke-virtual {v6}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->J()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v14, v15, v5, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->o(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->E(IILjava/lang/Object;)V

    goto :goto_e

    :pswitch_3
    and-int v4, v4, v16

    int-to-long v14, v4

    invoke-virtual {v6}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->H()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v14, v15, v5, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->o(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->E(IILjava/lang/Object;)V

    goto :goto_e

    :pswitch_4
    and-int v4, v4, v16

    int-to-long v14, v4

    invoke-virtual {v6}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->F()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v14, v15, v5, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->o(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->E(IILjava/lang/Object;)V
    :try_end_7
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_e

    :pswitch_5
    :try_start_8
    invoke-virtual {v6}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->t()I

    move-result v14

    invoke-virtual {v1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->l(I)Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;

    move-result-object v15
    :try_end_8
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-eqz v15, :cond_f

    :try_start_9
    invoke-interface {v15}, Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;->a()Z

    move-result v15

    if-eqz v15, :cond_e

    goto :goto_f

    :cond_e
    invoke-static {v5, v2, v14, v11, v13}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->n(Ljava/lang/Object;IILjava/lang/Object;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v11
    :try_end_9
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_e

    :cond_f
    :goto_f
    and-int v4, v4, v16

    move-object/from16 v17, v13

    int-to-long v12, v4

    :try_start_a
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v12, v13, v5, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->o(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->E(IILjava/lang/Object;)V

    :goto_10
    move-object v14, v0

    move-object v12, v1

    move-object v2, v5

    move-object v13, v6

    :goto_11
    move-object/from16 v16, v7

    move-object v15, v8

    move-object/from16 v7, v17

    goto/16 :goto_20

    :catchall_3
    move-exception v0

    :goto_12
    move-object v2, v5

    :goto_13
    move-object v15, v8

    move-object/from16 v5, v17

    goto/16 :goto_27

    :catch_1
    move-object v14, v0

    move-object v12, v1

    move-object v2, v5

    :goto_14
    move-object v13, v6

    :goto_15
    move-object/from16 v16, v7

    move-object v15, v8

    move-object/from16 v7, v17

    goto/16 :goto_23

    :catchall_4
    move-exception v0

    move-object/from16 v17, v13

    goto :goto_12

    :pswitch_6
    move-object/from16 v17, v13

    and-int v4, v4, v16

    int-to-long v12, v4

    invoke-virtual {v6}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->e()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v12, v13, v5, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->o(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->E(IILjava/lang/Object;)V

    goto :goto_10

    :pswitch_7
    move-object/from16 v17, v13

    and-int v4, v4, v16

    int-to-long v12, v4

    invoke-virtual {v6}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->b()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v4

    invoke-static {v12, v13, v5, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->o(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->E(IILjava/lang/Object;)V

    goto :goto_10

    :pswitch_8
    move-object/from16 v17, v13

    invoke-virtual {v1, v2, v3, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->w(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/datastore/preferences/protobuf/MessageLite;

    invoke-virtual {v1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v12

    invoke-virtual {v6, v4, v12, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->m(Landroidx/datastore/preferences/protobuf/MessageLite;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v1, v5, v2, v3, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->G(Ljava/lang/Object;IILandroidx/datastore/preferences/protobuf/MessageLite;)V

    goto :goto_10

    :pswitch_9
    move-object/from16 v17, v13

    invoke-virtual {v1, v4, v6, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(ILandroidx/datastore/preferences/protobuf/Reader;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->E(IILjava/lang/Object;)V

    goto :goto_10

    :pswitch_a
    move-object/from16 v17, v13

    and-int v4, v4, v16

    int-to-long v12, v4

    invoke-virtual {v6}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->o()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v12, v13, v5, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->o(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->E(IILjava/lang/Object;)V

    goto :goto_10

    :pswitch_b
    move-object/from16 v17, v13

    and-int v4, v4, v16

    int-to-long v12, v4

    invoke-virtual {v6}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->c()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v12, v13, v5, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->o(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->E(IILjava/lang/Object;)V

    goto/16 :goto_10

    :pswitch_c
    move-object/from16 v17, v13

    and-int v4, v4, v16

    int-to-long v12, v4

    invoke-virtual {v6}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v12, v13, v5, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->o(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->E(IILjava/lang/Object;)V

    goto/16 :goto_10

    :pswitch_d
    move-object/from16 v17, v13

    and-int v4, v4, v16

    int-to-long v12, v4

    invoke-virtual {v6}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->B()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v12, v13, v5, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->o(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->E(IILjava/lang/Object;)V

    goto/16 :goto_10

    :pswitch_e
    move-object/from16 v17, v13

    and-int v4, v4, v16

    int-to-long v12, v4

    invoke-virtual {v6}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->P()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v12, v13, v5, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->o(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->E(IILjava/lang/Object;)V

    goto/16 :goto_10

    :pswitch_f
    move-object/from16 v17, v13

    and-int v4, v4, v16

    int-to-long v12, v4

    invoke-virtual {v6}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->h()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v12, v13, v5, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->o(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->E(IILjava/lang/Object;)V

    goto/16 :goto_10

    :pswitch_10
    move-object/from16 v17, v13

    and-int v4, v4, v16

    int-to-long v12, v4

    invoke-virtual {v6}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->y()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v12, v13, v5, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->o(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->E(IILjava/lang/Object;)V

    goto/16 :goto_10

    :pswitch_11
    move-object/from16 v17, v13

    and-int v4, v4, v16

    int-to-long v12, v4

    invoke-virtual {v6}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->r()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v12, v13, v5, v4}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->o(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v3, v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->E(IILjava/lang/Object;)V
    :try_end_a
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto/16 :goto_10

    :pswitch_12
    move-object/from16 v17, v13

    :try_start_b
    invoke-virtual {v1, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->m(I)Ljava/lang/Object;

    move-result-object v4
    :try_end_b
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    move-object v2, v5

    move-object v5, v0

    :try_start_c
    invoke-virtual/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->s(Ljava/lang/Object;ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;Landroidx/datastore/preferences/protobuf/Reader;)V
    :try_end_c
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    move-object v12, v1

    move-object v1, v2

    move-object v14, v5

    move-object v13, v6

    :goto_16
    move-object v2, v1

    goto/16 :goto_11

    :catchall_5
    move-exception v0

    move-object v12, v1

    move-object v1, v2

    goto/16 :goto_13

    :catch_2
    move-object v12, v1

    move-object v14, v5

    goto/16 :goto_14

    :catchall_6
    move-exception v0

    move-object v12, v1

    move-object v1, v5

    :goto_17
    move-object v2, v1

    goto/16 :goto_13

    :catch_3
    move-object v14, v0

    move-object v12, v1

    move-object v13, v6

    move-object v2, v5

    goto/16 :goto_15

    :pswitch_13
    move-object v14, v0

    move-object v12, v1

    move-object v1, v5

    move-object/from16 v17, v13

    move-object v13, v6

    move v6, v3

    and-int v0, v4, v16

    int-to-long v2, v0

    :try_start_d
    invoke-virtual {v12, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v0

    invoke-interface {v15, v2, v3, v1}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v2

    invoke-virtual {v13, v2, v0, v14}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->A(Ljava/util/List;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V

    goto :goto_16

    :catch_4
    move-object v2, v1

    goto/16 :goto_15

    :catchall_7
    move-exception v0

    goto :goto_17

    :pswitch_14
    move-object v14, v0

    move-object v12, v1

    move-object v1, v5

    move-object/from16 v17, v13

    move-object v13, v6

    and-int v0, v4, v16

    int-to-long v2, v0

    invoke-interface {v15, v2, v3, v1}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->M(Ljava/util/List;)V

    goto :goto_16

    :pswitch_15
    move-object v14, v0

    move-object v12, v1

    move-object v1, v5

    move-object/from16 v17, v13

    move-object v13, v6

    and-int v0, v4, v16

    int-to-long v2, v0

    invoke-interface {v15, v2, v3, v1}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->K(Ljava/util/List;)V

    goto :goto_16

    :pswitch_16
    move-object v14, v0

    move-object v12, v1

    move-object v1, v5

    move-object/from16 v17, v13

    move-object v13, v6

    and-int v0, v4, v16

    int-to-long v2, v0

    invoke-interface {v15, v2, v3, v1}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->I(Ljava/util/List;)V

    goto :goto_16

    :pswitch_17
    move-object v14, v0

    move-object v12, v1

    move-object v1, v5

    move-object/from16 v17, v13

    move-object v13, v6

    and-int v0, v4, v16

    int-to-long v2, v0

    invoke-interface {v15, v2, v3, v1}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->G(Ljava/util/List;)V
    :try_end_d
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    goto :goto_16

    :pswitch_18
    move-object v14, v0

    move-object v12, v1

    move-object v1, v5

    move-object/from16 v17, v13

    move-object v13, v6

    move v6, v3

    and-int v0, v4, v16

    int-to-long v3, v0

    :try_start_e
    invoke-interface {v15, v3, v4, v1}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->u(Ljava/util/List;)V

    invoke-virtual {v12, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->l(I)Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;

    move-result-object v4
    :try_end_e
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    move-object v5, v11

    move-object/from16 v6, v17

    :try_start_f
    invoke-static/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->j(Ljava/lang/Object;ILjava/util/List;Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v11
    :try_end_f
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    move-object v2, v1

    move-object v5, v6

    :goto_18
    move-object/from16 v16, v7

    move-object v15, v8

    move-object v7, v5

    goto/16 :goto_20

    :catchall_8
    move-exception v0

    move-object v2, v1

    move-object v11, v5

    move-object v5, v6

    goto/16 :goto_7

    :catch_5
    move-object v11, v5

    move-object v2, v1

    move-object/from16 v16, v7

    move-object v15, v8

    move-object v7, v6

    goto/16 :goto_23

    :catchall_9
    move-exception v0

    move-object v2, v1

    move-object/from16 v5, v17

    goto/16 :goto_7

    :pswitch_19
    move-object v14, v0

    move-object v12, v1

    move-object v2, v5

    move-object v5, v13

    move-object v13, v6

    and-int v0, v4, v16

    int-to-long v0, v0

    :try_start_10
    invoke-interface {v15, v0, v1, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->O(Ljava/util/List;)V

    goto :goto_18

    :catchall_a
    move-exception v0

    goto/16 :goto_7

    :catch_6
    move-object/from16 v16, v7

    move-object v15, v8

    move-object v7, v5

    goto/16 :goto_23

    :pswitch_1a
    move-object v14, v0

    move-object v12, v1

    move-object v2, v5

    move-object v5, v13

    move-object v13, v6

    and-int v0, v4, v16

    int-to-long v0, v0

    invoke-interface {v15, v0, v1, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->p(Ljava/util/List;)V

    goto :goto_18

    :pswitch_1b
    move-object v14, v0

    move-object v12, v1

    move-object v2, v5

    move-object v5, v13

    move-object v13, v6

    and-int v0, v4, v16

    int-to-long v0, v0

    invoke-interface {v15, v0, v1, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->w(Ljava/util/List;)V

    goto :goto_18

    :pswitch_1c
    move-object v14, v0

    move-object v12, v1

    move-object v2, v5

    move-object v5, v13

    move-object v13, v6

    and-int v0, v4, v16

    int-to-long v0, v0

    invoke-interface {v15, v0, v1, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->x(Ljava/util/List;)V

    goto :goto_18

    :pswitch_1d
    move-object v14, v0

    move-object v12, v1

    move-object v2, v5

    move-object v5, v13

    move-object v13, v6

    and-int v0, v4, v16

    int-to-long v0, v0

    invoke-interface {v15, v0, v1, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->C(Ljava/util/List;)V

    goto :goto_18

    :pswitch_1e
    move-object v14, v0

    move-object v12, v1

    move-object v2, v5

    move-object v5, v13

    move-object v13, v6

    and-int v0, v4, v16

    int-to-long v0, v0

    invoke-interface {v15, v0, v1, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->Q(Ljava/util/List;)V

    goto/16 :goto_18

    :pswitch_1f
    move-object v14, v0

    move-object v12, v1

    move-object v2, v5

    move-object v5, v13

    move-object v13, v6

    and-int v0, v4, v16

    int-to-long v0, v0

    invoke-interface {v15, v0, v1, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->D(Ljava/util/List;)V

    goto/16 :goto_18

    :pswitch_20
    move-object v14, v0

    move-object v12, v1

    move-object v2, v5

    move-object v5, v13

    move-object v13, v6

    and-int v0, v4, v16

    int-to-long v0, v0

    invoke-interface {v15, v0, v1, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->z(Ljava/util/List;)V

    goto/16 :goto_18

    :pswitch_21
    move-object v14, v0

    move-object v12, v1

    move-object v2, v5

    move-object v5, v13

    move-object v13, v6

    and-int v0, v4, v16

    int-to-long v0, v0

    invoke-interface {v15, v0, v1, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->s(Ljava/util/List;)V

    goto/16 :goto_18

    :pswitch_22
    move-object v14, v0

    move-object v12, v1

    move-object v2, v5

    move-object v5, v13

    move-object v13, v6

    and-int v0, v4, v16

    int-to-long v0, v0

    invoke-interface {v15, v0, v1, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->M(Ljava/util/List;)V

    goto/16 :goto_18

    :pswitch_23
    move-object v14, v0

    move-object v12, v1

    move-object v2, v5

    move-object v5, v13

    move-object v13, v6

    and-int v0, v4, v16

    int-to-long v0, v0

    invoke-interface {v15, v0, v1, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->K(Ljava/util/List;)V

    goto/16 :goto_18

    :pswitch_24
    move-object v14, v0

    move-object v12, v1

    move-object v2, v5

    move-object v5, v13

    move-object v13, v6

    and-int v0, v4, v16

    int-to-long v0, v0

    invoke-interface {v15, v0, v1, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->I(Ljava/util/List;)V

    goto/16 :goto_18

    :pswitch_25
    move-object v14, v0

    move-object v12, v1

    move-object v2, v5

    move-object v5, v13

    move-object v13, v6

    and-int v0, v4, v16

    int-to-long v0, v0

    invoke-interface {v15, v0, v1, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->G(Ljava/util/List;)V
    :try_end_10
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    goto/16 :goto_18

    :pswitch_26
    move-object v14, v0

    move-object v12, v1

    move v0, v2

    move-object v2, v5

    move-object v5, v13

    move-object v13, v6

    move v6, v3

    and-int v1, v4, v16

    int-to-long v3, v1

    :try_start_11
    invoke-interface {v15, v3, v4, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->u(Ljava/util/List;)V

    invoke-virtual {v12, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->l(I)Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;

    move-result-object v4
    :try_end_11
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_c

    move-object v1, v2

    move-object v6, v5

    move-object v5, v11

    move v2, v0

    :try_start_12
    invoke-static/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->j(Ljava/lang/Object;ILjava/util/List;Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v11
    :try_end_12
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_12 .. :try_end_12} :catch_5
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    move-object v2, v1

    move-object v1, v6

    :goto_19
    move-object/from16 v16, v7

    move-object v15, v8

    :goto_1a
    move-object v7, v1

    goto/16 :goto_20

    :catchall_b
    move-exception v0

    move-object v2, v1

    move-object v11, v5

    move-object v1, v6

    :goto_1b
    move-object v5, v1

    goto/16 :goto_7

    :catchall_c
    move-exception v0

    move-object v1, v5

    goto/16 :goto_7

    :pswitch_27
    move-object v14, v0

    move-object v12, v1

    move-object v2, v5

    move-object v1, v13

    move-object v13, v6

    and-int v0, v4, v16

    int-to-long v3, v0

    :try_start_13
    invoke-interface {v15, v3, v4, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->O(Ljava/util/List;)V

    goto :goto_19

    :catchall_d
    move-exception v0

    goto :goto_1b

    :catch_7
    move-object/from16 v16, v7

    move-object v15, v8

    :catch_8
    :goto_1c
    move-object v7, v1

    goto/16 :goto_23

    :pswitch_28
    move-object v14, v0

    move-object v12, v1

    move-object v2, v5

    move-object v1, v13

    move-object v13, v6

    and-int v0, v4, v16

    int-to-long v3, v0

    invoke-interface {v15, v3, v4, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->q(Ljava/util/List;)V

    goto :goto_19

    :pswitch_29
    move-object v14, v0

    move-object v12, v1

    move-object v2, v5

    move-object v1, v13

    move-object v13, v6

    move v6, v3

    invoke-virtual {v12, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v0

    and-int v3, v4, v16

    int-to-long v3, v3

    invoke-interface {v15, v3, v4, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v3

    invoke-virtual {v13, v3, v0, v14}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->E(Ljava/util/List;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V

    goto :goto_19

    :pswitch_2a
    move-object v14, v0

    move-object v12, v1

    move-object v2, v5

    move-object v1, v13

    move-object v13, v6

    const/high16 v0, 0x20000000

    and-int/2addr v0, v4

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_1d

    :cond_10
    const/4 v0, 0x0

    :goto_1d
    if-eqz v0, :cond_11

    and-int v0, v4, v16

    int-to-long v3, v0

    invoke-interface {v15, v3, v4, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v13, v0, v3}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->N(Ljava/util/List;Z)V

    goto :goto_19

    :cond_11
    and-int v0, v4, v16

    int-to-long v3, v0

    invoke-interface {v15, v3, v4, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v13, v0, v3}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->N(Ljava/util/List;Z)V

    goto :goto_19

    :pswitch_2b
    move-object v14, v0

    move-object v12, v1

    move-object v2, v5

    move-object v1, v13

    move-object v13, v6

    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->y(I)J

    move-result-wide v3

    invoke-interface {v15, v3, v4, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->p(Ljava/util/List;)V

    goto/16 :goto_19

    :pswitch_2c
    move-object v14, v0

    move-object v12, v1

    move-object v2, v5

    move-object v1, v13

    move-object v13, v6

    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->y(I)J

    move-result-wide v3

    invoke-interface {v15, v3, v4, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->w(Ljava/util/List;)V

    goto/16 :goto_19

    :pswitch_2d
    move-object v14, v0

    move-object v12, v1

    move-object v2, v5

    move-object v1, v13

    move-object v13, v6

    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->y(I)J

    move-result-wide v3

    invoke-interface {v15, v3, v4, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->x(Ljava/util/List;)V

    goto/16 :goto_19

    :pswitch_2e
    move-object v14, v0

    move-object v12, v1

    move-object v2, v5

    move-object v1, v13

    move-object v13, v6

    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->y(I)J

    move-result-wide v3

    invoke-interface {v15, v3, v4, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->C(Ljava/util/List;)V

    goto/16 :goto_19

    :pswitch_2f
    move-object v14, v0

    move-object v12, v1

    move-object v2, v5

    move-object v1, v13

    move-object v13, v6

    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->y(I)J

    move-result-wide v3

    invoke-interface {v15, v3, v4, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->Q(Ljava/util/List;)V

    goto/16 :goto_19

    :pswitch_30
    move-object v14, v0

    move-object v12, v1

    move-object v2, v5

    move-object v1, v13

    move-object v13, v6

    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->y(I)J

    move-result-wide v3

    invoke-interface {v15, v3, v4, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->D(Ljava/util/List;)V

    goto/16 :goto_19

    :pswitch_31
    move-object v14, v0

    move-object v12, v1

    move-object v2, v5

    move-object v1, v13

    move-object v13, v6

    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->y(I)J

    move-result-wide v3

    invoke-interface {v15, v3, v4, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->z(Ljava/util/List;)V

    goto/16 :goto_19

    :pswitch_32
    move-object v14, v0

    move-object v12, v1

    move-object v2, v5

    move-object v1, v13

    move-object v13, v6

    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->y(I)J

    move-result-wide v3

    invoke-interface {v15, v3, v4, v2}, Landroidx/datastore/preferences/protobuf/ListFieldSchema;->a(JLjava/lang/Object;)Landroidx/datastore/preferences/protobuf/Internal$ProtobufList;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->s(Ljava/util/List;)V

    goto/16 :goto_19

    :pswitch_33
    move-object v14, v0

    move-object v12, v1

    move-object v2, v5

    move-object v1, v13

    move-object v13, v6

    move v6, v3

    invoke-virtual {v12, v6, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/MessageLite;

    invoke-virtual {v12, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v3

    invoke-virtual {v13, v0, v3, v14}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->k(Landroidx/datastore/preferences/protobuf/MessageLite;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v12, v2, v6, v0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->F(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/MessageLite;)V
    :try_end_13
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_13 .. :try_end_13} :catch_7
    .catchall {:try_start_13 .. :try_end_13} :catchall_d

    goto/16 :goto_19

    :pswitch_34
    move-object v14, v0

    move-object v12, v1

    move-object v2, v5

    move-object v1, v13

    move-object v13, v6

    move v6, v3

    :try_start_14
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->y(I)J

    move-result-wide v3
    :try_end_14
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_14 .. :try_end_14} :catch_7
    .catchall {:try_start_14 .. :try_end_14} :catchall_f

    move-object/from16 v16, v7

    move-object v15, v8

    :try_start_15
    invoke-virtual {v13}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->L()J

    move-result-wide v7

    invoke-static {v3, v4, v2, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->n(JLjava/lang/Object;J)V

    invoke-virtual {v12, v6, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->D(ILjava/lang/Object;)V

    goto/16 :goto_1a

    :catchall_e
    move-exception v0

    :goto_1e
    move-object v5, v1

    goto/16 :goto_27

    :catchall_f
    move-exception v0

    move-object v15, v8

    goto :goto_1e

    :pswitch_35
    move-object v14, v0

    move-object v12, v1

    move-object v2, v5

    move-object/from16 v16, v7

    move-object v15, v8

    move-object v1, v13

    move-object v13, v6

    move v6, v3

    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->y(I)J

    move-result-wide v3

    invoke-virtual {v13}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->J()I

    move-result v0

    invoke-static {v2, v3, v4, v0}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->m(Ljava/lang/Object;JI)V

    invoke-virtual {v12, v6, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->D(ILjava/lang/Object;)V

    goto/16 :goto_1a

    :pswitch_36
    move-object v14, v0

    move-object v12, v1

    move-object v2, v5

    move-object/from16 v16, v7

    move-object v15, v8

    move-object v1, v13

    move-object v13, v6

    move v6, v3

    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->y(I)J

    move-result-wide v3

    invoke-virtual {v13}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->H()J

    move-result-wide v7

    invoke-static {v3, v4, v2, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->n(JLjava/lang/Object;J)V

    invoke-virtual {v12, v6, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->D(ILjava/lang/Object;)V

    goto/16 :goto_1a

    :pswitch_37
    move-object v14, v0

    move-object v12, v1

    move-object v2, v5

    move-object/from16 v16, v7

    move-object v15, v8

    move-object v1, v13

    move-object v13, v6

    move v6, v3

    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->y(I)J

    move-result-wide v3

    invoke-virtual {v13}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->F()I

    move-result v0

    invoke-static {v2, v3, v4, v0}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->m(Ljava/lang/Object;JI)V

    invoke-virtual {v12, v6, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->D(ILjava/lang/Object;)V

    goto/16 :goto_1a

    :pswitch_38
    move-object v14, v0

    move-object v12, v1

    move v0, v2

    move-object v2, v5

    move-object/from16 v16, v7

    move-object v15, v8

    move-object v1, v13

    move-object v13, v6

    move v6, v3

    invoke-virtual {v13}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->t()I

    move-result v3

    invoke-virtual {v12, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->l(I)Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;

    move-result-object v5

    if-eqz v5, :cond_13

    invoke-interface {v5}, Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;->a()Z

    move-result v5

    if-eqz v5, :cond_12

    goto :goto_1f

    :cond_12
    invoke-static {v2, v0, v3, v11, v1}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->n(Ljava/lang/Object;IILjava/lang/Object;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v11

    goto/16 :goto_1a

    :cond_13
    :goto_1f
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->y(I)J

    move-result-wide v4

    invoke-static {v2, v4, v5, v3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->m(Ljava/lang/Object;JI)V

    invoke-virtual {v12, v6, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->D(ILjava/lang/Object;)V

    goto/16 :goto_1a

    :pswitch_39
    move-object v14, v0

    move-object v12, v1

    move-object v2, v5

    move-object/from16 v16, v7

    move-object v15, v8

    move-object v1, v13

    move-object v13, v6

    move v6, v3

    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->y(I)J

    move-result-wide v3

    invoke-virtual {v13}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->e()I

    move-result v0

    invoke-static {v2, v3, v4, v0}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->m(Ljava/lang/Object;JI)V

    invoke-virtual {v12, v6, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->D(ILjava/lang/Object;)V

    goto/16 :goto_1a

    :pswitch_3a
    move-object v14, v0

    move-object v12, v1

    move-object v2, v5

    move-object/from16 v16, v7

    move-object v15, v8

    move-object v1, v13

    move-object v13, v6

    move v6, v3

    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->y(I)J

    move-result-wide v3

    invoke-virtual {v13}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->b()Landroidx/datastore/preferences/protobuf/ByteString;

    move-result-object v0

    invoke-static {v3, v4, v2, v0}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->o(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v12, v6, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->D(ILjava/lang/Object;)V

    goto/16 :goto_1a

    :pswitch_3b
    move-object v14, v0

    move-object v12, v1

    move-object v2, v5

    move-object/from16 v16, v7

    move-object v15, v8

    move-object v1, v13

    move-object v13, v6

    move v6, v3

    invoke-virtual {v12, v6, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->v(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/datastore/preferences/protobuf/MessageLite;

    invoke-virtual {v12, v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v3

    invoke-virtual {v13, v0, v3, v14}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->m(Landroidx/datastore/preferences/protobuf/MessageLite;Landroidx/datastore/preferences/protobuf/Schema;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V

    invoke-virtual {v12, v2, v6, v0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->F(Ljava/lang/Object;ILandroidx/datastore/preferences/protobuf/MessageLite;)V

    goto/16 :goto_1a

    :pswitch_3c
    move-object v14, v0

    move-object v12, v1

    move-object v2, v5

    move-object/from16 v16, v7

    move-object v15, v8

    move-object v1, v13

    move-object v13, v6

    move v6, v3

    invoke-virtual {v12, v4, v13, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->B(ILandroidx/datastore/preferences/protobuf/Reader;Ljava/lang/Object;)V

    invoke-virtual {v12, v6, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->D(ILjava/lang/Object;)V

    goto/16 :goto_1a

    :pswitch_3d
    move-object v14, v0

    move-object v12, v1

    move-object v2, v5

    move-object/from16 v16, v7

    move-object v15, v8

    move-object v1, v13

    move-object v13, v6

    move v6, v3

    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->y(I)J

    move-result-wide v3

    invoke-virtual {v13}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->o()Z

    move-result v0

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v2, v3, v4, v0}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->j(Ljava/lang/Object;JZ)V

    invoke-virtual {v12, v6, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->D(ILjava/lang/Object;)V

    goto/16 :goto_1a

    :pswitch_3e
    move-object v14, v0

    move-object v12, v1

    move-object v2, v5

    move-object/from16 v16, v7

    move-object v15, v8

    move-object v1, v13

    move-object v13, v6

    move v6, v3

    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->y(I)J

    move-result-wide v3

    invoke-virtual {v13}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->c()I

    move-result v0

    invoke-static {v2, v3, v4, v0}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->m(Ljava/lang/Object;JI)V

    invoke-virtual {v12, v6, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->D(ILjava/lang/Object;)V

    goto/16 :goto_1a

    :pswitch_3f
    move-object v14, v0

    move-object v12, v1

    move-object v2, v5

    move-object/from16 v16, v7

    move-object v15, v8

    move-object v1, v13

    move-object v13, v6

    move v6, v3

    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->y(I)J

    move-result-wide v3

    invoke-virtual {v13}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->a()J

    move-result-wide v7

    invoke-static {v3, v4, v2, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->n(JLjava/lang/Object;J)V

    invoke-virtual {v12, v6, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->D(ILjava/lang/Object;)V

    goto/16 :goto_1a

    :pswitch_40
    move-object v14, v0

    move-object v12, v1

    move-object v2, v5

    move-object/from16 v16, v7

    move-object v15, v8

    move-object v1, v13

    move-object v13, v6

    move v6, v3

    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->y(I)J

    move-result-wide v3

    invoke-virtual {v13}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->B()I

    move-result v0

    invoke-static {v2, v3, v4, v0}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->m(Ljava/lang/Object;JI)V

    invoke-virtual {v12, v6, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->D(ILjava/lang/Object;)V

    goto/16 :goto_1a

    :pswitch_41
    move-object v14, v0

    move-object v12, v1

    move-object v2, v5

    move-object/from16 v16, v7

    move-object v15, v8

    move-object v1, v13

    move-object v13, v6

    move v6, v3

    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->y(I)J

    move-result-wide v3

    invoke-virtual {v13}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->P()J

    move-result-wide v7

    invoke-static {v3, v4, v2, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->n(JLjava/lang/Object;J)V

    invoke-virtual {v12, v6, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->D(ILjava/lang/Object;)V

    goto/16 :goto_1a

    :pswitch_42
    move-object v14, v0

    move-object v12, v1

    move-object v2, v5

    move-object/from16 v16, v7

    move-object v15, v8

    move-object v1, v13

    move-object v13, v6

    move v6, v3

    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->y(I)J

    move-result-wide v3

    invoke-virtual {v13}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->h()J

    move-result-wide v7

    invoke-static {v3, v4, v2, v7, v8}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->n(JLjava/lang/Object;J)V

    invoke-virtual {v12, v6, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->D(ILjava/lang/Object;)V

    goto/16 :goto_1a

    :pswitch_43
    move-object v14, v0

    move-object v12, v1

    move-object v2, v5

    move-object/from16 v16, v7

    move-object v15, v8

    move-object v1, v13

    move-object v13, v6

    move v6, v3

    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->y(I)J

    move-result-wide v3

    invoke-virtual {v13}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->y()F

    move-result v0

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v2, v3, v4, v0}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->m(Ljava/lang/Object;JF)V

    invoke-virtual {v12, v6, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->D(ILjava/lang/Object;)V
    :try_end_15
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_15 .. :try_end_15} :catch_8
    .catchall {:try_start_15 .. :try_end_15} :catchall_e

    goto/16 :goto_1a

    :pswitch_44
    move-object v14, v0

    move-object v12, v1

    move-object v2, v5

    move-object/from16 v16, v7

    move-object v15, v8

    move-object v1, v13

    move-object v13, v6

    move v6, v3

    :try_start_16
    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->y(I)J

    move-result-wide v3
    :try_end_16
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_16 .. :try_end_16} :catch_8
    .catchall {:try_start_16 .. :try_end_16} :catchall_14

    move-wide v2, v3

    :try_start_17
    invoke-virtual {v13}, Landroidx/datastore/preferences/protobuf/CodedInputStreamReader;->r()D

    move-result-wide v4
    :try_end_17
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_17 .. :try_end_17} :catch_a
    .catchall {:try_start_17 .. :try_end_17} :catchall_13

    :try_start_18
    sget-object v0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;
    :try_end_18
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_18 .. :try_end_18} :catch_a
    .catchall {:try_start_18 .. :try_end_18} :catchall_12

    move-object v7, v1

    move-object/from16 v1, p1

    :try_start_19
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->l(Ljava/lang/Object;JD)V
    :try_end_19
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_19 .. :try_end_19} :catch_9
    .catchall {:try_start_19 .. :try_end_19} :catchall_11

    move-object v2, v1

    :try_start_1a
    invoke-virtual {v12, v6, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->D(ILjava/lang/Object;)V
    :try_end_1a
    .catch Landroidx/datastore/preferences/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_1a .. :try_end_1a} :catch_b
    .catchall {:try_start_1a .. :try_end_1a} :catchall_10

    :cond_14
    :goto_20
    move-object v5, v7

    goto :goto_26

    :catchall_10
    move-exception v0

    :goto_21
    move-object v5, v7

    goto/16 :goto_27

    :catchall_11
    move-exception v0

    move-object v2, v1

    goto :goto_21

    :catch_9
    move-object v2, v1

    goto :goto_23

    :catchall_12
    move-exception v0

    move-object/from16 v2, p1

    goto :goto_22

    :catchall_13
    move-exception v0

    move-object/from16 v2, p1

    :goto_22
    move-object v7, v1

    goto :goto_21

    :catch_a
    move-object/from16 v2, p1

    goto/16 :goto_1c

    :catchall_14
    move-exception v0

    goto :goto_22

    :catchall_15
    move-exception v0

    move-object v12, v1

    move-object v2, v5

    move-object v15, v8

    move-object v7, v13

    goto :goto_21

    :catch_b
    :goto_23
    :try_start_1b
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v11, :cond_15

    invoke-virtual {v7, v2}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->a(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    move-result-object v0

    move-object v11, v0

    :cond_15
    const/4 v3, 0x0

    invoke-virtual {v7, v3, v13, v11}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->b(ILandroidx/datastore/preferences/protobuf/Reader;Ljava/lang/Object;)Z

    move-result v0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_10

    if-nez v0, :cond_14

    move-object v4, v11

    :goto_24
    if-ge v10, v9, :cond_16

    aget v3, v15, v10

    move-object/from16 v6, p1

    move-object v5, v7

    move-object v1, v12

    invoke-virtual/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->k(Ljava/lang/Object;ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v12, p0

    goto :goto_24

    :cond_16
    move-object v5, v7

    if-eqz v4, :cond_17

    invoke-virtual {v5, v2, v4}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_17
    :goto_25
    return-void

    :goto_26
    move-object/from16 v1, p0

    move-object v6, v13

    move-object v0, v14

    move-object v8, v15

    move-object/from16 v7, v16

    goto/16 :goto_0

    :catchall_16
    move-exception v0

    move-object/from16 v2, p1

    goto/16 :goto_7

    :goto_27
    move-object v4, v11

    :goto_28
    if-ge v10, v9, :cond_18

    aget v3, v15, v10

    move-object/from16 v6, p1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Landroidx/datastore/preferences/protobuf/MessageSchema;->k(Ljava/lang/Object;ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v10, v10, 0x1

    goto :goto_28

    :cond_18
    if-eqz v4, :cond_19

    invoke-virtual {v5, v2, v4}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    throw v0

    :cond_1a
    move-object/from16 v2, p1

    const-string v0, "Mutating immutable message: "

    invoke-static {v2, v0}, Lcj;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

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
.end method

.method public final g(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)I
    .locals 11

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->a:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {p0, v2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->I(I)I

    move-result v4

    aget v5, v0, v2

    const v6, 0xfffff

    and-int/2addr v6, v4

    int-to-long v6, v6

    invoke-static {v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->H(I)I

    move-result v4

    const/16 v8, 0x4d5

    const/16 v9, 0x4cf

    const/16 v10, 0x25

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    mul-int/lit8 v3, v3, 0x35

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_1
    add-int/2addr v4, v3

    move v3, v4

    goto/16 :goto_5

    :pswitch_1
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->A(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/Internal;->b(J)I

    move-result v4

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->z(JLjava/lang/Object;)I

    move-result v4

    :goto_2
    add-int/2addr v3, v4

    goto/16 :goto_5

    :pswitch_3
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->A(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/Internal;->b(J)I

    move-result v4

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->z(JLjava/lang/Object;)I

    move-result v4

    goto :goto_2

    :pswitch_5
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->z(JLjava/lang/Object;)I

    move-result v4

    goto :goto_2

    :pswitch_6
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->z(JLjava/lang/Object;)I

    move-result v4

    goto :goto_2

    :pswitch_7
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_1

    :pswitch_8
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    mul-int/lit8 v3, v3, 0x35

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sget-object v5, Landroidx/datastore/preferences/protobuf/Internal;->a:Ljava/nio/charset/Charset;

    if-eqz v4, :cond_0

    :goto_3
    move v8, v9

    :cond_0
    add-int/2addr v8, v3

    move v3, v8

    goto/16 :goto_5

    :pswitch_b
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->z(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_2

    :pswitch_c
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->A(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/Internal;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->z(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_2

    :pswitch_e
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->A(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/Internal;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    invoke-static {v6, v7, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->A(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/Internal;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual {p0, v5, v2, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/Internal;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_12
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_13
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_14
    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

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

    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/Internal;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_16
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_2

    :pswitch_17
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/Internal;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_18
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_2

    :pswitch_19
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_2

    :pswitch_1a
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_2

    :pswitch_1b
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_1c
    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v10

    goto :goto_4

    :pswitch_1d
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto/16 :goto_1

    :pswitch_1e
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->c(JLjava/lang/Object;)Z

    move-result v4

    sget-object v5, Landroidx/datastore/preferences/protobuf/Internal;->a:Ljava/nio/charset/Charset;

    if-eqz v4, :cond_0

    goto/16 :goto_3

    :pswitch_1f
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_2

    :pswitch_20
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/Internal;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_21
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    move-result v4

    goto/16 :goto_2

    :pswitch_22
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/Internal;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_23
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/Internal;->b(J)I

    move-result v4

    goto/16 :goto_1

    :pswitch_24
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->e(JLjava/lang/Object;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    goto/16 :goto_1

    :pswitch_25
    mul-int/lit8 v3, v3, 0x35

    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v6, v7, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->d(JLjava/lang/Object;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/datastore/preferences/protobuf/Internal;->b(J)I

    move-result v4

    goto/16 :goto_1

    :cond_2
    :goto_5
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_0

    :cond_3
    mul-int/lit8 v3, v3, 0x35

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->m:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    check-cast v0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLiteSchema;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->hashCode()I

    move-result v0

    add-int/2addr v0, v3

    iget-boolean v1, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->f:Z

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x35

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->n:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    check-cast p0, Landroidx/datastore/preferences/protobuf/ExtensionSchemaLite;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object p0, p1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Landroidx/datastore/preferences/protobuf/FieldSet;

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/FieldSet;->a:Landroidx/datastore/preferences/protobuf/SmallSortedMap$1;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/SmallSortedMap;->hashCode()I

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

.method public final h(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V
    .locals 11

    invoke-interface {p2}, Landroidx/datastore/preferences/protobuf/Writer;->s()Landroidx/datastore/preferences/protobuf/Writer$FieldOrder;

    move-result-object v0

    sget-object v1, Landroidx/datastore/preferences/protobuf/Writer$FieldOrder;->DESCENDING:Landroidx/datastore/preferences/protobuf/Writer$FieldOrder;

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->n:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->a:[I

    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->m:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    check-cast v2, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLiteSchema;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, p1

    check-cast v2, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;

    iget-object v2, v2, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    invoke-virtual {v2, p2}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->e(Landroidx/datastore/preferences/protobuf/Writer;)V

    iget-boolean v2, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->f:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    move-object v2, v0

    check-cast v2, Landroidx/datastore/preferences/protobuf/ExtensionSchemaLite;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, p1

    check-cast v2, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object v2, v2, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Landroidx/datastore/preferences/protobuf/FieldSet;

    iget-object v4, v2, Landroidx/datastore/preferences/protobuf/FieldSet;->a:Landroidx/datastore/preferences/protobuf/SmallSortedMap$1;

    invoke-virtual {v4}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v2, Landroidx/datastore/preferences/protobuf/FieldSet;->a:Landroidx/datastore/preferences/protobuf/SmallSortedMap$1;

    invoke-virtual {v4}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-boolean v2, v2, Landroidx/datastore/preferences/protobuf/FieldSet;->c:Z

    iget-object v5, v4, Landroidx/datastore/preferences/protobuf/SmallSortedMap;->g:Landroidx/datastore/preferences/protobuf/SmallSortedMap$DescendingEntrySet;

    if-eqz v2, :cond_2

    new-instance v2, Landroidx/datastore/preferences/protobuf/LazyField$LazyIterator;

    if-nez v5, :cond_1

    new-instance v5, Landroidx/datastore/preferences/protobuf/SmallSortedMap$DescendingEntrySet;

    invoke-direct {v5, v4}, Landroidx/datastore/preferences/protobuf/SmallSortedMap$DescendingEntrySet;-><init>(Landroidx/datastore/preferences/protobuf/SmallSortedMap;)V

    iput-object v5, v4, Landroidx/datastore/preferences/protobuf/SmallSortedMap;->g:Landroidx/datastore/preferences/protobuf/SmallSortedMap$DescendingEntrySet;

    :cond_1
    iget-object v4, v4, Landroidx/datastore/preferences/protobuf/SmallSortedMap;->g:Landroidx/datastore/preferences/protobuf/SmallSortedMap$DescendingEntrySet;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-direct {v2, v4}, Landroidx/datastore/preferences/protobuf/LazyField$LazyIterator;-><init>(Ljava/util/Iterator;)V

    goto :goto_0

    :cond_2
    if-nez v5, :cond_3

    new-instance v2, Landroidx/datastore/preferences/protobuf/SmallSortedMap$DescendingEntrySet;

    invoke-direct {v2, v4}, Landroidx/datastore/preferences/protobuf/SmallSortedMap$DescendingEntrySet;-><init>(Landroidx/datastore/preferences/protobuf/SmallSortedMap;)V

    iput-object v2, v4, Landroidx/datastore/preferences/protobuf/SmallSortedMap;->g:Landroidx/datastore/preferences/protobuf/SmallSortedMap$DescendingEntrySet;

    :cond_3
    iget-object v2, v4, Landroidx/datastore/preferences/protobuf/SmallSortedMap;->g:Landroidx/datastore/preferences/protobuf/SmallSortedMap$DescendingEntrySet;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    goto :goto_1

    :cond_4
    move-object v2, v3

    :goto_1
    array-length v4, v1

    add-int/lit8 v4, v4, -0x3

    :goto_2
    if-ltz v4, :cond_7

    invoke-virtual {p0, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->I(I)I

    move-result v5

    aget v6, v1, v4

    if-nez v2, :cond_6

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->H(I)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    const v10, 0xfffff

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    invoke-virtual {p0, v6, v4, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    and-int/2addr v5, v10

    int-to-long v7, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v7

    invoke-interface {p2, v6, v5, v7}, Landroidx/datastore/preferences/protobuf/Writer;->N(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V

    goto/16 :goto_3

    :pswitch_1
    invoke-virtual {p0, v6, v4, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    and-int/2addr v5, v10

    int-to-long v7, v5

    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->A(JLjava/lang/Object;)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Landroidx/datastore/preferences/protobuf/Writer;->p(IJ)V

    goto/16 :goto_3

    :pswitch_2
    invoke-virtual {p0, v6, v4, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    and-int/2addr v5, v10

    int-to-long v7, v5

    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->z(JLjava/lang/Object;)I

    move-result v5

    invoke-interface {p2, v6, v5}, Landroidx/datastore/preferences/protobuf/Writer;->H(II)V

    goto/16 :goto_3

    :pswitch_3
    invoke-virtual {p0, v6, v4, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    and-int/2addr v5, v10

    int-to-long v7, v5

    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->A(JLjava/lang/Object;)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Landroidx/datastore/preferences/protobuf/Writer;->o(IJ)V

    goto/16 :goto_3

    :pswitch_4
    invoke-virtual {p0, v6, v4, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    and-int/2addr v5, v10

    int-to-long v7, v5

    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->z(JLjava/lang/Object;)I

    move-result v5

    invoke-interface {p2, v6, v5}, Landroidx/datastore/preferences/protobuf/Writer;->y(II)V

    goto/16 :goto_3

    :pswitch_5
    invoke-virtual {p0, v6, v4, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    and-int/2addr v5, v10

    int-to-long v7, v5

    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->z(JLjava/lang/Object;)I

    move-result v5

    invoke-interface {p2, v6, v5}, Landroidx/datastore/preferences/protobuf/Writer;->F(II)V

    goto/16 :goto_3

    :pswitch_6
    invoke-virtual {p0, v6, v4, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    and-int/2addr v5, v10

    int-to-long v7, v5

    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->z(JLjava/lang/Object;)I

    move-result v5

    invoke-interface {p2, v6, v5}, Landroidx/datastore/preferences/protobuf/Writer;->q(II)V

    goto/16 :goto_3

    :pswitch_7
    invoke-virtual {p0, v6, v4, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    and-int/2addr v5, v10

    int-to-long v7, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-interface {p2, v6, v5}, Landroidx/datastore/preferences/protobuf/Writer;->K(ILandroidx/datastore/preferences/protobuf/ByteString;)V

    goto/16 :goto_3

    :pswitch_8
    invoke-virtual {p0, v6, v4, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    and-int/2addr v5, v10

    int-to-long v7, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v7

    invoke-interface {p2, v6, v5, v7}, Landroidx/datastore/preferences/protobuf/Writer;->L(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V

    goto/16 :goto_3

    :pswitch_9
    invoke-virtual {p0, v6, v4, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    and-int/2addr v5, v10

    int-to-long v7, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->K(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V

    goto/16 :goto_3

    :pswitch_a
    invoke-virtual {p0, v6, v4, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    and-int/2addr v5, v10

    int-to-long v7, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface {p2, v6, v5}, Landroidx/datastore/preferences/protobuf/Writer;->x(IZ)V

    goto/16 :goto_3

    :pswitch_b
    invoke-virtual {p0, v6, v4, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    and-int/2addr v5, v10

    int-to-long v7, v5

    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->z(JLjava/lang/Object;)I

    move-result v5

    invoke-interface {p2, v6, v5}, Landroidx/datastore/preferences/protobuf/Writer;->b(II)V

    goto/16 :goto_3

    :pswitch_c
    invoke-virtual {p0, v6, v4, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    and-int/2addr v5, v10

    int-to-long v7, v5

    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->A(JLjava/lang/Object;)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Landroidx/datastore/preferences/protobuf/Writer;->r(IJ)V

    goto/16 :goto_3

    :pswitch_d
    invoke-virtual {p0, v6, v4, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    and-int/2addr v5, v10

    int-to-long v7, v5

    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->z(JLjava/lang/Object;)I

    move-result v5

    invoke-interface {p2, v6, v5}, Landroidx/datastore/preferences/protobuf/Writer;->l(II)V

    goto/16 :goto_3

    :pswitch_e
    invoke-virtual {p0, v6, v4, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    and-int/2addr v5, v10

    int-to-long v7, v5

    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->A(JLjava/lang/Object;)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Landroidx/datastore/preferences/protobuf/Writer;->f(IJ)V

    goto/16 :goto_3

    :pswitch_f
    invoke-virtual {p0, v6, v4, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    and-int/2addr v5, v10

    int-to-long v7, v5

    invoke-static {v7, v8, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->A(JLjava/lang/Object;)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Landroidx/datastore/preferences/protobuf/Writer;->w(IJ)V

    goto/16 :goto_3

    :pswitch_10
    invoke-virtual {p0, v6, v4, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    and-int/2addr v5, v10

    int-to-long v7, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-interface {p2, v5, v6}, Landroidx/datastore/preferences/protobuf/Writer;->v(FI)V

    goto/16 :goto_3

    :pswitch_11
    invoke-virtual {p0, v6, v4, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    and-int/2addr v5, v10

    int-to-long v7, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-interface {p2, v7, v8, v6}, Landroidx/datastore/preferences/protobuf/Writer;->m(DI)V

    goto/16 :goto_3

    :pswitch_12
    and-int/2addr v5, v10

    int-to-long v7, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iget-object v7, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->o:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    if-eqz v5, :cond_5

    invoke-virtual {p0, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->m(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Landroidx/datastore/preferences/protobuf/MapFieldSchema;->b(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;

    move-result-object v8

    invoke-interface {v7, v5}, Landroidx/datastore/preferences/protobuf/MapFieldSchema;->d(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/MapFieldLite;

    move-result-object v5

    invoke-interface {p2, v6, v8, v5}, Landroidx/datastore/preferences/protobuf/Writer;->M(ILandroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;Ljava/util/Map;)V

    goto/16 :goto_3

    :pswitch_13
    aget v6, v1, v4

    and-int/2addr v5, v10

    int-to-long v7, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {p0, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v7

    sget-object v8, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-interface {p2, v6, v5, v7}, Landroidx/datastore/preferences/protobuf/Writer;->J(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Schema;)V

    goto/16 :goto_3

    :pswitch_14
    aget v6, v1, v4

    and-int/2addr v5, v10

    int-to-long v7, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-interface {p2, v5, v6, v9}, Landroidx/datastore/preferences/protobuf/Writer;->g(Ljava/util/List;IZ)V

    goto/16 :goto_3

    :pswitch_15
    aget v6, v1, v4

    and-int/2addr v5, v10

    int-to-long v7, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-interface {p2, v5, v6, v9}, Landroidx/datastore/preferences/protobuf/Writer;->u(Ljava/util/List;IZ)V

    goto/16 :goto_3

    :pswitch_16
    aget v6, v1, v4

    and-int/2addr v5, v10

    int-to-long v7, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-interface {p2, v5, v6, v9}, Landroidx/datastore/preferences/protobuf/Writer;->A(Ljava/util/List;IZ)V

    goto/16 :goto_3

    :pswitch_17
    aget v6, v1, v4

    and-int/2addr v5, v10

    int-to-long v7, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-interface {p2, v5, v6, v9}, Landroidx/datastore/preferences/protobuf/Writer;->k(Ljava/util/List;IZ)V

    goto/16 :goto_3

    :pswitch_18
    aget v6, v1, v4

    and-int/2addr v5, v10

    int-to-long v7, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-interface {p2, v5, v6, v9}, Landroidx/datastore/preferences/protobuf/Writer;->t(Ljava/util/List;IZ)V

    goto/16 :goto_3

    :pswitch_19
    aget v6, v1, v4

    and-int/2addr v5, v10

    int-to-long v7, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-interface {p2, v5, v6, v9}, Landroidx/datastore/preferences/protobuf/Writer;->B(Ljava/util/List;IZ)V

    goto/16 :goto_3

    :pswitch_1a
    aget v6, v1, v4

    and-int/2addr v5, v10

    int-to-long v7, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-interface {p2, v5, v6, v9}, Landroidx/datastore/preferences/protobuf/Writer;->C(Ljava/util/List;IZ)V

    goto/16 :goto_3

    :pswitch_1b
    aget v6, v1, v4

    and-int/2addr v5, v10

    int-to-long v7, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-interface {p2, v5, v6, v9}, Landroidx/datastore/preferences/protobuf/Writer;->D(Ljava/util/List;IZ)V

    goto/16 :goto_3

    :pswitch_1c
    aget v6, v1, v4

    and-int/2addr v5, v10

    int-to-long v7, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-interface {p2, v5, v6, v9}, Landroidx/datastore/preferences/protobuf/Writer;->n(Ljava/util/List;IZ)V

    goto/16 :goto_3

    :pswitch_1d
    aget v6, v1, v4

    and-int/2addr v5, v10

    int-to-long v7, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-interface {p2, v5, v6, v9}, Landroidx/datastore/preferences/protobuf/Writer;->h(Ljava/util/List;IZ)V

    goto/16 :goto_3

    :pswitch_1e
    aget v6, v1, v4

    and-int/2addr v5, v10

    int-to-long v7, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-interface {p2, v5, v6, v9}, Landroidx/datastore/preferences/protobuf/Writer;->c(Ljava/util/List;IZ)V

    goto/16 :goto_3

    :pswitch_1f
    aget v6, v1, v4

    and-int/2addr v5, v10

    int-to-long v7, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-interface {p2, v5, v6, v9}, Landroidx/datastore/preferences/protobuf/Writer;->j(Ljava/util/List;IZ)V

    goto/16 :goto_3

    :pswitch_20
    aget v6, v1, v4

    and-int/2addr v5, v10

    int-to-long v7, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-interface {p2, v5, v6, v9}, Landroidx/datastore/preferences/protobuf/Writer;->G(Ljava/util/List;IZ)V

    goto/16 :goto_3

    :pswitch_21
    aget v6, v1, v4

    and-int/2addr v5, v10

    int-to-long v7, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-interface {p2, v5, v6, v9}, Landroidx/datastore/preferences/protobuf/Writer;->i(Ljava/util/List;IZ)V

    goto/16 :goto_3

    :pswitch_22
    aget v6, v1, v4

    and-int/2addr v5, v10

    int-to-long v9, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-interface {p2, v5, v6, v8}, Landroidx/datastore/preferences/protobuf/Writer;->g(Ljava/util/List;IZ)V

    goto/16 :goto_3

    :pswitch_23
    aget v6, v1, v4

    and-int/2addr v5, v10

    int-to-long v9, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-interface {p2, v5, v6, v8}, Landroidx/datastore/preferences/protobuf/Writer;->u(Ljava/util/List;IZ)V

    goto/16 :goto_3

    :pswitch_24
    aget v6, v1, v4

    and-int/2addr v5, v10

    int-to-long v9, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-interface {p2, v5, v6, v8}, Landroidx/datastore/preferences/protobuf/Writer;->A(Ljava/util/List;IZ)V

    goto/16 :goto_3

    :pswitch_25
    aget v6, v1, v4

    and-int/2addr v5, v10

    int-to-long v9, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-interface {p2, v5, v6, v8}, Landroidx/datastore/preferences/protobuf/Writer;->k(Ljava/util/List;IZ)V

    goto/16 :goto_3

    :pswitch_26
    aget v6, v1, v4

    and-int/2addr v5, v10

    int-to-long v9, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-interface {p2, v5, v6, v8}, Landroidx/datastore/preferences/protobuf/Writer;->t(Ljava/util/List;IZ)V

    goto/16 :goto_3

    :pswitch_27
    aget v6, v1, v4

    and-int/2addr v5, v10

    int-to-long v9, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-interface {p2, v5, v6, v8}, Landroidx/datastore/preferences/protobuf/Writer;->B(Ljava/util/List;IZ)V

    goto/16 :goto_3

    :pswitch_28
    aget v6, v1, v4

    and-int/2addr v5, v10

    int-to-long v7, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-interface {p2, v6, v5}, Landroidx/datastore/preferences/protobuf/Writer;->I(ILjava/util/List;)V

    goto/16 :goto_3

    :pswitch_29
    aget v6, v1, v4

    and-int/2addr v5, v10

    int-to-long v7, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {p0, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v7

    sget-object v8, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-interface {p2, v6, v5, v7}, Landroidx/datastore/preferences/protobuf/Writer;->O(ILjava/util/List;Landroidx/datastore/preferences/protobuf/Schema;)V

    goto/16 :goto_3

    :pswitch_2a
    aget v6, v1, v4

    and-int/2addr v5, v10

    int-to-long v7, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-interface {p2, v6, v5}, Landroidx/datastore/preferences/protobuf/Writer;->d(ILjava/util/List;)V

    goto/16 :goto_3

    :pswitch_2b
    aget v6, v1, v4

    and-int/2addr v5, v10

    int-to-long v9, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-interface {p2, v5, v6, v8}, Landroidx/datastore/preferences/protobuf/Writer;->C(Ljava/util/List;IZ)V

    goto/16 :goto_3

    :pswitch_2c
    aget v6, v1, v4

    and-int/2addr v5, v10

    int-to-long v9, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-interface {p2, v5, v6, v8}, Landroidx/datastore/preferences/protobuf/Writer;->D(Ljava/util/List;IZ)V

    goto/16 :goto_3

    :pswitch_2d
    aget v6, v1, v4

    and-int/2addr v5, v10

    int-to-long v9, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-interface {p2, v5, v6, v8}, Landroidx/datastore/preferences/protobuf/Writer;->n(Ljava/util/List;IZ)V

    goto/16 :goto_3

    :pswitch_2e
    aget v6, v1, v4

    and-int/2addr v5, v10

    int-to-long v9, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-interface {p2, v5, v6, v8}, Landroidx/datastore/preferences/protobuf/Writer;->h(Ljava/util/List;IZ)V

    goto/16 :goto_3

    :pswitch_2f
    aget v6, v1, v4

    and-int/2addr v5, v10

    int-to-long v9, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-interface {p2, v5, v6, v8}, Landroidx/datastore/preferences/protobuf/Writer;->c(Ljava/util/List;IZ)V

    goto/16 :goto_3

    :pswitch_30
    aget v6, v1, v4

    and-int/2addr v5, v10

    int-to-long v9, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-interface {p2, v5, v6, v8}, Landroidx/datastore/preferences/protobuf/Writer;->j(Ljava/util/List;IZ)V

    goto/16 :goto_3

    :pswitch_31
    aget v6, v1, v4

    and-int/2addr v5, v10

    int-to-long v9, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-interface {p2, v5, v6, v8}, Landroidx/datastore/preferences/protobuf/Writer;->G(Ljava/util/List;IZ)V

    goto/16 :goto_3

    :pswitch_32
    aget v6, v1, v4

    and-int/2addr v5, v10

    int-to-long v9, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v9, v10, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    sget-object v7, Landroidx/datastore/preferences/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-interface {p2, v5, v6, v8}, Landroidx/datastore/preferences/protobuf/Writer;->i(Ljava/util/List;IZ)V

    goto/16 :goto_3

    :pswitch_33
    invoke-virtual {p0, v4, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(ILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    and-int/2addr v5, v10

    int-to-long v7, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v7

    invoke-interface {p2, v6, v5, v7}, Landroidx/datastore/preferences/protobuf/Writer;->N(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V

    goto/16 :goto_3

    :pswitch_34
    invoke-virtual {p0, v4, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(ILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    and-int/2addr v5, v10

    int-to-long v7, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Landroidx/datastore/preferences/protobuf/Writer;->p(IJ)V

    goto/16 :goto_3

    :pswitch_35
    invoke-virtual {p0, v4, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(ILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    and-int/2addr v5, v10

    int-to-long v7, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    move-result v5

    invoke-interface {p2, v6, v5}, Landroidx/datastore/preferences/protobuf/Writer;->H(II)V

    goto/16 :goto_3

    :pswitch_36
    invoke-virtual {p0, v4, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(ILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    and-int/2addr v5, v10

    int-to-long v7, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Landroidx/datastore/preferences/protobuf/Writer;->o(IJ)V

    goto/16 :goto_3

    :pswitch_37
    invoke-virtual {p0, v4, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(ILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    and-int/2addr v5, v10

    int-to-long v7, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    move-result v5

    invoke-interface {p2, v6, v5}, Landroidx/datastore/preferences/protobuf/Writer;->y(II)V

    goto/16 :goto_3

    :pswitch_38
    invoke-virtual {p0, v4, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(ILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    and-int/2addr v5, v10

    int-to-long v7, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    move-result v5

    invoke-interface {p2, v6, v5}, Landroidx/datastore/preferences/protobuf/Writer;->F(II)V

    goto/16 :goto_3

    :pswitch_39
    invoke-virtual {p0, v4, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(ILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    and-int/2addr v5, v10

    int-to-long v7, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    move-result v5

    invoke-interface {p2, v6, v5}, Landroidx/datastore/preferences/protobuf/Writer;->q(II)V

    goto/16 :goto_3

    :pswitch_3a
    invoke-virtual {p0, v4, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(ILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    and-int/2addr v5, v10

    int-to-long v7, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-interface {p2, v6, v5}, Landroidx/datastore/preferences/protobuf/Writer;->K(ILandroidx/datastore/preferences/protobuf/ByteString;)V

    goto/16 :goto_3

    :pswitch_3b
    invoke-virtual {p0, v4, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(ILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    and-int/2addr v5, v10

    int-to-long v7, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v4}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v7

    invoke-interface {p2, v6, v5, v7}, Landroidx/datastore/preferences/protobuf/Writer;->L(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Schema;)V

    goto/16 :goto_3

    :pswitch_3c
    invoke-virtual {p0, v4, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(ILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    and-int/2addr v5, v10

    int-to-long v7, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->K(ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V

    goto/16 :goto_3

    :pswitch_3d
    invoke-virtual {p0, v4, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(ILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    and-int/2addr v5, v10

    int-to-long v7, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->c(JLjava/lang/Object;)Z

    move-result v5

    invoke-interface {p2, v6, v5}, Landroidx/datastore/preferences/protobuf/Writer;->x(IZ)V

    goto/16 :goto_3

    :pswitch_3e
    invoke-virtual {p0, v4, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(ILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    and-int/2addr v5, v10

    int-to-long v7, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    move-result v5

    invoke-interface {p2, v6, v5}, Landroidx/datastore/preferences/protobuf/Writer;->b(II)V

    goto :goto_3

    :pswitch_3f
    invoke-virtual {p0, v4, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(ILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    and-int/2addr v5, v10

    int-to-long v7, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Landroidx/datastore/preferences/protobuf/Writer;->r(IJ)V

    goto :goto_3

    :pswitch_40
    invoke-virtual {p0, v4, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(ILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    and-int/2addr v5, v10

    int-to-long v7, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    move-result v5

    invoke-interface {p2, v6, v5}, Landroidx/datastore/preferences/protobuf/Writer;->l(II)V

    goto :goto_3

    :pswitch_41
    invoke-virtual {p0, v4, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(ILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    and-int/2addr v5, v10

    int-to-long v7, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Landroidx/datastore/preferences/protobuf/Writer;->f(IJ)V

    goto :goto_3

    :pswitch_42
    invoke-virtual {p0, v4, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(ILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    and-int/2addr v5, v10

    int-to-long v7, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)J

    move-result-wide v7

    invoke-interface {p2, v6, v7, v8}, Landroidx/datastore/preferences/protobuf/Writer;->w(IJ)V

    goto :goto_3

    :pswitch_43
    invoke-virtual {p0, v4, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(ILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    and-int/2addr v5, v10

    int-to-long v7, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->e(JLjava/lang/Object;)F

    move-result v5

    invoke-interface {p2, v5, v6}, Landroidx/datastore/preferences/protobuf/Writer;->v(FI)V

    goto :goto_3

    :pswitch_44
    invoke-virtual {p0, v4, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(ILjava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    and-int/2addr v5, v10

    int-to-long v7, v5

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->d(JLjava/lang/Object;)D

    move-result-wide v7

    invoke-interface {p2, v7, v8, v6}, Landroidx/datastore/preferences/protobuf/Writer;->m(DI)V

    :cond_5
    :goto_3
    add-int/lit8 v4, v4, -0x3

    goto/16 :goto_2

    :cond_6
    check-cast v0, Landroidx/datastore/preferences/protobuf/ExtensionSchemaLite;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ltr;->x(Ljava/lang/Object;)V

    throw v3

    :cond_7
    if-nez v2, :cond_8

    return-void

    :cond_8
    check-cast v0, Landroidx/datastore/preferences/protobuf/ExtensionSchemaLite;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ltr;->x(Ljava/lang/Object;)V

    throw v3

    :cond_9
    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->J(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/Writer;)V

    return-void

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

.method public final i(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;)Z
    .locals 11

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->a:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_2

    invoke-virtual {p0, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->I(I)I

    move-result v5

    const v6, 0xfffff

    and-int v7, v5, v6

    int-to-long v7, v7

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->H(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    add-int/lit8 v5, v3, 0x2

    aget v5, v0, v5

    and-int/2addr v5, v6

    int-to-long v5, v5

    sget-object v9, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v9, v5, v6, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    move-result v10

    invoke-virtual {v9, v5, v6, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    move-result v5

    if-ne v10, v5, :cond_0

    invoke-virtual {v9, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v9, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :cond_0
    move v4, v2

    goto/16 :goto_1

    :pswitch_1
    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    goto/16 :goto_1

    :pswitch_2
    sget-object v4, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v4, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->j(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->j(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-nez v5, :cond_0

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->j(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->j(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-nez v5, :cond_0

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->j(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->j(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->j(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->j(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->j(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->j(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v6, v5}, Landroidx/datastore/preferences/protobuf/SchemaUtil;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->j(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->c(JLjava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->c(JLjava/lang/Object;)Z

    move-result v5

    if-ne v6, v5, :cond_0

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->j(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->j(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-nez v5, :cond_0

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->j(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto :goto_1

    :pswitch_11
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->j(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-nez v5, :cond_0

    goto :goto_1

    :pswitch_12
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->j(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)J

    move-result-wide v5

    cmp-long v5, v9, v5

    if-nez v5, :cond_0

    goto :goto_1

    :pswitch_13
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->j(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->e(JLjava/lang/Object;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v6

    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->e(JLjava/lang/Object;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    if-ne v6, v5, :cond_0

    goto :goto_1

    :pswitch_14
    invoke-virtual {p0, p1, p2, v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->j(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;I)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v5, v7, v8, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->d(JLjava/lang/Object;)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v9

    invoke-virtual {v5, v7, v8, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->d(JLjava/lang/Object;)D

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
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->m:Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;

    check-cast v0, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLiteSchema;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p2, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;->unknownFields:Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    invoke-virtual {v1, v0}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_2
    return v2

    :cond_3
    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->f:Z

    if-eqz v0, :cond_4

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->n:Landroidx/datastore/preferences/protobuf/ExtensionSchema;

    check-cast p0, Landroidx/datastore/preferences/protobuf/ExtensionSchemaLite;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object p1, p1, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Landroidx/datastore/preferences/protobuf/FieldSet;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object p0, p2, Landroidx/datastore/preferences/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Landroidx/datastore/preferences/protobuf/FieldSet;

    invoke-virtual {p1, p0}, Landroidx/datastore/preferences/protobuf/FieldSet;->equals(Ljava/lang/Object;)Z

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

.method public final j(Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;Landroidx/datastore/preferences/protobuf/GeneratedMessageLite;I)Z
    .locals 0

    invoke-virtual {p0, p3, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(ILjava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p3, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(ILjava/lang/Object;)Z

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final k(Ljava/lang/Object;ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->a:[I

    aget v0, v0, p2

    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->I(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    sget-object v3, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v3, v1, v2, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->l(I)Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    return-object p3

    :cond_1
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->o:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    invoke-interface {v2, p1}, Landroidx/datastore/preferences/protobuf/MapFieldSchema;->c(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/MapFieldLite;

    move-result-object p1

    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->m(I)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v2, p0}, Landroidx/datastore/preferences/protobuf/MapFieldSchema;->b(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/MapFieldLite;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;->a()Z

    move-result v2

    if-nez v2, :cond_2

    if-nez p3, :cond_3

    invoke-virtual {p4, p5}, Landroidx/datastore/preferences/protobuf/UnknownFieldSchema;->a(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    move-result-object p3

    :cond_3
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v2, v3}, Landroidx/datastore/preferences/protobuf/MapEntryLite;->a(Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    new-instance v3, Landroidx/datastore/preferences/protobuf/ByteString$CodedBuilder;

    invoke-direct {v3, v2}, Landroidx/datastore/preferences/protobuf/ByteString$CodedBuilder;-><init>(I)V

    iget-object v2, v3, Landroidx/datastore/preferences/protobuf/ByteString$CodedBuilder;->a:Landroidx/datastore/preferences/protobuf/CodedOutputStream;

    const/4 v4, 0x0

    :try_start_0
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-static {v2, p0, v5, p2}, Landroidx/datastore/preferences/protobuf/MapEntryLite;->b(Landroidx/datastore/preferences/protobuf/CodedOutputStream;Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    check-cast v2, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;

    iget p2, v2, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->e:I

    iget v2, v2, Landroidx/datastore/preferences/protobuf/CodedOutputStream$ArrayEncoder;->f:I

    sub-int/2addr p2, v2

    if-nez p2, :cond_4

    new-instance p2, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;

    iget-object v2, v3, Landroidx/datastore/preferences/protobuf/ByteString$CodedBuilder;->b:[B

    invoke-direct {p2, v2}, Landroidx/datastore/preferences/protobuf/ByteString$LiteralByteString;-><init>([B)V

    move-object v2, p4

    check-cast v2, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLiteSchema;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, p3

    check-cast v2, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;

    shl-int/lit8 v3, v0, 0x3

    or-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3, p2}, Landroidx/datastore/preferences/protobuf/UnknownFieldSetLite;->c(ILjava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_4
    const-string p0, "Did not write as much data as expected."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :catch_0
    move-exception p0

    invoke-static {p0}, Lx1;->m(Ljava/lang/Throwable;)V

    return-object v4

    :cond_5
    return-object p3
.end method

.method public final l(I)Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;
    .locals 0

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->b:[Ljava/lang/Object;

    aget-object p0, p0, p1

    check-cast p0, Landroidx/datastore/preferences/protobuf/Internal$EnumVerifier;

    return-object p0
.end method

.method public final m(I)Ljava/lang/Object;
    .locals 0

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->b:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final n(I)Landroidx/datastore/preferences/protobuf/Schema;
    .locals 2

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->b:[Ljava/lang/Object;

    aget-object v0, p0, p1

    check-cast v0, Landroidx/datastore/preferences/protobuf/Schema;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Landroidx/datastore/preferences/protobuf/Protobuf;->c:Landroidx/datastore/preferences/protobuf/Protobuf;

    add-int/lit8 v1, p1, 0x1

    aget-object v1, p0, v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/Protobuf;->a(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v0

    aput-object v0, p0, p1

    return-object v0
.end method

.method public final o(ILjava/lang/Object;)Z
    .locals 7

    add-int/lit8 v0, p1, 0x2

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->a:[I

    aget v0, v1, v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const-wide/32 v4, 0xfffff

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_2

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->I(I)I

    move-result p0

    and-int p1, p0, v1

    int-to-long v0, p1

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->H(I)I

    move-result p0

    const-wide/16 v2, 0x0

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lct0;->c()V

    return v5

    :pswitch_0
    sget-object p0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p0, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_1
    sget-object p0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p0, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_2
    sget-object p0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p0, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_3
    sget-object p0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p0, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_4
    sget-object p0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p0, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_5
    sget-object p0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p0, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_6
    sget-object p0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p0, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_7
    sget-object p0, Landroidx/datastore/preferences/protobuf/ByteString;->c:Landroidx/datastore/preferences/protobuf/ByteString;

    sget-object p1, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p1, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v6

    return p0

    :pswitch_8
    sget-object p0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p0, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_9
    sget-object p0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p0, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v6

    return p0

    :cond_0
    instance-of p1, p0, Landroidx/datastore/preferences/protobuf/ByteString;

    if-eqz p1, :cond_1

    sget-object p1, Landroidx/datastore/preferences/protobuf/ByteString;->c:Landroidx/datastore/preferences/protobuf/ByteString;

    invoke-virtual {p1, p0}, Landroidx/datastore/preferences/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v6

    return p0

    :cond_1
    invoke-static {}, Lct0;->c()V

    return v5

    :pswitch_a
    sget-object p0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p0, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->c(JLjava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_b
    sget-object p0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p0, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :pswitch_c
    sget-object p0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p0, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    goto :goto_0

    :pswitch_d
    sget-object p0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p0, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :pswitch_e
    sget-object p0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p0, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    goto :goto_0

    :pswitch_f
    sget-object p0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p0, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->g(JLjava/lang/Object;)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    goto :goto_0

    :pswitch_10
    sget-object p0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p0, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->e(JLjava/lang/Object;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :pswitch_11
    sget-object p0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p0, v0, v1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->d(JLjava/lang/Object;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_2
    ushr-int/lit8 p0, v0, 0x14

    shl-int p0, v6, p0

    sget-object p1, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p1, v2, v3, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

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

.method public final p(ILjava/lang/Object;III)Z
    .locals 1

    const v0, 0xfffff

    if-ne p3, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(ILjava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    and-int p0, p4, p5

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final r(IILjava/lang/Object;)Z
    .locals 2

    add-int/lit8 p2, p2, 0x2

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->a:[I

    aget p0, p0, p2

    const p2, 0xfffff

    and-int/2addr p0, p2

    int-to-long v0, p0

    sget-object p0, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p0, v0, v1, p3}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->f(JLjava/lang/Object;)I

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final s(Ljava/lang/Object;ILjava/lang/Object;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;Landroidx/datastore/preferences/protobuf/Reader;)V
    .locals 3

    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->I(I)I

    move-result p2

    const v0, 0xfffff

    and-int/2addr p2, v0

    int-to-long v0, p2

    sget-object p2, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->c:Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {p2, v0, v1, p1}, Landroidx/datastore/preferences/protobuf/UnsafeUtil$MemoryAccessor;->h(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->o:Landroidx/datastore/preferences/protobuf/MapFieldSchema;

    if-nez p2, :cond_0

    invoke-interface {p0}, Landroidx/datastore/preferences/protobuf/MapFieldSchema;->f()Landroidx/datastore/preferences/protobuf/MapFieldLite;

    move-result-object p2

    invoke-static {v0, v1, p1, p2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->o(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-interface {p0, p2}, Landroidx/datastore/preferences/protobuf/MapFieldSchema;->g(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Landroidx/datastore/preferences/protobuf/MapFieldSchema;->f()Landroidx/datastore/preferences/protobuf/MapFieldLite;

    move-result-object v2

    invoke-interface {p0, v2, p2}, Landroidx/datastore/preferences/protobuf/MapFieldSchema;->a(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/MapFieldLite;

    invoke-static {v0, v1, p1, v2}, Landroidx/datastore/preferences/protobuf/UnsafeUtil;->o(JLjava/lang/Object;Ljava/lang/Object;)V

    move-object p2, v2

    :cond_1
    :goto_0
    invoke-interface {p0, p2}, Landroidx/datastore/preferences/protobuf/MapFieldSchema;->c(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/MapFieldLite;

    move-result-object p1

    invoke-interface {p0, p3}, Landroidx/datastore/preferences/protobuf/MapFieldSchema;->b(Ljava/lang/Object;)Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;

    move-result-object p0

    invoke-interface {p5, p1, p0, p4}, Landroidx/datastore/preferences/protobuf/Reader;->j(Ljava/util/Map;Landroidx/datastore/preferences/protobuf/MapEntryLite$Metadata;Landroidx/datastore/preferences/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public final t(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 5

    invoke-virtual {p0, p3, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->I(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    sget-object v2, Landroidx/datastore/preferences/protobuf/MessageSchema;->q:Lsun/misc/Unsafe;

    invoke-virtual {v2, p2, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object p2

    invoke-virtual {p0, p3, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(ILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2, p1, v0, v1, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Landroidx/datastore/preferences/protobuf/Schema;->b()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2, v4, v3}, Landroidx/datastore/preferences/protobuf/Schema;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p1, v0, v1, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p3, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->D(ILjava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {v2, p1, v0, v1}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    invoke-interface {p2}, Landroidx/datastore/preferences/protobuf/Schema;->b()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p2, p3, p0}, Landroidx/datastore/preferences/protobuf/Schema;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p1, v0, v1, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p0, p3

    :cond_3
    invoke-interface {p2, p0, v3}, Landroidx/datastore/preferences/protobuf/Schema;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->a:[I

    aget p0, p0, p3

    invoke-static {p0, p2}, Llc0;->h(ILjava/lang/Object;)V

    return-void
.end method

.method public final u(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 6

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->a:[I

    aget v1, v0, p3

    invoke-virtual {p0, v1, p3, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->I(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    sget-object v4, Landroidx/datastore/preferences/protobuf/MessageSchema;->q:Lsun/misc/Unsafe;

    invoke-virtual {v4, p2, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {p0, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object p2

    invoke-virtual {p0, v1, p3, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v5}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v4, p1, v2, v3, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Landroidx/datastore/preferences/protobuf/Schema;->b()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0, v5}, Landroidx/datastore/preferences/protobuf/Schema;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, p1, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, v1, p3, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->E(IILjava/lang/Object;)V

    return-void

    :cond_2
    invoke-virtual {v4, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    invoke-interface {p2}, Landroidx/datastore/preferences/protobuf/Schema;->b()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p2, p3, p0}, Landroidx/datastore/preferences/protobuf/Schema;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, p1, v2, v3, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p0, p3

    :cond_3
    invoke-interface {p2, p0, v5}, Landroidx/datastore/preferences/protobuf/Schema;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_4
    aget p0, v0, p3

    invoke-static {p0, p2}, Llc0;->h(ILjava/lang/Object;)V

    return-void
.end method

.method public final v(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/MessageSchema;->I(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->o(ILjava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/Schema;->b()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Landroidx/datastore/preferences/protobuf/MessageSchema;->q:Lsun/misc/Unsafe;

    invoke-virtual {p0, p2, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/Schema;->b()Ljava/lang/Object;

    move-result-object p1

    if-eqz p0, :cond_2

    invoke-interface {v0, p1, p0}, Landroidx/datastore/preferences/protobuf/Schema;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p1
.end method

.method public final w(IILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->n(I)Landroidx/datastore/preferences/protobuf/Schema;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/MessageSchema;->r(IILjava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/Schema;->b()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p1, Landroidx/datastore/preferences/protobuf/MessageSchema;->q:Lsun/misc/Unsafe;

    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/MessageSchema;->I(I)I

    move-result p0

    const p2, 0xfffff

    and-int/2addr p0, p2

    int-to-long v1, p0

    invoke-virtual {p1, p3, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/MessageSchema;->q(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/Schema;->b()Ljava/lang/Object;

    move-result-object p1

    if-eqz p0, :cond_2

    invoke-interface {v0, p1, p0}, Landroidx/datastore/preferences/protobuf/Schema;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p1
.end method
