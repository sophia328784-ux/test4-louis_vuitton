.class public final enum Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask$EyeShadowSide;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EyeShadowSide"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask$EyeShadowSide;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BOTH:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask$EyeShadowSide;

.field public static final enum LEFT:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask$EyeShadowSide;

.field public static final enum RIGHT:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask$EyeShadowSide;

.field private static final synthetic a:[Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask$EyeShadowSide;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask$EyeShadowSide;

    const-string v1, "BOTH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask$EyeShadowSide;->BOTH:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask$EyeShadowSide;

    new-instance v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask$EyeShadowSide;

    const-string v2, "LEFT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask$EyeShadowSide;->LEFT:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask$EyeShadowSide;

    new-instance v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask$EyeShadowSide;

    const-string v3, "RIGHT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask$EyeShadowSide;->RIGHT:Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask$EyeShadowSide;

    filled-new-array {v0, v1, v2}, [Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask$EyeShadowSide;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask$EyeShadowSide;->a:[Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask$EyeShadowSide;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask$EyeShadowSide;
    .locals 1

    const-class v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask$EyeShadowSide;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask$EyeShadowSide;

    return-object p0
.end method

.method public static values()[Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask$EyeShadowSide;
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask$EyeShadowSide;->a:[Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask$EyeShadowSide;

    invoke-virtual {v0}, [Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask$EyeShadowSide;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask$EyeShadowSide;

    return-object v0
.end method
