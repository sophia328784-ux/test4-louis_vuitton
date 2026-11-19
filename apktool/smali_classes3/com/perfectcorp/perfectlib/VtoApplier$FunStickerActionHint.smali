.class public final enum Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHint;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/VtoApplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FunStickerActionHint"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHint;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BLINK:Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHint;

.field public static final enum MOUTH_OPEN:Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHint;

.field private static final synthetic b:[Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHint;


# instance fields
.field private a:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$ActionHint;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHint;

    const/4 v1, 0x0

    sget-object v2, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$ActionHint;->MOUTH_OPEN:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$ActionHint;

    const-string v3, "MOUTH_OPEN"

    invoke-direct {v0, v3, v1, v2}, Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHint;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$ActionHint;)V

    sput-object v0, Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHint;->MOUTH_OPEN:Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHint;

    new-instance v1, Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHint;

    const/4 v2, 0x1

    sget-object v3, Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$ActionHint;->BLINK:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$ActionHint;

    const-string v4, "BLINK"

    invoke-direct {v1, v4, v2, v3}, Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHint;-><init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$ActionHint;)V

    sput-object v1, Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHint;->BLINK:Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHint;

    filled-new-array {v0, v1}, [Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHint;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHint;->b:[Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHint;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$ActionHint;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHint;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$ActionHint;

    return-void
.end method

.method public static a(Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$ActionHint;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;
    .locals 5

    invoke-static {}, Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHint;->values()[Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHint;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHint;->a:Lcom/perfectcorp/perfectlib/makeupcam/camera/FunStickerTemplate$ActionHint;

    if-ne v4, p0, :cond_0

    invoke-static {v3}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->e(Ljava/lang/Object;)Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;->a()Lcom/perfectcorp/thirdparty/com/google/common/base/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHint;
    .locals 1

    const-class v0, Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHint;

    return-object p0
.end method

.method public static values()[Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHint;
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHint;->b:[Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHint;

    invoke-virtual {v0}, [Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHint;

    return-object v0
.end method
