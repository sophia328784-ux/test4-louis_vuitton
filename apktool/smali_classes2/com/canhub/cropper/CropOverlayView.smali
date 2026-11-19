.class public final Lcom/canhub/cropper/CropOverlayView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/canhub/cropper/CropOverlayView$Companion;,
        Lcom/canhub/cropper/CropOverlayView$CropWindowChangeListener;,
        Lcom/canhub/cropper/CropOverlayView$ScaleListener;,
        Lcom/canhub/cropper/CropOverlayView$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0000\u0018\u00002\u00020\u0001:\u0003UVWB\u001d\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0017\u0010\u000b\u001a\u00020\n2\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0015\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0015\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0015\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0017\u0010\u001b\u001a\u00020\n2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0019\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0015\u0010\u001f\u001a\u00020\n2\u0006\u0010\u001e\u001a\u00020\u001d\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0015\u0010#\u001a\u00020\n2\u0006\u0010\"\u001a\u00020!\u00a2\u0006\u0004\u0008#\u0010$J\u0015\u0010\'\u001a\u00020\n2\u0006\u0010&\u001a\u00020%\u00a2\u0006\u0004\u0008\'\u0010(J\u0015\u0010*\u001a\u00020\n2\u0006\u0010)\u001a\u00020\u0015\u00a2\u0006\u0004\u0008*\u0010\u0018J\u0015\u0010,\u001a\u00020\n2\u0006\u0010+\u001a\u00020\u001d\u00a2\u0006\u0004\u0008,\u0010 J\u0015\u0010.\u001a\u00020\n2\u0006\u0010-\u001a\u00020\u001d\u00a2\u0006\u0004\u0008.\u0010 J\u0015\u00101\u001a\u00020\n2\u0006\u00100\u001a\u00020/\u00a2\u0006\u0004\u00081\u00102R(\u0010&\u001a\u0004\u0018\u00010%2\u0008\u00103\u001a\u0004\u0018\u00010%8\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u00084\u00105\u001a\u0004\u00086\u00107R(\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0008\u00103\u001a\u0004\u0018\u00010\r8\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u00088\u00109\u001a\u0004\u0008:\u0010;R(\u0010@\u001a\u0004\u0018\u00010\u00112\u0008\u00103\u001a\u0004\u0018\u00010\u00118\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008<\u0010=\u001a\u0004\u0008>\u0010?R$\u0010G\u001a\u00020A2\u0006\u0010B\u001a\u00020A8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008C\u0010D\"\u0004\u0008E\u0010FR$\u0010H\u001a\u00020!2\u0006\u0010H\u001a\u00020!8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008I\u0010J\"\u0004\u0008K\u0010$R$\u0010L\u001a\u00020!2\u0006\u0010L\u001a\u00020!8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008M\u0010J\"\u0004\u0008N\u0010$R(\u0010T\u001a\u0004\u0018\u00010O2\u0008\u0010B\u001a\u0004\u0018\u00010O8F@FX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008P\u0010Q\"\u0004\u0008R\u0010S\u00a8\u0006X"
    }
    d2 = {
        "Lcom/canhub/cropper/CropOverlayView;",
        "Landroid/view/View;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "Lcom/canhub/cropper/CropOverlayView$CropWindowChangeListener;",
        "listener",
        "",
        "setCropWindowChangeListener",
        "(Lcom/canhub/cropper/CropOverlayView$CropWindowChangeListener;)V",
        "Lcom/canhub/cropper/CropImageView$CropShape;",
        "cropShape",
        "setCropShape",
        "(Lcom/canhub/cropper/CropImageView$CropShape;)V",
        "Lcom/canhub/cropper/CropImageView$CropCornerShape;",
        "cropCornerShape",
        "setCropCornerShape",
        "(Lcom/canhub/cropper/CropImageView$CropCornerShape;)V",
        "",
        "isEnabled",
        "setCropperTextLabelVisibility",
        "(Z)V",
        "",
        "textLabel",
        "setCropLabelText",
        "(Ljava/lang/String;)V",
        "",
        "textSize",
        "setCropLabelTextSize",
        "(F)V",
        "",
        "textColor",
        "setCropLabelTextColor",
        "(I)V",
        "Lcom/canhub/cropper/CropImageView$Guidelines;",
        "guidelines",
        "setGuidelines",
        "(Lcom/canhub/cropper/CropImageView$Guidelines;)V",
        "fixAspectRatio",
        "setFixedAspectRatio",
        "snapRadius",
        "setSnapRadius",
        "cornerRadius",
        "setCropCornerRadius",
        "Lcom/canhub/cropper/CropImageOptions;",
        "options",
        "setInitialAttributeValues",
        "(Lcom/canhub/cropper/CropImageOptions;)V",
        "value",
        "F",
        "Lcom/canhub/cropper/CropImageView$Guidelines;",
        "getGuidelines",
        "()Lcom/canhub/cropper/CropImageView$Guidelines;",
        "G",
        "Lcom/canhub/cropper/CropImageView$CropShape;",
        "getCropShape",
        "()Lcom/canhub/cropper/CropImageView$CropShape;",
        "H",
        "Lcom/canhub/cropper/CropImageView$CropCornerShape;",
        "getCornerShape",
        "()Lcom/canhub/cropper/CropImageView$CropCornerShape;",
        "cornerShape",
        "Landroid/graphics/RectF;",
        "rect",
        "getCropWindowRect",
        "()Landroid/graphics/RectF;",
        "setCropWindowRect",
        "(Landroid/graphics/RectF;)V",
        "cropWindowRect",
        "aspectRatioX",
        "getAspectRatioX",
        "()I",
        "setAspectRatioX",
        "aspectRatioY",
        "getAspectRatioY",
        "setAspectRatioY",
        "Landroid/graphics/Rect;",
        "getInitialCropWindowRect",
        "()Landroid/graphics/Rect;",
        "setInitialCropWindowRect",
        "(Landroid/graphics/Rect;)V",
        "initialCropWindowRect",
        "Companion",
        "CropWindowChangeListener",
        "ScaleListener",
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
.field public static final P:Lcom/canhub/cropper/CropOverlayView$Companion;


# instance fields
.field public A:Lcom/canhub/cropper/CropWindowMoveHandler;

.field public B:Z

.field public C:I

.field public D:I

.field public E:F

.field public F:Lcom/canhub/cropper/CropImageView$Guidelines;

.field public G:Lcom/canhub/cropper/CropImageView$CropShape;

.field public H:Lcom/canhub/cropper/CropImageView$CropCornerShape;

.field public I:Z

.field public J:Ljava/lang/String;

.field public K:F

.field public L:I

.field public final M:Landroid/graphics/Rect;

.field public N:Z

.field public final O:F

.field public b:F

.field public c:Ljava/lang/Integer;

.field public d:Lcom/canhub/cropper/CropImageOptions;

.field public e:Landroid/view/ScaleGestureDetector;

.field public f:Z

.field public g:Z

.field public final h:Lcom/canhub/cropper/CropWindowHandler;

.field public i:Lcom/canhub/cropper/CropOverlayView$CropWindowChangeListener;

.field public final j:Landroid/graphics/RectF;

.field public k:Landroid/graphics/Paint;

.field public l:Landroid/graphics/Paint;

.field public m:Landroid/graphics/Paint;

.field public n:Landroid/graphics/Paint;

.field public o:Landroid/graphics/Paint;

.field public p:Ljava/lang/Integer;

.field public final q:Landroid/graphics/Path;

.field public final r:[F

.field public final s:Landroid/graphics/RectF;

.field public t:I

.field public u:I

.field public v:F

.field public w:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/canhub/cropper/CropOverlayView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/canhub/cropper/CropOverlayView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/canhub/cropper/CropOverlayView;->P:Lcom/canhub/cropper/CropOverlayView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 88
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/canhub/cropper/CropOverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/canhub/cropper/CropOverlayView;->g:Z

    new-instance p2, Lcom/canhub/cropper/CropWindowHandler;

    invoke-direct {p2}, Lcom/canhub/cropper/CropWindowHandler;-><init>()V

    iput-object p2, p0, Lcom/canhub/cropper/CropOverlayView;->h:Lcom/canhub/cropper/CropWindowHandler;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/canhub/cropper/CropOverlayView;->j:Landroid/graphics/RectF;

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/canhub/cropper/CropOverlayView;->q:Landroid/graphics/Path;

    const/16 p2, 0x8

    new-array p2, p2, [F

    iput-object p2, p0, Lcom/canhub/cropper/CropOverlayView;->r:[F

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/canhub/cropper/CropOverlayView;->s:Landroid/graphics/RectF;

    iget p2, p0, Lcom/canhub/cropper/CropOverlayView;->C:I

    int-to-float p2, p2

    iget v0, p0, Lcom/canhub/cropper/CropOverlayView;->D:I

    int-to-float v0, v0

    div-float/2addr p2, v0

    iput p2, p0, Lcom/canhub/cropper/CropOverlayView;->E:F

    const-string p2, ""

    iput-object p2, p0, Lcom/canhub/cropper/CropOverlayView;->J:Ljava/lang/String;

    const/high16 p2, 0x41a00000    # 20.0f

    iput p2, p0, Lcom/canhub/cropper/CropOverlayView;->K:F

    const/4 p2, -0x1

    iput p2, p0, Lcom/canhub/cropper/CropOverlayView;->L:I

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/canhub/cropper/CropOverlayView;->M:Landroid/graphics/Rect;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/high16 v0, 0x43480000    # 200.0f

    invoke-static {p1, v0, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/canhub/cropper/CropOverlayView;->O:F

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 87
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/canhub/cropper/CropOverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/RectF;)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-object v2, Lcom/canhub/cropper/BitmapUtils;->a:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/canhub/cropper/CropOverlayView;->r:[F

    invoke-static {v2}, Lcom/canhub/cropper/BitmapUtils;->n([F)F

    move-result v3

    invoke-static {v2}, Lcom/canhub/cropper/BitmapUtils;->p([F)F

    move-result v4

    invoke-static {v2}, Lcom/canhub/cropper/BitmapUtils;->o([F)F

    move-result v5

    invoke-static {v2}, Lcom/canhub/cropper/BitmapUtils;->l([F)F

    move-result v6

    const/4 v7, 0x0

    aget v8, v2, v7

    const/4 v9, 0x6

    aget v10, v2, v9

    cmpg-float v8, v8, v10

    iget-object v0, v0, Lcom/canhub/cropper/CropOverlayView;->s:Landroid/graphics/RectF;

    if-nez v8, :cond_0

    goto :goto_0

    :cond_0
    const/4 v8, 0x1

    aget v10, v2, v8

    const/4 v11, 0x7

    aget v12, v2, v11

    cmpg-float v10, v10, v12

    if-nez v10, :cond_1

    :goto_0
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    return v7

    :cond_1
    aget v7, v2, v7

    aget v10, v2, v8

    const/4 v12, 0x4

    aget v12, v2, v12

    const/4 v13, 0x5

    aget v13, v2, v13

    aget v9, v2, v9

    aget v11, v2, v11

    cmpg-float v14, v11, v10

    const/4 v15, 0x3

    const/16 v16, 0x2

    if-gez v14, :cond_3

    aget v14, v2, v15

    cmpg-float v15, v10, v14

    if-gez v15, :cond_2

    aget v7, v2, v16

    move v2, v14

    move v14, v11

    move v11, v2

    move v2, v9

    move v10, v13

    move v9, v7

    move v7, v12

    goto :goto_1

    :cond_2
    aget v2, v2, v16

    move v9, v7

    move v11, v10

    move v10, v14

    move v7, v2

    move v2, v12

    move v14, v13

    goto :goto_1

    :cond_3
    aget v14, v2, v15

    cmpl-float v15, v10, v14

    if-lez v15, :cond_4

    aget v2, v2, v16

    goto :goto_1

    :cond_4
    move v2, v7

    move v7, v9

    move v14, v10

    move v10, v11

    move v9, v12

    move v11, v13

    :goto_1
    sub-float/2addr v10, v14

    sub-float/2addr v7, v2

    div-float/2addr v10, v7

    const/high16 v7, -0x40800000    # -1.0f

    div-float/2addr v7, v10

    mul-float v12, v10, v2

    sub-float v12, v14, v12

    mul-float/2addr v2, v7

    sub-float/2addr v14, v2

    mul-float v2, v10, v9

    sub-float v2, v11, v2

    mul-float/2addr v9, v7

    sub-float/2addr v11, v9

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    iget v13, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v9, v13

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v13

    iget v15, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v13, v15

    div-float/2addr v9, v13

    neg-float v13, v9

    move/from16 p0, v8

    iget v8, v1, Landroid/graphics/RectF;->top:F

    mul-float/2addr v15, v9

    sub-float v15, v8, v15

    move/from16 v16, v2

    iget v2, v1, Landroid/graphics/RectF;->right:F

    mul-float v17, v13, v2

    sub-float v8, v8, v17

    sub-float v17, v15, v12

    sub-float v18, v10, v9

    div-float v17, v17, v18

    cmpg-float v2, v17, v2

    if-gez v2, :cond_5

    move/from16 v2, v17

    goto :goto_2

    :cond_5
    move v2, v3

    :goto_2
    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    sub-float v3, v15, v14

    sub-float v9, v7, v9

    div-float/2addr v3, v9

    iget v9, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v9, v3, v9

    if-gez v9, :cond_6

    goto :goto_3

    :cond_6
    move v3, v2

    :goto_3
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    sub-float v3, v8, v11

    sub-float v9, v7, v13

    div-float/2addr v3, v9

    move/from16 v17, v3

    iget v3, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v3, v17, v3

    if-gez v3, :cond_7

    move/from16 v3, v17

    goto :goto_4

    :cond_7
    move v3, v2

    :goto_4
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    sub-float v3, v8, v14

    div-float/2addr v3, v9

    iget v9, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v9, v3, v9

    if-lez v9, :cond_8

    goto :goto_5

    :cond_8
    move v3, v5

    :goto_5
    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sub-float v8, v8, v16

    sub-float v5, v10, v13

    div-float/2addr v8, v5

    iget v5, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v5, v8, v5

    if-lez v5, :cond_9

    goto :goto_6

    :cond_9
    move v8, v3

    :goto_6
    invoke-static {v3, v8}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sub-float v15, v15, v16

    div-float v15, v15, v18

    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v15, v1

    if-lez v1, :cond_a

    goto :goto_7

    :cond_a
    move v15, v3

    :goto_7
    invoke-static {v3, v15}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float v3, v10, v2

    add-float/2addr v3, v12

    mul-float v5, v7, v1

    add-float/2addr v5, v14

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    mul-float/2addr v7, v2

    add-float/2addr v7, v11

    mul-float/2addr v10, v1

    add-float v10, v10, v16

    invoke-static {v7, v10}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v2, v0, Landroid/graphics/RectF;->left:F

    iput v3, v0, Landroid/graphics/RectF;->top:F

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iput v4, v0, Landroid/graphics/RectF;->bottom:F

    return p0
.end method

.method public final b(Landroid/graphics/Canvas;Landroid/graphics/RectF;FF)V
    .locals 8

    iget-object v1, p0, Lcom/canhub/cropper/CropOverlayView;->G:Lcom/canhub/cropper/CropImageView$CropShape;

    const/4 v2, -0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/canhub/cropper/CropOverlayView$WhenMappings;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    :goto_0
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v4, :cond_4

    if-eq v1, v3, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    invoke-virtual/range {p0 .. p4}, Lcom/canhub/cropper/CropOverlayView;->d(Landroid/graphics/Canvas;Landroid/graphics/RectF;FF)V

    return-void

    :cond_1
    const-string v0, "Unrecognized crop shape"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_2
    iget v1, p2, Landroid/graphics/RectF;->left:F

    sub-float v2, v1, p3

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v3, p0, Lcom/canhub/cropper/CropOverlayView;->w:F

    sub-float v3, v1, v3

    iget v1, p2, Landroid/graphics/RectF;->left:F

    sub-float v4, v1, p3

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget v5, p0, Lcom/canhub/cropper/CropOverlayView;->w:F

    add-float/2addr v5, v1

    iget-object v6, p0, Lcom/canhub/cropper/CropOverlayView;->l:Landroid/graphics/Paint;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v1, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, p3

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget v3, p0, Lcom/canhub/cropper/CropOverlayView;->w:F

    sub-float/2addr v2, v3

    iget v3, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, p3

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    iget v5, p0, Lcom/canhub/cropper/CropOverlayView;->w:F

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/canhub/cropper/CropOverlayView;->l:Landroid/graphics/Paint;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void

    :cond_3
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget v2, p0, Lcom/canhub/cropper/CropOverlayView;->w:F

    sub-float v2, v1, v2

    iget v1, p2, Landroid/graphics/RectF;->top:F

    sub-float v3, v1, p3

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget v4, p0, Lcom/canhub/cropper/CropOverlayView;->w:F

    add-float/2addr v4, v1

    iget v1, p2, Landroid/graphics/RectF;->top:F

    sub-float v5, v1, p3

    iget-object v6, p0, Lcom/canhub/cropper/CropOverlayView;->l:Landroid/graphics/Paint;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget v2, p0, Lcom/canhub/cropper/CropOverlayView;->w:F

    sub-float/2addr v1, v2

    iget v2, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, p3

    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget v4, p0, Lcom/canhub/cropper/CropOverlayView;->w:F

    add-float/2addr v3, v4

    iget v4, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, p3

    iget-object v5, p0, Lcom/canhub/cropper/CropOverlayView;->l:Landroid/graphics/Paint;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void

    :cond_4
    iget v5, p0, Lcom/canhub/cropper/CropOverlayView;->b:F

    iget-object v6, p0, Lcom/canhub/cropper/CropOverlayView;->H:Lcom/canhub/cropper/CropImageView$CropCornerShape;

    if-nez v6, :cond_5

    move v6, v2

    goto :goto_1

    :cond_5
    sget-object v7, Lcom/canhub/cropper/CropOverlayView$WhenMappings;->b:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v7, v6

    :goto_1
    if-eq v6, v2, :cond_8

    if-eq v6, v4, :cond_7

    if-ne v6, v3, :cond_6

    invoke-virtual/range {p0 .. p4}, Lcom/canhub/cropper/CropOverlayView;->d(Landroid/graphics/Canvas;Landroid/graphics/RectF;FF)V

    return-void

    :cond_6
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_7
    iget v2, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, p3

    iget v3, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, p3

    iget-object v4, p0, Lcom/canhub/cropper/CropOverlayView;->l:Landroid/graphics/Paint;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v2, v3, v5, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v2, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, p3

    iget v3, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, p3

    iget-object v4, p0, Lcom/canhub/cropper/CropOverlayView;->l:Landroid/graphics/Paint;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v2, v3, v5, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v2, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, p3

    iget v3, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, p3

    iget-object v4, p0, Lcom/canhub/cropper/CropOverlayView;->l:Landroid/graphics/Paint;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v2, v3, v5, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v2, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, p3

    iget v3, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, p3

    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->l:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v2, v3, v5, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_8
    return-void
.end method

.method public final c(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/canhub/cropper/CropOverlayView;->m:Landroid/graphics/Paint;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/canhub/cropper/CropOverlayView;->k:Landroid/graphics/Paint;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, v0, Lcom/canhub/cropper/CropOverlayView;->h:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v2}, Lcom/canhub/cropper/CropWindowHandler;->g()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v3, v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, v4

    iget-object v4, v0, Lcom/canhub/cropper/CropOverlayView;->G:Lcom/canhub/cropper/CropImageView$CropShape;

    if-nez v4, :cond_1

    const/4 v4, -0x1

    goto :goto_1

    :cond_1
    sget-object v6, Lcom/canhub/cropper/CropOverlayView$WhenMappings;->a:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v6, v4

    :goto_1
    const/4 v6, 0x1

    if-eq v4, v6, :cond_3

    const/4 v6, 0x2

    if-eq v4, v6, :cond_3

    const/4 v6, 0x3

    if-eq v4, v6, :cond_3

    const/4 v6, 0x4

    if-ne v4, v6, :cond_2

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    sub-float/2addr v4, v1

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v7

    div-float/2addr v7, v6

    sub-float/2addr v7, v1

    iget v1, v2, Landroid/graphics/RectF;->left:F

    add-float v9, v1, v3

    iget v1, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v3

    float-to-double v10, v7

    sub-float v3, v4, v3

    div-float/2addr v3, v4

    float-to-double v12, v3

    invoke-static {v12, v13}, Ljava/lang/Math;->acos(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v12, v10

    double-to-float v3, v12

    iget v6, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v7

    sub-float v10, v6, v3

    iget v6, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v6, v7

    add-float v12, v6, v3

    iget-object v13, v0, Lcom/canhub/cropper/CropOverlayView;->m:Landroid/graphics/Paint;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v11, v9

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v6, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v7

    sub-float v12, v6, v3

    iget v6, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v6, v7

    add-float v14, v6, v3

    iget-object v15, v0, Lcom/canhub/cropper/CropOverlayView;->m:Landroid/graphics/Paint;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v13, v1

    move-object/from16 v10, p1

    move v11, v1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v1, v2, Landroid/graphics/RectF;->top:F

    add-float v16, v1, v5

    iget v1, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v5

    float-to-double v8, v4

    sub-float v3, v7, v5

    div-float/2addr v3, v7

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->asin(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v5, v8

    double-to-float v3, v5

    iget v5, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v4

    sub-float v15, v5, v3

    iget v5, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v4

    add-float v17, v5, v3

    iget-object v5, v0, Lcom/canhub/cropper/CropOverlayView;->m:Landroid/graphics/Paint;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v18, v16

    move-object/from16 v14, p1

    move-object/from16 v19, v5

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v5, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v5, v4

    sub-float v15, v5, v3

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v4

    add-float v17, v2, v3

    iget-object v0, v0, Lcom/canhub/cropper/CropOverlayView;->m:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v18, v1

    move-object/from16 v19, v0

    move/from16 v16, v1

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void

    :cond_2
    const-string v0, "Unrecognized crop shape"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_3
    iget v1, v2, Landroid/graphics/RectF;->left:F

    add-float v15, v1, v3

    iget v1, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v3

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v6, v0, Lcom/canhub/cropper/CropOverlayView;->m:Landroid/graphics/Paint;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v17, v15

    move-object/from16 v14, p1

    move/from16 v16, v3

    move/from16 v18, v4

    move-object/from16 v19, v6

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v6, v0, Lcom/canhub/cropper/CropOverlayView;->m:Landroid/graphics/Paint;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v17, v1

    move v15, v1

    move/from16 v16, v3

    move/from16 v18, v4

    move-object/from16 v19, v6

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v1, v2, Landroid/graphics/RectF;->top:F

    add-float v16, v1, v5

    iget v1, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v5

    iget v15, v2, Landroid/graphics/RectF;->left:F

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, v0, Lcom/canhub/cropper/CropOverlayView;->m:Landroid/graphics/Paint;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v18, v16

    move/from16 v17, v3

    move-object/from16 v19, v4

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v15, v2, Landroid/graphics/RectF;->left:F

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v0, v0, Lcom/canhub/cropper/CropOverlayView;->m:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v18, v1

    move-object/from16 v19, v0

    move/from16 v16, v1

    move/from16 v17, v2

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_4
    return-void
.end method

.method public final d(Landroid/graphics/Canvas;Landroid/graphics/RectF;FF)V
    .locals 14

    move-object/from16 v0, p2

    iget v1, v0, Landroid/graphics/RectF;->left:F

    sub-float v3, v1, p3

    iget v1, v0, Landroid/graphics/RectF;->top:F

    sub-float v4, v1, p4

    iget v2, p0, Lcom/canhub/cropper/CropOverlayView;->w:F

    add-float v6, v1, v2

    iget-object v7, p0, Lcom/canhub/cropper/CropOverlayView;->l:Landroid/graphics/Paint;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v5, v3

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v1, v0, Landroid/graphics/RectF;->left:F

    sub-float v9, v1, p4

    iget v2, v0, Landroid/graphics/RectF;->top:F

    sub-float v10, v2, p3

    iget v2, p0, Lcom/canhub/cropper/CropOverlayView;->w:F

    add-float v11, v1, v2

    iget-object v13, p0, Lcom/canhub/cropper/CropOverlayView;->l:Landroid/graphics/Paint;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v12, v10

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float v9, v1, p3

    iget v1, v0, Landroid/graphics/RectF;->top:F

    sub-float v10, v1, p4

    iget v2, p0, Lcom/canhub/cropper/CropOverlayView;->w:F

    add-float v12, v1, v2

    iget-object v13, p0, Lcom/canhub/cropper/CropOverlayView;->l:Landroid/graphics/Paint;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v11, v9

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float v9, v1, p4

    iget v2, v0, Landroid/graphics/RectF;->top:F

    sub-float v10, v2, p3

    iget v2, p0, Lcom/canhub/cropper/CropOverlayView;->w:F

    sub-float v11, v1, v2

    iget-object v13, p0, Lcom/canhub/cropper/CropOverlayView;->l:Landroid/graphics/Paint;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v12, v10

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v1, v0, Landroid/graphics/RectF;->left:F

    sub-float v9, v1, p3

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    add-float v10, v1, p4

    iget v2, p0, Lcom/canhub/cropper/CropOverlayView;->w:F

    sub-float v12, v1, v2

    iget-object v13, p0, Lcom/canhub/cropper/CropOverlayView;->l:Landroid/graphics/Paint;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v11, v9

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v1, v0, Landroid/graphics/RectF;->left:F

    sub-float v9, v1, p4

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    add-float v10, v2, p3

    iget v2, p0, Lcom/canhub/cropper/CropOverlayView;->w:F

    add-float v11, v1, v2

    iget-object v13, p0, Lcom/canhub/cropper/CropOverlayView;->l:Landroid/graphics/Paint;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v12, v10

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float v9, v1, p3

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    add-float v10, v1, p4

    iget v2, p0, Lcom/canhub/cropper/CropOverlayView;->w:F

    sub-float v12, v1, v2

    iget-object v13, p0, Lcom/canhub/cropper/CropOverlayView;->l:Landroid/graphics/Paint;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v11, v9

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float v9, v1, p4

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float v10, v0, p3

    iget v0, p0, Lcom/canhub/cropper/CropOverlayView;->w:F

    sub-float v11, v1, v0

    iget-object v13, p0, Lcom/canhub/cropper/CropOverlayView;->l:Landroid/graphics/Paint;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v12, v10

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final e(Landroid/graphics/RectF;)V
    .locals 6

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/canhub/cropper/CropOverlayView;->h:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v1}, Lcom/canhub/cropper/CropWindowHandler;->e()F

    move-result v2

    cmpg-float v0, v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    if-gez v0, :cond_0

    invoke-virtual {v1}, Lcom/canhub/cropper/CropWindowHandler;->e()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float/2addr v0, v3

    div-float/2addr v0, v2

    iget v3, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v0

    iput v3, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v0

    iput v3, p1, Landroid/graphics/RectF;->right:F

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {v1}, Lcom/canhub/cropper/CropWindowHandler;->d()F

    move-result v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    invoke-virtual {v1}, Lcom/canhub/cropper/CropWindowHandler;->d()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float/2addr v0, v3

    div-float/2addr v0, v2

    iget v3, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v0

    iput v3, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, v0

    iput v3, p1, Landroid/graphics/RectF;->bottom:F

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v1}, Lcom/canhub/cropper/CropWindowHandler;->c()F

    move-result v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v1}, Lcom/canhub/cropper/CropWindowHandler;->c()F

    move-result v3

    sub-float/2addr v0, v3

    div-float/2addr v0, v2

    iget v3, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v0

    iput v3, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v0

    iput v3, p1, Landroid/graphics/RectF;->right:F

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {v1}, Lcom/canhub/cropper/CropWindowHandler;->b()F

    move-result v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {v1}, Lcom/canhub/cropper/CropWindowHandler;->b()F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iget v1, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    :cond_3
    invoke-virtual {p0, p1}, Lcom/canhub/cropper/CropOverlayView;->a(Landroid/graphics/RectF;)Z

    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->s:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_7

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpl-float v1, v1, v3

    if-lez v1, :cond_7

    iget v1, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v4, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v5, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v5, v5, v1

    if-gez v5, :cond_4

    iput v1, p1, Landroid/graphics/RectF;->left:F

    :cond_4
    iget v1, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_5

    iput v3, p1, Landroid/graphics/RectF;->top:F

    :cond_5
    iget v1, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_6

    iput v4, p1, Landroid/graphics/RectF;->right:F

    :cond_6
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_7

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    :cond_7
    iget-boolean v0, p0, Lcom/canhub/cropper/CropOverlayView;->B:Z

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v3, p0, Lcom/canhub/cropper/CropOverlayView;->E:F

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v3, 0x3fb999999999999aL    # 0.1

    cmpl-double v0, v0, v3

    if-lez v0, :cond_9

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v3, p0, Lcom/canhub/cropper/CropOverlayView;->E:F

    mul-float/2addr v1, v3

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget p0, p0, Lcom/canhub/cropper/CropOverlayView;->E:F

    mul-float/2addr v0, p0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p0

    sub-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    div-float/2addr p0, v2

    iget v0, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, p0

    iput v0, p1, Landroid/graphics/RectF;->left:F

    iget v0, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p0

    iput v0, p1, Landroid/graphics/RectF;->right:F

    return-void

    :cond_8
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget p0, p0, Lcom/canhub/cropper/CropOverlayView;->E:F

    div-float/2addr v0, p0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p0

    sub-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    div-float/2addr p0, v2

    iget v0, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, p0

    iput v0, p1, Landroid/graphics/RectF;->top:F

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, p0

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    :cond_9
    return-void
.end method

.method public final f()V
    .locals 12

    sget-object v0, Lcom/canhub/cropper/BitmapUtils;->a:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->r:[F

    invoke-static {v0}, Lcom/canhub/cropper/BitmapUtils;->n([F)F

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0}, Lcom/canhub/cropper/BitmapUtils;->p([F)F

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v0}, Lcom/canhub/cropper/BitmapUtils;->o([F)F

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v0}, Lcom/canhub/cropper/BitmapUtils;->l([F)F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    cmpg-float v4, v3, v1

    if-lez v4, :cond_4

    cmpg-float v4, v0, v2

    if-gtz v4, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/canhub/cropper/CropOverlayView;->N:Z

    iget v5, p0, Lcom/canhub/cropper/CropOverlayView;->x:F

    sub-float v6, v3, v1

    mul-float v7, v5, v6

    sub-float v8, v0, v2

    mul-float/2addr v5, v8

    iget-object v9, p0, Lcom/canhub/cropper/CropOverlayView;->M:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v10

    iget-object v11, p0, Lcom/canhub/cropper/CropOverlayView;->h:Lcom/canhub/cropper/CropWindowHandler;

    if-lez v10, :cond_1

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-lez v10, :cond_1

    iget v5, v9, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v6, v11, Lcom/canhub/cropper/CropWindowHandler;->k:F

    div-float/2addr v5, v6

    add-float/2addr v5, v1

    iput v5, v4, Landroid/graphics/RectF;->left:F

    iget v6, v9, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    iget v7, v11, Lcom/canhub/cropper/CropWindowHandler;->l:F

    div-float/2addr v6, v7

    add-float/2addr v6, v2

    iput v6, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    iget v7, v11, Lcom/canhub/cropper/CropWindowHandler;->k:F

    div-float/2addr v6, v7

    add-float/2addr v6, v5

    iput v6, v4, Landroid/graphics/RectF;->right:F

    iget v5, v4, Landroid/graphics/RectF;->top:F

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    iget v7, v11, Lcom/canhub/cropper/CropWindowHandler;->l:F

    div-float/2addr v6, v7

    add-float/2addr v6, v5

    iput v6, v4, Landroid/graphics/RectF;->bottom:F

    iget v5, v4, Landroid/graphics/RectF;->left:F

    invoke-static {v1, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v4, Landroid/graphics/RectF;->left:F

    iget v1, v4, Landroid/graphics/RectF;->top:F

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v4, Landroid/graphics/RectF;->top:F

    iget v1, v4, Landroid/graphics/RectF;->right:F

    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v4, Landroid/graphics/RectF;->right:F

    iget v1, v4, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, v4, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :cond_1
    iget-boolean v9, p0, Lcom/canhub/cropper/CropOverlayView;->B:Z

    if-eqz v9, :cond_3

    cmpl-float v9, v3, v1

    if-lez v9, :cond_3

    cmpl-float v9, v0, v2

    if-lez v9, :cond_3

    div-float/2addr v6, v8

    iget v8, p0, Lcom/canhub/cropper/CropOverlayView;->E:F

    cmpl-float v6, v6, v8

    const/high16 v8, 0x40000000    # 2.0f

    if-lez v6, :cond_2

    add-float/2addr v2, v5

    iput v2, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v5

    iput v0, v4, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v8

    iget v1, p0, Lcom/canhub/cropper/CropOverlayView;->C:I

    int-to-float v1, v1

    iget v2, p0, Lcom/canhub/cropper/CropOverlayView;->D:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/canhub/cropper/CropOverlayView;->E:F

    invoke-virtual {v11}, Lcom/canhub/cropper/CropWindowHandler;->e()F

    move-result v1

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v3, p0, Lcom/canhub/cropper/CropOverlayView;->E:F

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    div-float/2addr v1, v8

    sub-float v2, v0, v1

    iput v2, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v1

    iput v0, v4, Landroid/graphics/RectF;->right:F

    goto :goto_0

    :cond_2
    add-float/2addr v1, v7

    iput v1, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v7

    iput v3, v4, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v8

    invoke-virtual {v11}, Lcom/canhub/cropper/CropWindowHandler;->d()F

    move-result v1

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v3, p0, Lcom/canhub/cropper/CropOverlayView;->E:F

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    div-float/2addr v1, v8

    sub-float v2, v0, v1

    iput v2, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v1

    iput v0, v4, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :cond_3
    add-float/2addr v1, v7

    iput v1, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v5

    iput v2, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v7

    iput v3, v4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v5

    iput v0, v4, Landroid/graphics/RectF;->bottom:F

    :goto_0
    invoke-virtual {p0, v4}, Lcom/canhub/cropper/CropOverlayView;->e(Landroid/graphics/RectF;)V

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v11, Lcom/canhub/cropper/CropWindowHandler;->a:Landroid/graphics/RectF;

    invoke-virtual {p0, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final g()V
    .locals 1

    iget-boolean v0, p0, Lcom/canhub/cropper/CropOverlayView;->N:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/canhub/cropper/BitmapUtils;->b:Landroid/graphics/RectF;

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropOverlayView;->setCropWindowRect(Landroid/graphics/RectF;)V

    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->f()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final getAspectRatioX()I
    .locals 0

    iget p0, p0, Lcom/canhub/cropper/CropOverlayView;->C:I

    return p0
.end method

.method public final getAspectRatioY()I
    .locals 0

    iget p0, p0, Lcom/canhub/cropper/CropOverlayView;->D:I

    return p0
.end method

.method public final getCornerShape()Lcom/canhub/cropper/CropImageView$CropCornerShape;
    .locals 0

    iget-object p0, p0, Lcom/canhub/cropper/CropOverlayView;->H:Lcom/canhub/cropper/CropImageView$CropCornerShape;

    return-object p0
.end method

.method public final getCropShape()Lcom/canhub/cropper/CropImageView$CropShape;
    .locals 0

    iget-object p0, p0, Lcom/canhub/cropper/CropOverlayView;->G:Lcom/canhub/cropper/CropImageView$CropShape;

    return-object p0
.end method

.method public final getCropWindowRect()Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/canhub/cropper/CropOverlayView;->h:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {p0}, Lcom/canhub/cropper/CropWindowHandler;->g()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method public final getGuidelines()Lcom/canhub/cropper/CropImageView$Guidelines;
    .locals 0

    iget-object p0, p0, Lcom/canhub/cropper/CropOverlayView;->F:Lcom/canhub/cropper/CropImageView$Guidelines;

    return-object p0
.end method

.method public final getInitialCropWindowRect()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/canhub/cropper/CropOverlayView;->M:Landroid/graphics/Rect;

    return-object p0
.end method

.method public final h(II[F)V
    .locals 4

    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->r:[F

    if-eqz p3, :cond_1

    invoke-static {v0, p3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const/4 v1, 0x0

    if-nez p3, :cond_2

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    goto :goto_1

    :cond_2
    array-length v2, p3

    const/4 v3, 0x0

    invoke-static {p3, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    iput p1, p0, Lcom/canhub/cropper/CropOverlayView;->t:I

    iput p2, p0, Lcom/canhub/cropper/CropOverlayView;->u:I

    iget-object p1, p0, Lcom/canhub/cropper/CropOverlayView;->h:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {p1}, Lcom/canhub/cropper/CropWindowHandler;->g()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p2

    cmpg-float p2, p2, v1

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    cmpg-float p1, p1, v1

    if-nez p1, :cond_4

    :goto_2
    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->f()V

    :cond_4
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v7, v0, Lcom/canhub/cropper/CropOverlayView;->h:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {v7}, Lcom/canhub/cropper/CropWindowHandler;->g()Landroid/graphics/RectF;

    move-result-object v8

    sget-object v2, Lcom/canhub/cropper/BitmapUtils;->a:Landroid/graphics/Rect;

    iget-object v2, v0, Lcom/canhub/cropper/CropOverlayView;->r:[F

    invoke-static {v2}, Lcom/canhub/cropper/BitmapUtils;->n([F)F

    move-result v3

    const/4 v9, 0x0

    invoke-static {v3, v9}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v2}, Lcom/canhub/cropper/BitmapUtils;->p([F)F

    move-result v4

    invoke-static {v4, v9}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v2}, Lcom/canhub/cropper/BitmapUtils;->o([F)F

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v2}, Lcom/canhub/cropper/BitmapUtils;->l([F)F

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    invoke-static {v6, v10}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iget-object v10, v0, Lcom/canhub/cropper/CropOverlayView;->G:Lcom/canhub/cropper/CropImageView$CropShape;

    if-nez v10, :cond_0

    const/4 v10, -0x1

    goto :goto_0

    :cond_0
    sget-object v12, Lcom/canhub/cropper/CropOverlayView$WhenMappings;->a:[I

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v10, v12, v10

    :goto_0
    const-string v13, "Unrecognized crop shape"

    const/4 v14, 0x4

    const/4 v15, 0x3

    const/4 v9, 0x2

    const/4 v11, 0x1

    const/16 v17, 0x0

    iget-object v12, v0, Lcom/canhub/cropper/CropOverlayView;->q:Landroid/graphics/Path;

    if-eq v10, v11, :cond_2

    if-eq v10, v9, :cond_2

    if-eq v10, v15, :cond_2

    if-ne v10, v14, :cond_1

    invoke-virtual {v12}, Landroid/graphics/Path;->reset()V

    iget v2, v8, Landroid/graphics/RectF;->left:F

    iget v10, v8, Landroid/graphics/RectF;->top:F

    move/from16 v18, v14

    iget v14, v8, Landroid/graphics/RectF;->right:F

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    move/from16 v19, v15

    iget-object v15, v0, Lcom/canhub/cropper/CropOverlayView;->j:Landroid/graphics/RectF;

    invoke-virtual {v15, v2, v10, v14, v8}, Landroid/graphics/RectF;->set(FFFF)V

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v12, v15, v2}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v1, v12}, Landroid/graphics/Canvas;->clipOutPath(Landroid/graphics/Path;)Z

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    iget-object v6, v0, Lcom/canhub/cropper/CropOverlayView;->n:Landroid/graphics/Paint;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    move-object/from16 v1, p1

    goto/16 :goto_2

    :cond_1
    invoke-static {v13}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_2
    move-object v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v10, v6

    move/from16 v18, v14

    move/from16 v19, v15

    aget v5, v1, v17

    const/4 v6, 0x6

    aget v14, v1, v6

    cmpg-float v5, v5, v14

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    aget v5, v1, v11

    const/4 v14, 0x7

    aget v15, v1, v14

    cmpg-float v5, v5, v15

    if-nez v5, :cond_4

    :goto_1
    iget v5, v8, Landroid/graphics/RectF;->top:F

    iget-object v6, v0, Lcom/canhub/cropper/CropOverlayView;->n:Landroid/graphics/Paint;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v3, v8, Landroid/graphics/RectF;->bottom:F

    iget-object v6, v0, Lcom/canhub/cropper/CropOverlayView;->n:Landroid/graphics/Paint;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v5, v10

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move v10, v4

    iget v3, v8, Landroid/graphics/RectF;->top:F

    iget v4, v8, Landroid/graphics/RectF;->left:F

    iget v5, v8, Landroid/graphics/RectF;->bottom:F

    iget-object v6, v0, Lcom/canhub/cropper/CropOverlayView;->n:Landroid/graphics/Paint;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v2, v8, Landroid/graphics/RectF;->right:F

    iget v3, v8, Landroid/graphics/RectF;->top:F

    iget v5, v8, Landroid/graphics/RectF;->bottom:F

    iget-object v6, v0, Lcom/canhub/cropper/CropOverlayView;->n:Landroid/graphics/Paint;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v4, v10

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_4
    move v5, v10

    move v10, v4

    move v4, v3

    move v3, v2

    move-object/from16 v2, p1

    invoke-virtual {v12}, Landroid/graphics/Path;->reset()V

    aget v8, v1, v17

    aget v15, v1, v11

    invoke-virtual {v12, v8, v15}, Landroid/graphics/Path;->moveTo(FF)V

    aget v8, v1, v9

    aget v15, v1, v19

    invoke-virtual {v12, v8, v15}, Landroid/graphics/Path;->lineTo(FF)V

    aget v8, v1, v18

    const/4 v15, 0x5

    aget v15, v1, v15

    invoke-virtual {v12, v8, v15}, Landroid/graphics/Path;->lineTo(FF)V

    aget v6, v1, v6

    aget v1, v1, v14

    invoke-virtual {v12, v6, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v12}, Landroid/graphics/Path;->close()V

    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v2, v12}, Landroid/graphics/Canvas;->clipOutPath(Landroid/graphics/Path;)Z

    iget-object v6, v0, Lcom/canhub/cropper/CropOverlayView;->n:Landroid/graphics/Paint;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, v2

    move v2, v3

    move v3, v4

    move v4, v10

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    :goto_2
    iget-object v2, v7, Lcom/canhub/cropper/CropWindowHandler;->a:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_6

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpg-float v2, v2, v4

    if-ltz v2, :cond_6

    iget-object v2, v0, Lcom/canhub/cropper/CropOverlayView;->F:Lcom/canhub/cropper/CropImageView$Guidelines;

    sget-object v3, Lcom/canhub/cropper/CropImageView$Guidelines;->ON:Lcom/canhub/cropper/CropImageView$Guidelines;

    if-ne v2, v3, :cond_5

    invoke-virtual/range {p0 .. p1}, Lcom/canhub/cropper/CropOverlayView;->c(Landroid/graphics/Canvas;)V

    goto :goto_3

    :cond_5
    sget-object v3, Lcom/canhub/cropper/CropImageView$Guidelines;->ON_TOUCH:Lcom/canhub/cropper/CropImageView$Guidelines;

    if-ne v2, v3, :cond_6

    iget-object v2, v0, Lcom/canhub/cropper/CropOverlayView;->A:Lcom/canhub/cropper/CropWindowMoveHandler;

    if-eqz v2, :cond_6

    invoke-virtual/range {p0 .. p1}, Lcom/canhub/cropper/CropOverlayView;->c(Landroid/graphics/Canvas;)V

    :cond_6
    :goto_3
    iget-object v2, v0, Lcom/canhub/cropper/CropOverlayView;->d:Lcom/canhub/cropper/CropImageOptions;

    if-eqz v2, :cond_7

    iget v3, v2, Lcom/canhub/cropper/CropImageOptions;->z:F

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    :goto_4
    if-eqz v2, :cond_8

    iget v2, v2, Lcom/canhub/cropper/CropImageOptions;->C:I

    goto :goto_5

    :cond_8
    const/4 v2, -0x1

    :goto_5
    sget-object v4, Lcom/canhub/cropper/CropOverlayView;->P:Lcom/canhub/cropper/CropOverlayView$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v2}, Lcom/canhub/cropper/CropOverlayView$Companion;->a(FI)Landroid/graphics/Paint;

    move-result-object v2

    iput-object v2, v0, Lcom/canhub/cropper/CropOverlayView;->l:Landroid/graphics/Paint;

    iget-boolean v2, v0, Lcom/canhub/cropper/CropOverlayView;->I:Z

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v2, :cond_a

    invoke-virtual {v7}, Lcom/canhub/cropper/CropWindowHandler;->g()Landroid/graphics/RectF;

    move-result-object v2

    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v5

    div-float/2addr v4, v3

    iget v2, v2, Landroid/graphics/RectF;->top:F

    const/high16 v5, 0x42480000    # 50.0f

    sub-float/2addr v2, v5

    iget-object v5, v0, Lcom/canhub/cropper/CropOverlayView;->o:Landroid/graphics/Paint;

    if-eqz v5, :cond_9

    iget v6, v0, Lcom/canhub/cropper/CropOverlayView;->K:F

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v6, v0, Lcom/canhub/cropper/CropOverlayView;->L:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    :cond_9
    iget-object v5, v0, Lcom/canhub/cropper/CropOverlayView;->J:Ljava/lang/String;

    iget-object v6, v0, Lcom/canhub/cropper/CropOverlayView;->o:Landroid/graphics/Paint;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v5, v4, v2, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    :cond_a
    iget-object v2, v0, Lcom/canhub/cropper/CropOverlayView;->k:Landroid/graphics/Paint;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    invoke-virtual {v7}, Lcom/canhub/cropper/CropWindowHandler;->g()Landroid/graphics/RectF;

    move-result-object v4

    div-float/2addr v2, v3

    invoke-virtual {v4, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v2, v0, Lcom/canhub/cropper/CropOverlayView;->G:Lcom/canhub/cropper/CropImageView$CropShape;

    if-nez v2, :cond_b

    const/4 v2, -0x1

    goto :goto_6

    :cond_b
    sget-object v5, Lcom/canhub/cropper/CropOverlayView$WhenMappings;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v5, v2

    :goto_6
    if-eq v2, v11, :cond_d

    if-eq v2, v9, :cond_d

    move/from16 v5, v19

    if-eq v2, v5, :cond_d

    move/from16 v5, v18

    if-ne v2, v5, :cond_c

    iget-object v2, v0, Lcom/canhub/cropper/CropOverlayView;->k:Landroid/graphics/Paint;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v4, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_7

    :cond_c
    invoke-static {v13}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_d
    iget-object v2, v0, Lcom/canhub/cropper/CropOverlayView;->k:Landroid/graphics/Paint;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v4, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_e
    :goto_7
    iget-object v2, v0, Lcom/canhub/cropper/CropOverlayView;->l:Landroid/graphics/Paint;

    if-eqz v2, :cond_14

    iget-object v2, v0, Lcom/canhub/cropper/CropOverlayView;->k:Landroid/graphics/Paint;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    move/from16 v16, v2

    goto :goto_8

    :cond_f
    const/16 v16, 0x0

    :goto_8
    iget-object v2, v0, Lcom/canhub/cropper/CropOverlayView;->l:Landroid/graphics/Paint;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    sub-float v4, v2, v16

    div-float/2addr v4, v3

    div-float/2addr v2, v3

    add-float v5, v2, v4

    iget-object v6, v0, Lcom/canhub/cropper/CropOverlayView;->G:Lcom/canhub/cropper/CropImageView$CropShape;

    if-nez v6, :cond_10

    const/4 v6, -0x1

    goto :goto_9

    :cond_10
    sget-object v8, Lcom/canhub/cropper/CropOverlayView$WhenMappings;->a:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v8, v6

    :goto_9
    if-eq v6, v11, :cond_12

    if-eq v6, v9, :cond_12

    const/4 v8, 0x3

    if-eq v6, v8, :cond_12

    const/4 v8, 0x4

    if-ne v6, v8, :cond_11

    goto :goto_a

    :cond_11
    invoke-static {v13}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_12
    iget v6, v0, Lcom/canhub/cropper/CropOverlayView;->v:F

    add-float/2addr v2, v6

    :goto_a
    invoke-virtual {v7}, Lcom/canhub/cropper/CropWindowHandler;->g()Landroid/graphics/RectF;

    move-result-object v6

    invoke-virtual {v6, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    invoke-virtual {v0, v1, v6, v4, v5}, Lcom/canhub/cropper/CropOverlayView;->b(Landroid/graphics/Canvas;Landroid/graphics/RectF;FF)V

    iget-object v2, v0, Lcom/canhub/cropper/CropOverlayView;->H:Lcom/canhub/cropper/CropImageView$CropCornerShape;

    sget-object v8, Lcom/canhub/cropper/CropImageView$CropCornerShape;->OVAL:Lcom/canhub/cropper/CropImageView$CropCornerShape;

    if-ne v2, v8, :cond_14

    iget-object v2, v0, Lcom/canhub/cropper/CropOverlayView;->c:Ljava/lang/Integer;

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v8, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto :goto_b

    :cond_13
    const/4 v8, 0x0

    :goto_b
    iput-object v8, v0, Lcom/canhub/cropper/CropOverlayView;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v6, v4, v5}, Lcom/canhub/cropper/CropOverlayView;->b(Landroid/graphics/Canvas;Landroid/graphics/RectF;FF)V

    :cond_14
    invoke-virtual {v7}, Lcom/canhub/cropper/CropWindowHandler;->g()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getSystemGestureExclusionRects()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_15

    move/from16 v4, v17

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_c

    :cond_15
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    :goto_c
    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getSystemGestureExclusionRects()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v11, v5, :cond_16

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    goto :goto_d

    :cond_16
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    :goto_d
    check-cast v4, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getSystemGestureExclusionRects()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v9, v6, :cond_17

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    goto :goto_e

    :cond_17
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    :goto_e
    check-cast v5, Landroid/graphics/Rect;

    iget v6, v1, Landroid/graphics/RectF;->left:F

    iget v7, v0, Lcom/canhub/cropper/CropOverlayView;->y:F

    sub-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v2, Landroid/graphics/Rect;->left:I

    iget v8, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v8, v7

    float-to-int v8, v8

    iput v8, v2, Landroid/graphics/Rect;->right:I

    iget v9, v1, Landroid/graphics/RectF;->top:F

    sub-float v10, v9, v7

    float-to-int v10, v10

    iput v10, v2, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    iget v11, v0, Lcom/canhub/cropper/CropOverlayView;->O:F

    const v12, 0x3e99999a    # 0.3f

    mul-float/2addr v12, v11

    add-float/2addr v10, v12

    float-to-int v10, v10

    iput v10, v2, Landroid/graphics/Rect;->bottom:I

    iput v6, v4, Landroid/graphics/Rect;->left:I

    iput v8, v4, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v9, v1

    div-float/2addr v9, v3

    const v3, 0x3e4ccccd    # 0.2f

    mul-float/2addr v3, v11

    sub-float/2addr v9, v3

    float-to-int v3, v9

    iput v3, v4, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    const v6, 0x3ecccccd    # 0.4f

    mul-float/2addr v11, v6

    add-float/2addr v11, v3

    float-to-int v3, v11

    iput v3, v4, Landroid/graphics/Rect;->bottom:I

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iput v3, v5, Landroid/graphics/Rect;->left:I

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iput v3, v5, Landroid/graphics/Rect;->right:I

    add-float/2addr v1, v7

    float-to-int v1, v1

    iput v1, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v1, v12

    float-to-int v1, v1

    iput v1, v5, Landroid/graphics/Rect;->top:I

    filled-new-array {v2, v4, v5}, [Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemGestureExclusionRects(Ljava/util/List;)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Lcom/canhub/cropper/CropOverlayView;->f:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/canhub/cropper/CropOverlayView;->e:Landroid/view/ScaleGestureDetector;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/canhub/cropper/CropOverlayView;->h:Lcom/canhub/cropper/CropWindowHandler;

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v2, :cond_19

    if-eq v2, v8, :cond_2

    if-eq v2, v7, :cond_3

    if-eq v2, v6, :cond_2

    :cond_1
    :goto_0
    move/from16 v16, v3

    goto/16 :goto_a

    :cond_2
    move v2, v3

    goto/16 :goto_4

    :cond_3
    iget-object v2, v0, Lcom/canhub/cropper/CropOverlayView;->p:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v4, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v4, v0, Lcom/canhub/cropper/CropOverlayView;->A:Lcom/canhub/cropper/CropWindowMoveHandler;

    if-eqz v4, :cond_16

    iget v4, v0, Lcom/canhub/cropper/CropOverlayView;->z:F

    invoke-virtual {v5}, Lcom/canhub/cropper/CropWindowHandler;->g()Landroid/graphics/RectF;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/canhub/cropper/CropOverlayView;->a(Landroid/graphics/RectF;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_6

    move v14, v7

    goto :goto_1

    :cond_6
    move v14, v4

    :goto_1
    iget-object v9, v0, Lcom/canhub/cropper/CropOverlayView;->A:Lcom/canhub/cropper/CropWindowMoveHandler;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v13, v0, Lcom/canhub/cropper/CropOverlayView;->t:I

    iget v4, v0, Lcom/canhub/cropper/CropOverlayView;->u:I

    iget-boolean v6, v0, Lcom/canhub/cropper/CropOverlayView;->B:Z

    iget v15, v0, Lcom/canhub/cropper/CropOverlayView;->E:F

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v12, v0, Lcom/canhub/cropper/CropOverlayView;->s:Landroid/graphics/RectF;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v11, v9, Lcom/canhub/cropper/CropWindowMoveHandler;->f:Landroid/graphics/PointF;

    move/from16 v16, v3

    iget v3, v11, Landroid/graphics/PointF;->x:F

    add-float/2addr v2, v3

    iget v3, v11, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v3

    iget-object v3, v9, Lcom/canhub/cropper/CropWindowMoveHandler;->a:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    sget-object v8, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->CENTER:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    if-ne v3, v8, :cond_e

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    sub-float/2addr v1, v3

    iget v3, v10, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v2

    cmpg-float v6, v3, v7

    const/high16 v8, 0x40000000    # 2.0f

    const v9, 0x3f866666    # 1.05f

    if-ltz v6, :cond_7

    iget v6, v10, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v2

    int-to-float v13, v13

    cmpl-float v13, v6, v13

    if-gtz v13, :cond_7

    iget v13, v12, Landroid/graphics/RectF;->left:F

    cmpg-float v3, v3, v13

    if-ltz v3, :cond_7

    iget v3, v12, Landroid/graphics/RectF;->right:F

    cmpl-float v3, v6, v3

    if-lez v3, :cond_8

    :cond_7
    div-float/2addr v2, v9

    iget v3, v11, Landroid/graphics/PointF;->x:F

    div-float v6, v2, v8

    sub-float/2addr v3, v6

    iput v3, v11, Landroid/graphics/PointF;->x:F

    :cond_8
    iget v3, v10, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v1

    cmpg-float v6, v3, v7

    if-ltz v6, :cond_9

    iget v6, v10, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v6, v1

    int-to-float v4, v4

    cmpl-float v4, v6, v4

    if-gtz v4, :cond_9

    iget v4, v12, Landroid/graphics/RectF;->top:F

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_9

    iget v3, v12, Landroid/graphics/RectF;->bottom:F

    cmpl-float v3, v6, v3

    if-lez v3, :cond_a

    :cond_9
    div-float/2addr v1, v9

    iget v3, v11, Landroid/graphics/PointF;->y:F

    div-float v4, v1, v8

    sub-float/2addr v3, v4

    iput v3, v11, Landroid/graphics/PointF;->y:F

    :cond_a
    invoke-virtual {v10, v2, v1}, Landroid/graphics/RectF;->offset(FF)V

    iget v1, v10, Landroid/graphics/RectF;->left:F

    iget v2, v12, Landroid/graphics/RectF;->left:F

    add-float v3, v2, v14

    cmpg-float v3, v1, v3

    if-gez v3, :cond_b

    sub-float/2addr v2, v1

    invoke-virtual {v10, v2, v7}, Landroid/graphics/RectF;->offset(FF)V

    :cond_b
    iget v1, v10, Landroid/graphics/RectF;->top:F

    iget v2, v12, Landroid/graphics/RectF;->top:F

    add-float v3, v2, v14

    cmpg-float v3, v1, v3

    if-gez v3, :cond_c

    sub-float/2addr v2, v1

    invoke-virtual {v10, v7, v2}, Landroid/graphics/RectF;->offset(FF)V

    :cond_c
    iget v1, v10, Landroid/graphics/RectF;->right:F

    iget v2, v12, Landroid/graphics/RectF;->right:F

    sub-float v3, v2, v14

    cmpl-float v3, v1, v3

    if-lez v3, :cond_d

    sub-float/2addr v2, v1

    invoke-virtual {v10, v2, v7}, Landroid/graphics/RectF;->offset(FF)V

    :cond_d
    iget v1, v10, Landroid/graphics/RectF;->bottom:F

    iget v2, v12, Landroid/graphics/RectF;->bottom:F

    sub-float v3, v2, v14

    cmpl-float v3, v1, v3

    if-lez v3, :cond_14

    sub-float/2addr v2, v1

    invoke-virtual {v10, v7, v2}, Landroid/graphics/RectF;->offset(FF)V

    goto/16 :goto_2

    :cond_e
    if-eqz v6, :cond_13

    sget-object v6, Lcom/canhub/cropper/CropWindowMoveHandler;->g:Lcom/canhub/cropper/CropWindowMoveHandler$Companion;

    sget-object v7, Lcom/canhub/cropper/CropWindowMoveHandler$WhenMappings;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v7, v3

    packed-switch v3, :pswitch_data_0

    invoke-static {}, Lv40;->g()V

    return v16

    :pswitch_0
    const/16 v16, 0x1

    const/16 v17, 0x1

    move v11, v1

    move v13, v4

    invoke-virtual/range {v9 .. v17}, Lcom/canhub/cropper/CropWindowMoveHandler;->a(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    move v14, v15

    invoke-static {v10, v12, v14}, Lcom/canhub/cropper/CropWindowMoveHandler;->c(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    goto/16 :goto_2

    :pswitch_1
    const/16 v16, 0x1

    const/16 v17, 0x1

    move v11, v2

    invoke-virtual/range {v9 .. v17}, Lcom/canhub/cropper/CropWindowMoveHandler;->d(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    move v14, v15

    invoke-static {v10, v12, v14}, Lcom/canhub/cropper/CropWindowMoveHandler;->f(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    goto/16 :goto_2

    :pswitch_2
    move v11, v1

    move v13, v14

    move v14, v15

    const/4 v15, 0x1

    const/16 v16, 0x1

    invoke-virtual/range {v9 .. v16}, Lcom/canhub/cropper/CropWindowMoveHandler;->e(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    invoke-static {v10, v12, v14}, Lcom/canhub/cropper/CropWindowMoveHandler;->c(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    goto/16 :goto_2

    :pswitch_3
    move v11, v2

    move v13, v14

    move v14, v15

    const/4 v15, 0x1

    const/16 v16, 0x1

    invoke-virtual/range {v9 .. v16}, Lcom/canhub/cropper/CropWindowMoveHandler;->b(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    invoke-static {v10, v12, v14}, Lcom/canhub/cropper/CropWindowMoveHandler;->f(Landroid/graphics/RectF;Landroid/graphics/RectF;F)V

    goto/16 :goto_2

    :pswitch_4
    move v3, v1

    move v11, v2

    move v2, v4

    move v1, v13

    move v13, v14

    move v14, v15

    iget v4, v10, Landroid/graphics/RectF;->left:F

    iget v7, v10, Landroid/graphics/RectF;->top:F

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sub-float v4, v11, v4

    sub-float v6, v3, v7

    div-float/2addr v4, v6

    cmpg-float v4, v4, v14

    if-gez v4, :cond_f

    const/16 v16, 0x0

    const/16 v17, 0x1

    move v11, v3

    move v15, v14

    move v14, v13

    move v13, v2

    invoke-virtual/range {v9 .. v17}, Lcom/canhub/cropper/CropWindowMoveHandler;->a(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    move v14, v15

    iget v1, v10, Landroid/graphics/RectF;->left:F

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v2, v14

    add-float/2addr v2, v1

    iput v2, v10, Landroid/graphics/RectF;->right:F

    goto/16 :goto_2

    :cond_f
    const/16 v16, 0x0

    const/16 v17, 0x1

    move v15, v14

    move v14, v13

    move v13, v1

    invoke-virtual/range {v9 .. v17}, Lcom/canhub/cropper/CropWindowMoveHandler;->d(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    move v14, v15

    iget v1, v10, Landroid/graphics/RectF;->top:F

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v14

    add-float/2addr v2, v1

    iput v2, v10, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_2

    :pswitch_5
    move v3, v1

    move v11, v2

    move v2, v4

    move v13, v14

    move v14, v15

    iget v1, v10, Landroid/graphics/RectF;->top:F

    iget v4, v10, Landroid/graphics/RectF;->right:F

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sub-float/2addr v4, v11

    sub-float v1, v3, v1

    div-float/2addr v4, v1

    cmpg-float v1, v4, v14

    if-gez v1, :cond_10

    const/16 v16, 0x1

    const/16 v17, 0x0

    move v11, v3

    move v15, v14

    move v14, v13

    move v13, v2

    invoke-virtual/range {v9 .. v17}, Lcom/canhub/cropper/CropWindowMoveHandler;->a(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    move v14, v15

    iget v1, v10, Landroid/graphics/RectF;->right:F

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v2, v14

    sub-float/2addr v1, v2

    iput v1, v10, Landroid/graphics/RectF;->left:F

    goto/16 :goto_2

    :cond_10
    const/4 v15, 0x0

    const/16 v16, 0x1

    invoke-virtual/range {v9 .. v16}, Lcom/canhub/cropper/CropWindowMoveHandler;->b(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    iget v1, v10, Landroid/graphics/RectF;->top:F

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v14

    add-float/2addr v2, v1

    iput v2, v10, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_2

    :pswitch_6
    move v3, v1

    move v11, v2

    move v1, v13

    move v13, v14

    move v14, v15

    iget v2, v10, Landroid/graphics/RectF;->left:F

    iget v4, v10, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sub-float v2, v11, v2

    sub-float/2addr v4, v3

    div-float/2addr v2, v4

    cmpg-float v2, v2, v14

    if-gez v2, :cond_11

    const/4 v15, 0x0

    const/16 v16, 0x1

    move v11, v3

    invoke-virtual/range {v9 .. v16}, Lcom/canhub/cropper/CropWindowMoveHandler;->e(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    iget v1, v10, Landroid/graphics/RectF;->left:F

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v2, v14

    add-float/2addr v2, v1

    iput v2, v10, Landroid/graphics/RectF;->right:F

    goto/16 :goto_2

    :cond_11
    const/16 v16, 0x1

    const/16 v17, 0x0

    move v15, v14

    move v14, v13

    move v13, v1

    invoke-virtual/range {v9 .. v17}, Lcom/canhub/cropper/CropWindowMoveHandler;->d(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    move v14, v15

    iget v1, v10, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v14

    sub-float/2addr v1, v2

    iput v1, v10, Landroid/graphics/RectF;->top:F

    goto/16 :goto_2

    :pswitch_7
    move v3, v1

    move v11, v2

    move v13, v14

    move v14, v15

    iget v1, v10, Landroid/graphics/RectF;->right:F

    iget v2, v10, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sub-float/2addr v1, v11

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    cmpg-float v1, v1, v14

    if-gez v1, :cond_12

    const/4 v15, 0x1

    const/16 v16, 0x0

    move v11, v3

    invoke-virtual/range {v9 .. v16}, Lcom/canhub/cropper/CropWindowMoveHandler;->e(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    iget v1, v10, Landroid/graphics/RectF;->right:F

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v2, v14

    sub-float/2addr v1, v2

    iput v1, v10, Landroid/graphics/RectF;->left:F

    goto/16 :goto_2

    :cond_12
    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-virtual/range {v9 .. v16}, Lcom/canhub/cropper/CropWindowMoveHandler;->b(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    iget v1, v10, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v14

    sub-float/2addr v1, v2

    iput v1, v10, Landroid/graphics/RectF;->top:F

    goto/16 :goto_2

    :cond_13
    move v11, v2

    move v2, v4

    move v4, v1

    move v1, v13

    move v13, v14

    sget-object v6, Lcom/canhub/cropper/CropWindowMoveHandler$WhenMappings;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v6, v3

    packed-switch v3, :pswitch_data_1

    invoke-static {}, Lv40;->g()V

    return v16

    :pswitch_8
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v15, 0x0

    move v11, v4

    move v14, v13

    move v13, v2

    invoke-virtual/range {v9 .. v17}, Lcom/canhub/cropper/CropWindowMoveHandler;->a(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    goto/16 :goto_2

    :pswitch_9
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v15, 0x0

    move v14, v13

    move v13, v1

    invoke-virtual/range {v9 .. v17}, Lcom/canhub/cropper/CropWindowMoveHandler;->d(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    goto/16 :goto_2

    :pswitch_a
    move v11, v4

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v16}, Lcom/canhub/cropper/CropWindowMoveHandler;->e(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    goto/16 :goto_2

    :pswitch_b
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v16}, Lcom/canhub/cropper/CropWindowMoveHandler;->b(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    goto :goto_2

    :pswitch_c
    move v3, v11

    move v11, v4

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v15, 0x0

    move v14, v13

    move v13, v2

    invoke-virtual/range {v9 .. v17}, Lcom/canhub/cropper/CropWindowMoveHandler;->a(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    move v13, v14

    move v11, v3

    move v13, v1

    invoke-virtual/range {v9 .. v17}, Lcom/canhub/cropper/CropWindowMoveHandler;->d(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    goto :goto_2

    :pswitch_d
    move v3, v11

    move v11, v4

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v15, 0x0

    move v14, v13

    move v13, v2

    invoke-virtual/range {v9 .. v17}, Lcom/canhub/cropper/CropWindowMoveHandler;->a(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    move v13, v14

    const/4 v15, 0x0

    const/4 v14, 0x0

    move v11, v3

    invoke-virtual/range {v9 .. v16}, Lcom/canhub/cropper/CropWindowMoveHandler;->b(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    goto :goto_2

    :pswitch_e
    move v3, v11

    move v11, v4

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v16}, Lcom/canhub/cropper/CropWindowMoveHandler;->e(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    const/16 v17, 0x0

    const/4 v15, 0x0

    move v11, v3

    move v14, v13

    move v13, v1

    invoke-virtual/range {v9 .. v17}, Lcom/canhub/cropper/CropWindowMoveHandler;->d(Landroid/graphics/RectF;FLandroid/graphics/RectF;IFFZZ)V

    goto :goto_2

    :pswitch_f
    move v3, v11

    move v11, v4

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v16}, Lcom/canhub/cropper/CropWindowMoveHandler;->e(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    move v11, v3

    invoke-virtual/range {v9 .. v16}, Lcom/canhub/cropper/CropWindowMoveHandler;->b(Landroid/graphics/RectF;FLandroid/graphics/RectF;FFZZ)V

    :cond_14
    :goto_2
    :pswitch_10
    iget-object v1, v5, Lcom/canhub/cropper/CropWindowHandler;->a:Landroid/graphics/RectF;

    invoke-virtual {v1, v10}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v1, v0, Lcom/canhub/cropper/CropOverlayView;->i:Lcom/canhub/cropper/CropOverlayView$CropWindowChangeListener;

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    invoke-interface {v1, v2}, Lcom/canhub/cropper/CropOverlayView$CropWindowChangeListener;->a(Z)V

    :cond_15
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_3

    :cond_16
    move v2, v8

    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return v2

    :goto_4
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/canhub/cropper/CropOverlayView;->p:Ljava/lang/Integer;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v1, v0, Lcom/canhub/cropper/CropOverlayView;->A:Lcom/canhub/cropper/CropWindowMoveHandler;

    if-eqz v1, :cond_18

    iput-object v4, v0, Lcom/canhub/cropper/CropOverlayView;->A:Lcom/canhub/cropper/CropWindowMoveHandler;

    iget-object v1, v0, Lcom/canhub/cropper/CropOverlayView;->i:Lcom/canhub/cropper/CropOverlayView$CropWindowChangeListener;

    if-eqz v1, :cond_17

    invoke-interface {v1, v2}, Lcom/canhub/cropper/CropOverlayView$CropWindowChangeListener;->a(Z)V

    :cond_17
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :goto_5
    const/16 v18, 0x1

    return v18

    :cond_18
    const/16 v18, 0x1

    goto/16 :goto_9

    :cond_19
    move v2, v3

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/canhub/cropper/CropOverlayView;->p:Ljava/lang/Integer;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iget v1, v0, Lcom/canhub/cropper/CropOverlayView;->y:F

    iget-object v2, v0, Lcom/canhub/cropper/CropOverlayView;->G:Lcom/canhub/cropper/CropImageView$CropShape;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v3, v0, Lcom/canhub/cropper/CropOverlayView;->g:Z

    iget-object v14, v5, Lcom/canhub/cropper/CropWindowHandler;->a:Landroid/graphics/RectF;

    iget-object v15, v5, Lcom/canhub/cropper/CropWindowHandler;->a:Landroid/graphics/RectF;

    sget-object v10, Lcom/canhub/cropper/CropWindowHandler$WhenMappings;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v10, v2

    const/4 v10, 0x1

    if-eq v2, v10, :cond_23

    if-eq v2, v7, :cond_22

    if-eq v2, v6, :cond_1e

    const/4 v6, 0x4

    if-ne v2, v6, :cond_1d

    iget v2, v14, Landroid/graphics/RectF;->left:F

    invoke-virtual {v14}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    invoke-static {v8, v9, v2, v6}, Lcom/canhub/cropper/CropWindowHandler;->a(FFFF)F

    move-result v2

    cmpg-float v2, v2, v1

    if-gtz v2, :cond_1a

    sget-object v1, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->LEFT:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto/16 :goto_8

    :cond_1a
    iget v2, v14, Landroid/graphics/RectF;->right:F

    invoke-virtual {v14}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    invoke-static {v8, v9, v2, v6}, Lcom/canhub/cropper/CropWindowHandler;->a(FFFF)F

    move-result v2

    cmpg-float v1, v2, v1

    if-gtz v1, :cond_1b

    sget-object v1, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->RIGHT:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto/16 :goto_8

    :cond_1b
    if-eqz v3, :cond_1c

    iget v10, v14, Landroid/graphics/RectF;->left:F

    iget v11, v14, Landroid/graphics/RectF;->top:F

    iget v12, v14, Landroid/graphics/RectF;->right:F

    iget v13, v14, Landroid/graphics/RectF;->bottom:F

    invoke-static/range {v8 .. v13}, Lcom/canhub/cropper/CropWindowHandler;->h(FFFFFF)Z

    move-result v1

    if-eqz v1, :cond_1c

    sget-object v1, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->CENTER:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto/16 :goto_8

    :cond_1c
    invoke-virtual {v5, v8, v9, v3}, Lcom/canhub/cropper/CropWindowHandler;->f(FFZ)Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    move-result-object v1

    goto/16 :goto_8

    :cond_1d
    invoke-static {}, Lv40;->g()V

    const/16 v16, 0x0

    return v16

    :cond_1e
    invoke-virtual {v14}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget v6, v14, Landroid/graphics/RectF;->top:F

    invoke-static {v8, v9, v2, v6}, Lcom/canhub/cropper/CropWindowHandler;->a(FFFF)F

    move-result v2

    cmpg-float v2, v2, v1

    if-gtz v2, :cond_1f

    sget-object v1, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->TOP:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto/16 :goto_8

    :cond_1f
    invoke-virtual {v14}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget v6, v14, Landroid/graphics/RectF;->bottom:F

    invoke-static {v8, v9, v2, v6}, Lcom/canhub/cropper/CropWindowHandler;->a(FFFF)F

    move-result v2

    cmpg-float v1, v2, v1

    if-gtz v1, :cond_20

    sget-object v1, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->BOTTOM:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto/16 :goto_8

    :cond_20
    if-eqz v3, :cond_21

    iget v10, v14, Landroid/graphics/RectF;->left:F

    iget v11, v14, Landroid/graphics/RectF;->top:F

    iget v12, v14, Landroid/graphics/RectF;->right:F

    iget v13, v14, Landroid/graphics/RectF;->bottom:F

    invoke-static/range {v8 .. v13}, Lcom/canhub/cropper/CropWindowHandler;->h(FFFFFF)Z

    move-result v1

    if-eqz v1, :cond_21

    sget-object v1, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->CENTER:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto/16 :goto_8

    :cond_21
    invoke-virtual {v5, v8, v9, v3}, Lcom/canhub/cropper/CropWindowHandler;->f(FFZ)Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    move-result-object v1

    goto/16 :goto_8

    :cond_22
    invoke-virtual {v5, v8, v9, v3}, Lcom/canhub/cropper/CropWindowHandler;->f(FFZ)Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    move-result-object v1

    goto/16 :goto_8

    :cond_23
    iget v2, v14, Landroid/graphics/RectF;->left:F

    iget v6, v14, Landroid/graphics/RectF;->top:F

    invoke-static {v8, v9, v2, v6}, Lcom/canhub/cropper/CropWindowHandler;->a(FFFF)F

    move-result v2

    cmpg-float v2, v2, v1

    if-gtz v2, :cond_24

    sget-object v1, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->TOP_LEFT:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto/16 :goto_8

    :cond_24
    iget v2, v14, Landroid/graphics/RectF;->right:F

    iget v6, v14, Landroid/graphics/RectF;->top:F

    invoke-static {v8, v9, v2, v6}, Lcom/canhub/cropper/CropWindowHandler;->a(FFFF)F

    move-result v2

    cmpg-float v2, v2, v1

    if-gtz v2, :cond_25

    sget-object v1, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->TOP_RIGHT:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto/16 :goto_8

    :cond_25
    iget v2, v14, Landroid/graphics/RectF;->left:F

    iget v6, v14, Landroid/graphics/RectF;->bottom:F

    invoke-static {v8, v9, v2, v6}, Lcom/canhub/cropper/CropWindowHandler;->a(FFFF)F

    move-result v2

    cmpg-float v2, v2, v1

    if-gtz v2, :cond_26

    sget-object v1, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->BOTTOM_LEFT:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto/16 :goto_8

    :cond_26
    iget v2, v14, Landroid/graphics/RectF;->right:F

    iget v6, v14, Landroid/graphics/RectF;->bottom:F

    invoke-static {v8, v9, v2, v6}, Lcom/canhub/cropper/CropWindowHandler;->a(FFFF)F

    move-result v2

    cmpg-float v2, v2, v1

    if-gtz v2, :cond_27

    sget-object v1, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->BOTTOM_RIGHT:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto/16 :goto_8

    :cond_27
    const/high16 v2, 0x42c80000    # 100.0f

    if-eqz v3, :cond_29

    iget v10, v14, Landroid/graphics/RectF;->left:F

    iget v11, v14, Landroid/graphics/RectF;->top:F

    iget v12, v14, Landroid/graphics/RectF;->right:F

    iget v13, v14, Landroid/graphics/RectF;->bottom:F

    invoke-static/range {v8 .. v13}, Lcom/canhub/cropper/CropWindowHandler;->h(FFFFFF)Z

    move-result v6

    if-eqz v6, :cond_29

    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v6

    cmpg-float v6, v6, v2

    if-ltz v6, :cond_28

    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    move-result v6

    cmpg-float v6, v6, v2

    if-ltz v6, :cond_28

    const/4 v6, 0x1

    goto :goto_6

    :cond_28
    const/4 v6, 0x0

    :goto_6
    if-nez v6, :cond_29

    sget-object v1, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->CENTER:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto/16 :goto_8

    :cond_29
    iget v6, v14, Landroid/graphics/RectF;->left:F

    iget v7, v14, Landroid/graphics/RectF;->right:F

    iget v10, v14, Landroid/graphics/RectF;->top:F

    cmpl-float v6, v8, v6

    if-lez v6, :cond_2a

    cmpg-float v6, v8, v7

    if-gez v6, :cond_2a

    sub-float v6, v9, v10

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v1

    if-gtz v6, :cond_2a

    sget-object v1, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->TOP:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto/16 :goto_8

    :cond_2a
    iget v6, v14, Landroid/graphics/RectF;->left:F

    iget v7, v14, Landroid/graphics/RectF;->right:F

    iget v10, v14, Landroid/graphics/RectF;->bottom:F

    cmpl-float v6, v8, v6

    if-lez v6, :cond_2b

    cmpg-float v6, v8, v7

    if-gez v6, :cond_2b

    sub-float v6, v9, v10

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v1

    if-gtz v6, :cond_2b

    sget-object v1, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->BOTTOM:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto :goto_8

    :cond_2b
    iget v6, v14, Landroid/graphics/RectF;->left:F

    iget v7, v14, Landroid/graphics/RectF;->top:F

    iget v10, v14, Landroid/graphics/RectF;->bottom:F

    sub-float v6, v8, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v1

    if-gtz v6, :cond_2c

    cmpl-float v6, v9, v7

    if-lez v6, :cond_2c

    cmpg-float v6, v9, v10

    if-gez v6, :cond_2c

    sget-object v1, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->LEFT:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto :goto_8

    :cond_2c
    iget v6, v14, Landroid/graphics/RectF;->right:F

    iget v7, v14, Landroid/graphics/RectF;->top:F

    iget v10, v14, Landroid/graphics/RectF;->bottom:F

    sub-float v6, v8, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v1, v6, v1

    if-gtz v1, :cond_2d

    cmpl-float v1, v9, v7

    if-lez v1, :cond_2d

    cmpg-float v1, v9, v10

    if-gez v1, :cond_2d

    sget-object v1, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->RIGHT:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto :goto_8

    :cond_2d
    if-eqz v3, :cond_2f

    iget v10, v14, Landroid/graphics/RectF;->left:F

    iget v11, v14, Landroid/graphics/RectF;->top:F

    iget v12, v14, Landroid/graphics/RectF;->right:F

    iget v13, v14, Landroid/graphics/RectF;->bottom:F

    invoke-static/range {v8 .. v13}, Lcom/canhub/cropper/CropWindowHandler;->h(FFFFFF)Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_2e

    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_2e

    const/16 v16, 0x1

    goto :goto_7

    :cond_2e
    const/16 v16, 0x0

    :goto_7
    if-eqz v16, :cond_2f

    sget-object v1, Lcom/canhub/cropper/CropWindowMoveHandler$Type;->CENTER:Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    goto :goto_8

    :cond_2f
    invoke-virtual {v5, v8, v9, v3}, Lcom/canhub/cropper/CropWindowHandler;->f(FFZ)Lcom/canhub/cropper/CropWindowMoveHandler$Type;

    move-result-object v1

    :goto_8
    if-eqz v1, :cond_30

    new-instance v4, Lcom/canhub/cropper/CropWindowMoveHandler;

    invoke-direct {v4, v1, v5, v8, v9}, Lcom/canhub/cropper/CropWindowMoveHandler;-><init>(Lcom/canhub/cropper/CropWindowMoveHandler$Type;Lcom/canhub/cropper/CropWindowHandler;FF)V

    :cond_30
    iput-object v4, v0, Lcom/canhub/cropper/CropOverlayView;->A:Lcom/canhub/cropper/CropWindowMoveHandler;

    if-eqz v4, :cond_18

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_5

    :goto_9
    return v18

    :goto_a
    return v16

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_10
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_10
    .end packed-switch
.end method

.method public final setAspectRatioX(I)V
    .locals 1

    if-lez p1, :cond_1

    iget v0, p0, Lcom/canhub/cropper/CropOverlayView;->C:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/canhub/cropper/CropOverlayView;->C:I

    int-to-float p1, p1

    iget v0, p0, Lcom/canhub/cropper/CropOverlayView;->D:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/canhub/cropper/CropOverlayView;->E:F

    iget-boolean p1, p0, Lcom/canhub/cropper/CropOverlayView;->N:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->f()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void

    :cond_1
    const-string p0, "Cannot set aspect ratio value to a number less than or equal to 0."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method

.method public final setAspectRatioY(I)V
    .locals 1

    if-lez p1, :cond_1

    iget v0, p0, Lcom/canhub/cropper/CropOverlayView;->D:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/canhub/cropper/CropOverlayView;->D:I

    iget v0, p0, Lcom/canhub/cropper/CropOverlayView;->C:I

    int-to-float v0, v0

    int-to-float p1, p1

    div-float/2addr v0, p1

    iput v0, p0, Lcom/canhub/cropper/CropOverlayView;->E:F

    iget-boolean p1, p0, Lcom/canhub/cropper/CropOverlayView;->N:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->f()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void

    :cond_1
    const-string p0, "Cannot set aspect ratio value to a number less than or equal to 0."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method

.method public final setCropCornerRadius(F)V
    .locals 0

    iput p1, p0, Lcom/canhub/cropper/CropOverlayView;->b:F

    return-void
.end method

.method public final setCropCornerShape(Lcom/canhub/cropper/CropImageView$CropCornerShape;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->H:Lcom/canhub/cropper/CropImageView$CropCornerShape;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/canhub/cropper/CropOverlayView;->H:Lcom/canhub/cropper/CropImageView$CropCornerShape;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setCropLabelText(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/canhub/cropper/CropOverlayView;->J:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final setCropLabelTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/canhub/cropper/CropOverlayView;->L:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setCropLabelTextSize(F)V
    .locals 0

    iput p1, p0, Lcom/canhub/cropper/CropOverlayView;->K:F

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setCropShape(Lcom/canhub/cropper/CropImageView$CropShape;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->G:Lcom/canhub/cropper/CropImageView$CropShape;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/canhub/cropper/CropOverlayView;->G:Lcom/canhub/cropper/CropImageView$CropShape;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setCropWindowChangeListener(Lcom/canhub/cropper/CropOverlayView$CropWindowChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/canhub/cropper/CropOverlayView;->i:Lcom/canhub/cropper/CropOverlayView$CropWindowChangeListener;

    return-void
.end method

.method public final setCropWindowRect(Landroid/graphics/RectF;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/canhub/cropper/CropOverlayView;->h:Lcom/canhub/cropper/CropWindowHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/canhub/cropper/CropWindowHandler;->a:Landroid/graphics/RectF;

    invoke-virtual {p0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public final setCropperTextLabelVisibility(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/canhub/cropper/CropOverlayView;->I:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setFixedAspectRatio(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/canhub/cropper/CropOverlayView;->B:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/canhub/cropper/CropOverlayView;->B:Z

    iget-boolean p1, p0, Lcom/canhub/cropper/CropOverlayView;->N:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->f()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setGuidelines(Lcom/canhub/cropper/CropImageView$Guidelines;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->F:Lcom/canhub/cropper/CropImageView$Guidelines;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/canhub/cropper/CropOverlayView;->F:Lcom/canhub/cropper/CropImageView$Guidelines;

    iget-boolean p1, p0, Lcom/canhub/cropper/CropOverlayView;->N:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final setInitialAttributeValues(Lcom/canhub/cropper/CropImageOptions;)V
    .locals 14

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Lcom/canhub/cropper/CropImageOptions;->w:I

    iget v1, p1, Lcom/canhub/cropper/CropImageOptions;->v:I

    iget-boolean v2, p1, Lcom/canhub/cropper/CropImageOptions;->u:Z

    iget-object v3, p0, Lcom/canhub/cropper/CropOverlayView;->d:Lcom/canhub/cropper/CropImageOptions;

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    iget-object v4, p0, Lcom/canhub/cropper/CropOverlayView;->d:Lcom/canhub/cropper/CropImageOptions;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    iget-boolean v6, v4, Lcom/canhub/cropper/CropImageOptions;->u:Z

    if-ne v2, v6, :cond_0

    iget v6, v4, Lcom/canhub/cropper/CropImageOptions;->v:I

    if-ne v1, v6, :cond_0

    iget v4, v4, Lcom/canhub/cropper/CropImageOptions;->w:I

    if-ne v0, v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    :goto_0
    iput-object p1, p0, Lcom/canhub/cropper/CropOverlayView;->d:Lcom/canhub/cropper/CropImageOptions;

    iget v6, p1, Lcom/canhub/cropper/CropImageOptions;->J:I

    iget v7, p1, Lcom/canhub/cropper/CropImageOptions;->l1:F

    iget v8, p1, Lcom/canhub/cropper/CropImageOptions;->m1:I

    iget v9, p1, Lcom/canhub/cropper/CropImageOptions;->M:I

    iget v10, p1, Lcom/canhub/cropper/CropImageOptions;->L:I

    iget v11, p1, Lcom/canhub/cropper/CropImageOptions;->K:I

    int-to-float v12, v6

    iget-object v13, p0, Lcom/canhub/cropper/CropOverlayView;->h:Lcom/canhub/cropper/CropWindowHandler;

    iput v12, v13, Lcom/canhub/cropper/CropWindowHandler;->g:F

    int-to-float v11, v11

    iput v11, v13, Lcom/canhub/cropper/CropWindowHandler;->h:F

    int-to-float v10, v10

    iput v10, v13, Lcom/canhub/cropper/CropWindowHandler;->i:F

    int-to-float v9, v9

    iput v9, v13, Lcom/canhub/cropper/CropWindowHandler;->j:F

    if-eqz v3, :cond_1

    goto/16 :goto_1

    :cond_1
    iget v3, p1, Lcom/canhub/cropper/CropImageOptions;->H:I

    int-to-float v3, v3

    iput v3, v13, Lcom/canhub/cropper/CropWindowHandler;->c:F

    iget v3, p1, Lcom/canhub/cropper/CropImageOptions;->I:I

    int-to-float v3, v3

    iput v3, v13, Lcom/canhub/cropper/CropWindowHandler;->d:F

    int-to-float v3, v6

    iput v3, v13, Lcom/canhub/cropper/CropWindowHandler;->g:F

    iput v11, v13, Lcom/canhub/cropper/CropWindowHandler;->h:F

    iput v10, v13, Lcom/canhub/cropper/CropWindowHandler;->i:F

    iput v9, v13, Lcom/canhub/cropper/CropWindowHandler;->j:F

    iput v8, p0, Lcom/canhub/cropper/CropOverlayView;->L:I

    iput v7, p0, Lcom/canhub/cropper/CropOverlayView;->K:F

    iget-object v3, p1, Lcom/canhub/cropper/CropImageOptions;->n1:Ljava/lang/String;

    if-nez v3, :cond_2

    const-string v3, ""

    :cond_2
    iput-object v3, p0, Lcom/canhub/cropper/CropOverlayView;->J:Ljava/lang/String;

    iget-boolean v3, p1, Lcom/canhub/cropper/CropImageOptions;->l:Z

    iput-boolean v3, p0, Lcom/canhub/cropper/CropOverlayView;->I:Z

    iget v3, p1, Lcom/canhub/cropper/CropImageOptions;->f:F

    iput v3, p0, Lcom/canhub/cropper/CropOverlayView;->b:F

    iget-object v3, p1, Lcom/canhub/cropper/CropImageOptions;->e:Lcom/canhub/cropper/CropImageView$CropCornerShape;

    iput-object v3, p0, Lcom/canhub/cropper/CropOverlayView;->H:Lcom/canhub/cropper/CropImageView$CropCornerShape;

    iget-object v3, p1, Lcom/canhub/cropper/CropImageOptions;->d:Lcom/canhub/cropper/CropImageView$CropShape;

    iput-object v3, p0, Lcom/canhub/cropper/CropOverlayView;->G:Lcom/canhub/cropper/CropImageView$CropShape;

    iget v3, p1, Lcom/canhub/cropper/CropImageOptions;->g:F

    iput v3, p0, Lcom/canhub/cropper/CropOverlayView;->z:F

    iget-boolean v3, p1, Lcom/canhub/cropper/CropImageOptions;->r:Z

    invoke-virtual {p0, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v3, p1, Lcom/canhub/cropper/CropImageOptions;->i:Lcom/canhub/cropper/CropImageView$Guidelines;

    iput-object v3, p0, Lcom/canhub/cropper/CropOverlayView;->F:Lcom/canhub/cropper/CropImageView$Guidelines;

    iput-boolean v2, p0, Lcom/canhub/cropper/CropOverlayView;->B:Z

    invoke-virtual {p0, v1}, Lcom/canhub/cropper/CropOverlayView;->setAspectRatioX(I)V

    invoke-virtual {p0, v0}, Lcom/canhub/cropper/CropOverlayView;->setAspectRatioY(I)V

    iget-boolean v0, p1, Lcom/canhub/cropper/CropImageOptions;->p:Z

    iput-boolean v0, p0, Lcom/canhub/cropper/CropOverlayView;->f:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->e:Landroid/view/ScaleGestureDetector;

    if-nez v0, :cond_3

    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/canhub/cropper/CropOverlayView$ScaleListener;

    invoke-direct {v2, p0}, Lcom/canhub/cropper/CropOverlayView$ScaleListener;-><init>(Lcom/canhub/cropper/CropOverlayView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->e:Landroid/view/ScaleGestureDetector;

    :cond_3
    iget-boolean v0, p1, Lcom/canhub/cropper/CropImageOptions;->q:Z

    iput-boolean v0, p0, Lcom/canhub/cropper/CropOverlayView;->g:Z

    iget v0, p1, Lcom/canhub/cropper/CropImageOptions;->h:F

    iput v0, p0, Lcom/canhub/cropper/CropOverlayView;->y:F

    iget v0, p1, Lcom/canhub/cropper/CropImageOptions;->t:F

    iput v0, p0, Lcom/canhub/cropper/CropOverlayView;->x:F

    iget v0, p1, Lcom/canhub/cropper/CropImageOptions;->x:F

    iget v1, p1, Lcom/canhub/cropper/CropImageOptions;->y:I

    sget-object v2, Lcom/canhub/cropper/CropOverlayView;->P:Lcom/canhub/cropper/CropOverlayView$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/canhub/cropper/CropOverlayView$Companion;->a(FI)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->k:Landroid/graphics/Paint;

    iget v0, p1, Lcom/canhub/cropper/CropImageOptions;->A:F

    iput v0, p0, Lcom/canhub/cropper/CropOverlayView;->v:F

    iget v0, p1, Lcom/canhub/cropper/CropImageOptions;->B:F

    iput v0, p0, Lcom/canhub/cropper/CropOverlayView;->w:F

    iget v0, p1, Lcom/canhub/cropper/CropImageOptions;->D:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->c:Ljava/lang/Integer;

    iget v0, p1, Lcom/canhub/cropper/CropImageOptions;->z:F

    iget v1, p1, Lcom/canhub/cropper/CropImageOptions;->C:I

    invoke-static {v0, v1}, Lcom/canhub/cropper/CropOverlayView$Companion;->a(FI)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->l:Landroid/graphics/Paint;

    iget v0, p1, Lcom/canhub/cropper/CropImageOptions;->E:F

    iget v1, p1, Lcom/canhub/cropper/CropImageOptions;->F:I

    invoke-static {v0, v1}, Lcom/canhub/cropper/CropOverlayView$Companion;->a(FI)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->m:Landroid/graphics/Paint;

    iget p1, p1, Lcom/canhub/cropper/CropImageOptions;->G:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iput-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->n:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p1, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {p1, v8}, Landroid/graphics/Paint;->setColor(I)V

    iput-object p1, p0, Lcom/canhub/cropper/CropOverlayView;->o:Landroid/graphics/Paint;

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->f()V

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    if-eqz v4, :cond_5

    iget-object p0, p0, Lcom/canhub/cropper/CropOverlayView;->i:Lcom/canhub/cropper/CropOverlayView$CropWindowChangeListener;

    if-eqz p0, :cond_5

    invoke-interface {p0, v5}, Lcom/canhub/cropper/CropOverlayView$CropWindowChangeListener;->a(Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method public final setInitialCropWindowRect(Landroid/graphics/Rect;)V
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lcom/canhub/cropper/BitmapUtils;->a:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, Lcom/canhub/cropper/CropOverlayView;->M:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean p1, p0, Lcom/canhub/cropper/CropOverlayView;->N:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/canhub/cropper/CropOverlayView;->f()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    iget-object p0, p0, Lcom/canhub/cropper/CropOverlayView;->i:Lcom/canhub/cropper/CropOverlayView$CropWindowChangeListener;

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/canhub/cropper/CropOverlayView$CropWindowChangeListener;->a(Z)V

    :cond_1
    return-void
.end method

.method public final setSnapRadius(F)V
    .locals 0

    iput p1, p0, Lcom/canhub/cropper/CropOverlayView;->z:F

    return-void
.end method
