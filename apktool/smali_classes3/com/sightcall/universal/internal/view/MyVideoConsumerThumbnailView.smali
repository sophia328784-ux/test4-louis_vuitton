.class public Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lnet/rtccloud/sdk/VideoConsumer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;
    }
.end annotation


# static fields
.field private static final log:Lnet/rtccloud/sdk/util/OldLogger;


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private final bitmapPaint:Landroid/graphics/Paint;

.field private final bitmapRect:Landroid/graphics/RectF;

.field private call:Lnet/rtccloud/sdk/Call;

.field private emptyDrawable:Landroid/graphics/drawable/Drawable;

.field private final emptyDrawableBounds:Landroid/graphics/RectF;

.field private final emptyPaint:Landroid/graphics/Paint;

.field private isStarted:Z

.field private final labelBackgroundPaint:Landroid/graphics/Paint;

.field private labelExtraPadding:F

.field private labelRadius:F

.field private final labelTextPaint:Landroid/text/TextPaint;

.field private final labelWrapper:Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;

.field private participant:Lnet/rtccloud/sdk/Participant;

.field private final visibilityLayoutInvalidate:Ljava/lang/Runnable;

.field private who:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lnet/rtccloud/sdk/util/OldLogger$Internal;->VIDEO_CONSUMER:Lnet/rtccloud/sdk/util/OldLogger$Internal;

    invoke-static {v0}, Lnet/rtccloud/sdk/util/OldLogger;->get(Lnet/rtccloud/sdk/util/OldLogger$Internal;)Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    sput-object v0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;-><init>(Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;I)V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->labelWrapper:Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->bitmapRect:Landroid/graphics/RectF;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->bitmapPaint:Landroid/graphics/Paint;

    new-instance p1, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$1;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$1;-><init>(Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;I)V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->emptyPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->emptyDrawableBounds:Landroid/graphics/RectF;

    new-instance p1, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$2;

    invoke-direct {p1, p0, v0}, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$2;-><init>(Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;I)V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->labelTextPaint:Landroid/text/TextPaint;

    new-instance p1, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$3;

    invoke-direct {p1, p0, v0}, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$3;-><init>(Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;I)V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->labelBackgroundPaint:Landroid/graphics/Paint;

    new-instance p1, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$4;

    invoke-direct {p1, p0}, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$4;-><init>(Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;)V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->visibilityLayoutInvalidate:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    new-instance p1, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;-><init>(Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;I)V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->labelWrapper:Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;

    .line 67
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->bitmapRect:Landroid/graphics/RectF;

    .line 68
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->bitmapPaint:Landroid/graphics/Paint;

    .line 69
    new-instance p1, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$1;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$1;-><init>(Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;I)V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->emptyPaint:Landroid/graphics/Paint;

    .line 70
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->emptyDrawableBounds:Landroid/graphics/RectF;

    .line 71
    new-instance p1, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$2;

    invoke-direct {p1, p0, p2}, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$2;-><init>(Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;I)V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->labelTextPaint:Landroid/text/TextPaint;

    .line 72
    new-instance p1, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$3;

    invoke-direct {p1, p0, p2}, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$3;-><init>(Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;I)V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->labelBackgroundPaint:Landroid/graphics/Paint;

    .line 73
    new-instance p1, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$4;

    invoke-direct {p1, p0}, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$4;-><init>(Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;)V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->visibilityLayoutInvalidate:Ljava/lang/Runnable;

    .line 74
    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    new-instance p1, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;-><init>(Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;I)V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->labelWrapper:Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;

    .line 77
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->bitmapRect:Landroid/graphics/RectF;

    .line 78
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->bitmapPaint:Landroid/graphics/Paint;

    .line 79
    new-instance p1, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$1;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$1;-><init>(Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;I)V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->emptyPaint:Landroid/graphics/Paint;

    .line 80
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->emptyDrawableBounds:Landroid/graphics/RectF;

    .line 81
    new-instance p1, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$2;

    invoke-direct {p1, p0, p2}, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$2;-><init>(Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;I)V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->labelTextPaint:Landroid/text/TextPaint;

    .line 82
    new-instance p1, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$3;

    invoke-direct {p1, p0, p2}, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$3;-><init>(Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;I)V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->labelBackgroundPaint:Landroid/graphics/Paint;

    .line 83
    new-instance p1, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$4;

    invoke-direct {p1, p0}, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$4;-><init>(Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;)V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->visibilityLayoutInvalidate:Ljava/lang/Runnable;

    .line 84
    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->init()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;)Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->labelBackgroundPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;)F
    .locals 0

    iget p0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->labelExtraPadding:F

    return p0
.end method

.method public static bridge synthetic c(Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;)F
    .locals 0

    iget p0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->labelRadius:F

    return p0
.end method

