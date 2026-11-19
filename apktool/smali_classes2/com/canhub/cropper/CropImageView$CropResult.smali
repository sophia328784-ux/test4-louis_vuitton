.class public Lcom/canhub/cropper/CropImageView$CropResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/canhub/cropper/CropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CropResult"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0016\u0018\u00002\u00020\u0001Bm\u0008\u0000\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\u000e\u0010\n\u001a\n\u0018\u00010\u0008j\u0004\u0018\u0001`\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\r\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0006\u0010\u0012\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/canhub/cropper/CropImageView$CropResult;",
        "",
        "Landroid/graphics/Bitmap;",
        "originalBitmap",
        "Landroid/net/Uri;",
        "originalUri",
        "bitmap",
        "uriContent",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "error",
        "",
        "cropPoints",
        "Landroid/graphics/Rect;",
        "cropRect",
        "wholeImageRect",
        "",
        "rotation",
        "sampleSize",
        "<init>",
        "(Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/graphics/Bitmap;Landroid/net/Uri;Ljava/lang/Exception;[FLandroid/graphics/Rect;Landroid/graphics/Rect;II)V",
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


# instance fields
.field public final b:Landroid/net/Uri;

.field public final c:Landroid/net/Uri;

.field public final d:Ljava/lang/Exception;

.field public final e:[F

.field public final f:Landroid/graphics/Rect;

.field public final g:Landroid/graphics/Rect;

.field public final h:I

.field public final i:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/graphics/Bitmap;Landroid/net/Uri;Ljava/lang/Exception;[FLandroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .locals 0

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/canhub/cropper/CropImageView$CropResult;->b:Landroid/net/Uri;

    iput-object p4, p0, Lcom/canhub/cropper/CropImageView$CropResult;->c:Landroid/net/Uri;

    iput-object p5, p0, Lcom/canhub/cropper/CropImageView$CropResult;->d:Ljava/lang/Exception;

    iput-object p6, p0, Lcom/canhub/cropper/CropImageView$CropResult;->e:[F

    iput-object p7, p0, Lcom/canhub/cropper/CropImageView$CropResult;->f:Landroid/graphics/Rect;

    iput-object p8, p0, Lcom/canhub/cropper/CropImageView$CropResult;->g:Landroid/graphics/Rect;

    iput p9, p0, Lcom/canhub/cropper/CropImageView$CropResult;->h:I

    iput p10, p0, Lcom/canhub/cropper/CropImageView$CropResult;->i:I

    return-void
.end method
