.class final Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LabelWrapper"
.end annotation


# instance fields
.field private label:Ljava/lang/CharSequence;

.field private participant:Lnet/rtccloud/sdk/Participant;

.field private final rect:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;


# direct methods
.method private constructor <init>(Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;->this$0:Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;->rect:Landroid/graphics/RectF;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;-><init>(Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;)V
    .locals 0

    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;->refresh()V

    return-void
.end method

.method private draw(Landroid/graphics/Canvas;)V
    .locals 11

    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;->rect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;->this$0:Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;

    invoke-static {v1}, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->c(Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;)F

    move-result v1

    iget-object v2, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;->this$0:Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;

    invoke-static {v2}, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->c(Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;)F

    move-result v2

    iget-object v3, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;->this$0:Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;

    invoke-static {v3}, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->a(Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v5, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;->label:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;->this$0:Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v8, v0, v1

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;->this$0:Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;->this$0:Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;

    invoke-static {v2}, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->d(Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;)Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;->this$0:Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;

    invoke-static {v2}, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->b(Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;)F

    move-result v2

    div-float/2addr v2, v1

    sub-float v9, v0, v2

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;->this$0:Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;

    invoke-static {p0}, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->d(Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;)Landroid/text/TextPaint;

    move-result-object v10

    const/4 v6, 0x0

    move-object v4, p1

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private isReady()Z
    .locals 1

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;->participant:Lnet/rtccloud/sdk/Participant;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;->label:Ljava/lang/CharSequence;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private refresh()V
    .locals 5

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;->participant:Lnet/rtccloud/sdk/Participant;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-object v1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;->label:Ljava/lang/CharSequence;

    return-void

    :cond_0
    invoke-virtual {v0}, Lnet/rtccloud/sdk/Participant;->displayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object v1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;->label:Ljava/lang/CharSequence;

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;->this$0:Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;

    invoke-static {v1}, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->d(Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;)Landroid/text/TextPaint;

    move-result-object v1

    iget-object v2, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;->this$0:Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;->this$0:Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;

    invoke-static {v3}, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->b(Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;)F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v1, v2, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;->label:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;->this$0:Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;

    invoke-static {v0}, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->d(Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;)Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;->label:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;->this$0:Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;

    invoke-static {v1}, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->d(Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;)Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    iget-object v2, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;->this$0:Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;

    invoke-static {v2}, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->d(Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;)Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;->rect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;->this$0:Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;

    invoke-static {v3}, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->b(Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;)F

    move-result v3

    mul-float/2addr v3, v4

    add-float/2addr v3, v0

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;->this$0:Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;

    invoke-static {v0}, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;->b(Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;)F

    move-result v0

    add-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {v2, v1, v1, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;->rect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;->this$0:Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    iget-object v2, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;->this$0:Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object p0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;->rect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    sub-float/2addr v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    return-void
.end method


# virtual methods
.method public onBind(Lnet/rtccloud/sdk/Participant;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;->participant:Lnet/rtccloud/sdk/Participant;

    invoke-direct {p0}, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;->refresh()V

    return-void
.end method

.method public onUnbind()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;->participant:Lnet/rtccloud/sdk/Participant;

    iput-object v0, p0, Lcom/sightcall/universal/internal/view/MyVideoConsumerThumbnailView$LabelWrapper;->label:Ljava/lang/CharSequence;

    return-void
.end method
