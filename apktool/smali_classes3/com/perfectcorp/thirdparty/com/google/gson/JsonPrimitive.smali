.class public final Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;
.super Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;


# static fields
.field public static final c:[Ljava/lang/Class;


# instance fields
.field public b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const-class v15, Ljava/lang/Boolean;

    const-class v16, Ljava/lang/Character;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v8, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-class v9, Ljava/lang/Integer;

    const-class v10, Ljava/lang/Long;

    const-class v11, Ljava/lang/Short;

    const-class v12, Ljava/lang/Float;

    const-class v13, Ljava/lang/Double;

    const-class v14, Ljava/lang/Byte;

    filled-new-array/range {v1 .. v16}, [Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;->c:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;-><init>()V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;->p(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;-><init>()V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;->p(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;-><init>()V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;->p(Ljava/lang/Object;)V

    return-void
.end method

.method public static q(Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;)Z
    .locals 2

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    instance-of v0, p0, Ljava/lang/Number;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/Number;

    instance-of v0, p0, Ljava/math/BigInteger;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_1

    instance-of p0, p0, Ljava/lang/Byte;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_9

    const-class v2, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;

    iget-object v2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    if-nez v2, :cond_3

    iget-object p0, p1, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    if-nez p0, :cond_2

    return v0

    :cond_2
    return v1

    :cond_3
    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;->q(Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;->q(Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;->o()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;->o()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    cmp-long p0, v2, p0

    if-nez p0, :cond_4

    return v0

    :cond_4
    return v1

    :cond_5
    iget-object v2, p0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    instance-of v3, v2, Ljava/lang/Number;

    if-eqz v3, :cond_8

    iget-object v3, p1, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Number;

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;->o()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;->o()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    cmpl-double v4, v2, p0

    if-eqz v4, :cond_7

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_0

    :cond_6
    return v1

    :cond_7
    :goto_0
    return v0

    :cond_8
    iget-object p0, p1, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_9
    :goto_1
    return v1
.end method

.method public final f()F
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;->o()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;->n()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public final bridge synthetic h()Lcom/perfectcorp/thirdparty/com/google/gson/JsonElement;
    .locals 0

    return-object p0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/16 p0, 0x1f

    return p0

    :cond_0
    invoke-static {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;->q(Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;)Z

    move-result v0

    const/16 v1, 0x20

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;->o()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    :goto_0
    ushr-long v0, v2, v1

    xor-long/2addr v0, v2

    long-to-int p0, v0

    return p0

    :cond_1
    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    instance-of v2, v0, Ljava/lang/Number;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;->o()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final i()I
    .locals 1

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;->o()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;->n()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final n()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;->o()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of p0, v0, Ljava/lang/Boolean;

    if-eqz p0, :cond_1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final o()Ljava/lang/Number;
    .locals 1

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/s;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/s;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    check-cast p0, Ljava/lang/Number;

    return-object p0
.end method

.method public final p(Ljava/lang/Object;)V
    .locals 4

    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    return-void

    :cond_0
    instance-of v0, p1, Ljava/lang/Number;

    if-nez v0, :cond_3

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x10

    if-ge v2, v3, :cond_4

    sget-object v3, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;->c:[Ljava/lang/Class;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v1, 0x1

    :cond_4
    invoke-static {v1}, Lcom/cyberlink/clgpuimage/CLShare3DRelatedClasses;->c(Z)V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    return-void
.end method

.method public final r()Z
    .locals 2

    iget-object v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;->b:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/JsonPrimitive;->n()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
