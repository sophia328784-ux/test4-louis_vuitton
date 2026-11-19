.class public final enum Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BY_EYE_BLINK:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c$b;

.field public static final enum BY_MOUTH_OPEN:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c$b;

.field public static final enum NONE:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c$b;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c$b;->NONE:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c$b;

    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c$b;

    const-string v1, "BY_MOUTH_OPEN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c$b;->BY_MOUTH_OPEN:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c$b;

    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c$b;

    const-string v1, "BY_EYE_BLINK"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c$b;->BY_EYE_BLINK:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c$b;

    return-void
.end method
