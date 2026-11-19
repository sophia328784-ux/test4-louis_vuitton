.class final enum LZjTIAZ/USrWvK$XDqkTi;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZjTIAZ/USrWvK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "LZjTIAZ/USrWvK$XDqkTi;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DESTROYED:LZjTIAZ/USrWvK$XDqkTi;

.field public static final enum FINISHED:LZjTIAZ/USrWvK$XDqkTi;

.field private static final synthetic GnaWzB:[LZjTIAZ/USrWvK$XDqkTi;

.field public static final enum INIT:LZjTIAZ/USrWvK$XDqkTi;

.field public static final enum RUNNING:LZjTIAZ/USrWvK$XDqkTi;

.field public static XhT:I = 0xc02

.field public static d_f:I = 0xa7c


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LZjTIAZ/USrWvK$XDqkTi;

    const-string v1, "Gk\\g"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LZjTIAZ/USrWvK$XDqkTi;->INIT:LZjTIAZ/USrWvK$XDqkTi;

    new-instance v1, LZjTIAZ/USrWvK$XDqkTi;

    const-string v2, "\\p[}z|h"

    invoke-static {v2}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LZjTIAZ/USrWvK$XDqkTi;->RUNNING:LZjTIAZ/USrWvK$XDqkTi;

    new-instance v2, LZjTIAZ/USrWvK$XDqkTi;

    const-string v3, "Hl[z`zjd"

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LZjTIAZ/USrWvK$XDqkTi;->FINISHED:LZjTIAZ/USrWvK$XDqkTi;

    new-instance v2, LZjTIAZ/USrWvK$XDqkTi;

    const-string v3, "J`Fga}veU"

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LZjTIAZ/USrWvK$XDqkTi;->DESTROYED:LZjTIAZ/USrWvK$XDqkTi;

    sget v2, LZjTIAZ/USrWvK$XDqkTi;->XhT:I

    xor-int/lit16 v2, v2, 0xc02

    if-eqz v2, :cond_2

    :goto_0
    sget v2, LZjTIAZ/USrWvK$XDqkTi;->XhT:I

    add-int/lit8 v3, v2, 0xd

    const/16 v4, 0x59

    if-eq v3, v4, :cond_1

    const/16 v4, 0xff

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    :goto_1
    sget v0, LZjTIAZ/USrWvK$XDqkTi;->XhT:I

    add-int/2addr v0, v2

    xor-int/lit16 v0, v0, 0xdad

    sput v0, LZjTIAZ/USrWvK$XDqkTi;->XhT:I

    goto :goto_1

    :cond_1
    xor-int/lit16 v3, v2, 0x96b

    shr-int/lit8 v3, v3, 0x7e

    add-int/2addr v3, v2

    sput v3, LZjTIAZ/USrWvK$XDqkTi;->XhT:I

    :cond_2
    sget-object v2, LZjTIAZ/USrWvK$XDqkTi;->FINISHED:LZjTIAZ/USrWvK$XDqkTi;

    sget-object v3, LZjTIAZ/USrWvK$XDqkTi;->DESTROYED:LZjTIAZ/USrWvK$XDqkTi;

    filled-new-array {v0, v1, v2, v3}, [LZjTIAZ/USrWvK$XDqkTi;

    move-result-object v0

    sput-object v0, LZjTIAZ/USrWvK$XDqkTi;->GnaWzB:[LZjTIAZ/USrWvK$XDqkTi;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LZjTIAZ/USrWvK$XDqkTi;
    .locals 1

    const-class v0, LZjTIAZ/USrWvK$XDqkTi;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LZjTIAZ/USrWvK$XDqkTi;

    return-object p0
.end method

.method public static values()[LZjTIAZ/USrWvK$XDqkTi;
    .locals 1

    sget-object v0, LZjTIAZ/USrWvK$XDqkTi;->GnaWzB:[LZjTIAZ/USrWvK$XDqkTi;

    invoke-virtual {v0}, [LZjTIAZ/USrWvK$XDqkTi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LZjTIAZ/USrWvK$XDqkTi;

    return-object v0
.end method
