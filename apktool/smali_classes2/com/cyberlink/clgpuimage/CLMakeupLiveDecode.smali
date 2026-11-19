.class public Lcom/cyberlink/clgpuimage/CLMakeupLiveDecode;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([C)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, [C->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [C

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-char v1, p0, v0

    xor-int/lit16 v1, v1, 0xc8

    int-to-char v1, v1

    aput-char v1, p0, v0

    const/16 v2, 0x21

    if-lt v1, v2, :cond_0

    const/16 v2, 0x7e

    if-gt v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x2f

    int-to-char v1, v1

    aput-char v1, p0, v0

    if-le v1, v2, :cond_0

    add-int/lit8 v1, v1, -0x5e

    int-to-char v1, v1

    aput-char v1, p0, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
