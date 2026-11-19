.class public final Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final backgroundStickers:Ljava/util/List;
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "background_sticker"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSticker;",
            ">;"
        }
    .end annotation
.end field

.field public final bestFrameIndex:I
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "best_frame_index"
    .end annotation
.end field

.field public final foregroundStickers:Ljava/util/List;
    .annotation runtime Lcom/perfectcorp/thirdparty/com/google/gson/annotations/SerializedName;
        value = "foreground_sticker"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/perfectcorp/perfectlib/makeupcam/camera/BackgroundPayload$BackgroundSticker;",
            ">;"
        }
    .end annotation
.end field

.field public final guid:Ljava/lang/String;

.field public final thumbnail:Ljava/lang/String;

.field public final version:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$b;->version:I

    const-string v1, ""

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$b;->guid:Ljava/lang/String;

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$b;->thumbnail:Ljava/lang/String;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$b;->foregroundStickers:Ljava/util/List;

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$b;->backgroundStickers:Ljava/util/List;

    iput v0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/background/a$b;->bestFrameIndex:I

    return-void
.end method
