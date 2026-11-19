.class final enum Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$g$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$g$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALIGN_BOTTOM:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$g$a;

.field public static final enum ALIGN_CENTER:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$g$a;

.field public static final enum ALIGN_STRETCH:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$g$a;

.field public static final enum ALIGN_TOP:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$g$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$g$a;

    const-string v1, "ALIGN_STRETCH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$g$a;->ALIGN_STRETCH:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$g$a;

    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$g$a;

    const-string v1, "ALIGN_TOP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$g$a;->ALIGN_TOP:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$g$a;

    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$g$a;

    const-string v1, "ALIGN_BOTTOM"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$g$a;->ALIGN_BOTTOM:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$g$a;

    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$g$a;

    const-string v1, "ALIGN_CENTER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$g$a;->ALIGN_CENTER:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$g$a;

    return-void
.end method
