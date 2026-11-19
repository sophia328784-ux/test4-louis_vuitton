.class public final enum Lcom/canhub/cropper/CropImageView$RequestSizeOptions;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/canhub/cropper/CropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestSizeOptions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/canhub/cropper/CropImageView$RequestSizeOptions;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\u0008\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/canhub/cropper/CropImageView$RequestSizeOptions;",
        "",
        "NONE",
        "SAMPLING",
        "RESIZE_INSIDE",
        "RESIZE_FIT",
        "RESIZE_EXACT",
        "cropper_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

.field public static final enum NONE:Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

.field public static final enum RESIZE_EXACT:Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

.field public static final enum RESIZE_FIT:Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

.field public static final enum RESIZE_INSIDE:Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

.field public static final enum SAMPLING:Lcom/canhub/cropper/CropImageView$RequestSizeOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/canhub/cropper/CropImageView$RequestSizeOptions;->NONE:Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    new-instance v1, Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    const-string v2, "SAMPLING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/canhub/cropper/CropImageView$RequestSizeOptions;->SAMPLING:Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    new-instance v2, Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    const-string v3, "RESIZE_INSIDE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/canhub/cropper/CropImageView$RequestSizeOptions;->RESIZE_INSIDE:Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    new-instance v3, Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    const-string v4, "RESIZE_FIT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/canhub/cropper/CropImageView$RequestSizeOptions;->RESIZE_FIT:Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    new-instance v4, Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    const-string v5, "RESIZE_EXACT"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/canhub/cropper/CropImageView$RequestSizeOptions;->RESIZE_EXACT:Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    move-result-object v0

    sput-object v0, Lcom/canhub/cropper/CropImageView$RequestSizeOptions;->$VALUES:[Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->a([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/canhub/cropper/CropImageView$RequestSizeOptions;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/canhub/cropper/CropImageView$RequestSizeOptions;
    .locals 1

    const-class v0, Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    return-object p0
.end method

.method public static values()[Lcom/canhub/cropper/CropImageView$RequestSizeOptions;
    .locals 1

    sget-object v0, Lcom/canhub/cropper/CropImageView$RequestSizeOptions;->$VALUES:[Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    return-object v0
.end method
