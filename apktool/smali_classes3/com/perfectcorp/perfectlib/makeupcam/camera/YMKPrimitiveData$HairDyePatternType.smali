.class public final enum Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HairDyePatternType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum NONE:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;

.field public static final enum ONE_COLOR:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;

.field public static final enum ONE_COLOR_OMBRE:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;

.field public static final enum UPPER_LOWER:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;

.field private static final synthetic b:[Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;

    const/4 v1, 0x0

    const-string v2, "upper_lower"

    const-string v3, "UPPER_LOWER"

    invoke-direct {v0, v3, v1, v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;->UPPER_LOWER:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;

    new-instance v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;

    const/4 v2, 0x1

    const-string v3, "one_color"

    const-string v4, "ONE_COLOR"

    invoke-direct {v1, v4, v2, v3}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;->ONE_COLOR:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;

    new-instance v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;

    const/4 v3, 0x2

    const-string v4, "one_color_ombre"

    const-string v5, "ONE_COLOR_OMBRE"

    invoke-direct {v2, v5, v3, v4}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;->ONE_COLOR_OMBRE:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;

    new-instance v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;

    const/4 v4, 0x3

    const-string v5, ""

    const-string v6, "NONE"

    invoke-direct {v3, v6, v4, v5}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;->NONE:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;->b:[Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;
    .locals 5

    invoke-static {}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;->values()[Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;->a:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;->NONE:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;
    .locals 1

    const-class v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;

    return-object p0
.end method

.method public static values()[Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;->b:[Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;

    invoke-virtual {v0}, [Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;

    return-object v0
.end method