.method public static bridge synthetic d(Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;)Landroid/text/TextPaint;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->labelTextPaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method private drawBitmap(Landroid/graphics/Canvas;)Z
    .locals 3

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->participant:Lnet/rtccloud/sdk/Participant;

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->bitmap:Landroid/graphics/Bitmap;

    iget-boolean v2, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->isStarted:Z

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Participant;->isSendingVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->bitmapRect:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->bitmapPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0, p0}, Lnet/rtccloud/sdk/util/ViewUtils;->safeDrawBitmap(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private drawNoVideo(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->emptyDrawableBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->labelRadius:F

    iget-object v2, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->emptyPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->emptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public static bridge synthetic e(Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;)Lnet/rtccloud/sdk/Participant;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->participant:Lnet/rtccloud/sdk/Participant;

    return-object p0
.end method

.method private init()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/sightcall/universal/util/ViewUtils;->whoami(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->who:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/sightcall/universal/R$drawable;->universal_ic_videocam_off_36dp:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->emptyDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->labelTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sightcall/universal/R$dimen;->universal_thumbnail_label_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sightcall/universal/R$dimen;->universal_thumbnail_label_text_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->labelExtraPadding:F

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sightcall/universal/R$dimen;->universal_thumbnail_label_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->labelRadius:F

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/sightcall/universal/internal/view/ViewUtils;->applyThumbnailEffects(Landroid/view/View;Z)V

    return-void
.end method

.method private postVisibilityLayoutInvalidate()V
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->visibilityLayoutInvalidate:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateScaling()V
    .locals 9

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->emptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    iget-object v4, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->emptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    float-to-int v4, v4

    int-to-float v0, v0

    div-float v5, v0, v3

    float-to-int v5, v5

    int-to-float v1, v1

    div-float v3, v1, v3

    float-to-int v3, v3

    iget-object v6, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->emptyDrawable:Landroid/graphics/drawable/Drawable;

    sub-int v7, v5, v2

    sub-int v8, v3, v4

    add-int/2addr v5, v2

    add-int/2addr v3, v4

    invoke-virtual {v6, v7, v8, v5, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->emptyDrawableBounds:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    sget-object v1, Lnet/rtccloud/sdk/util/ScaleType;->FIT:Lnet/rtccloud/sdk/util/ScaleType;

    iget-object v2, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->bitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v6, v0

    invoke-static/range {v1 .. v6}, Lnet/rtccloud/sdk/util/ViewUtils;->applyScalingTo(Lnet/rtccloud/sdk/util/ScaleType;Landroid/graphics/RectF;FFFF)F

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->bitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    :goto_0
    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->labelWrapper:Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;

    invoke-static {p0}, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;->b(Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;)V

    return-void
.end method


# virtual methods
.method public isFilterBitmap()Z
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->isFilterBitmap()Z

    move-result p0

    return p0
.end method

.method public isStarted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->isStarted:Z

    return p0
.end method

.method public onBind(Lnet/rtccloud/sdk/Call;Lnet/rtccloud/sdk/Participant;)V
    .locals 3

    sget-object v0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {p2}, Lnet/rtccloud/sdk/Participant;->id()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->who:Ljava/lang/String;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "onBind(%d) %s"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->call:Lnet/rtccloud/sdk/Call;

    iput-object p2, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->participant:Lnet/rtccloud/sdk/Participant;

    iget-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->labelWrapper:Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;

    invoke-virtual {p1, p2}, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;->onBind(Lnet/rtccloud/sdk/Participant;)V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->postVisibilityLayoutInvalidate()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->drawBitmap(Landroid/graphics/Canvas;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->drawNoVideo(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->labelWrapper:Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;

    invoke-static {p0, p1}, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;->a(Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onFrame(Lnet/rtccloud/sdk/Frame;)V
    .locals 3

    iget-boolean v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->isStarted:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->bitmap:Landroid/graphics/Bitmap;

    iget-object p1, p1, Lnet/rtccloud/sdk/Frame;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    if-ne p1, v1, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    if-eq p1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void

    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->postVisibilityLayoutInvalidate()V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->updateScaling()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    iget-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->bitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    int-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p2

    move p1, v0

    :goto_0
    sget-object v0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/OldLogger;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "onMeasure -> %dx%d"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    sget-object v0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "onSizeChanged(%d, %d, %d, %d)"

    invoke-virtual {v0, p2, p1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->updateScaling()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onStart()V
    .locals 3

    sget-object v0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->who:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "onStart() %s"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->isStarted:Z

    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->postVisibilityLayoutInvalidate()V

    return-void
.end method

.method public onStop()V
    .locals 3

    sget-object v0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->who:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "onStop() %s"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->isStarted:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->bitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->bitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->postVisibilityLayoutInvalidate()V

    return-void
.end method

.method public onUnbind()V
    .locals 3

    sget-object v0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->who:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "onUnbind() %s"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->call:Lnet/rtccloud/sdk/Call;

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->participant:Lnet/rtccloud/sdk/Participant;

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->bitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->bitmapRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->labelWrapper:Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;

    invoke-virtual {v0}, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;->onUnbind()V

    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->postVisibilityLayoutInvalidate()V

    return-void
.end method

.method public participant()Lnet/rtccloud/sdk/Participant;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->participant:Lnet/rtccloud/sdk/Participant;

    return-object p0
.end method

.method public setFilterBitmap(Z)V
    .locals 3

    sget-object v0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->log:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->who:Ljava/lang/String;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "setFilterBitmap(%b) %s"

    invoke-virtual {v0, v2, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->bitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
