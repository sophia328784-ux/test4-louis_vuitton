.class public final enum Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$LoggingMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZjTIAZ/ASYMBN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoggingMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$LoggingMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CONSOLE:Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$LoggingMode;

.field public static final enum EXCEPTION:Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$LoggingMode;

.field private static final synthetic GnaWzB:[Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$LoggingMode;

.field public static final enum NONE:Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$LoggingMode;

.field public static _GM:I = 0xf43


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$LoggingMode;

    const-string v1, "@j[v"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$LoggingMode;->NONE:Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$LoggingMode;

    new-instance v1, Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$LoggingMode;

    const-string v2, "Mj[`|~j"

    invoke-static {v2}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$LoggingMode;->CONSOLE:Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$LoggingMode;

    new-instance v1, Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$LoggingMode;

    const-string v2, "K}Vvcffo_"

    invoke-static {v2}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$LoggingMode;->EXCEPTION:Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$LoggingMode;

    sget v1, Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$LoggingMode;->_GM:I

    const/16 v2, 0xf42

    if-gt v1, v2, :cond_3

    :goto_0
    sget v1, Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$LoggingMode;->_GM:I

    add-int/lit8 v2, v1, 0xd

    const/16 v3, 0x30

    if-eq v2, v3, :cond_2

    const/16 v3, 0xb6

    if-eq v2, v3, :cond_1

    const/16 v3, 0x146

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    xor-int/lit16 v1, v1, 0x10d2

    mul-int/lit8 v1, v1, 0x3d

    sput v1, Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$LoggingMode;->_GM:I

    goto :goto_0

    :cond_1
    :goto_1
    sget v0, Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$LoggingMode;->_GM:I

    xor-int/lit16 v0, v0, 0xc05

    add-int/2addr v0, v1

    sput v0, Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$LoggingMode;->_GM:I

    goto :goto_1

    :cond_2
    shr-int/lit8 v2, v1, 0x72

    add-int/2addr v2, v1

    sput v2, Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$LoggingMode;->_GM:I

    :cond_3
    sget-object v1, Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$LoggingMode;->CONSOLE:Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$LoggingMode;

    sget-object v2, Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$LoggingMode;->EXCEPTION:Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$LoggingMode;

    filled-new-array {v0, v1, v2}, [Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$LoggingMode;

    move-result-object v0

    sput-object v0, Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$LoggingMode;->GnaWzB:[Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$LoggingMode;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$LoggingMode;
    .locals 1

    const-class v0, Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$LoggingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$LoggingMode;

    return-object p0
.end method

.method public static values()[Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$LoggingMode;
    .locals 1

    sget-object v0, Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$LoggingMode;->GnaWzB:[Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$LoggingMode;

    invoke-virtual {v0}, [Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$LoggingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$LoggingMode;

    return-object v0
.end method
