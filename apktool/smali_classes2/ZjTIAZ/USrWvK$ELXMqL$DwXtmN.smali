.class public final enum LZjTIAZ/USrWvK$ELXMqL$DwXtmN;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZjTIAZ/USrWvK$ELXMqL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LZjTIAZ/USrWvK$ELXMqL$DwXtmN;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum COMPLETE:LZjTIAZ/USrWvK$ELXMqL$DwXtmN;

.field public static final enum ERROR:LZjTIAZ/USrWvK$ELXMqL$DwXtmN;

.field private static final synthetic GnaWzB:[LZjTIAZ/USrWvK$ELXMqL$DwXtmN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lint;"
        }
    .end annotation
.end field

.field public static final enum TIMEOUT:LZjTIAZ/USrWvK$ELXMqL$DwXtmN;

.field public static _ZL:I = 0xb00

.field public static gSd:I = 0x1d54


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, LZjTIAZ/USrWvK$ELXMqL$DwXtmN;

    const-string v1, "MjXc\u007fw{e"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LZjTIAZ/USrWvK$ELXMqL$DwXtmN;->COMPLETE:LZjTIAZ/USrWvK$ELXMqL$DwXtmN;

    new-instance v1, LZjTIAZ/USrWvK$ELXMqL$DwXtmN;

    const-string v2, "KwG|a"

    invoke-static {v2}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LZjTIAZ/USrWvK$ELXMqL$DwXtmN;->ERROR:LZjTIAZ/USrWvK$ELXMqL$DwXtmN;

    new-instance v1, LZjTIAZ/USrWvK$ELXMqL$DwXtmN;

    const-string v2, "ZlXv|g{"

    invoke-static {v2}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LZjTIAZ/USrWvK$ELXMqL$DwXtmN;->TIMEOUT:LZjTIAZ/USrWvK$ELXMqL$DwXtmN;

    sget v1, LZjTIAZ/USrWvK$ELXMqL$DwXtmN;->gSd:I

    const/16 v2, 0x1d53

    if-gt v1, v2, :cond_b

    :goto_0
    sget v1, LZjTIAZ/USrWvK$ELXMqL$DwXtmN;->gSd:I

    add-int/lit8 v2, v1, 0xd

    const/16 v4, 0x48

    const/16 v5, 0x17

    const/16 v6, 0xaff

    if-eq v2, v4, :cond_1

    const/16 v4, 0xb3

    if-eq v2, v4, :cond_6

    const/16 v4, 0x13a

    if-eq v2, v4, :cond_0

    const/16 v4, 0x157

    if-eq v2, v4, :cond_5

    goto :goto_0

    :cond_0
    xor-int/lit16 v1, v1, 0x1f3c

    sput v1, LZjTIAZ/USrWvK$ELXMqL$DwXtmN;->gSd:I

    goto :goto_0

    :cond_1
    xor-int/lit16 v2, v1, 0xc79

    shr-int/lit8 v2, v2, 0x34

    sput v2, LZjTIAZ/USrWvK$ELXMqL$DwXtmN;->gSd:I

    sget v2, LZjTIAZ/USrWvK$ELXMqL$DwXtmN;->_ZL:I

    if-gt v2, v6, :cond_5

    :goto_1
    sget v2, LZjTIAZ/USrWvK$ELXMqL$DwXtmN;->_ZL:I

    add-int/lit8 v4, v2, 0x4e

    const/16 v7, 0x1d

    if-eq v4, v7, :cond_3

    const/16 v7, 0x6e

    if-eq v4, v7, :cond_4

    const/16 v7, 0xe0

    if-eq v4, v7, :cond_2

    goto :goto_1

    :cond_2
    add-int/2addr v2, v2

    shr-int/lit8 v2, v2, 0x42

    mul-int/lit8 v2, v2, 0x6b

    sput v2, LZjTIAZ/USrWvK$ELXMqL$DwXtmN;->_ZL:I

    goto :goto_1

    :cond_3
    xor-int/lit16 v2, v2, 0x50c

    mul-int/lit8 v2, v2, 0x42

    sput v2, LZjTIAZ/USrWvK$ELXMqL$DwXtmN;->_ZL:I

    :cond_4
    sget v2, LZjTIAZ/USrWvK$ELXMqL$DwXtmN;->_ZL:I

    mul-int/2addr v2, v5

    xor-int/lit16 v2, v2, 0x455

    sput v2, LZjTIAZ/USrWvK$ELXMqL$DwXtmN;->_ZL:I

    :cond_5
    sget v2, LZjTIAZ/USrWvK$ELXMqL$DwXtmN;->gSd:I

    shr-int/lit8 v2, v2, 0x1b

    sput v2, LZjTIAZ/USrWvK$ELXMqL$DwXtmN;->gSd:I

    :cond_6
    sget v2, LZjTIAZ/USrWvK$ELXMqL$DwXtmN;->gSd:I

    xor-int/lit16 v2, v2, 0x154c

    add-int/2addr v2, v1

    rem-int/lit8 v2, v2, 0x14

    sput v2, LZjTIAZ/USrWvK$ELXMqL$DwXtmN;->gSd:I

    sget v1, LZjTIAZ/USrWvK$ELXMqL$DwXtmN;->_ZL:I

    if-gt v1, v6, :cond_b

    :goto_2
    sget v0, LZjTIAZ/USrWvK$ELXMqL$DwXtmN;->_ZL:I

    add-int/lit8 v1, v0, 0xd

    if-eq v1, v3, :cond_9

    if-eq v1, v5, :cond_8

    const/16 v2, 0xc4

    if-eq v1, v2, :cond_a

    const/16 v2, 0x138

    if-eq v1, v2, :cond_7

    goto :goto_2

    :cond_7
    mul-int/lit8 v0, v0, 0x7e

    shr-int/lit8 v0, v0, 0x2a

    mul-int/lit8 v0, v0, 0x26

    sput v0, LZjTIAZ/USrWvK$ELXMqL$DwXtmN;->_ZL:I

    :cond_8
    sget v0, LZjTIAZ/USrWvK$ELXMqL$DwXtmN;->_ZL:I

    mul-int/lit8 v0, v0, 0x1c

    rem-int/lit8 v0, v0, 0x62

    shr-int/lit8 v0, v0, 0x21

    sput v0, LZjTIAZ/USrWvK$ELXMqL$DwXtmN;->_ZL:I

    :cond_9
    sget v0, LZjTIAZ/USrWvK$ELXMqL$DwXtmN;->_ZL:I

    shr-int/lit8 v0, v0, 0x56

    shr-int/lit8 v0, v0, 0x11

    :goto_3
    sput v0, LZjTIAZ/USrWvK$ELXMqL$DwXtmN;->_ZL:I

    :cond_a
    sget v0, LZjTIAZ/USrWvK$ELXMqL$DwXtmN;->_ZL:I

    mul-int/lit8 v0, v0, 0x7d

    shr-int/lit8 v0, v0, 0xf

    goto :goto_3

    :cond_b
    sget-object v1, LZjTIAZ/USrWvK$ELXMqL$DwXtmN;->ERROR:LZjTIAZ/USrWvK$ELXMqL$DwXtmN;

    sget-object v2, LZjTIAZ/USrWvK$ELXMqL$DwXtmN;->TIMEOUT:LZjTIAZ/USrWvK$ELXMqL$DwXtmN;

    filled-new-array {v0, v1, v2}, [LZjTIAZ/USrWvK$ELXMqL$DwXtmN;

    move-result-object v0

    sput-object v0, LZjTIAZ/USrWvK$ELXMqL$DwXtmN;->GnaWzB:[LZjTIAZ/USrWvK$ELXMqL$DwXtmN;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LZjTIAZ/USrWvK$ELXMqL$DwXtmN;
    .locals 1

    const-class v0, LZjTIAZ/USrWvK$ELXMqL$DwXtmN;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LZjTIAZ/USrWvK$ELXMqL$DwXtmN;

    return-object p0
.end method

.method public static values()[LZjTIAZ/USrWvK$ELXMqL$DwXtmN;
    .locals 1

    sget-object v0, LZjTIAZ/USrWvK$ELXMqL$DwXtmN;->GnaWzB:[LZjTIAZ/USrWvK$ELXMqL$DwXtmN;

    invoke-virtual {v0}, [LZjTIAZ/USrWvK$ELXMqL$DwXtmN;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LZjTIAZ/USrWvK$ELXMqL$DwXtmN;

    return-object v0
.end method
