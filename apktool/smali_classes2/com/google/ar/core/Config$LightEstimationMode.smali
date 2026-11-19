.class public final enum Lcom/google/ar/core/Config$LightEstimationMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ar/core/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LightEstimationMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/ar/core/Config$LightEstimationMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ar/core/Config$LightEstimationMode;

.field public static final enum AMBIENT_INTENSITY:Lcom/google/ar/core/Config$LightEstimationMode;

.field public static final enum DISABLED:Lcom/google/ar/core/Config$LightEstimationMode;

.field public static final enum ENVIRONMENTAL_HDR:Lcom/google/ar/core/Config$LightEstimationMode;


# instance fields
.field final nativeCode:I


# direct methods
.method private static synthetic $values()[Lcom/google/ar/core/Config$LightEstimationMode;
    .locals 3

    sget-object v0, Lcom/google/ar/core/Config$LightEstimationMode;->DISABLED:Lcom/google/ar/core/Config$LightEstimationMode;

    sget-object v1, Lcom/google/ar/core/Config$LightEstimationMode;->AMBIENT_INTENSITY:Lcom/google/ar/core/Config$LightEstimationMode;

    sget-object v2, Lcom/google/ar/core/Config$LightEstimationMode;->ENVIRONMENTAL_HDR:Lcom/google/ar/core/Config$LightEstimationMode;

    filled-new-array {v0, v1, v2}, [Lcom/google/ar/core/Config$LightEstimationMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/ar/core/Config$LightEstimationMode;

    const-string v1, "DISABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/Config$LightEstimationMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ar/core/Config$LightEstimationMode;->DISABLED:Lcom/google/ar/core/Config$LightEstimationMode;

    new-instance v0, Lcom/google/ar/core/Config$LightEstimationMode;

    const-string v1, "AMBIENT_INTENSITY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/Config$LightEstimationMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ar/core/Config$LightEstimationMode;->AMBIENT_INTENSITY:Lcom/google/ar/core/Config$LightEstimationMode;

    new-instance v0, Lcom/google/ar/core/Config$LightEstimationMode;

    const-string v1, "ENVIRONMENTAL_HDR"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/Config$LightEstimationMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/ar/core/Config$LightEstimationMode;->ENVIRONMENTAL_HDR:Lcom/google/ar/core/Config$LightEstimationMode;

    invoke-static {}, Lcom/google/ar/core/Config$LightEstimationMode;->$values()[Lcom/google/ar/core/Config$LightEstimationMode;

    move-result-object v0

    sput-object v0, Lcom/google/ar/core/Config$LightEstimationMode;->$VALUES:[Lcom/google/ar/core/Config$LightEstimationMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/ar/core/Config$LightEstimationMode;->nativeCode:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/ar/core/Config$LightEstimationMode;
    .locals 5

    invoke-static {}, Lcom/google/ar/core/Config$LightEstimationMode;->values()[Lcom/google/ar/core/Config$LightEstimationMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/google/ar/core/Config$LightEstimationMode;->nativeCode:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "Unexpected value for native LightEstimationMode, value="

    const/16 v1, 0x37

    invoke-static {v0, p0, v1}, Lcom/google/ar/core/q;->a(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lr81;->i(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ar/core/Config$LightEstimationMode;
    .locals 1

    const-class v0, Lcom/google/ar/core/Config$LightEstimationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/ar/core/Config$LightEstimationMode;

    return-object p0
.end method

.method public static values()[Lcom/google/ar/core/Config$LightEstimationMode;
    .locals 1

    sget-object v0, Lcom/google/ar/core/Config$LightEstimationMode;->$VALUES:[Lcom/google/ar/core/Config$LightEstimationMode;

    invoke-virtual {v0}, [Lcom/google/ar/core/Config$LightEstimationMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ar/core/Config$LightEstimationMode;

    return-object v0
.end method
