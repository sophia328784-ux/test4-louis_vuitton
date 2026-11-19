.class public final enum Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$ActionHint;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionHint"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$ActionHint;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BLINK:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$ActionHint;

.field public static final enum MOUTH_OPEN:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$ActionHint;

.field public static final enum MULTIFACE:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$ActionHint;

.field public static final enum MULTIFACE3:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$ActionHint;

.field public static final enum NONE:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$ActionHint;

.field private static final synthetic a:[Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$ActionHint;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$ActionHint;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$ActionHint;->NONE:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$ActionHint;

    new-instance v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$ActionHint;

    const-string v2, "MOUTH_OPEN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$ActionHint;->MOUTH_OPEN:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$ActionHint;

    new-instance v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$ActionHint;

    const-string v3, "MULTIFACE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$ActionHint;->MULTIFACE:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$ActionHint;

    new-instance v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$ActionHint;

    const-string v4, "MULTIFACE3"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$ActionHint;->MULTIFACE3:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$ActionHint;

    new-instance v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$ActionHint;

    const-string v5, "BLINK"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$ActionHint;->BLINK:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$ActionHint;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$ActionHint;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$ActionHint;->a:[Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$ActionHint;

    return-void
.end method

.method public static values()[Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$ActionHint;
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$ActionHint;->a:[Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$ActionHint;

    invoke-virtual {v0}, [Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$ActionHint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$ActionHint;

    return-object v0
.end method
