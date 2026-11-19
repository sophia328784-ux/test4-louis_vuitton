.class public Lcom/android/wiimu/utils/UnsignedUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUnsignedByte(B)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static getUnsignedChar(B)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static getUnsignedInt(I)J
    .locals 2

    int-to-long v0, p0

    return-wide v0
.end method

.method public static getUnsignedLong(I)J
    .locals 2

    int-to-long v0, p0

    return-wide v0
.end method

.method public static getUnsignedShort(S)I
    .locals 1

    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method
