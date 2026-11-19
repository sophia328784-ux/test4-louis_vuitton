.class public final enum Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$EyebrowMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EyebrowMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$EyebrowMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ART_DESIGN:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$EyebrowMode;

.field public static final enum NONE:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$EyebrowMode;

.field public static final enum ORIGINAL:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$EyebrowMode;

.field private static final synthetic d:[Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$EyebrowMode;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/perfectcorp/perfectlib/jniproxy/VN_EyebrowMode;

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$EyebrowMode;

    sget-object v1, Lcom/perfectcorp/perfectlib/jniproxy/VN_EyebrowMode;->EYEBROW_ORIGINAL_MODE:Lcom/perfectcorp/perfectlib/jniproxy/VN_EyebrowMode;

    const-string v2, "ORIGINAL"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v2, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$EyebrowMode;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/perfectcorp/perfectlib/jniproxy/VN_EyebrowMode;)V

    sput-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$EyebrowMode;->ORIGINAL:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$EyebrowMode;

    new-instance v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$EyebrowMode;

    const/4 v3, 0x1

    sget-object v4, Lcom/perfectcorp/perfectlib/jniproxy/VN_EyebrowMode;->EYEBROW_ART_DESIGN_MODE:Lcom/perfectcorp/perfectlib/jniproxy/VN_EyebrowMode;

    const-string v5, "ART_DESIGN"

    invoke-direct {v2, v5, v3, v5, v4}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$EyebrowMode;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/perfectcorp/perfectlib/jniproxy/VN_EyebrowMode;)V

    sput-object v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$EyebrowMode;->ART_DESIGN:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$EyebrowMode;

    new-instance v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$EyebrowMode;

    const-string v4, "NONE"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5, v4, v1}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$EyebrowMode;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/perfectcorp/perfectlib/jniproxy/VN_EyebrowMode;)V

    sput-object v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$EyebrowMode;->NONE:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$EyebrowMode;

    filled-new-array {v0, v2, v3}, [Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$EyebrowMode;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$EyebrowMode;->d:[Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$EyebrowMode;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/perfectcorp/perfectlib/jniproxy/VN_EyebrowMode;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$EyebrowMode;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$EyebrowMode;->b:Lcom/perfectcorp/perfectlib/jniproxy/VN_EyebrowMode;

    const/16 p1, 0x32

    iput p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$EyebrowMode;->c:I

    return-void
.end method

.method public static c(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$EyebrowMode;
    .locals 5

    invoke-static {}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$EyebrowMode;->values()[Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$EyebrowMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$EyebrowMode;->a:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$EyebrowMode;->NONE:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$EyebrowMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$EyebrowMode;
    .locals 1

    const-class v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$EyebrowMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$EyebrowMode;

    return-object p0
.end method

.method public static values()[Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$EyebrowMode;
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$EyebrowMode;->d:[Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$EyebrowMode;

    invoke-virtual {v0}, [Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$EyebrowMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$EyebrowMode;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$EyebrowMode;->c:I

    return p0
.end method

.method public final b()Lcom/perfectcorp/perfectlib/jniproxy/VN_EyebrowMode;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$EyebrowMode;->b:Lcom/perfectcorp/perfectlib/jniproxy/VN_EyebrowMode;

    return-object p0
.end method
