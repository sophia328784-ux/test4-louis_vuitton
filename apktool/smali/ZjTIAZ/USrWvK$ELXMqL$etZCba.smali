.class public final enum LZjTIAZ/USrWvK$ELXMqL$etZCba;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZjTIAZ/USrWvK$ELXMqL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Platform"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LZjTIAZ/USrWvK$ELXMqL$etZCba;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BMP:LZjTIAZ/USrWvK$ELXMqL$etZCba;

.field public static final enum CPR:LZjTIAZ/USrWvK$ELXMqL$etZCba;

.field private static final synthetic GnaWzB:[LZjTIAZ/USrWvK$ELXMqL$etZCba;

.field public static JVV:I = 0x1fcf

.field public static lBx:I = 0x2171


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LZjTIAZ/USrWvK$ELXMqL$etZCba;

    const-string v1, "LhE"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LZjTIAZ/USrWvK$ELXMqL$etZCba;->BMP:LZjTIAZ/USrWvK$ELXMqL$etZCba;

    new-instance v1, LZjTIAZ/USrWvK$ELXMqL$etZCba;

    const-string v2, "MuG"

    invoke-static {v2}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LZjTIAZ/USrWvK$ELXMqL$etZCba;->CPR:LZjTIAZ/USrWvK$ELXMqL$etZCba;

    sget v1, LZjTIAZ/USrWvK$ELXMqL$etZCba;->lBx:I

    const/16 v2, 0x2170

    if-gt v1, v2, :cond_4

    :goto_0
    sget v1, LZjTIAZ/USrWvK$ELXMqL$etZCba;->lBx:I

    add-int/lit8 v2, v1, 0xd

    const/16 v3, 0x38

    if-eq v2, v3, :cond_3

    const/16 v3, 0xaa

    if-eq v2, v3, :cond_2

    const/16 v3, 0xc1

    if-eq v2, v3, :cond_1

    const/16 v3, 0x158

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    :goto_1
    sget v0, LZjTIAZ/USrWvK$ELXMqL$etZCba;->lBx:I

    add-int/2addr v0, v1

    xor-int/lit16 v0, v0, 0x1053

    rem-int/lit8 v0, v0, 0x39

    sput v0, LZjTIAZ/USrWvK$ELXMqL$etZCba;->lBx:I

    goto :goto_1

    :cond_1
    shr-int/lit8 v1, v1, 0x42

    mul-int/lit8 v1, v1, 0x5a

    sput v1, LZjTIAZ/USrWvK$ELXMqL$etZCba;->lBx:I

    goto :goto_2

    :cond_2
    add-int/2addr v1, v1

    mul-int/lit8 v1, v1, 0x64

    sput v1, LZjTIAZ/USrWvK$ELXMqL$etZCba;->lBx:I

    goto :goto_0

    :cond_3
    :goto_2
    sget v1, LZjTIAZ/USrWvK$ELXMqL$etZCba;->lBx:I

    xor-int/lit16 v1, v1, 0x131f

    shr-int/lit8 v1, v1, 0x2e

    sput v1, LZjTIAZ/USrWvK$ELXMqL$etZCba;->lBx:I

    :cond_4
    sget-object v1, LZjTIAZ/USrWvK$ELXMqL$etZCba;->CPR:LZjTIAZ/USrWvK$ELXMqL$etZCba;

    filled-new-array {v0, v1}, [LZjTIAZ/USrWvK$ELXMqL$etZCba;

    move-result-object v0

    sput-object v0, LZjTIAZ/USrWvK$ELXMqL$etZCba;->GnaWzB:[LZjTIAZ/USrWvK$ELXMqL$etZCba;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LZjTIAZ/USrWvK$ELXMqL$etZCba;
    .locals 1

    const-class v0, LZjTIAZ/USrWvK$ELXMqL$etZCba;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LZjTIAZ/USrWvK$ELXMqL$etZCba;

    return-object p0
.end method

.method public static values()[LZjTIAZ/USrWvK$ELXMqL$etZCba;
    .locals 1

    sget-object v0, LZjTIAZ/USrWvK$ELXMqL$etZCba;->GnaWzB:[LZjTIAZ/USrWvK$ELXMqL$etZCba;

    invoke-virtual {v0}, [LZjTIAZ/USrWvK$ELXMqL$etZCba;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LZjTIAZ/USrWvK$ELXMqL$etZCba;

    return-object v0
.end method
