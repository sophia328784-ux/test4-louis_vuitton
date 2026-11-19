.class public final enum Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$DebugMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZjTIAZ/ASYMBN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DebugMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$DebugMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CCA:Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$DebugMode;

.field public static final enum DEFAULT:Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$DebugMode;

.field private static final synthetic GnaWzB:[Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$DebugMode;

.field public static final enum NONE:Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$DebugMode;

.field public static final enum POW_WITH_CCA:Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$DebugMode;

.field public static gNk:I = 0x4f9

.field public static lbh:I = 0x1951


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$DebugMode;

    const-string v1, "@j[v"

    invoke-static {v1}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$DebugMode;->NONE:Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$DebugMode;

    new-instance v1, Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$DebugMode;

    const-string v2, "J`Srf~{"

    invoke-static {v2}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$DebugMode;->DEFAULT:Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$DebugMode;

    new-instance v2, Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$DebugMode;

    const-string v3, "MfT"

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$DebugMode;->CCA:Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$DebugMode;

    new-instance v2, Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$DebugMode;

    const-string v3, "^jBld{{hNrv}"

    invoke-static {v3}, LZjTIAZ/CNATAC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$DebugMode;->POW_WITH_CCA:Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$DebugMode;

    sget v2, Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$DebugMode;->lbh:I

    const/16 v3, 0x1950

    if-gt v2, v3, :cond_1

    :goto_0
    sget v2, Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$DebugMode;->lbh:I

    add-int/lit8 v3, v2, 0xd

    const/16 v4, 0x49

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    mul-int/lit8 v2, v2, 0x63

    shr-int/lit8 v2, v2, 0x4d

    mul-int/lit8 v2, v2, 0x60

    sput v2, Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$DebugMode;->lbh:I

    :cond_1
    sget-object v2, Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$DebugMode;->CCA:Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$DebugMode;

    sget-object v3, Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$DebugMode;->POW_WITH_CCA:Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$DebugMode;

    filled-new-array {v0, v1, v2, v3}, [Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$DebugMode;

    move-result-object v0

    sput-object v0, Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$DebugMode;->GnaWzB:[Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$DebugMode;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$DebugMode;
    .locals 1

    const-class v0, Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$DebugMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$DebugMode;

    return-object p0
.end method

.method public static values()[Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$DebugMode;
    .locals 1

    sget-object v0, Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$DebugMode;->GnaWzB:[Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$DebugMode;

    invoke-virtual {v0}, [Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$DebugMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cyberfend/cyfsecurity/CYFIntegrityChecker$DebugMode;

    return-object v0
.end method
