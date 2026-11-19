.class public final Lcom/canhub/cropper/CropImageView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/canhub/cropper/CropOverlayView$CropWindowChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/canhub/cropper/CropImageView$Companion;,
        Lcom/canhub/cropper/CropImageView$CropCornerShape;,
        Lcom/canhub/cropper/CropImageView$CropResult;,
        Lcom/canhub/cropper/CropImageView$CropShape;,
        Lcom/canhub/cropper/CropImageView$Guidelines;,
        Lcom/canhub/cropper/CropImageView$OnCropImageCompleteListener;,
        Lcom/canhub/cropper/CropImageView$OnSetCropOverlayMovedListener;,
        Lcom/canhub/cropper/CropImageView$OnSetCropOverlayReleasedListener;,
        Lcom/canhub/cropper/CropImageView$OnSetCropWindowChangeListener;,
        Lcom/canhub/cropper/CropImageView$OnSetImageUriCompleteListener;,
        Lcom/canhub/cropper/CropImageView$RequestSizeOptions;,
        Lcom/canhub/cropper/CropImageView$ScaleType;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00c0\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000e\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0014\n\u0002\u0008\u0010\u0018\u00002\u00020\u00012\u00020\u0002:\u0018\u009e\u0001\u009f\u0001\u00a0\u0001\u00a1\u0001\u00a2\u0001\u00a3\u0001\u00a4\u0001\u00a5\u0001\u00a6\u0001\u00a7\u0001\u00a8\u0001\u00a9\u0001B\u001d\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0015\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0015\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000f\u0010\rJ\u0015\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0011\u0010\rJ\u0015\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0015\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0017\u0010\u001c\u001a\u00020\u000b2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001a\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0017\u0010\u001f\u001a\u00020\u000b2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001e\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0017\u0010\"\u001a\u00020\u000b2\u0008\u0010\u001b\u001a\u0004\u0018\u00010!\u00a2\u0006\u0004\u0008\"\u0010#J\u0017\u0010%\u001a\u00020\u000b2\u0008\u0010\u001b\u001a\u0004\u0018\u00010$\u00a2\u0006\u0004\u0008%\u0010&J\u0017\u0010(\u001a\u00020\u000b2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\'\u00a2\u0006\u0004\u0008(\u0010)J\u0017\u0010,\u001a\u00020\u000b2\u0008\u0010+\u001a\u0004\u0018\u00010*\u00a2\u0006\u0004\u0008,\u0010-J\u0017\u00100\u001a\u00020\u000b2\u0008\u0010/\u001a\u0004\u0018\u00010.\u00a2\u0006\u0004\u00080\u00101R(\u00104\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0018\n\u0004\u00082\u00103\u0012\u0004\u00087\u00108\u001a\u0004\u00084\u00105\"\u0004\u00086\u0010\rR(\u0010>\u001a\u0004\u0018\u00010.2\u0008\u00109\u001a\u0004\u0018\u00010.8\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008:\u0010;\u001a\u0004\u0008<\u0010=R$\u0010B\u001a\u0004\u0018\u00010.8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008?\u0010;\u001a\u0004\u0008@\u0010=\"\u0004\u0008A\u00101R$\u0010D\u001a\u00020C2\u0006\u0010D\u001a\u00020C8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008E\u0010F\"\u0004\u0008G\u0010HR(\u0010J\u001a\u0004\u0018\u00010I2\u0008\u0010J\u001a\u0004\u0018\u00010I8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008K\u0010L\"\u0004\u0008M\u0010NR(\u0010P\u001a\u0004\u0018\u00010O2\u0008\u0010P\u001a\u0004\u0018\u00010O8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008Q\u0010R\"\u0004\u0008S\u0010TR$\u0010V\u001a\u00020\t2\u0006\u0010U\u001a\u00020\t8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008V\u00105\"\u0004\u0008W\u0010\rR$\u0010Y\u001a\u00020X2\u0006\u0010Y\u001a\u00020X8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008Z\u0010[\"\u0004\u0008\\\u0010]R$\u0010a\u001a\u00020X2\u0006\u0010^\u001a\u00020X8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008_\u0010[\"\u0004\u0008`\u0010]R$\u0010c\u001a\u00020\t2\u0006\u0010b\u001a\u00020\t8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008c\u00105\"\u0004\u0008d\u0010\rR$\u0010f\u001a\u00020\t2\u0006\u0010e\u001a\u00020\t8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008f\u00105\"\u0004\u0008g\u0010\rR(\u0010i\u001a\u0004\u0018\u00010h2\u0008\u0010i\u001a\u0004\u0018\u00010h8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008j\u0010k\"\u0004\u0008l\u0010mR\u001d\u0010q\u001a\u000e\u0012\u0004\u0012\u00020X\u0012\u0004\u0012\u00020X0n8F\u00a2\u0006\u0006\u001a\u0004\u0008o\u0010pR$\u0010s\u001a\u00020\t2\u0006\u0010r\u001a\u00020\t8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008s\u00105\"\u0004\u0008t\u0010\rR$\u0010v\u001a\u00020\t2\u0006\u0010u\u001a\u00020\t8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008v\u00105\"\u0004\u0008w\u0010\rR$\u0010y\u001a\u00020\t2\u0006\u0010x\u001a\u00020\t8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008y\u00105\"\u0004\u0008z\u0010\rR%\u0010|\u001a\u00020{2\u0006\u0010|\u001a\u00020{8F@FX\u0086\u000e\u00a2\u0006\r\u001a\u0004\u0008}\u0010~\"\u0005\u0008\u007f\u0010\u0080\u0001R)\u0010\u0085\u0001\u001a\u00020\u00162\u0007\u0010\u0081\u0001\u001a\u00020\u00168F@FX\u0086\u000e\u00a2\u0006\u000f\u001a\u0006\u0008\u0082\u0001\u0010\u0083\u0001\"\u0005\u0008\u0084\u0001\u0010\u0019R(\u0010\u0086\u0001\u001a\u00020X2\u0007\u0010\u0086\u0001\u001a\u00020X8F@FX\u0086\u000e\u00a2\u0006\u000e\u001a\u0005\u0008\u0087\u0001\u0010[\"\u0005\u0008\u0088\u0001\u0010]R(\u0010\u008c\u0001\u001a\u00020X2\u0007\u0010\u0089\u0001\u001a\u00020X8F@FX\u0086\u000e\u00a2\u0006\u000e\u001a\u0005\u0008\u008a\u0001\u0010[\"\u0005\u0008\u008b\u0001\u0010]R\u0017\u0010\u0090\u0001\u001a\u0005\u0018\u00010\u008d\u00018F\u00a2\u0006\u0008\u001a\u0006\u0008\u008e\u0001\u0010\u008f\u0001R0\u0010\u0095\u0001\u001a\u0005\u0018\u00010\u008d\u00012\n\u0010\u0091\u0001\u001a\u0005\u0018\u00010\u008d\u00018F@FX\u0086\u000e\u00a2\u0006\u0010\u001a\u0006\u0008\u0092\u0001\u0010\u008f\u0001\"\u0006\u0008\u0093\u0001\u0010\u0094\u0001R\u0017\u0010\u0099\u0001\u001a\u0005\u0018\u00010\u0096\u00018F\u00a2\u0006\u0008\u001a\u0006\u0008\u0097\u0001\u0010\u0098\u0001R\u0015\u0010\u009d\u0001\u001a\u00030\u009a\u00018F\u00a2\u0006\u0008\u001a\u0006\u0008\u009b\u0001\u0010\u009c\u0001\u00a8\u0006\u00aa\u0001"
    }
    d2 = {
        "Lcom/canhub/cropper/CropImageView;",
        "Landroid/widget/FrameLayout;",
        "Lcom/canhub/cropper/CropOverlayView$CropWindowChangeListener;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "multiTouchEnabled",
        "",
        "setMultiTouchEnabled",
        "(Z)V",
        "centerMoveEnabled",
        "setCenterMoveEnabled",
        "fixAspectRatio",
        "setFixedAspectRatio",
        "Lcom/canhub/cropper/CropImageOptions;",
        "options",
        "setImageCropOptions",
        "(Lcom/canhub/cropper/CropImageOptions;)V",
        "",
        "snapRadius",
        "setSnapRadius",
        "(F)V",
        "Lcom/canhub/cropper/CropImageView$OnSetCropOverlayReleasedListener;",
        "listener",
        "setOnSetCropOverlayReleasedListener",
        "(Lcom/canhub/cropper/CropImageView$OnSetCropOverlayReleasedListener;)V",
        "Lcom/canhub/cropper/CropImageView$OnSetCropOverlayMovedListener;",
        "setOnSetCropOverlayMovedListener",
        "(Lcom/canhub/cropper/CropImageView$OnSetCropOverlayMovedListener;)V",
        "Lcom/canhub/cropper/CropImageView$OnSetCropWindowChangeListener;",
        "setOnCropWindowChangedListener",
        "(Lcom/canhub/cropper/CropImageView$OnSetCropWindowChangeListener;)V",
        "Lcom/canhub/cropper/CropImageView$OnSetImageUriCompleteListener;",
        "setOnSetImageUriCompleteListener",
        "(Lcom/canhub/cropper/CropImageView$OnSetImageUriCompleteListener;)V",
        "Lcom/canhub/cropper/CropImageView$OnCropImageCompleteListener;",
        "setOnCropImageCompleteListener",
        "(Lcom/canhub/cropper/CropImageView$OnCropImageCompleteListener;)V",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "setImageBitmap",
        "(Landroid/graphics/Bitmap;)V",
        "Landroid/net/Uri;",
        "uri",
        "setImageUriAsync",
        "(Landroid/net/Uri;)V",
        "s",
        "Z",
        "isSaveBitmapToInstanceState",
        "()Z",
        "setSaveBitmapToInstanceState",
        "isSaveBitmapToInstanceState$annotations",
        "()V",
        "value",
        "G",
        "Landroid/net/Uri;",
        "getImageUri",
        "()Landroid/net/Uri;",
        "imageUri",
        "Q",
        "getCustomOutputUri",
        "setCustomOutputUri",
        "customOutputUri",
        "Lcom/canhub/cropper/CropImageView$ScaleType;",
        "scaleType",
        "getScaleType",
        "()Lcom/canhub/cropper/CropImageView$ScaleType;",
        "setScaleType",
        "(Lcom/canhub/cropper/CropImageView$ScaleType;)V",
        "Lcom/canhub/cropper/CropImageView$CropShape;",
        "cropShape",
        "getCropShape",
        "()Lcom/canhub/cropper/CropImageView$CropShape;",
        "setCropShape",
        "(Lcom/canhub/cropper/CropImageView$CropShape;)V",
        "Lcom/canhub/cropper/CropImageView$CropCornerShape;",
        "cornerShape",
        "getCornerShape",
        "()Lcom/canhub/cropper/CropImageView$CropCornerShape;",
        "setCornerShape",
        "(Lcom/canhub/cropper/CropImageView$CropCornerShape;)V",
        "autoZoomEnabled",
        "isAutoZoomEnabled",
        "setAutoZoomEnabled",
        "",
        "maxZoom",
        "getMaxZoom",
        "()I",
        "setMaxZoom",
        "(I)V",
        "degrees",
        "getRotatedDegrees",
        "setRotatedDegrees",
        "rotatedDegrees",
        "flipHorizontally",
        "isFlippedHorizontally",
        "setFlippedHorizontally",
        "flipVertically",
        "isFlippedVertically",
        "setFlippedVertically",
        "Lcom/canhub/cropper/CropImageView$Guidelines;",
        "guidelines",
        "getGuidelines",
        "()Lcom/canhub/cropper/CropImageView$Guidelines;",
        "setGuidelines",
        "(Lcom/canhub/cropper/CropImageView$Guidelines;)V",
        "Landroid/util/Pair;",
        "getAspectRatio",
        "()Landroid/util/Pair;",
        "aspectRatio",
        "showProgressBar",
        "isShowProgressBar",
        "setShowProgressBar",
        "showCropOverlay",
        "isShowCropOverlay",
        "setShowCropOverlay",
        "showCropLabel",
        "isShowCropLabel",
        "setShowCropLabel",
        "",
        "cropLabelText",
        "getCropLabelText",
        "()Ljava/lang/String;",
        "setCropLabelText",
        "(Ljava/lang/String;)V",
        "textSize",
        "getCropLabelTextSize",
        "()F",
        "setCropLabelTextSize",
        "cropLabelTextSize",
        "cropLabelTextColor",
        "getCropLabelTextColor",
        "setCropLabelTextColor",
        "resId",
        "getImageResource",
        "setImageResource",
        "imageResource",
        "Landroid/graphics/Rect;",
        "getWholeImageRect",
        "()Landroid/graphics/Rect;",
        "wholeImageRect",
        "rect",
        "getCropRect",
        "setCropRect",
        "(Landroid/graphics/Rect;)V",
        "cropRect",
        "Landroid/graphics/RectF;",
        "getCropWindowRect",
        "()Landroid/graphics/RectF;",
        "cropWindowRect",
        "",
        "getCropPoints",
        "()[F",
        "cropPoints",
        "CropShape",
        "CropCornerShape",
        "ScaleType",
        "Guidelines",
        "RequestSizeOptions",
        "OnSetCropOverlayReleasedListener",
        "OnSetCropOverlayMovedListener",
        "OnSetCropWindowChangeListener",
        "OnSetImageUriCompleteListener",
        "OnCropImageCompleteListener",
        "CropResult",
        "Companion",
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
.field public static final R:Lcom/canhub/cropper/CropImageView$Companion;


# instance fields
.field public A:I

.field public B:Lcom/canhub/cropper/CropImageView$OnSetCropOverlayReleasedListener;

.field public C:Lcom/canhub/cropper/CropImageView$OnSetCropOverlayMovedListener;

.field public D:Lcom/canhub/cropper/CropImageView$OnSetCropWindowChangeListener;

.field public E:Lcom/canhub/cropper/CropImageView$OnSetImageUriCompleteListener;

.field public F:Lcom/canhub/cropper/CropImageView$OnCropImageCompleteListener;

.field public G:Landroid/net/Uri;

.field public H:I

.field public I:F

.field public J:F

.field public K:F

.field public L:Landroid/graphics/RectF;

.field public M:I

.field public N:Z

.field public O:Ljava/lang/ref/WeakReference;

.field public P:Ljava/lang/ref/WeakReference;

.field public Q:Landroid/net/Uri;

.field public final b:Landroid/widget/ImageView;

.field public final c:Lcom/canhub/cropper/CropOverlayView;

.field public final d:Landroid/graphics/Matrix;

.field public final e:Landroid/graphics/Matrix;

.field public final f:Landroid/widget/ProgressBar;

.field public final g:[F

.field public final h:[F

.field public i:Lcom/canhub/cropper/CropImageAnimation;

.field public j:Landroid/graphics/Bitmap;

.field public k:I

.field public l:I

.field public m:Z

.field public n:Z

.field public o:I

.field public p:I

.field public q:I

.field public r:Lcom/canhub/cropper/CropImageView$ScaleType;

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Ljava/lang/String;

.field public w:F

.field public x:I

.field public y:Z

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/canhub/cropper/CropImageView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/canhub/cropper/CropImageView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/canhub/cropper/CropImageView;->R:Lcom/canhub/cropper/CropImageView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1012
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/canhub/cropper/CropImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 83

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct/range {p0 .. p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, v0, Lcom/canhub/cropper/CropImageView;->d:Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, v0, Lcom/canhub/cropper/CropImageView;->e:Landroid/graphics/Matrix;

    const/16 v3, 0x8

    new-array v4, v3, [F

    iput-object v4, v0, Lcom/canhub/cropper/CropImageView;->g:[F

    new-array v4, v3, [F

    iput-object v4, v0, Lcom/canhub/cropper/CropImageView;->h:[F

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/canhub/cropper/CropImageView;->t:Z

    const-string v5, ""

    iput-object v5, v0, Lcom/canhub/cropper/CropImageView;->v:Ljava/lang/String;

    const/high16 v5, 0x41a00000    # 20.0f

    iput v5, v0, Lcom/canhub/cropper/CropImageView;->w:F

    const/4 v5, -0x1

    iput v5, v0, Lcom/canhub/cropper/CropImageView;->x:I

    iput-boolean v4, v0, Lcom/canhub/cropper/CropImageView;->y:Z

    iput-boolean v4, v0, Lcom/canhub/cropper/CropImageView;->z:Z

    iput v4, v0, Lcom/canhub/cropper/CropImageView;->H:I

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v0, Lcom/canhub/cropper/CropImageView;->I:F

    instance-of v5, v1, Landroid/app/Activity;

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    move-object v5, v1

    check-cast v5, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    move-object v5, v6

    :goto_0
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string v7, "CROP_IMAGE_EXTRA_BUNDLE"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string v7, "CROP_IMAGE_EXTRA_OPTIONS"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    instance-of v7, v5, Lcom/canhub/cropper/CropImageOptions;

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    move-object v6, v5

    :goto_1
    check-cast v6, Lcom/canhub/cropper/CropImageOptions;

    if-nez v6, :cond_6

    :cond_2
    if-eqz v2, :cond_5

    sget-object v5, Lcom/canhub/cropper/R$styleable;->a:[I

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v5, v6, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lcom/canhub/cropper/CropImageOptions;

    const/16 v80, 0x3f

    const/16 v81, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    const/16 v75, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    const/16 v78, -0x1

    const/16 v79, -0x1

    invoke-direct/range {v7 .. v81}, Lcom/canhub/cropper/CropImageOptions;-><init>(ZZLcom/canhub/cropper/CropImageView$CropShape;Lcom/canhub/cropper/CropImageView$CropCornerShape;FFFLcom/canhub/cropper/CropImageView$Guidelines;Lcom/canhub/cropper/CropImageView$ScaleType;ZZZIZZZZIFZIIFIFFFIIFIIIIIIIILjava/lang/CharSequence;ILjava/lang/Integer;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;IIILcom/canhub/cropper/CropImageView$RequestSizeOptions;ZLandroid/graphics/Rect;IZZZIZZLjava/lang/CharSequence;IZZLjava/lang/String;Ljava/util/List;FILjava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :try_start_0
    iget-boolean v5, v0, Lcom/canhub/cropper/CropImageView;->s:Z

    const/16 v8, 0x1d

    invoke-virtual {v2, v8, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v0, Lcom/canhub/cropper/CropImageView;->s:Z

    invoke-static {}, Lcom/canhub/cropper/CropImageView$ScaleType;->a()Lkotlin/enums/EnumEntries;

    move-result-object v5

    iget-object v8, v7, Lcom/canhub/cropper/CropImageOptions;->j:Lcom/canhub/cropper/CropImageView$ScaleType;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    const/16 v9, 0x1e

    invoke-virtual {v2, v9, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v17, v5

    check-cast v17, Lcom/canhub/cropper/CropImageView$ScaleType;

    invoke-static {}, Lcom/canhub/cropper/CropImageView$CropShape;->a()Lkotlin/enums/EnumEntries;

    move-result-object v5

    iget-object v8, v7, Lcom/canhub/cropper/CropImageOptions;->d:Lcom/canhub/cropper/CropImageView$CropShape;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    const/16 v9, 0x1f

    invoke-virtual {v2, v9, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Lcom/canhub/cropper/CropImageView$CropShape;

    invoke-static {}, Lcom/canhub/cropper/CropImageView$CropCornerShape;->a()Lkotlin/enums/EnumEntries;

    move-result-object v5

    iget-object v8, v7, Lcom/canhub/cropper/CropImageOptions;->e:Lcom/canhub/cropper/CropImageView$CropCornerShape;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    invoke-virtual {v2, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Lcom/canhub/cropper/CropImageView$CropCornerShape;

    invoke-static {}, Lcom/canhub/cropper/CropImageView$Guidelines;->a()Lkotlin/enums/EnumEntries;

    move-result-object v5

    iget-object v8, v7, Lcom/canhub/cropper/CropImageOptions;->i:Lcom/canhub/cropper/CropImageView$Guidelines;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    const/16 v9, 0x11

    invoke-virtual {v2, v9, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v16, v5

    check-cast v16, Lcom/canhub/cropper/CropImageView$Guidelines;

    iget v5, v7, Lcom/canhub/cropper/CropImageOptions;->v:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v29

    iget v5, v7, Lcom/canhub/cropper/CropImageOptions;->w:I

    const/4 v8, 0x2

    invoke-virtual {v2, v8, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v30

    iget-boolean v5, v7, Lcom/canhub/cropper/CropImageOptions;->o:Z

    const/4 v8, 0x3

    invoke-virtual {v2, v8, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v22

    iget-boolean v5, v7, Lcom/canhub/cropper/CropImageOptions;->p:Z

    const/16 v8, 0x1c

    invoke-virtual {v2, v8, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v23

    iget-boolean v5, v7, Lcom/canhub/cropper/CropImageOptions;->q:Z

    const/16 v8, 0xb

    invoke-virtual {v2, v8, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v24

    iget v5, v7, Lcom/canhub/cropper/CropImageOptions;->f:F

    const/16 v8, 0xd

    invoke-virtual {v2, v8, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v13

    iget v5, v7, Lcom/canhub/cropper/CropImageOptions;->g:F

    const/16 v8, 0x23

    invoke-virtual {v2, v8, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v14

    iget v5, v7, Lcom/canhub/cropper/CropImageOptions;->h:F

    const/16 v8, 0x24

    invoke-virtual {v2, v8, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v15

    iget v5, v7, Lcom/canhub/cropper/CropImageOptions;->t:F

    const/16 v8, 0x14

    invoke-virtual {v2, v8, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v27

    iget v5, v7, Lcom/canhub/cropper/CropImageOptions;->D:I

    const/16 v8, 0xc

    invoke-virtual {v2, v8, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v37

    iget v5, v7, Lcom/canhub/cropper/CropImageOptions;->x:F

    const/16 v8, 0xa

    invoke-virtual {v2, v8, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v31

    iget v5, v7, Lcom/canhub/cropper/CropImageOptions;->y:I

    const/16 v8, 0x9

    invoke-virtual {v2, v8, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v32

    iget v5, v7, Lcom/canhub/cropper/CropImageOptions;->z:F

    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v33

    iget v3, v7, Lcom/canhub/cropper/CropImageOptions;->A:F

    const/4 v5, 0x7

    invoke-virtual {v2, v5, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v34

    iget v3, v7, Lcom/canhub/cropper/CropImageOptions;->B:F

    const/4 v5, 0x6

    invoke-virtual {v2, v5, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v35

    iget v3, v7, Lcom/canhub/cropper/CropImageOptions;->C:I

    const/4 v5, 0x5

    invoke-virtual {v2, v5, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v36

    iget v3, v7, Lcom/canhub/cropper/CropImageOptions;->E:F

    const/16 v5, 0x13

    invoke-virtual {v2, v5, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v38

    iget v3, v7, Lcom/canhub/cropper/CropImageOptions;->F:I

    const/16 v5, 0x12

    invoke-virtual {v2, v5, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v39

    iget v3, v7, Lcom/canhub/cropper/CropImageOptions;->G:I

    const/4 v5, 0x4

    invoke-virtual {v2, v5, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v40

    iget v3, v7, Lcom/canhub/cropper/CropImageOptions;->H:I

    int-to-float v3, v3

    const/16 v5, 0x1b

    invoke-virtual {v2, v5, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    float-to-int v3, v3

    iget v5, v7, Lcom/canhub/cropper/CropImageOptions;->I:I

    int-to-float v5, v5

    const/16 v8, 0x1a

    invoke-virtual {v2, v8, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    iget v8, v7, Lcom/canhub/cropper/CropImageOptions;->J:I

    int-to-float v8, v8

    const/16 v9, 0x19

    invoke-virtual {v2, v9, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    float-to-int v8, v8

    iget v9, v7, Lcom/canhub/cropper/CropImageOptions;->K:I

    int-to-float v9, v9

    const/16 v10, 0x18

    invoke-virtual {v2, v10, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    float-to-int v9, v9

    iget v10, v7, Lcom/canhub/cropper/CropImageOptions;->L:I

    int-to-float v10, v10

    const/16 v6, 0x16

    invoke-virtual {v2, v6, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    float-to-int v6, v6

    iget v10, v7, Lcom/canhub/cropper/CropImageOptions;->M:I

    int-to-float v10, v10

    const/16 v4, 0x15

    invoke-virtual {v2, v4, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    float-to-int v4, v4

    iget-boolean v10, v7, Lcom/canhub/cropper/CropImageOptions;->d1:Z

    const/16 v1, 0xf

    invoke-virtual {v2, v1, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v63

    iget-boolean v10, v7, Lcom/canhub/cropper/CropImageOptions;->e1:Z

    invoke-virtual {v2, v1, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v64

    iget v1, v7, Lcom/canhub/cropper/CropImageOptions;->l1:F

    const/16 v10, 0x27

    invoke-virtual {v2, v10, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v71

    iget v1, v7, Lcom/canhub/cropper/CropImageOptions;->m1:I

    const/16 v10, 0x26

    invoke-virtual {v2, v10, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v72

    iget-boolean v1, v7, Lcom/canhub/cropper/CropImageOptions;->l:Z

    const/16 v10, 0x21

    invoke-virtual {v2, v10, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v19

    iget v1, v7, Lcom/canhub/cropper/CropImageOptions;->s:I

    const/16 v10, 0x17

    invoke-virtual {v2, v10, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v26

    iget-boolean v1, v7, Lcom/canhub/cropper/CropImageOptions;->k:Z

    const/16 v10, 0x20

    invoke-virtual {v2, v10, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iget-boolean v10, v7, Lcom/canhub/cropper/CropImageOptions;->m:Z

    move/from16 p2, v1

    const/16 v1, 0x22

    invoke-virtual {v2, v1, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v20

    const/16 v1, 0x25

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v73

    iget-boolean v1, v7, Lcom/canhub/cropper/CropImageOptions;->u:Z

    const/16 v7, 0xe

    invoke-virtual {v2, v7, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_3
    const/16 v28, 0x0

    :goto_2
    move/from16 v43, v8

    goto :goto_4

    :cond_4
    :goto_3
    const/16 v28, 0x1

    goto :goto_2

    :goto_4
    new-instance v8, Lcom/canhub/cropper/CropImageOptions;

    const/16 v81, 0x3e

    const/16 v82, 0x0

    move/from16 v44, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v21, 0x0

    const/16 v25, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v74, 0x0

    const/16 v75, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    const/16 v78, 0x0

    const v79, 0x11003

    const v80, 0x3f3fffc0    # 0.7499962f

    move/from16 v18, p2

    move/from16 v41, v3

    move/from16 v46, v4

    move/from16 v42, v5

    move/from16 v45, v6

    invoke-direct/range {v8 .. v82}, Lcom/canhub/cropper/CropImageOptions;-><init>(ZZLcom/canhub/cropper/CropImageView$CropShape;Lcom/canhub/cropper/CropImageView$CropCornerShape;FFFLcom/canhub/cropper/CropImageView$Guidelines;Lcom/canhub/cropper/CropImageView$ScaleType;ZZZIZZZZIFZIIFIFFFIIFIIIIIIIILjava/lang/CharSequence;ILjava/lang/Integer;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;IIILcom/canhub/cropper/CropImageView$RequestSizeOptions;ZLandroid/graphics/Rect;IZZZIZZLjava/lang/CharSequence;IZZLjava/lang/String;Ljava/util/List;FILjava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    move-object v6, v8

    goto/16 :goto_6

    :goto_5
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    throw v0

    :cond_5
    new-instance v3, Lcom/canhub/cropper/CropImageOptions;

    const/16 v76, 0x3f

    const/16 v77, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    const/16 v73, 0x0

    const/16 v74, -0x1

    const/16 v75, -0x1

    invoke-direct/range {v3 .. v77}, Lcom/canhub/cropper/CropImageOptions;-><init>(ZZLcom/canhub/cropper/CropImageView$CropShape;Lcom/canhub/cropper/CropImageView$CropCornerShape;FFFLcom/canhub/cropper/CropImageView$Guidelines;Lcom/canhub/cropper/CropImageView$ScaleType;ZZZIZZZZIFZIIFIFFFIIFIIIIIIIILjava/lang/CharSequence;ILjava/lang/Integer;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;IIILcom/canhub/cropper/CropImageView$RequestSizeOptions;ZLandroid/graphics/Rect;IZZZIZZLjava/lang/CharSequence;IZZLjava/lang/String;Ljava/util/List;FILjava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v6, v3

    :cond_6
    :goto_6
    iget-object v1, v6, Lcom/canhub/cropper/CropImageOptions;->j:Lcom/canhub/cropper/CropImageView$ScaleType;

    iput-object v1, v0, Lcom/canhub/cropper/CropImageView;->r:Lcom/canhub/cropper/CropImageView$ScaleType;

    iget-boolean v1, v6, Lcom/canhub/cropper/CropImageOptions;->o:Z

    iput-boolean v1, v0, Lcom/canhub/cropper/CropImageView;->z:Z

    iget v1, v6, Lcom/canhub/cropper/CropImageOptions;->s:I

    iput v1, v0, Lcom/canhub/cropper/CropImageView;->A:I

    iget v1, v6, Lcom/canhub/cropper/CropImageOptions;->l1:F

    iput v1, v0, Lcom/canhub/cropper/CropImageView;->w:F

    iget-boolean v1, v6, Lcom/canhub/cropper/CropImageOptions;->l:Z

    iput-boolean v1, v0, Lcom/canhub/cropper/CropImageView;->u:Z

    iget-boolean v1, v6, Lcom/canhub/cropper/CropImageOptions;->k:Z

    iput-boolean v1, v0, Lcom/canhub/cropper/CropImageView;->t:Z

    iget-boolean v1, v6, Lcom/canhub/cropper/CropImageOptions;->m:Z

    iput-boolean v1, v0, Lcom/canhub/cropper/CropImageView;->y:Z

    iget-boolean v1, v6, Lcom/canhub/cropper/CropImageOptions;->d1:Z

    iput-boolean v1, v0, Lcom/canhub/cropper/CropImageView;->m:Z

    iget-boolean v1, v6, Lcom/canhub/cropper/CropImageOptions;->e1:Z

    iput-boolean v1, v0, Lcom/canhub/cropper/CropImageView;->n:Z

    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d003f

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a0007

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/canhub/cropper/CropImageView;->b:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const v2, 0x7f0a0004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/canhub/cropper/CropOverlayView;

    iput-object v2, v0, Lcom/canhub/cropper/CropImageView;->c:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {v2, v0}, Lcom/canhub/cropper/CropOverlayView;->setCropWindowChangeListener(Lcom/canhub/cropper/CropOverlayView$CropWindowChangeListener;)V

    invoke-virtual {v2, v6}, Lcom/canhub/cropper/CropOverlayView;->setInitialAttributeValues(Lcom/canhub/cropper/CropImageOptions;)V

    const v2, 0x7f0a0005

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, v0, Lcom/canhub/cropper/CropImageView;->f:Landroid/widget/ProgressBar;

    iget v2, v6, Lcom/canhub/cropper/CropImageOptions;->n:I

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v0}, Lcom/canhub/cropper/CropImageView;->j()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1011
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/canhub/cropper/CropImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/canhub/cropper/CropImageView;->e(ZZ)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/canhub/cropper/CropImageView;->C:Lcom/canhub/cropper/CropImageView$OnSetCropOverlayMovedListener;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->getCropRect()Landroid/graphics/Rect;

    invoke-interface {p1}, Lcom/canhub/cropper/CropImageView$OnSetCropOverlayMovedListener;->a()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/canhub/cropper/CropImageView;->B:Lcom/canhub/cropper/CropImageView$OnSetCropOverlayReleasedListener;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->getCropRect()Landroid/graphics/Rect;

    invoke-interface {p1}, Lcom/canhub/cropper/CropImageView$OnSetCropOverlayReleasedListener;->a()V

    :cond_1
    return-void
.end method

.method public final b(FFZZ)V
    .locals 11

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->j:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    const/4 v1, 0x0

    cmpl-float v2, p1, v1

    if-lez v2, :cond_c

    cmpl-float v2, p2, v1

    if-lez v2, :cond_c

    iget-object v2, p0, Lcom/canhub/cropper/CropImageView;->d:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/canhub/cropper/CropImageView;->e:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iget-object v4, p0, Lcom/canhub/cropper/CropImageView;->c:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Lcom/canhub/cropper/CropOverlayView;->getCropWindowRect()Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, p1, v3

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, p2, v0

    div-float/2addr v0, v6

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->f()V

    iget v0, p0, Lcom/canhub/cropper/CropImageView;->l:I

    iget-object v3, p0, Lcom/canhub/cropper/CropImageView;->g:[F

    if-lez v0, :cond_0

    int-to-float v0, v0

    sget-object v7, Lcom/canhub/cropper/BitmapUtils;->a:Landroid/graphics/Rect;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/canhub/cropper/BitmapUtils;->o([F)F

    move-result v7

    invoke-static {v3}, Lcom/canhub/cropper/BitmapUtils;->n([F)F

    move-result v8

    add-float/2addr v8, v7

    div-float/2addr v8, v6

    invoke-static {v3}, Lcom/canhub/cropper/BitmapUtils;->l([F)F

    move-result v7

    invoke-static {v3}, Lcom/canhub/cropper/BitmapUtils;->p([F)F

    move-result v9

    add-float/2addr v9, v7

    div-float/2addr v9, v6

    invoke-virtual {v2, v0, v8, v9}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->f()V

    :cond_0
    sget-object v0, Lcom/canhub/cropper/BitmapUtils;->a:Landroid/graphics/Rect;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/canhub/cropper/BitmapUtils;->o([F)F

    move-result v0

    invoke-static {v3}, Lcom/canhub/cropper/BitmapUtils;->n([F)F

    move-result v7

    sub-float/2addr v0, v7

    div-float v0, p1, v0

    invoke-static {v3}, Lcom/canhub/cropper/BitmapUtils;->l([F)F

    move-result v7

    invoke-static {v3}, Lcom/canhub/cropper/BitmapUtils;->p([F)F

    move-result v8

    sub-float/2addr v7, v8

    div-float v7, p2, v7

    invoke-static {v0, v7}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v7, p0, Lcom/canhub/cropper/CropImageView;->r:Lcom/canhub/cropper/CropImageView$ScaleType;

    sget-object v8, Lcom/canhub/cropper/CropImageView$ScaleType;->FIT_CENTER:Lcom/canhub/cropper/CropImageView$ScaleType;

    if-eq v7, v8, :cond_3

    sget-object v8, Lcom/canhub/cropper/CropImageView$ScaleType;->CENTER_INSIDE:Lcom/canhub/cropper/CropImageView$ScaleType;

    const/high16 v9, 0x3f800000    # 1.0f

    if-ne v7, v8, :cond_1

    cmpg-float v8, v0, v9

    if-ltz v8, :cond_3

    :cond_1
    cmpl-float v8, v0, v9

    if-lez v8, :cond_2

    iget-boolean v8, p0, Lcom/canhub/cropper/CropImageView;->z:Z

    if-eqz v8, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/canhub/cropper/CropImageView$ScaleType;->CENTER_CROP:Lcom/canhub/cropper/CropImageView$ScaleType;

    if-ne v7, v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v3}, Lcom/canhub/cropper/BitmapUtils;->o([F)F

    move-result v7

    invoke-static {v3}, Lcom/canhub/cropper/BitmapUtils;->n([F)F

    move-result v8

    sub-float/2addr v7, v8

    div-float/2addr v0, v7

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v3}, Lcom/canhub/cropper/BitmapUtils;->l([F)F

    move-result v8

    invoke-static {v3}, Lcom/canhub/cropper/BitmapUtils;->p([F)F

    move-result v9

    sub-float/2addr v8, v9

    div-float/2addr v7, v8

    invoke-static {v0, v7}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/canhub/cropper/CropImageView;->I:F

    goto :goto_1

    :cond_3
    :goto_0
    invoke-static {v3}, Lcom/canhub/cropper/BitmapUtils;->o([F)F

    move-result v7

    invoke-static {v3}, Lcom/canhub/cropper/BitmapUtils;->n([F)F

    move-result v8

    add-float/2addr v8, v7

    div-float/2addr v8, v6

    invoke-static {v3}, Lcom/canhub/cropper/BitmapUtils;->l([F)F

    move-result v7

    invoke-static {v3}, Lcom/canhub/cropper/BitmapUtils;->p([F)F

    move-result v9

    add-float/2addr v9, v7

    div-float/2addr v9, v6

    invoke-virtual {v2, v0, v0, v8, v9}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->f()V

    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/canhub/cropper/CropImageView;->m:Z

    iget v7, p0, Lcom/canhub/cropper/CropImageView;->I:F

    if-eqz v0, :cond_5

    neg-float v0, v7

    goto :goto_2

    :cond_5
    move v0, v7

    :goto_2
    iget-boolean v8, p0, Lcom/canhub/cropper/CropImageView;->n:Z

    if-eqz v8, :cond_6

    neg-float v7, v7

    :cond_6
    invoke-static {v3}, Lcom/canhub/cropper/BitmapUtils;->o([F)F

    move-result v8

    invoke-static {v3}, Lcom/canhub/cropper/BitmapUtils;->n([F)F

    move-result v9

    add-float/2addr v9, v8

    div-float/2addr v9, v6

    invoke-static {v3}, Lcom/canhub/cropper/BitmapUtils;->l([F)F

    move-result v8

    invoke-static {v3}, Lcom/canhub/cropper/BitmapUtils;->p([F)F

    move-result v10

    add-float/2addr v10, v8

    div-float/2addr v10, v6

    invoke-virtual {v2, v0, v7, v9, v10}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->f()V

    invoke-virtual {v2, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v8, p0, Lcom/canhub/cropper/CropImageView;->r:Lcom/canhub/cropper/CropImageView$ScaleType;

    sget-object v9, Lcom/canhub/cropper/CropImageView$ScaleType;->CENTER_CROP:Lcom/canhub/cropper/CropImageView$ScaleType;

    if-ne v8, v9, :cond_7

    if-eqz p3, :cond_7

    if-nez p4, :cond_7

    iput v1, p0, Lcom/canhub/cropper/CropImageView;->J:F

    iput v1, p0, Lcom/canhub/cropper/CropImageView;->K:F

    goto/16 :goto_5

    :cond_7
    if-eqz p3, :cond_a

    invoke-static {v3}, Lcom/canhub/cropper/BitmapUtils;->o([F)F

    move-result p3

    invoke-static {v3}, Lcom/canhub/cropper/BitmapUtils;->n([F)F

    move-result v8

    sub-float/2addr p3, v8

    cmpl-float p3, p1, p3

    if-lez p3, :cond_8

    move p1, v1

    goto :goto_3

    :cond_8
    div-float/2addr p1, v6

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result p3

    sub-float/2addr p1, p3

    invoke-static {v3}, Lcom/canhub/cropper/BitmapUtils;->n([F)F

    move-result p3

    neg-float p3, p3

    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p3

    int-to-float p3, p3

    invoke-static {v3}, Lcom/canhub/cropper/BitmapUtils;->o([F)F

    move-result v8

    sub-float/2addr p3, v8

    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    div-float/2addr p1, v0

    :goto_3
    iput p1, p0, Lcom/canhub/cropper/CropImageView;->J:F

    invoke-static {v3}, Lcom/canhub/cropper/BitmapUtils;->l([F)F

    move-result p1

    invoke-static {v3}, Lcom/canhub/cropper/BitmapUtils;->p([F)F

    move-result p3

    sub-float/2addr p1, p3

    cmpl-float p1, p2, p1

    if-lez p1, :cond_9

    goto :goto_4

    :cond_9
    div-float/2addr p2, v6

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    sub-float/2addr p2, p1

    invoke-static {v3}, Lcom/canhub/cropper/BitmapUtils;->p([F)F

    move-result p1

    neg-float p1, p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-static {v3}, Lcom/canhub/cropper/BitmapUtils;->l([F)F

    move-result p3

    sub-float/2addr p2, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    div-float v1, p1, v7

    :goto_4
    iput v1, p0, Lcom/canhub/cropper/CropImageView;->K:F

    goto :goto_5

    :cond_a
    iget p3, p0, Lcom/canhub/cropper/CropImageView;->J:F

    mul-float/2addr p3, v0

    iget v1, v5, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    invoke-static {p3, v1}, Ljava/lang/Math;->max(FF)F

    move-result p3

    iget v1, v5, Landroid/graphics/RectF;->right:F

    neg-float v1, v1

    add-float/2addr v1, p1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    div-float/2addr p1, v0

    iput p1, p0, Lcom/canhub/cropper/CropImageView;->J:F

    iget p1, p0, Lcom/canhub/cropper/CropImageView;->K:F

    mul-float/2addr p1, v7

    iget p3, v5, Landroid/graphics/RectF;->top:F

    neg-float p3, p3

    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget p3, v5, Landroid/graphics/RectF;->bottom:F

    neg-float p3, p3

    add-float/2addr p3, p2

    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    div-float/2addr p1, v7

    iput p1, p0, Lcom/canhub/cropper/CropImageView;->K:F

    :goto_5
    iget p1, p0, Lcom/canhub/cropper/CropImageView;->J:F

    mul-float/2addr p1, v0

    iget p2, p0, Lcom/canhub/cropper/CropImageView;->K:F

    mul-float/2addr p2, v7

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget p1, p0, Lcom/canhub/cropper/CropImageView;->J:F

    mul-float/2addr p1, v0

    iget p2, p0, Lcom/canhub/cropper/CropImageView;->K:F

    mul-float/2addr p2, v7

    invoke-virtual {v5, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    invoke-virtual {v4, v5}, Lcom/canhub/cropper/CropOverlayView;->setCropWindowRect(Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->f()V

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    iget-object p1, p0, Lcom/canhub/cropper/CropImageView;->b:Landroid/widget/ImageView;

    const/4 p2, 0x0

    if-eqz p4, :cond_b

    iget-object p3, p0, Lcom/canhub/cropper/CropImageView;->i:Lcom/canhub/cropper/CropImageAnimation;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p4, p3, Lcom/canhub/cropper/CropImageAnimation;->e:[F

    const/16 v0, 0x8

    invoke-static {v3, p2, p4, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p4, p3, Lcom/canhub/cropper/CropImageAnimation;->g:Landroid/graphics/RectF;

    iget-object v0, p3, Lcom/canhub/cropper/CropImageAnimation;->c:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {v0}, Lcom/canhub/cropper/CropOverlayView;->getCropWindowRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object p3, p3, Lcom/canhub/cropper/CropImageAnimation;->i:[F

    invoke-virtual {v2, p3}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object p3, p0, Lcom/canhub/cropper/CropImageView;->i:Lcom/canhub/cropper/CropImageAnimation;

    invoke-virtual {p1, p3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_6

    :cond_b
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :goto_6
    invoke-virtual {p0, p2}, Lcom/canhub/cropper/CropImageView;->k(Z)V

    :cond_c
    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->j:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/canhub/cropper/CropImageView;->q:I

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/canhub/cropper/CropImageView;->G:Landroid/net/Uri;

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/canhub/cropper/CropImageView;->j:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iput v1, p0, Lcom/canhub/cropper/CropImageView;->q:I

    iput-object v0, p0, Lcom/canhub/cropper/CropImageView;->G:Landroid/net/Uri;

    const/4 v2, 0x1

    iput v2, p0, Lcom/canhub/cropper/CropImageView;->H:I

    iput v1, p0, Lcom/canhub/cropper/CropImageView;->l:I

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/canhub/cropper/CropImageView;->I:F

    const/4 v2, 0x0

    iput v2, p0, Lcom/canhub/cropper/CropImageView;->J:F

    iput v2, p0, Lcom/canhub/cropper/CropImageView;->K:F

    iget-object v2, p0, Lcom/canhub/cropper/CropImageView;->d:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    iput-object v0, p0, Lcom/canhub/cropper/CropImageView;->L:Landroid/graphics/RectF;

    iput v1, p0, Lcom/canhub/cropper/CropImageView;->M:I

    iget-object v1, p0, Lcom/canhub/cropper/CropImageView;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->i()V

    return-void
.end method

.method public final d(Lcom/canhub/cropper/CropImageView$RequestSizeOptions;)Landroid/graphics/Bitmap;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lcom/canhub/cropper/CropImageView;->j:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    sget-object v3, Lcom/canhub/cropper/CropImageView$RequestSizeOptions;->NONE:Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    iget-object v3, v0, Lcom/canhub/cropper/CropImageView;->G:Landroid/net/Uri;

    iget-object v4, v0, Lcom/canhub/cropper/CropImageView;->c:Lcom/canhub/cropper/CropOverlayView;

    const/4 v14, 0x0

    const/4 v15, 0x0

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/canhub/cropper/CropImageView;->H:I

    const/4 v5, 0x1

    if-gt v3, v5, :cond_0

    sget-object v3, Lcom/canhub/cropper/CropImageView$RequestSizeOptions;->SAMPLING:Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    if-ne v1, v3, :cond_1

    :cond_0
    sget-object v2, Lcom/canhub/cropper/BitmapUtils;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v0, Lcom/canhub/cropper/CropImageView;->G:Landroid/net/Uri;

    invoke-virtual {v0}, Lcom/canhub/cropper/CropImageView;->getCropPoints()[F

    move-result-object v7

    iget v8, v0, Lcom/canhub/cropper/CropImageView;->l:I

    iget-object v2, v0, Lcom/canhub/cropper/CropImageView;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget v3, v0, Lcom/canhub/cropper/CropImageView;->H:I

    mul-int v9, v2, v3

    iget-object v2, v0, Lcom/canhub/cropper/CropImageView;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v3, v0, Lcom/canhub/cropper/CropImageView;->H:I

    mul-int v10, v2, v3

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v11, v4, Lcom/canhub/cropper/CropOverlayView;->B:Z

    invoke-virtual {v4}, Lcom/canhub/cropper/CropOverlayView;->getAspectRatioX()I

    move-result v12

    invoke-virtual {v4}, Lcom/canhub/cropper/CropOverlayView;->getAspectRatioY()I

    move-result v13

    iget-boolean v2, v0, Lcom/canhub/cropper/CropImageView;->m:Z

    iget-boolean v0, v0, Lcom/canhub/cropper/CropImageView;->n:Z

    move/from16 v17, v0

    move/from16 v16, v2

    invoke-static/range {v5 .. v17}, Lcom/canhub/cropper/BitmapUtils;->c(Landroid/content/Context;Landroid/net/Uri;[FIIIZIIIIZZ)Lcom/canhub/cropper/BitmapUtils$BitmapSampled;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/canhub/cropper/BitmapUtils;->a:Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/canhub/cropper/CropImageView;->getCropPoints()[F

    move-result-object v3

    iget v5, v0, Lcom/canhub/cropper/CropImageView;->l:I

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v6, v5

    iget-boolean v5, v4, Lcom/canhub/cropper/CropOverlayView;->B:Z

    move-object v7, v4

    move v4, v6

    invoke-virtual {v7}, Lcom/canhub/cropper/CropOverlayView;->getAspectRatioX()I

    move-result v6

    invoke-virtual {v7}, Lcom/canhub/cropper/CropOverlayView;->getAspectRatioY()I

    move-result v7

    iget-boolean v8, v0, Lcom/canhub/cropper/CropImageView;->m:Z

    iget-boolean v9, v0, Lcom/canhub/cropper/CropImageView;->n:Z

    invoke-static/range {v2 .. v9}, Lcom/canhub/cropper/BitmapUtils;->e(Landroid/graphics/Bitmap;[FIZIIZZ)Lcom/canhub/cropper/BitmapUtils$BitmapSampled;

    move-result-object v0

    :goto_0
    iget-object v0, v0, Lcom/canhub/cropper/BitmapUtils$BitmapSampled;->a:Landroid/graphics/Bitmap;

    invoke-static {v0, v14, v15, v1}, Lcom/canhub/cropper/BitmapUtils;->r(Landroid/graphics/Bitmap;IILcom/canhub/cropper/CropImageView$RequestSizeOptions;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public final e(ZZ)V
    .locals 13

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/canhub/cropper/CropImageView;->j:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_b

    if-lez v0, :cond_b

    if-lez v1, :cond_b

    iget-object v2, p0, Lcom/canhub/cropper/CropImageView;->c:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lcom/canhub/cropper/CropOverlayView;->getCropWindowRect()Landroid/graphics/RectF;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    iget p2, v3, Landroid/graphics/RectF;->left:F

    cmpg-float p2, p2, v5

    if-ltz p2, :cond_0

    iget p2, v3, Landroid/graphics/RectF;->top:F

    cmpg-float p2, p2, v5

    if-ltz p2, :cond_0

    iget p2, v3, Landroid/graphics/RectF;->right:F

    int-to-float v2, v0

    cmpl-float p2, p2, v2

    if-gtz p2, :cond_0

    iget p2, v3, Landroid/graphics/RectF;->bottom:F

    int-to-float v2, v1

    cmpl-float p2, p2, v2

    if-lez p2, :cond_a

    :cond_0
    int-to-float p2, v0

    int-to-float v0, v1

    invoke-virtual {p0, p2, v0, v4, v4}, Lcom/canhub/cropper/CropImageView;->b(FFZZ)V

    goto/16 :goto_2

    :cond_1
    iget-boolean v6, p0, Lcom/canhub/cropper/CropImageView;->z:Z

    const/high16 v7, 0x3f800000    # 1.0f

    if-nez v6, :cond_2

    iget v6, p0, Lcom/canhub/cropper/CropImageView;->I:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_a

    :cond_2
    iget v6, p0, Lcom/canhub/cropper/CropImageView;->I:F

    iget v8, p0, Lcom/canhub/cropper/CropImageView;->A:I

    int-to-float v8, v8

    cmpg-float v6, v6, v8

    if-gez v6, :cond_3

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v6

    int-to-float v8, v0

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float v10, v8, v9

    cmpg-float v6, v6, v10

    if-gez v6, :cond_3

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v6

    int-to-float v10, v1

    mul-float/2addr v9, v10

    cmpg-float v6, v6, v9

    if-gez v6, :cond_3

    iget v6, p0, Lcom/canhub/cropper/CropImageView;->A:I

    int-to-float v6, v6

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v9

    iget v11, p0, Lcom/canhub/cropper/CropImageView;->I:F

    div-float/2addr v9, v11

    const v11, 0x3f23d70a    # 0.64f

    div-float/2addr v9, v11

    div-float/2addr v8, v9

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v9

    iget v12, p0, Lcom/canhub/cropper/CropImageView;->I:F

    div-float/2addr v9, v12

    div-float/2addr v9, v11

    div-float/2addr v10, v9

    invoke-static {v8, v10}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    goto :goto_0

    :cond_3
    move v6, v5

    :goto_0
    iget v8, p0, Lcom/canhub/cropper/CropImageView;->I:F

    cmpl-float v8, v8, v7

    if-lez v8, :cond_5

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v8

    int-to-float v9, v0

    const v10, 0x3f266666    # 0.65f

    mul-float v11, v9, v10

    cmpl-float v8, v8, v11

    if-gtz v8, :cond_4

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v8

    int-to-float v11, v1

    mul-float/2addr v11, v10

    cmpl-float v8, v8, v11

    if-lez v8, :cond_5

    :cond_4
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v6

    iget v8, p0, Lcom/canhub/cropper/CropImageView;->I:F

    div-float/2addr v6, v8

    const v8, 0x3f028f5c    # 0.51f

    div-float/2addr v6, v8

    div-float/2addr v9, v6

    int-to-float v6, v1

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v10, p0, Lcom/canhub/cropper/CropImageView;->I:F

    div-float/2addr v3, v10

    div-float/2addr v3, v8

    div-float/2addr v6, v3

    invoke-static {v9, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v7, v3}, Ljava/lang/Math;->max(FF)F

    move-result v6

    :cond_5
    iget-boolean v3, p0, Lcom/canhub/cropper/CropImageView;->z:Z

    if-nez v3, :cond_6

    goto :goto_1

    :cond_6
    move v7, v6

    :goto_1
    cmpl-float v3, v7, v5

    if-lez v3, :cond_a

    iget v3, p0, Lcom/canhub/cropper/CropImageView;->I:F

    cmpg-float v3, v7, v3

    if-nez v3, :cond_7

    goto :goto_2

    :cond_7
    if-eqz p2, :cond_9

    iget-object v3, p0, Lcom/canhub/cropper/CropImageView;->i:Lcom/canhub/cropper/CropImageAnimation;

    if-nez v3, :cond_8

    new-instance v3, Lcom/canhub/cropper/CropImageAnimation;

    iget-object v5, p0, Lcom/canhub/cropper/CropImageView;->b:Landroid/widget/ImageView;

    invoke-direct {v3, v5, v2}, Lcom/canhub/cropper/CropImageAnimation;-><init>(Landroid/widget/ImageView;Lcom/canhub/cropper/CropOverlayView;)V

    iput-object v3, p0, Lcom/canhub/cropper/CropImageView;->i:Lcom/canhub/cropper/CropImageAnimation;

    :cond_8
    iget-object v2, p0, Lcom/canhub/cropper/CropImageView;->i:Lcom/canhub/cropper/CropImageAnimation;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/canhub/cropper/CropImageView;->g:[F

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, p0, Lcom/canhub/cropper/CropImageView;->d:Landroid/graphics/Matrix;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->reset()V

    iget-object v6, v2, Lcom/canhub/cropper/CropImageAnimation;->d:[F

    const/16 v8, 0x8

    invoke-static {v3, v4, v6, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v2, Lcom/canhub/cropper/CropImageAnimation;->f:Landroid/graphics/RectF;

    iget-object v4, v2, Lcom/canhub/cropper/CropImageAnimation;->c:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {v4}, Lcom/canhub/cropper/CropOverlayView;->getCropWindowRect()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v2, v2, Lcom/canhub/cropper/CropImageAnimation;->h:[F

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->getValues([F)V

    :cond_9
    iput v7, p0, Lcom/canhub/cropper/CropImageView;->I:F

    int-to-float v0, v0

    int-to-float v1, v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/canhub/cropper/CropImageView;->b(FFZZ)V

    :cond_a
    :goto_2
    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->D:Lcom/canhub/cropper/CropImageView$OnSetCropWindowChangeListener;

    if-eqz p0, :cond_b

    if-nez p1, :cond_b

    invoke-interface {p0}, Lcom/canhub/cropper/CropImageView$OnSetCropWindowChangeListener;->a()V

    :cond_b
    return-void
.end method

.method public final f()V
    .locals 11

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->g:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v3, 0x1

    aput v2, v0, v3

    iget-object v4, p0, Lcom/canhub/cropper/CropImageView;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x2

    aput v4, v0, v5

    const/4 v4, 0x3

    aput v2, v0, v4

    iget-object v6, p0, Lcom/canhub/cropper/CropImageView;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x4

    aput v6, v0, v7

    iget-object v6, p0, Lcom/canhub/cropper/CropImageView;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/4 v8, 0x5

    aput v6, v0, v8

    const/4 v6, 0x6

    aput v2, v0, v6

    iget-object v9, p0, Lcom/canhub/cropper/CropImageView;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    const/4 v10, 0x7

    aput v9, v0, v10

    iget-object v9, p0, Lcom/canhub/cropper/CropImageView;->d:Landroid/graphics/Matrix;

    invoke-virtual {v9, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->h:[F

    aput v2, p0, v1

    aput v2, p0, v3

    const/high16 v0, 0x42c80000    # 100.0f

    aput v0, p0, v5

    aput v2, p0, v4

    aput v0, p0, v7

    aput v0, p0, v8

    aput v2, p0, v6

    aput v0, p0, v10

    invoke-virtual {v9, p0}, Landroid/graphics/Matrix;->mapPoints([F)V

    return-void
.end method

.method public final g(I)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/canhub/cropper/CropImageView;->j:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_6

    if-gez v1, :cond_0

    rem-int/lit16 v1, v1, 0x168

    add-int/lit16 v1, v1, 0x168

    goto :goto_0

    :cond_0
    rem-int/lit16 v1, v1, 0x168

    :goto_0
    iget-object v2, v0, Lcom/canhub/cropper/CropImageView;->c:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v3, v2, Lcom/canhub/cropper/CropOverlayView;->B:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_2

    const/16 v3, 0x2e

    if-gt v3, v1, :cond_1

    const/16 v3, 0x87

    if-ge v1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0xd8

    if-gt v3, v1, :cond_2

    const/16 v3, 0x131

    if-ge v1, v3, :cond_2

    :goto_1
    move v3, v4

    goto :goto_2

    :cond_2
    move v3, v5

    :goto_2
    sget-object v6, Lcom/canhub/cropper/BitmapUtils;->c:Landroid/graphics/RectF;

    invoke-virtual {v2}, Lcom/canhub/cropper/CropOverlayView;->getCropWindowRect()Landroid/graphics/RectF;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    if-eqz v3, :cond_3

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v7

    goto :goto_3

    :cond_3
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v7

    :goto_3
    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    if-eqz v3, :cond_4

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v9

    goto :goto_4

    :cond_4
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v9

    :goto_4
    div-float/2addr v9, v8

    if-eqz v3, :cond_5

    iget-boolean v3, v0, Lcom/canhub/cropper/CropImageView;->m:Z

    iget-boolean v8, v0, Lcom/canhub/cropper/CropImageView;->n:Z

    iput-boolean v8, v0, Lcom/canhub/cropper/CropImageView;->m:Z

    iput-boolean v3, v0, Lcom/canhub/cropper/CropImageView;->n:Z

    :cond_5
    iget-object v3, v0, Lcom/canhub/cropper/CropImageView;->d:Landroid/graphics/Matrix;

    iget-object v8, v0, Lcom/canhub/cropper/CropImageView;->e:Landroid/graphics/Matrix;

    invoke-virtual {v3, v8}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    sget-object v10, Lcom/canhub/cropper/BitmapUtils;->d:[F

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v11

    aput v11, v10, v5

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v11

    aput v11, v10, v4

    const/4 v11, 0x2

    const/4 v12, 0x0

    aput v12, v10, v11

    const/4 v13, 0x3

    aput v12, v10, v13

    const/4 v14, 0x4

    const/high16 v15, 0x3f800000    # 1.0f

    aput v15, v10, v14

    const/16 v16, 0x5

    aput v12, v10, v16

    invoke-virtual {v8, v10}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget v8, v0, Lcom/canhub/cropper/CropImageView;->l:I

    add-int/2addr v8, v1

    rem-int/lit16 v8, v8, 0x168

    iput v8, v0, Lcom/canhub/cropper/CropImageView;->l:I

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v0, v1, v8, v4, v5}, Lcom/canhub/cropper/CropImageView;->b(FFZZ)V

    sget-object v1, Lcom/canhub/cropper/BitmapUtils;->e:[F

    invoke-virtual {v3, v1, v10}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    iget v8, v0, Lcom/canhub/cropper/CropImageView;->I:F

    aget v12, v1, v14

    aget v17, v1, v11

    sub-float v12, v12, v17

    move/from16 p1, v11

    float-to-double v11, v12

    move/from16 v17, v13

    move/from16 v18, v14

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    aget v19, v1, v16

    aget v20, v1, v17

    sub-float v4, v19, v20

    move-object/from16 v20, v6

    float-to-double v5, v4

    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v4, v11

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    div-float/2addr v8, v4

    iput v8, v0, Lcom/canhub/cropper/CropImageView;->I:F

    invoke-static {v8, v15}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, v0, Lcom/canhub/cropper/CropImageView;->I:F

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x1

    const/4 v8, 0x0

    invoke-virtual {v0, v4, v5, v6, v8}, Lcom/canhub/cropper/CropImageView;->b(FFZZ)V

    invoke-virtual {v3, v1, v10}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    aget v3, v1, v18

    aget v4, v1, p1

    sub-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    aget v5, v1, v16

    aget v6, v1, v17

    sub-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float/2addr v7, v3

    mul-float/2addr v9, v3

    const/16 v19, 0x0

    aget v3, v1, v19

    sub-float v4, v3, v7

    const/4 v6, 0x1

    aget v1, v1, v6

    sub-float v5, v1, v9

    add-float/2addr v3, v7

    add-float/2addr v1, v9

    move-object/from16 v7, v20

    invoke-virtual {v7, v4, v5, v3, v1}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {v2}, Lcom/canhub/cropper/CropOverlayView;->g()V

    invoke-virtual {v2, v7}, Lcom/canhub/cropper/CropOverlayView;->setCropWindowRect(Landroid/graphics/RectF;)V

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v8, 0x0

    invoke-virtual {v0, v1, v3, v6, v8}, Lcom/canhub/cropper/CropImageView;->b(FFZZ)V

    invoke-virtual {v0, v8, v8}, Lcom/canhub/cropper/CropImageView;->e(ZZ)V

    invoke-virtual {v2}, Lcom/canhub/cropper/CropOverlayView;->getCropWindowRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/canhub/cropper/CropOverlayView;->e(Landroid/graphics/RectF;)V

    iget-object v1, v2, Lcom/canhub/cropper/CropOverlayView;->h:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lcom/canhub/cropper/CropWindowHandler;->a:Landroid/graphics/RectF;

    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :cond_6
    return-void
.end method

.method public final getAspectRatio()Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/Pair;

    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->c:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->getAspectRatioX()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->getAspectRatioY()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final getCornerShape()Lcom/canhub/cropper/CropImageView$CropCornerShape;
    .locals 0

    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->c:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->getCornerShape()Lcom/canhub/cropper/CropImageView$CropCornerShape;

    move-result-object p0

    return-object p0
.end method

.method public final getCropLabelText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->v:Ljava/lang/String;

    return-object p0
.end method

.method public final getCropLabelTextColor()I
    .locals 0

    iget p0, p0, Lcom/canhub/cropper/CropImageView;->x:I

    return p0
.end method

.method public final getCropLabelTextSize()F
    .locals 0

    iget p0, p0, Lcom/canhub/cropper/CropImageView;->w:F

    return p0
.end method

.method public final getCropPoints()[F
    .locals 8

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->c:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/canhub/cropper/CropOverlayView;->getCropWindowRect()Landroid/graphics/RectF;

    move-result-object v0

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    const/16 v4, 0x8

    new-array v5, v4, [F

    const/4 v6, 0x0

    aput v1, v5, v6

    const/4 v7, 0x1

    aput v2, v5, v7

    const/4 v7, 0x2

    aput v3, v5, v7

    const/4 v7, 0x3

    aput v2, v5, v7

    const/4 v2, 0x4

    aput v3, v5, v2

    const/4 v2, 0x5

    aput v0, v5, v2

    const/4 v2, 0x6

    aput v1, v5, v2

    const/4 v1, 0x7

    aput v0, v5, v1

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->d:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/canhub/cropper/CropImageView;->e:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {v1, v5}, Landroid/graphics/Matrix;->mapPoints([F)V

    new-array v0, v4, [F

    :goto_0
    if-ge v6, v4, :cond_0

    aget v1, v5, v6

    iget v2, p0, Lcom/canhub/cropper/CropImageView;->H:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    aput v1, v0, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getCropRect()Landroid/graphics/Rect;
    .locals 6

    iget v0, p0, Lcom/canhub/cropper/CropImageView;->H:I

    iget-object v1, p0, Lcom/canhub/cropper/CropImageView;->j:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    move v2, v0

    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->getCropPoints()[F

    move-result-object v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    mul-int/2addr v3, v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v2, v1

    sget-object v1, Lcom/canhub/cropper/BitmapUtils;->a:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->c:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v1, v3

    iget-boolean v3, p0, Lcom/canhub/cropper/CropOverlayView;->B:Z

    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->getAspectRatioX()I

    move-result v4

    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->getAspectRatioY()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/canhub/cropper/BitmapUtils;->m([FIIZII)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public final getCropShape()Lcom/canhub/cropper/CropImageView$CropShape;
    .locals 0

    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->c:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->getCropShape()Lcom/canhub/cropper/CropImageView$CropShape;

    move-result-object p0

    return-object p0
.end method

.method public final getCropWindowRect()Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->c:Lcom/canhub/cropper/CropOverlayView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->getCropWindowRect()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getCroppedImage()Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lcom/canhub/cropper/CropImageView$RequestSizeOptions;->RESIZE_INSIDE:Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropImageView;->d(Lcom/canhub/cropper/CropImageView$RequestSizeOptions;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final getCustomOutputUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->Q:Landroid/net/Uri;

    return-object p0
.end method

.method public final getGuidelines()Lcom/canhub/cropper/CropImageView$Guidelines;
    .locals 0

    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->c:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->getGuidelines()Lcom/canhub/cropper/CropImageView$Guidelines;

    move-result-object p0

    return-object p0
.end method

.method public final getImageResource()I
    .locals 0

    iget p0, p0, Lcom/canhub/cropper/CropImageView;->q:I

    return p0
.end method

.method public final getImageUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->G:Landroid/net/Uri;

    return-object p0
.end method

.method public final getMaxZoom()I
    .locals 0

    iget p0, p0, Lcom/canhub/cropper/CropImageView;->A:I

    return p0
.end method

.method public final getRotatedDegrees()I
    .locals 0

    iget p0, p0, Lcom/canhub/cropper/CropImageView;->l:I

    return p0
.end method

.method public final getScaleType()Lcom/canhub/cropper/CropImageView$ScaleType;
    .locals 0

    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->r:Lcom/canhub/cropper/CropImageView$ScaleType;

    return-object p0
.end method

.method public final getWholeImageRect()Landroid/graphics/Rect;
    .locals 3

    iget v0, p0, Lcom/canhub/cropper/CropImageView;->H:I

    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->j:Landroid/graphics/Bitmap;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    mul-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    mul-int/2addr p0, v0

    new-instance v0, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public final h(Landroid/graphics/Bitmap;ILandroid/net/Uri;II)V
    .locals 1

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->j:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->c()V

    iput-object p1, p0, Lcom/canhub/cropper/CropImageView;->j:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iput-object p3, p0, Lcom/canhub/cropper/CropImageView;->G:Landroid/net/Uri;

    iput p2, p0, Lcom/canhub/cropper/CropImageView;->q:I

    iput p4, p0, Lcom/canhub/cropper/CropImageView;->H:I

    iput p5, p0, Lcom/canhub/cropper/CropImageView;->l:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    const/4 p3, 0x1

    const/4 p4, 0x0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/canhub/cropper/CropImageView;->b(FFZZ)V

    iget-object p1, p0, Lcom/canhub/cropper/CropImageView;->c:Lcom/canhub/cropper/CropOverlayView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/canhub/cropper/CropOverlayView;->g()V

    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->i()V

    :cond_1
    return-void
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->c:Lcom/canhub/cropper/CropOverlayView;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/canhub/cropper/CropImageView;->t:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->j:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public final j()V
    .locals 2

    iget-boolean v0, p0, Lcom/canhub/cropper/CropImageView;->y:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->j:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->O:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->P:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x4

    :goto_1
    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->f:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final k(Z)V
    .locals 6

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->j:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/canhub/cropper/CropImageView;->c:Lcom/canhub/cropper/CropOverlayView;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget v0, p0, Lcom/canhub/cropper/CropImageView;->H:I

    int-to-float v0, v0

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    sget-object v3, Lcom/canhub/cropper/BitmapUtils;->a:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/canhub/cropper/CropImageView;->h:[F

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/canhub/cropper/BitmapUtils;->o([F)F

    move-result v4

    invoke-static {v3}, Lcom/canhub/cropper/BitmapUtils;->n([F)F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v0, v4

    iget v4, p0, Lcom/canhub/cropper/CropImageView;->H:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-static {v3}, Lcom/canhub/cropper/BitmapUtils;->l([F)F

    move-result v2

    invoke-static {v3}, Lcom/canhub/cropper/BitmapUtils;->p([F)F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v4, v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v5, v1, Lcom/canhub/cropper/CropOverlayView;->h:Lcom/canhub/cropper/CropWindowHandler;

    iput v2, v5, Lcom/canhub/cropper/CropWindowHandler;->e:F

    iput v3, v5, Lcom/canhub/cropper/CropWindowHandler;->f:F

    iput v0, v5, Lcom/canhub/cropper/CropWindowHandler;->k:F

    iput v4, v5, Lcom/canhub/cropper/CropWindowHandler;->l:F

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/canhub/cropper/CropImageView;->g:[F

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-virtual {v1, v0, p0, p1}, Lcom/canhub/cropper/CropOverlayView;->h(II[F)V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget p1, p0, Lcom/canhub/cropper/CropImageView;->o:I

    const/4 v0, 0x1

    if-lez p1, :cond_6

    iget p1, p0, Lcom/canhub/cropper/CropImageView;->p:I

    if-lez p1, :cond_6

    iget-object p1, p0, Lcom/canhub/cropper/CropImageView;->j:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_5

    sub-int/2addr p4, p2

    int-to-float p1, p4

    sub-int/2addr p5, p3

    int-to-float p2, p5

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/canhub/cropper/CropImageView;->b(FFZZ)V

    iget-object p4, p0, Lcom/canhub/cropper/CropImageView;->L:Landroid/graphics/RectF;

    if-eqz p4, :cond_3

    iget p5, p0, Lcom/canhub/cropper/CropImageView;->M:I

    iget v1, p0, Lcom/canhub/cropper/CropImageView;->k:I

    if-eq p5, v1, :cond_0

    iput p5, p0, Lcom/canhub/cropper/CropImageView;->l:I

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/canhub/cropper/CropImageView;->b(FFZZ)V

    iput p3, p0, Lcom/canhub/cropper/CropImageView;->M:I

    :cond_0
    iget-object p1, p0, Lcom/canhub/cropper/CropImageView;->d:Landroid/graphics/Matrix;

    iget-object p2, p0, Lcom/canhub/cropper/CropImageView;->L:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object p1, p0, Lcom/canhub/cropper/CropImageView;->c:Lcom/canhub/cropper/CropOverlayView;

    if-eqz p1, :cond_1

    invoke-virtual {p1, p4}, Lcom/canhub/cropper/CropOverlayView;->setCropWindowRect(Landroid/graphics/RectF;)V

    :cond_1
    invoke-virtual {p0, p3, p3}, Lcom/canhub/cropper/CropImageView;->e(ZZ)V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/canhub/cropper/CropOverlayView;->getCropWindowRect()Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/canhub/cropper/CropOverlayView;->e(Landroid/graphics/RectF;)V

    iget-object p1, p1, Lcom/canhub/cropper/CropOverlayView;->h:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/canhub/cropper/CropWindowHandler;->a:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/canhub/cropper/CropImageView;->L:Landroid/graphics/RectF;

    return-void

    :cond_3
    iget-boolean p1, p0, Lcom/canhub/cropper/CropImageView;->N:Z

    if-eqz p1, :cond_4

    iput-boolean p3, p0, Lcom/canhub/cropper/CropImageView;->N:Z

    invoke-virtual {p0, p3, p3}, Lcom/canhub/cropper/CropImageView;->e(ZZ)V

    :cond_4
    return-void

    :cond_5
    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropImageView;->k(Z)V

    return-void

    :cond_6
    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropImageView;->k(Z)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 12

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    iget-object v2, p0, Lcom/canhub/cropper/CropImageView;->j:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_9

    if-nez p2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    if-ge p1, v3, :cond_1

    int-to-double v6, p1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-double v8, v3

    div-double/2addr v6, v8

    goto :goto_0

    :cond_1
    move-wide v6, v4

    :goto_0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ge p2, v3, :cond_2

    int-to-double v8, p2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-double v10, v3

    div-double/2addr v8, v10

    goto :goto_1

    :cond_2
    move-wide v8, v4

    :goto_1
    cmpg-double v3, v6, v4

    if-nez v3, :cond_3

    cmpg-double v3, v8, v4

    if-nez v3, :cond_3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    goto :goto_2

    :cond_3
    cmpg-double v3, v6, v8

    if-gtz v3, :cond_4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v6

    double-to-int v2, v2

    move v3, p1

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v8

    double-to-int v3, v2

    move v2, p2

    :goto_2
    sget-object v4, Lcom/canhub/cropper/CropImageView;->R:Lcom/canhub/cropper/CropImageView$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, -0x80000000

    if-eq v0, v5, :cond_5

    if-eq v0, v4, :cond_6

    move p1, v3

    goto :goto_3

    :cond_5
    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_6
    :goto_3
    if-eq v1, v5, :cond_7

    if-eq v1, v4, :cond_8

    move p2, v2

    goto :goto_4

    :cond_7
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_8
    :goto_4
    iput p1, p0, Lcom/canhub/cropper/CropImageView;->o:I

    iput p2, p0, Lcom/canhub/cropper/CropImageView;->p:I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    :cond_9
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->O:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->G:Landroid/net/Uri;

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->j:Landroid/graphics/Bitmap;

    if-nez v0, :cond_e

    iget v0, p0, Lcom/canhub/cropper/CropImageView;->q:I

    if-nez v0, :cond_e

    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    const-string v2, "LOADED_IMAGE_URI"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    instance-of v3, v2, Landroid/net/Uri;

    if-nez v3, :cond_0

    move-object v2, v1

    :cond_0
    move-object v6, v2

    check-cast v6, Landroid/net/Uri;

    if-eqz v6, :cond_4

    const-string v2, "LOADED_IMAGE_STATE_BITMAP_KEY"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    sget-object v3, Lcom/canhub/cropper/BitmapUtils;->a:Landroid/graphics/Rect;

    sget-object v3, Lcom/canhub/cropper/BitmapUtils;->g:Landroid/util/Pair;

    if-eqz v3, :cond_2

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    move-object v4, v2

    goto :goto_1

    :cond_2
    move-object v4, v1

    :goto_1
    sput-object v1, Lcom/canhub/cropper/BitmapUtils;->g:Landroid/util/Pair;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "LOADED_SAMPLE_SIZE"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/canhub/cropper/CropImageView;->h(Landroid/graphics/Bitmap;ILandroid/net/Uri;II)V

    goto :goto_2

    :cond_3
    move-object v3, p0

    :goto_2
    iget-object p0, v3, Lcom/canhub/cropper/CropImageView;->G:Landroid/net/Uri;

    if-nez p0, :cond_7

    invoke-virtual {v3, v6}, Lcom/canhub/cropper/CropImageView;->setImageUriAsync(Landroid/net/Uri;)V

    goto :goto_3

    :cond_4
    move-object v3, p0

    const-string p0, "LOADED_IMAGE_RESOURCE"

    invoke-virtual {v0, p0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_5

    invoke-virtual {v3, p0}, Lcom/canhub/cropper/CropImageView;->setImageResource(I)V

    goto :goto_3

    :cond_5
    const-string p0, "LOADING_IMAGE_URI"

    invoke-virtual {v0, p0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    instance-of v2, p0, Landroid/net/Uri;

    if-nez v2, :cond_6

    move-object p0, v1

    :cond_6
    check-cast p0, Landroid/net/Uri;

    if-eqz p0, :cond_7

    invoke-virtual {v3, p0}, Lcom/canhub/cropper/CropImageView;->setImageUriAsync(Landroid/net/Uri;)V

    :cond_7
    :goto_3
    const-string p0, "DEGREES_ROTATED"

    invoke-virtual {v0, p0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v3, Lcom/canhub/cropper/CropImageView;->M:I

    iput p0, v3, Lcom/canhub/cropper/CropImageView;->l:I

    const-string p0, "INITIAL_CROP_RECT"

    invoke-virtual {v0, p0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    instance-of v2, p0, Landroid/graphics/Rect;

    if-nez v2, :cond_8

    move-object p0, v1

    :cond_8
    check-cast p0, Landroid/graphics/Rect;

    iget-object v2, v3, Lcom/canhub/cropper/CropImageView;->c:Lcom/canhub/cropper/CropOverlayView;

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-gtz v4, :cond_9

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-lez v4, :cond_a

    :cond_9
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, p0}, Lcom/canhub/cropper/CropOverlayView;->setInitialCropWindowRect(Landroid/graphics/Rect;)V

    :cond_a
    const-string p0, "CROP_WINDOW_RECT"

    invoke-virtual {v0, p0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    instance-of v4, p0, Landroid/graphics/RectF;

    if-nez v4, :cond_b

    move-object p0, v1

    :cond_b
    check-cast p0, Landroid/graphics/RectF;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_c

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v4

    cmpl-float v4, v4, v5

    if-lez v4, :cond_d

    :cond_c
    iput-object p0, v3, Lcom/canhub/cropper/CropImageView;->L:Landroid/graphics/RectF;

    :cond_d
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "CROP_SHAPE"

    invoke-virtual {v0, p0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/canhub/cropper/CropImageView$CropShape;->valueOf(Ljava/lang/String;)Lcom/canhub/cropper/CropImageView$CropShape;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/canhub/cropper/CropOverlayView;->setCropShape(Lcom/canhub/cropper/CropImageView$CropShape;)V

    const-string p0, "CROP_AUTO_ZOOM_ENABLED"

    invoke-virtual {v0, p0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    iput-boolean p0, v3, Lcom/canhub/cropper/CropImageView;->z:Z

    const-string p0, "CROP_MAX_ZOOM"

    invoke-virtual {v0, p0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v3, Lcom/canhub/cropper/CropImageView;->A:I

    const-string p0, "CROP_FLIP_HORIZONTALLY"

    invoke-virtual {v0, p0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    iput-boolean p0, v3, Lcom/canhub/cropper/CropImageView;->m:Z

    const-string p0, "CROP_FLIP_VERTICALLY"

    invoke-virtual {v0, p0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    iput-boolean p0, v3, Lcom/canhub/cropper/CropImageView;->n:Z

    const-string p0, "SHOW_CROP_LABEL"

    invoke-virtual {v0, p0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    iput-boolean p0, v3, Lcom/canhub/cropper/CropImageView;->u:Z

    invoke-virtual {v2, p0}, Lcom/canhub/cropper/CropOverlayView;->setCropperTextLabelVisibility(Z)V

    goto :goto_4

    :cond_e
    move-object v3, p0

    :goto_4
    check-cast p1, Landroid/os/Bundle;

    const-string p0, "instanceState"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    if-nez p0, :cond_f

    goto :goto_5

    :cond_f
    move-object v1, p0

    :goto_5
    invoke-super {v3, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_10
    move-object v3, p0

    invoke-super {v3, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->G:Landroid/net/Uri;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->j:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/canhub/cropper/CropImageView;->q:I

    if-ge v0, v1, :cond_0

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-boolean v2, p0, Lcom/canhub/cropper/CropImageView;->s:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/canhub/cropper/CropImageView;->G:Landroid/net/Uri;

    if-nez v2, :cond_1

    iget v2, p0, Lcom/canhub/cropper/CropImageView;->q:I

    if-ge v2, v1, :cond_1

    sget-object v1, Lcom/canhub/cropper/BitmapUtils;->a:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/canhub/cropper/CropImageView;->j:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/canhub/cropper/CropImageView;->Q:Landroid/net/Uri;

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x5f

    invoke-static {v1, v2, v5, v6, v4}, Lcom/canhub/cropper/BitmapUtils;->s(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;ILandroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v3

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/canhub/cropper/CropImageView;->G:Landroid/net/Uri;

    :goto_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/canhub/cropper/CropImageView;->j:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/canhub/cropper/BitmapUtils;->a:Landroid/graphics/Rect;

    new-instance v4, Landroid/util/Pair;

    new-instance v5, Ljava/lang/ref/WeakReference;

    iget-object v6, p0, Lcom/canhub/cropper/CropImageView;->j:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v4, v2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v4, Lcom/canhub/cropper/BitmapUtils;->g:Landroid/util/Pair;

    const-string v4, "LOADED_IMAGE_STATE_BITMAP_KEY"

    invoke-virtual {v0, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/canhub/cropper/CropImageView;->O:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/canhub/cropper/BitmapLoadingWorkerJob;

    :cond_3
    if-eqz v3, :cond_4

    const-string v2, "LOADING_IMAGE_URI"

    iget-object v3, v3, Lcom/canhub/cropper/BitmapLoadingWorkerJob;->c:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_4
    const-string v2, "instanceState"

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "LOADED_IMAGE_URI"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "LOADED_IMAGE_RESOURCE"

    iget v2, p0, Lcom/canhub/cropper/CropImageView;->q:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "LOADED_SAMPLE_SIZE"

    iget v2, p0, Lcom/canhub/cropper/CropImageView;->H:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "DEGREES_ROTATED"

    iget v2, p0, Lcom/canhub/cropper/CropImageView;->l:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/canhub/cropper/CropImageView;->c:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lcom/canhub/cropper/CropOverlayView;->getInitialCropWindowRect()Landroid/graphics/Rect;

    move-result-object v2

    const-string v3, "INITIAL_CROP_RECT"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    sget-object v2, Lcom/canhub/cropper/BitmapUtils;->c:Landroid/graphics/RectF;

    invoke-virtual {v1}, Lcom/canhub/cropper/CropOverlayView;->getCropWindowRect()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v3, p0, Lcom/canhub/cropper/CropImageView;->d:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/canhub/cropper/CropImageView;->e:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    const-string v3, "CROP_WINDOW_RECT"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v1}, Lcom/canhub/cropper/CropOverlayView;->getCropShape()Lcom/canhub/cropper/CropImageView$CropShape;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CROP_SHAPE"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "CROP_AUTO_ZOOM_ENABLED"

    iget-boolean v2, p0, Lcom/canhub/cropper/CropImageView;->z:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "CROP_MAX_ZOOM"

    iget v2, p0, Lcom/canhub/cropper/CropImageView;->A:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "CROP_FLIP_HORIZONTALLY"

    iget-boolean v2, p0, Lcom/canhub/cropper/CropImageView;->m:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "CROP_FLIP_VERTICALLY"

    iget-boolean v2, p0, Lcom/canhub/cropper/CropImageView;->n:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "SHOW_CROP_LABEL"

    iget-boolean p0, p0, Lcom/canhub/cropper/CropImageView;->u:Z

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    if-lez p3, :cond_0

    if-lez p4, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/canhub/cropper/CropImageView;->N:Z

    return-void
.end method

.method public final setAutoZoomEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/canhub/cropper/CropImageView;->z:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/canhub/cropper/CropImageView;->z:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/canhub/cropper/CropImageView;->e(ZZ)V

    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->c:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setCenterMoveEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->c:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v1, v0, Lcom/canhub/cropper/CropOverlayView;->g:Z

    if-eq v1, p1, :cond_0

    iput-boolean p1, v0, Lcom/canhub/cropper/CropOverlayView;->g:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/canhub/cropper/CropImageView;->e(ZZ)V

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setCornerShape(Lcom/canhub/cropper/CropImageView$CropCornerShape;)V
    .locals 0

    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->c:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/canhub/cropper/CropOverlayView;->setCropCornerShape(Lcom/canhub/cropper/CropImageView$CropCornerShape;)V

    return-void
.end method

.method public final setCropLabelText(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/canhub/cropper/CropImageView;->v:Ljava/lang/String;

    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->c:Lcom/canhub/cropper/CropOverlayView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/canhub/cropper/CropOverlayView;->setCropLabelText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final setCropLabelTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/canhub/cropper/CropImageView;->x:I

    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->c:Lcom/canhub/cropper/CropOverlayView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/canhub/cropper/CropOverlayView;->setCropLabelTextColor(I)V

    :cond_0
    return-void
.end method

.method public final setCropLabelTextSize(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->getCropLabelTextSize()F

    move-result v0

    iput v0, p0, Lcom/canhub/cropper/CropImageView;->w:F

    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->c:Lcom/canhub/cropper/CropOverlayView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/canhub/cropper/CropOverlayView;->setCropLabelTextSize(F)V

    :cond_0
    return-void
.end method

.method public final setCropRect(Landroid/graphics/Rect;)V
    .locals 0

    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->c:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/canhub/cropper/CropOverlayView;->setInitialCropWindowRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final setCropShape(Lcom/canhub/cropper/CropImageView$CropShape;)V
    .locals 0

    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->c:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/canhub/cropper/CropOverlayView;->setCropShape(Lcom/canhub/cropper/CropImageView$CropShape;)V

    return-void
.end method

.method public final setCustomOutputUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/canhub/cropper/CropImageView;->Q:Landroid/net/Uri;

    return-void
.end method

.method public final setFixedAspectRatio(Z)V
    .locals 0

    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->c:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/canhub/cropper/CropOverlayView;->setFixedAspectRatio(Z)V

    return-void
.end method

.method public final setFlippedHorizontally(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/canhub/cropper/CropImageView;->m:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/canhub/cropper/CropImageView;->m:Z

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/canhub/cropper/CropImageView;->b(FFZZ)V

    :cond_0
    return-void
.end method

.method public final setFlippedVertically(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/canhub/cropper/CropImageView;->n:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/canhub/cropper/CropImageView;->n:Z

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/canhub/cropper/CropImageView;->b(FFZZ)V

    :cond_0
    return-void
.end method

.method public final setGuidelines(Lcom/canhub/cropper/CropImageView$Guidelines;)V
    .locals 0

    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->c:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/canhub/cropper/CropOverlayView;->setGuidelines(Lcom/canhub/cropper/CropImageView$Guidelines;)V

    return-void
.end method

.method public final setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 8

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->c:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/canhub/cropper/CropOverlayView;->setInitialCropWindowRect(Landroid/graphics/Rect;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/canhub/cropper/CropImageView;->h(Landroid/graphics/Bitmap;ILandroid/net/Uri;II)V

    return-void
.end method

.method public final setImageCropOptions(Lcom/canhub/cropper/CropImageOptions;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/canhub/cropper/CropImageOptions;->j:Lcom/canhub/cropper/CropImageView$ScaleType;

    iget-boolean v1, p1, Lcom/canhub/cropper/CropImageOptions;->o:Z

    iget-boolean v2, p1, Lcom/canhub/cropper/CropImageOptions;->m:Z

    iget-boolean v3, p1, Lcom/canhub/cropper/CropImageOptions;->k:Z

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropImageView;->setScaleType(Lcom/canhub/cropper/CropImageView$ScaleType;)V

    iget-object v0, p1, Lcom/canhub/cropper/CropImageOptions;->Q:Landroid/net/Uri;

    iput-object v0, p0, Lcom/canhub/cropper/CropImageView;->Q:Landroid/net/Uri;

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->c:Lcom/canhub/cropper/CropOverlayView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/canhub/cropper/CropOverlayView;->setInitialAttributeValues(Lcom/canhub/cropper/CropImageOptions;)V

    :cond_0
    iget-boolean v0, p1, Lcom/canhub/cropper/CropImageOptions;->p:Z

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropImageView;->setMultiTouchEnabled(Z)V

    iget-boolean v0, p1, Lcom/canhub/cropper/CropImageOptions;->q:Z

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropImageView;->setCenterMoveEnabled(Z)V

    invoke-virtual {p0, v3}, Lcom/canhub/cropper/CropImageView;->setShowCropOverlay(Z)V

    invoke-virtual {p0, v2}, Lcom/canhub/cropper/CropImageView;->setShowProgressBar(Z)V

    invoke-virtual {p0, v1}, Lcom/canhub/cropper/CropImageView;->setAutoZoomEnabled(Z)V

    iget v0, p1, Lcom/canhub/cropper/CropImageOptions;->s:I

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropImageView;->setMaxZoom(I)V

    iget-boolean v0, p1, Lcom/canhub/cropper/CropImageOptions;->d1:Z

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropImageView;->setFlippedHorizontally(Z)V

    iget-boolean v0, p1, Lcom/canhub/cropper/CropImageOptions;->e1:Z

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropImageView;->setFlippedVertically(Z)V

    iput-boolean v1, p0, Lcom/canhub/cropper/CropImageView;->z:Z

    iput-boolean v3, p0, Lcom/canhub/cropper/CropImageView;->t:Z

    iput-boolean v2, p0, Lcom/canhub/cropper/CropImageView;->y:Z

    iget p1, p1, Lcom/canhub/cropper/CropImageOptions;->n:I

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->f:Landroid/widget/ProgressBar;

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setImageResource(I)V
    .locals 7

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->c:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/canhub/cropper/CropOverlayView;->setInitialCropWindowRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/canhub/cropper/CropImageView;->h(Landroid/graphics/Bitmap;ILandroid/net/Uri;II)V

    :cond_0
    return-void
.end method

.method public final setImageUriAsync(Landroid/net/Uri;)V
    .locals 4

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->O:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/canhub/cropper/BitmapLoadingWorkerJob;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/canhub/cropper/BitmapLoadingWorkerJob;->g:Lkotlinx/coroutines/JobSupport;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->c()V

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->c:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/canhub/cropper/CropOverlayView;->setInitialCropWindowRect(Landroid/graphics/Rect;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    new-instance v2, Lcom/canhub/cropper/BitmapLoadingWorkerJob;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3, p0, p1}, Lcom/canhub/cropper/BitmapLoadingWorkerJob;-><init>(Landroid/content/Context;Lcom/canhub/cropper/CropImageView;Landroid/net/Uri;)V

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/canhub/cropper/CropImageView;->O:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/canhub/cropper/BitmapLoadingWorkerJob;

    if-eqz p1, :cond_1

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    new-instance v2, Lcom/canhub/cropper/BitmapLoadingWorkerJob$start$1;

    invoke-direct {v2, p1, v1}, Lcom/canhub/cropper/BitmapLoadingWorkerJob$start$1;-><init>(Lcom/canhub/cropper/BitmapLoadingWorkerJob;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x2

    invoke-static {p1, v0, v1, v2, v3}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/JobSupport;

    iput-object v0, p1, Lcom/canhub/cropper/BitmapLoadingWorkerJob;->g:Lkotlinx/coroutines/JobSupport;

    :cond_1
    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->j()V

    :cond_2
    return-void
.end method

.method public final setMaxZoom(I)V
    .locals 1

    iget v0, p0, Lcom/canhub/cropper/CropImageView;->A:I

    if-eq v0, p1, :cond_0

    if-lez p1, :cond_0

    iput p1, p0, Lcom/canhub/cropper/CropImageView;->A:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/canhub/cropper/CropImageView;->e(ZZ)V

    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->c:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setMultiTouchEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->c:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v1, v0, Lcom/canhub/cropper/CropOverlayView;->f:Z

    if-eq v1, p1, :cond_1

    iput-boolean p1, v0, Lcom/canhub/cropper/CropOverlayView;->f:Z

    if-eqz p1, :cond_0

    iget-object p1, v0, Lcom/canhub/cropper/CropOverlayView;->e:Landroid/view/ScaleGestureDetector;

    if-nez p1, :cond_0

    new-instance p1, Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/canhub/cropper/CropOverlayView$ScaleListener;

    invoke-direct {v2, v0}, Lcom/canhub/cropper/CropOverlayView$ScaleListener;-><init>(Lcom/canhub/cropper/CropOverlayView;)V

    invoke-direct {p1, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p1, v0, Lcom/canhub/cropper/CropOverlayView;->e:Landroid/view/ScaleGestureDetector;

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/canhub/cropper/CropImageView;->e(ZZ)V

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public final setOnCropImageCompleteListener(Lcom/canhub/cropper/CropImageView$OnCropImageCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/canhub/cropper/CropImageView;->F:Lcom/canhub/cropper/CropImageView$OnCropImageCompleteListener;

    return-void
.end method

.method public final setOnCropWindowChangedListener(Lcom/canhub/cropper/CropImageView$OnSetCropWindowChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/canhub/cropper/CropImageView;->D:Lcom/canhub/cropper/CropImageView$OnSetCropWindowChangeListener;

    return-void
.end method

.method public final setOnSetCropOverlayMovedListener(Lcom/canhub/cropper/CropImageView$OnSetCropOverlayMovedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/canhub/cropper/CropImageView;->C:Lcom/canhub/cropper/CropImageView$OnSetCropOverlayMovedListener;

    return-void
.end method

.method public final setOnSetCropOverlayReleasedListener(Lcom/canhub/cropper/CropImageView$OnSetCropOverlayReleasedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/canhub/cropper/CropImageView;->B:Lcom/canhub/cropper/CropImageView$OnSetCropOverlayReleasedListener;

    return-void
.end method

.method public final setOnSetImageUriCompleteListener(Lcom/canhub/cropper/CropImageView$OnSetImageUriCompleteListener;)V
    .locals 0

    iput-object p1, p0, Lcom/canhub/cropper/CropImageView;->E:Lcom/canhub/cropper/CropImageView$OnSetImageUriCompleteListener;

    return-void
.end method

.method public final setRotatedDegrees(I)V
    .locals 1

    iget v0, p0, Lcom/canhub/cropper/CropImageView;->l:I

    if-eq v0, p1, :cond_0

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/canhub/cropper/CropImageView;->g(I)V

    :cond_0
    return-void
.end method

.method public final setSaveBitmapToInstanceState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/canhub/cropper/CropImageView;->s:Z

    return-void
.end method

.method public final setScaleType(Lcom/canhub/cropper/CropImageView$ScaleType;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/canhub/cropper/CropImageView;->r:Lcom/canhub/cropper/CropImageView$ScaleType;

    if-eq p1, v0, :cond_1

    iput-object p1, p0, Lcom/canhub/cropper/CropImageView;->r:Lcom/canhub/cropper/CropImageView$ScaleType;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/canhub/cropper/CropImageView;->I:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/canhub/cropper/CropImageView;->K:F

    iput p1, p0, Lcom/canhub/cropper/CropImageView;->J:F

    iget-object p1, p0, Lcom/canhub/cropper/CropImageView;->c:Lcom/canhub/cropper/CropOverlayView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/canhub/cropper/CropOverlayView;->g()V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_1
    return-void
.end method

.method public final setShowCropLabel(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/canhub/cropper/CropImageView;->u:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/canhub/cropper/CropImageView;->u:Z

    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->c:Lcom/canhub/cropper/CropOverlayView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/canhub/cropper/CropOverlayView;->setCropperTextLabelVisibility(Z)V

    :cond_0
    return-void
.end method

.method public final setShowCropOverlay(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/canhub/cropper/CropImageView;->t:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/canhub/cropper/CropImageView;->t:Z

    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->i()V

    :cond_0
    return-void
.end method

.method public final setShowProgressBar(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/canhub/cropper/CropImageView;->y:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/canhub/cropper/CropImageView;->y:Z

    invoke-virtual {p0}, Lcom/canhub/cropper/CropImageView;->j()V

    :cond_0
    return-void
.end method

.method public final setSnapRadius(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object p0, p0, Lcom/canhub/cropper/CropImageView;->c:Lcom/canhub/cropper/CropOverlayView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/canhub/cropper/CropOverlayView;->setSnapRadius(F)V

    :cond_0
    return-void
.end method
