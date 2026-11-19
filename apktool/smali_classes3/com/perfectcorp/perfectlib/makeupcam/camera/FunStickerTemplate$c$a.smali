.class public final enum Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum NONE:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c$a;

.field public static final enum RESET_LOOK:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c$a;

.field public static final enum SHIFT_LOOK:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c$a;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c$a;->NONE:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c$a;

    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c$a;

    const-string v1, "RESET_LOOK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c$a;->RESET_LOOK:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c$a;

    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c$a;

    const-string v1, "SHIFT_LOOK"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c$a;->SHIFT_LOOK:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$c$a;

    return-void
.end method
