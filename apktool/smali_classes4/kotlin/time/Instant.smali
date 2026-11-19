.class public final Lkotlin/time/Instant;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/time/Instant$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lkotlin/time/Instant;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00060\u0002j\u0002`\u0003:\u0001\u0013B\u0019\u0008\u0000\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001b\u0010\u0011\u001a\u00020\u00102\n\u0010\u000f\u001a\u00060\rj\u0002`\u000eH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0014"
    }
    d2 = {
        "Lkotlin/time/Instant;",
        "",
        "Ljava/io/Serializable;",
        "Lkotlin/io/Serializable;",
        "",
        "epochSeconds",
        "",
        "nanosecondsOfSecond",
        "<init>",
        "(JI)V",
        "",
        "writeReplace",
        "()Ljava/lang/Object;",
        "Ljava/io/ObjectInputStream;",
        "Lkotlin/internal/ReadObjectParameterType;",
        "input",
        "",
        "readObject",
        "(Ljava/io/ObjectInputStream;)V",
        "Companion",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x2,
        0x4,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final d:Lkotlin/time/Instant$Companion;

.field public static final e:Lkotlin/time/Instant;

.field public static final f:Lkotlin/time/Instant;


# instance fields
.field public final b:J

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lkotlin/time/Instant$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/time/Instant$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/time/Instant;->d:Lkotlin/time/Instant$Companion;

    new-instance v0, Lkotlin/time/Instant;

    const-wide v1, -0x701cefeb9bec00L

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lkotlin/time/Instant;-><init>(JI)V

    sput-object v0, Lkotlin/time/Instant;->e:Lkotlin/time/Instant;

    new-instance v0, Lkotlin/time/Instant;

    const-wide v1, 0x701cd2fa9578ffL

    const v3, 0x3b9ac9ff

    invoke-direct {v0, v1, v2, v3}, Lkotlin/time/Instant;-><init>(JI)V

    sput-object v0, Lkotlin/time/Instant;->f:Lkotlin/time/Instant;

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lkotlin/time/Instant;->b:J

    iput p3, p0, Lkotlin/time/Instant;->c:I

    const-wide v0, -0x701cefeb9bec00L

    cmp-long p0, v0, p1

    if-gtz p0, :cond_0

    const-wide v0, 0x701cd2fa957900L

    cmp-long p0, p1, v0

    if-gez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "Instant exceeds minimum or maximum instant"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final readObject(Ljava/io/ObjectInputStream;)V
    .locals 0

    new-instance p0, Ljava/io/InvalidObjectException;

    const-string p1, "Deserialization is supported via proxy only"

    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final writeReplace()Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlin/time/InstantJvmKt;->a:Lkotlin/time/Clock;

    new-instance v0, Lkotlin/time/InstantSerialized;

    iget-wide v1, p0, Lkotlin/time/Instant;->b:J

    iget p0, p0, Lkotlin/time/Instant;->c:I

    invoke-direct {v0, v1, v2, p0}, Lkotlin/time/InstantSerialized;-><init>(JI)V

    return-object v0
.end method


# virtual methods
.method public final a()J
    .locals 12

    iget-wide v0, p0, Lkotlin/time/Instant;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const v5, 0xf4240

    iget p0, p0, Lkotlin/time/Instant;->c:I

    const-wide/16 v6, 0x3e8

    const-wide/16 v8, 0x1

    if-ltz v4, :cond_4

    cmp-long v4, v0, v8

    const-wide v8, 0x7fffffffffffffffL

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    mul-long v10, v0, v6

    div-long v6, v10, v6

    cmp-long v0, v6, v0

    if-nez v0, :cond_1

    move-wide v6, v10

    goto :goto_0

    :cond_1
    return-wide v8

    :cond_2
    move-wide v6, v2

    :goto_0
    div-int/2addr p0, v5

    int-to-long v0, p0

    add-long v4, v6, v0

    xor-long v10, v6, v4

    cmp-long p0, v10, v2

    if-gez p0, :cond_3

    xor-long/2addr v0, v6

    cmp-long p0, v0, v2

    if-ltz p0, :cond_3

    return-wide v8

    :cond_3
    return-wide v4

    :cond_4
    add-long/2addr v0, v8

    cmp-long v4, v0, v8

    const-wide/high16 v8, -0x8000000000000000L

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    cmp-long v4, v0, v2

    if-eqz v4, :cond_7

    mul-long v10, v0, v6

    div-long v6, v10, v6

    cmp-long v0, v6, v0

    if-nez v0, :cond_6

    move-wide v6, v10

    goto :goto_1

    :cond_6
    return-wide v8

    :cond_7
    move-wide v6, v2

    :goto_1
    div-int/2addr p0, v5

    add-int/lit16 p0, p0, -0x3e8

    int-to-long v0, p0

    add-long v4, v6, v0

    xor-long v10, v6, v4

    cmp-long p0, v10, v2

    if-gez p0, :cond_8

    xor-long/2addr v0, v6

    cmp-long p0, v0, v2

    if-ltz p0, :cond_8

    return-wide v8

    :cond_8
    return-wide v4
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lkotlin/time/Instant;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v0, p0, Lkotlin/time/Instant;->b:J

    iget-wide v2, p1, Lkotlin/time/Instant;->b:J

    invoke-static {v0, v1, v2, v3}, Lkotlin/jvm/internal/Intrinsics;->e(JJ)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget p0, p0, Lkotlin/time/Instant;->c:I

    iget p1, p1, Lkotlin/time/Instant;->c:I

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->d(II)I

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lkotlin/time/Instant;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlin/time/Instant;

    iget-wide v0, p1, Lkotlin/time/Instant;->b:J

    iget-wide v2, p0, Lkotlin/time/Instant;->b:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    iget p0, p0, Lkotlin/time/Instant;->c:I

    iget p1, p1, Lkotlin/time/Instant;->c:I

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 2

    iget-wide v0, p0, Lkotlin/time/Instant;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    iget p0, p0, Lkotlin/time/Instant;->c:I

    mul-int/lit8 p0, p0, 0x33

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 26

    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lkotlin/time/UnboundLocalDateTime;->h:Lkotlin/time/UnboundLocalDateTime$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v2, v0, Lkotlin/time/Instant;->b:J

    const-wide/32 v4, 0x15180

    div-long v6, v2, v4

    xor-long v8, v2, v4

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    const-wide/16 v12, -0x1

    if-gez v8, :cond_0

    mul-long v8, v6, v4

    cmp-long v8, v8, v2

    if-eqz v8, :cond_0

    add-long/2addr v6, v12

    :cond_0
    rem-long/2addr v2, v4

    xor-long v8, v2, v4

    neg-long v14, v2

    or-long/2addr v14, v2

    and-long/2addr v8, v14

    const/16 v14, 0x3f

    shr-long/2addr v8, v14

    and-long/2addr v4, v8

    add-long/2addr v2, v4

    long-to-int v2, v2

    const-wide/32 v3, 0xafa6c

    add-long/2addr v3, v6

    cmp-long v5, v3, v10

    const-wide/16 v8, 0x190

    const-wide/32 v14, 0x23ab1

    if-gez v5, :cond_1

    const-wide/32 v16, 0xafa6d

    add-long v6, v6, v16

    div-long/2addr v6, v14

    const-wide/16 v16, 0x1

    sub-long v6, v6, v16

    mul-long v16, v6, v8

    neg-long v5, v6

    mul-long/2addr v5, v14

    add-long/2addr v3, v5

    goto :goto_0

    :cond_1
    move-wide/from16 v16, v10

    :goto_0
    mul-long v5, v8, v3

    const-wide/16 v18, 0x24f

    add-long v5, v5, v18

    div-long/2addr v5, v14

    const-wide/16 v14, 0x16d

    mul-long v18, v14, v5

    const-wide/16 v20, 0x4

    div-long v22, v5, v20

    add-long v22, v22, v18

    const-wide/16 v18, 0x64

    div-long v24, v5, v18

    sub-long v22, v22, v24

    div-long v24, v5, v8

    add-long v24, v24, v22

    sub-long v22, v3, v24

    cmp-long v7, v22, v10

    if-gez v7, :cond_2

    add-long/2addr v5, v12

    mul-long/2addr v14, v5

    div-long v10, v5, v20

    add-long/2addr v10, v14

    div-long v12, v5, v18

    sub-long/2addr v10, v12

    div-long v7, v5, v8

    add-long/2addr v7, v10

    sub-long v22, v3, v7

    :cond_2
    move-wide/from16 v3, v22

    add-long v5, v5, v16

    long-to-int v3, v3

    mul-int/lit8 v4, v3, 0x5

    add-int/lit8 v4, v4, 0x2

    div-int/lit16 v4, v4, 0x99

    add-int/lit8 v7, v4, 0x2

    rem-int/lit8 v7, v7, 0xc

    const/4 v8, 0x1

    add-int/lit8 v11, v7, 0x1

    mul-int/lit16 v7, v4, 0x132

    add-int/lit8 v7, v7, 0x5

    div-int/lit8 v7, v7, 0xa

    sub-int/2addr v3, v7

    add-int/lit8 v12, v3, 0x1

    div-int/lit8 v4, v4, 0xa

    int-to-long v3, v4

    add-long/2addr v5, v3

    long-to-int v10, v5

    div-int/lit16 v13, v2, 0xe10

    mul-int/lit16 v3, v13, 0xe10

    sub-int/2addr v2, v3

    div-int/lit8 v14, v2, 0x3c

    mul-int/lit8 v3, v14, 0x3c

    sub-int v15, v2, v3

    new-instance v9, Lkotlin/time/UnboundLocalDateTime;

    iget v0, v0, Lkotlin/time/Instant;->c:I

    move/from16 v16, v0

    invoke-direct/range {v9 .. v16}, Lkotlin/time/UnboundLocalDateTime;-><init>(IIIIIII)V

    iget v0, v9, Lkotlin/time/UnboundLocalDateTime;->a:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0x3e8

    const/4 v4, 0x0

    const/16 v5, 0x2710

    if-ge v2, v3, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-ltz v0, :cond_3

    add-int/2addr v0, v5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_3
    sub-int/2addr v0, v5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    if-lt v0, v5, :cond_5

    const/16 v2, 0x2b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_2
    const/16 v0, 0x2d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, v9, Lkotlin/time/UnboundLocalDateTime;->b:I

    invoke-static {v1, v1, v2}, Lkotlin/time/InstantKt;->a(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, v9, Lkotlin/time/UnboundLocalDateTime;->c:I

    invoke-static {v1, v1, v0}, Lkotlin/time/InstantKt;->a(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;I)V

    const/16 v0, 0x54

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, v9, Lkotlin/time/UnboundLocalDateTime;->d:I

    invoke-static {v1, v1, v0}, Lkotlin/time/InstantKt;->a(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;I)V

    const/16 v0, 0x3a

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, v9, Lkotlin/time/UnboundLocalDateTime;->e:I

    invoke-static {v1, v1, v2}, Lkotlin/time/InstantKt;->a(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;I)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, v9, Lkotlin/time/UnboundLocalDateTime;->f:I

    invoke-static {v1, v1, v0}, Lkotlin/time/InstantKt;->a(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;I)V

    iget v0, v9, Lkotlin/time/UnboundLocalDateTime;->g:I

    if-eqz v0, :cond_7

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v2, v4, 0x1

    sget-object v3, Lkotlin/time/InstantKt;->a:[I

    aget v5, v3, v2

    rem-int v5, v0, v5

    if-nez v5, :cond_6

    move v4, v2

    goto :goto_3

    :cond_6
    rem-int/lit8 v2, v4, 0x3

    sub-int/2addr v4, v2

    aget v2, v3, v4

    div-int/2addr v0, v2

    rsub-int/lit8 v2, v4, 0x9

    aget v2, v3, v2

    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const/16 v0, 0x5a

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
