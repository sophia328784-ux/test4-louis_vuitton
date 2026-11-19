.class public abstract Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$HairDyePatternType;,
        Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$FaceArtLayer2;,
        Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$TextureSupportedMode;,
        Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickStyle;,
        Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Look;,
        Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Effect;,
        Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Palette;,
        Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Pattern;,
        Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickProfile;,
        Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;,
        Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$Mask;,
        Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$LipstickType;,
        Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$EyebrowMode;,
        Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$SourceType;
    }
.end annotation


# static fields
.field public static final a:Lcom/perfectcorp/perfectlib/jniproxy/UIShimmer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/perfectcorp/perfectlib/jniproxy/UIShimmer;

    new-instance v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;-><init>(I)V

    iget v1, v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData$MakeupColor;->d:I

    const/16 v2, 0x32

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/perfectcorp/perfectlib/jniproxy/UIShimmer;-><init>(IIII)V

    sput-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/YMKPrimitiveData;->a:Lcom/perfectcorp/perfectlib/jniproxy/UIShimmer;

    return-void
.end method
