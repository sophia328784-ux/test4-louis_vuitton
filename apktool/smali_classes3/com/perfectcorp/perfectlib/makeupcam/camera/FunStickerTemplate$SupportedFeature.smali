.class public final enum Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$SupportedFeature;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SupportedFeature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$SupportedFeature;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FACE_DISTORTION:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$SupportedFeature;

.field public static final enum a:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$SupportedFeature;

.field public static final enum b:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$SupportedFeature;

.field private static final synthetic c:[Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$SupportedFeature;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$SupportedFeature;

    const-string v1, "FACE_DISTORTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$SupportedFeature;->FACE_DISTORTION:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$SupportedFeature;

    new-instance v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$SupportedFeature;

    const-string v2, "EYE_BLINKING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$SupportedFeature;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$SupportedFeature;

    new-instance v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$SupportedFeature;

    const-string v3, "MOUTH"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$SupportedFeature;->b:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$SupportedFeature;

    filled-new-array {v0, v1, v2}, [Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$SupportedFeature;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$SupportedFeature;->c:[Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$SupportedFeature;

    return-void
.end method

.method public static a()[Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$SupportedFeature;
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$SupportedFeature;->c:[Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$SupportedFeature;

    invoke-virtual {v0}, [Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$SupportedFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$SupportedFeature;

    return-object v0
.end method
