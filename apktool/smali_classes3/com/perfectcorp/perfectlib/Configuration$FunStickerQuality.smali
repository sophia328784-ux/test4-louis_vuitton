.class public final enum Lcom/perfectcorp/perfectlib/Configuration$FunStickerQuality;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FunStickerQuality"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perfectcorp/perfectlib/Configuration$FunStickerQuality;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum HD:Lcom/perfectcorp/perfectlib/Configuration$FunStickerQuality;

.field public static final enum SD:Lcom/perfectcorp/perfectlib/Configuration$FunStickerQuality;

.field private static final synthetic a:[Lcom/perfectcorp/perfectlib/Configuration$FunStickerQuality;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/perfectcorp/perfectlib/Configuration$FunStickerQuality;

    const-string v1, "SD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perfectcorp/perfectlib/Configuration$FunStickerQuality;->SD:Lcom/perfectcorp/perfectlib/Configuration$FunStickerQuality;

    new-instance v1, Lcom/perfectcorp/perfectlib/Configuration$FunStickerQuality;

    const-string v2, "HD"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/perfectcorp/perfectlib/Configuration$FunStickerQuality;->HD:Lcom/perfectcorp/perfectlib/Configuration$FunStickerQuality;

    filled-new-array {v0, v1}, [Lcom/perfectcorp/perfectlib/Configuration$FunStickerQuality;

    move-result-object v0

    sput-object v0, Lcom/perfectcorp/perfectlib/Configuration$FunStickerQuality;->a:[Lcom/perfectcorp/perfectlib/Configuration$FunStickerQuality;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/Configuration$FunStickerQuality;
    .locals 1

    const-class v0, Lcom/perfectcorp/perfectlib/Configuration$FunStickerQuality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/perfectcorp/perfectlib/Configuration$FunStickerQuality;

    return-object p0
.end method

.method public static values()[Lcom/perfectcorp/perfectlib/Configuration$FunStickerQuality;
    .locals 1

    sget-object v0, Lcom/perfectcorp/perfectlib/Configuration$FunStickerQuality;->a:[Lcom/perfectcorp/perfectlib/Configuration$FunStickerQuality;

    invoke-virtual {v0}, [Lcom/perfectcorp/perfectlib/Configuration$FunStickerQuality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perfectcorp/perfectlib/Configuration$FunStickerQuality;

    return-object v0
.end method
