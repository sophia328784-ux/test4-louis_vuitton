.class final Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/ui/SubtitleView$Output;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final b:Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;

.field public final c:Landroid/webkit/WebView;

.field public d:Ljava/util/List;

.field public e:Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

.field public f:F

.field public g:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->d:Ljava/util/List;

    sget-object v0, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->g:Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->e:Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

    const v0, 0x3d5a511a    # 0.0533f

    iput v0, p0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->f:F

    const v0, 0x3da3d70a    # 0.08f

    iput v0, p0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->g:F

    new-instance v0, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->b:Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;

    new-instance v1, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput$1;

    invoke-direct {v1, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->c:Landroid/webkit/WebView;

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;FF)V
    .locals 4

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->e:Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

    iput p3, p0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->f:F

    iput p4, p0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->g:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/text/Cue;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    iput-object v1, p0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->d:Ljava/util/List;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->c()V

    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->b:Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;

    invoke-virtual {p1, v0, p2, p3, p4}, Lcom/google/android/exoplayer2/ui/CanvasSubtitleOutput;->a(Ljava/util/List;Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;FF)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final b(FI)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {p2, v0, v1, p1}, Lcom/google/android/exoplayer2/ui/SubtitleViewUtils;->b(IIIF)F

    move-result p1

    const p2, -0x800001

    cmpl-float p2, p1, p2

    if-nez p2, :cond_0

    const-string p0, "unset"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    sget p1, Lcom/google/android/exoplayer2/util/Util;->a:I

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string p2, "%.2fpx"

    invoke-static {p1, p2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final c()V
    .locals 39

    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->e:Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

    iget v2, v2, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->a:I

    invoke-static {v2}, Lcom/google/android/exoplayer2/ui/HtmlUtils;->a(I)Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->f:F

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->b(FI)Ljava/lang/String;

    move-result-object v3

    const v5, 0x3f99999a    # 1.2f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iget-object v7, v0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->e:Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

    iget v8, v7, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->d:I

    iget v7, v7, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->e:I

    const-string v9, "unset"

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eq v8, v12, :cond_3

    if-eq v8, v11, :cond_2

    if-eq v8, v10, :cond_1

    const/4 v13, 0x4

    if-eq v8, v13, :cond_0

    move-object v7, v9

    goto :goto_0

    :cond_0
    invoke-static {v7}, Lcom/google/android/exoplayer2/ui/HtmlUtils;->a(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/google/android/exoplayer2/util/Util;->a:I

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "-0.05em -0.05em 0.15em "

    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_1
    invoke-static {v7}, Lcom/google/android/exoplayer2/ui/HtmlUtils;->a(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/google/android/exoplayer2/util/Util;->a:I

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "0.06em 0.08em 0.15em "

    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_2
    invoke-static {v7}, Lcom/google/android/exoplayer2/ui/HtmlUtils;->a(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/google/android/exoplayer2/util/Util;->a:I

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "0.1em 0.12em 0.15em "

    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_3
    invoke-static {v7}, Lcom/google/android/exoplayer2/ui/HtmlUtils;->a(I)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    sget v8, Lcom/google/android/exoplayer2/util/Util;->a:I

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "1px 1px 0 %1$s, 1px -1px 0 %1$s, -1px 1px 0 %1$s, -1px -1px 0 %1$s"

    invoke-static {v8, v13, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :goto_0
    filled-new-array {v2, v3, v6, v7}, [Ljava/lang/Object;

    move-result-object v2

    sget v3, Lcom/google/android/exoplayer2/util/Util;->a:I

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "<body><div style=\'-webkit-user-select:none;position:fixed;top:0;bottom:0;left:0;right:0;color:%s;font-size:%s;line-height:%.2f;text-shadow:%s;\'>"

    invoke-static {v3, v6, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->e:Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

    iget v3, v3, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->b:I

    invoke-static {v3}, Lcom/google/android/exoplayer2/ui/HtmlUtils;->a(I)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "background-color:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, ".default_bg,.default_bg *"

    invoke-virtual {v2, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v6, v4

    :goto_1
    iget-object v8, v0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->d:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_4a

    iget-object v8, v0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->d:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer2/text/Cue;

    iget v13, v8, Lcom/google/android/exoplayer2/text/Cue;->f:F

    iget v14, v8, Lcom/google/android/exoplayer2/text/Cue;->m:I

    const v15, -0x800001

    cmpl-float v16, v13, v15

    const/high16 v17, 0x42c80000    # 100.0f

    if-eqz v16, :cond_4

    mul-float v13, v13, v17

    :goto_2
    move/from16 v16, v5

    goto :goto_3

    :cond_4
    const/high16 v13, 0x42480000    # 50.0f

    goto :goto_2

    :goto_3
    iget v5, v8, Lcom/google/android/exoplayer2/text/Cue;->g:I

    const/16 v18, -0x32

    const/16 v19, -0x64

    if-eq v5, v12, :cond_6

    if-eq v5, v11, :cond_5

    move v5, v4

    move/from16 v20, v15

    goto :goto_4

    :cond_5
    move/from16 v20, v15

    move/from16 v5, v19

    goto :goto_4

    :cond_6
    move/from16 v20, v15

    move/from16 v5, v18

    :goto_4
    iget v15, v8, Lcom/google/android/exoplayer2/text/Cue;->c:F

    cmpl-float v21, v15, v20

    const/high16 v22, 0x3f800000    # 1.0f

    const-string v10, "%.2f%%"

    if-eqz v21, :cond_e

    iget v4, v8, Lcom/google/android/exoplayer2/text/Cue;->d:I

    if-eq v4, v12, :cond_c

    mul-float v15, v15, v17

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v15, v10, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget v15, v8, Lcom/google/android/exoplayer2/text/Cue;->e:I

    if-ne v14, v12, :cond_9

    if-eq v15, v12, :cond_8

    if-eq v15, v11, :cond_7

    const/4 v15, 0x0

    goto :goto_5

    :cond_7
    move/from16 v15, v19

    goto :goto_5

    :cond_8
    move/from16 v15, v18

    :goto_5
    neg-int v15, v15

    move/from16 v19, v15

    goto :goto_7

    :cond_9
    if-eq v15, v12, :cond_b

    if-eq v15, v11, :cond_a

    const/16 v18, 0x0

    goto :goto_6

    :cond_a
    move/from16 v18, v19

    :cond_b
    :goto_6
    move/from16 v19, v18

    :goto_7
    move-object/from16 v27, v4

    const/4 v4, 0x0

    goto :goto_9

    :cond_c
    const/4 v4, 0x0

    cmpl-float v4, v15, v4

    const-string v11, "%.2fem"

    if-ltz v4, :cond_d

    mul-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v15, v11, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v27, v4

    const/4 v4, 0x0

    :goto_8
    const/16 v19, 0x0

    goto :goto_9

    :cond_d
    neg-float v4, v15

    sub-float v4, v4, v22

    mul-float v4, v4, v16

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v15, v11, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v27, v4

    move v4, v12

    goto :goto_8

    :cond_e
    iget v4, v0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->g:F

    sub-float v22, v22, v4

    mul-float v22, v22, v17

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v11, v10, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    :goto_9
    iget v11, v8, Lcom/google/android/exoplayer2/text/Cue;->h:F

    cmpl-float v15, v11, v20

    if-eqz v15, :cond_f

    mul-float v11, v11, v17

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v15, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    :goto_a
    move-object/from16 v29, v10

    goto :goto_b

    :cond_f
    const-string v10, "fit-content"

    goto :goto_a

    :goto_b
    if-eq v14, v12, :cond_11

    const/4 v10, 0x2

    if-eq v14, v10, :cond_10

    const-string v10, "horizontal-tb"

    :goto_c
    move-object/from16 v31, v10

    goto :goto_d

    :cond_10
    const-string v10, "vertical-lr"

    goto :goto_c

    :cond_11
    const-string v10, "vertical-rl"

    goto :goto_c

    :goto_d
    iget v10, v8, Lcom/google/android/exoplayer2/text/Cue;->k:I

    iget v11, v8, Lcom/google/android/exoplayer2/text/Cue;->l:F

    invoke-virtual {v0, v11, v10}, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->b(FI)Ljava/lang/String;

    move-result-object v32

    iget-object v10, v0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->e:Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;

    iget v10, v10, Lcom/google/android/exoplayer2/ui/CaptionStyleCompat;->c:I

    invoke-static {v10}, Lcom/google/android/exoplayer2/ui/HtmlUtils;->a(I)Ljava/lang/String;

    move-result-object v33

    const-string v10, "right"

    const-string v11, "left"

    const-string v15, "top"

    if-eq v14, v12, :cond_16

    const/4 v12, 0x2

    if-eq v14, v12, :cond_13

    if-eqz v4, :cond_12

    const-string v15, "bottom"

    :cond_12
    move-object/from16 v24, v11

    move-object/from16 v26, v15

    :goto_e
    const/4 v10, 0x2

    goto :goto_11

    :cond_13
    if-eqz v4, :cond_14

    goto :goto_10

    :cond_14
    :goto_f
    move-object v10, v11

    :cond_15
    :goto_10
    move-object/from16 v26, v10

    move-object/from16 v24, v15

    goto :goto_e

    :cond_16
    if-eqz v4, :cond_15

    goto :goto_f

    :goto_11
    if-eq v14, v10, :cond_18

    const/4 v4, 0x1

    if-ne v14, v4, :cond_17

    goto :goto_13

    :cond_17
    const-string v4, "width"

    :goto_12
    move-object/from16 v28, v4

    goto :goto_14

    :cond_18
    :goto_13
    const-string v4, "height"

    move/from16 v28, v19

    move/from16 v19, v5

    move/from16 v5, v28

    goto :goto_12

    :goto_14
    iget-object v4, v8, Lcom/google/android/exoplayer2/text/Cue;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    sget-object v10, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter;->a:Ljava/util/regex/Pattern;

    const-string v10, ""

    if-nez v4, :cond_19

    new-instance v4, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$HtmlAndCss;

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->h()Lcom/google/common/collect/ImmutableMap;

    move-result-object v8

    invoke-direct {v4, v10, v8}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$HtmlAndCss;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v37, v3

    move/from16 v23, v5

    move/from16 v22, v6

    move-object/from16 v38, v7

    :goto_15
    move-object/from16 v36, v10

    const/4 v10, 0x2

    goto/16 :goto_26

    :cond_19
    instance-of v11, v4, Landroid/text/Spanned;

    if-nez v11, :cond_1a

    new-instance v8, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$HtmlAndCss;

    invoke-static {v4}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->h()Lcom/google/common/collect/ImmutableMap;

    move-result-object v11

    invoke-direct {v8, v4, v11}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$HtmlAndCss;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v37, v3

    move/from16 v23, v5

    move/from16 v22, v6

    move-object/from16 v38, v7

    move-object v4, v8

    goto :goto_15

    :cond_1a
    check-cast v4, Landroid/text/Spanned;

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v12

    const-class v14, Landroid/text/style/BackgroundColorSpan;

    const/4 v15, 0x0

    invoke-interface {v4, v15, v12, v14}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/text/style/BackgroundColorSpan;

    array-length v14, v12

    const/4 v15, 0x0

    :goto_16
    if-ge v15, v14, :cond_1b

    aget-object v22, v12, v15

    invoke-virtual/range {v22 .. v22}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v22

    move/from16 v23, v5

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    move/from16 v5, v23

    goto :goto_16

    :cond_1b
    move/from16 v23, v5

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_17
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const-string v14, "bg_"

    invoke-static {v12, v14}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, ",."

    move/from16 v22, v6

    const-string v6, " *"

    move/from16 v25, v8

    const-string v8, "."

    invoke-static {v8, v14, v15, v14, v6}, Ld21;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v12}, Lcom/google/android/exoplayer2/ui/HtmlUtils;->a(I)Ljava/lang/String;

    move-result-object v8

    sget v12, Lcom/google/android/exoplayer2/util/Util;->a:I

    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v6, v22

    move/from16 v8, v25

    goto :goto_17

    :cond_1c
    move/from16 v22, v6

    move/from16 v25, v8

    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const-class v11, Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-interface {v4, v15, v8, v11}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    array-length v11, v8

    const/4 v15, 0x0

    :goto_18
    if-ge v15, v11, :cond_43

    aget-object v12, v8, v15

    instance-of v14, v12, Landroid/text/style/StrikethroughSpan;

    const/16 v30, 0x0

    if-eqz v14, :cond_1d

    const-string v34, "<span style=\'text-decoration:line-through;\'>"

    move-object/from16 v37, v3

    move-object/from16 v38, v7

    move-object/from16 v36, v10

    move/from16 v35, v11

    move-object/from16 v3, v34

    move-object/from16 v34, v8

    goto/16 :goto_1f

    :cond_1d
    move-object/from16 v37, v3

    instance-of v3, v12, Landroid/text/style/ForegroundColorSpan;

    if-eqz v3, :cond_1e

    move-object v3, v12

    check-cast v3, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v3}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/exoplayer2/ui/HtmlUtils;->a(I)Ljava/lang/String;

    move-result-object v3

    sget v34, Lcom/google/android/exoplayer2/util/Util;->a:I

    sget-object v34, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v38, v7

    const-string v7, "<span style=\'color:"

    move-object/from16 v34, v8

    const-string v8, ";\'>"

    invoke-static {v7, v3, v8}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_19
    move-object/from16 v36, v10

    move/from16 v35, v11

    goto/16 :goto_1f

    :cond_1e
    move-object/from16 v38, v7

    move-object/from16 v34, v8

    instance-of v3, v12, Landroid/text/style/BackgroundColorSpan;

    if-eqz v3, :cond_1f

    move-object v3, v12

    check-cast v3, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v3}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v3

    sget v7, Lcom/google/android/exoplayer2/util/Util;->a:I

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "<span class=\'bg_"

    const-string v8, "\'>"

    invoke-static {v3, v7, v8}, Ln00;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_19

    :cond_1f
    instance-of v3, v12, Lcom/google/android/exoplayer2/text/span/HorizontalTextInVerticalContextSpan;

    if-eqz v3, :cond_20

    const-string v3, "<span style=\'text-combine-upright:all;\'>"

    goto :goto_19

    :cond_20
    instance-of v3, v12, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v3, :cond_22

    move-object v3, v12

    check-cast v3, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {v3}, Landroid/text/style/AbsoluteSizeSpan;->getDip()Z

    move-result v7

    if-eqz v7, :cond_21

    invoke-virtual {v3}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    move-result v3

    int-to-float v3, v3

    goto :goto_1a

    :cond_21
    invoke-virtual {v3}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v3, v25

    :goto_1a
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    sget v7, Lcom/google/android/exoplayer2/util/Util;->a:I

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "<span style=\'font-size:%.2fpx;\'>"

    invoke-static {v7, v8, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_19

    :cond_22
    instance-of v3, v12, Landroid/text/style/RelativeSizeSpan;

    if-eqz v3, :cond_23

    move-object v3, v12

    check-cast v3, Landroid/text/style/RelativeSizeSpan;

    invoke-virtual {v3}, Landroid/text/style/RelativeSizeSpan;->getSizeChange()F

    move-result v3

    mul-float v3, v3, v17

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    sget v7, Lcom/google/android/exoplayer2/util/Util;->a:I

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "<span style=\'font-size:%.2f%%;\'>"

    invoke-static {v7, v8, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_19

    :cond_23
    instance-of v3, v12, Landroid/text/style/TypefaceSpan;

    if-eqz v3, :cond_25

    move-object v3, v12

    check-cast v3, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v3}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_24

    sget v7, Lcom/google/android/exoplayer2/util/Util;->a:I

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "<span style=\'font-family:\""

    const-string v8, "\";\'>"

    invoke-static {v7, v3, v8}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_19

    :cond_24
    :goto_1b
    move-object/from16 v36, v10

    move/from16 v35, v11

    move-object/from16 v3, v30

    goto/16 :goto_1f

    :cond_25
    instance-of v3, v12, Landroid/text/style/StyleSpan;

    if-eqz v3, :cond_29

    move-object v3, v12

    check-cast v3, Landroid/text/style/StyleSpan;

    invoke-virtual {v3}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v3

    const/4 v7, 0x1

    if-eq v3, v7, :cond_28

    const/4 v7, 0x2

    if-eq v3, v7, :cond_27

    const/4 v7, 0x3

    if-eq v3, v7, :cond_26

    goto :goto_1b

    :cond_26
    const-string v3, "<b><i>"

    goto/16 :goto_19

    :cond_27
    const-string v3, "<i>"

    goto/16 :goto_19

    :cond_28
    const-string v3, "<b>"

    goto/16 :goto_19

    :cond_29
    instance-of v3, v12, Lcom/google/android/exoplayer2/text/span/RubySpan;

    if-eqz v3, :cond_2d

    move-object v3, v12

    check-cast v3, Lcom/google/android/exoplayer2/text/span/RubySpan;

    iget v3, v3, Lcom/google/android/exoplayer2/text/span/RubySpan;->b:I

    const/4 v7, -0x1

    if-eq v3, v7, :cond_2c

    const/4 v7, 0x1

    if-eq v3, v7, :cond_2b

    const/4 v7, 0x2

    if-eq v3, v7, :cond_2a

    goto :goto_1b

    :cond_2a
    const-string v3, "<ruby style=\'ruby-position:under;\'>"

    goto/16 :goto_19

    :cond_2b
    const-string v3, "<ruby style=\'ruby-position:over;\'>"

    goto/16 :goto_19

    :cond_2c
    const-string v3, "<ruby style=\'ruby-position:unset;\'>"

    goto/16 :goto_19

    :cond_2d
    instance-of v3, v12, Landroid/text/style/UnderlineSpan;

    if-eqz v3, :cond_2e

    const-string v3, "<u>"

    goto/16 :goto_19

    :cond_2e
    instance-of v3, v12, Lcom/google/android/exoplayer2/text/span/TextEmphasisSpan;

    if-eqz v3, :cond_24

    move-object v3, v12

    check-cast v3, Lcom/google/android/exoplayer2/text/span/TextEmphasisSpan;

    iget v7, v3, Lcom/google/android/exoplayer2/text/span/TextEmphasisSpan;->a:I

    iget v8, v3, Lcom/google/android/exoplayer2/text/span/TextEmphasisSpan;->b:I

    move-object/from16 v36, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v35, v11

    const/4 v11, 0x1

    if-eq v8, v11, :cond_30

    const/4 v11, 0x2

    if-eq v8, v11, :cond_2f

    goto :goto_1c

    :cond_2f
    const-string v8, "open "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c

    :cond_30
    const/4 v11, 0x2

    const-string v8, "filled "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1c
    if-eqz v7, :cond_34

    const/4 v8, 0x1

    if-eq v7, v8, :cond_33

    if-eq v7, v11, :cond_32

    const/4 v8, 0x3

    if-eq v7, v8, :cond_31

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1d

    :cond_31
    const-string v7, "sesame"

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1d

    :cond_32
    const-string v7, "dot"

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1d

    :cond_33
    const-string v7, "circle"

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1d

    :cond_34
    const-string v7, "none"

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1d
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v3, v3, Lcom/google/android/exoplayer2/text/span/TextEmphasisSpan;->c:I

    const/4 v10, 0x2

    if-eq v3, v10, :cond_35

    const-string v3, "over right"

    goto :goto_1e

    :cond_35
    const-string v3, "under left"

    :goto_1e
    filled-new-array {v7, v3}, [Ljava/lang/Object;

    move-result-object v3

    sget v7, Lcom/google/android/exoplayer2/util/Util;->a:I

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "<span style=\'-webkit-text-emphasis-style:%1$s;text-emphasis-style:%1$s;-webkit-text-emphasis-position:%2$s;text-emphasis-position:%2$s;display:inline-block;\'>"

    invoke-static {v7, v8, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_1f
    const-string v7, "</span>"

    if-nez v14, :cond_37

    instance-of v8, v12, Landroid/text/style/ForegroundColorSpan;

    if-nez v8, :cond_37

    instance-of v8, v12, Landroid/text/style/BackgroundColorSpan;

    if-nez v8, :cond_37

    instance-of v8, v12, Lcom/google/android/exoplayer2/text/span/HorizontalTextInVerticalContextSpan;

    if-nez v8, :cond_37

    instance-of v8, v12, Landroid/text/style/AbsoluteSizeSpan;

    if-nez v8, :cond_37

    instance-of v8, v12, Landroid/text/style/RelativeSizeSpan;

    if-nez v8, :cond_37

    instance-of v8, v12, Lcom/google/android/exoplayer2/text/span/TextEmphasisSpan;

    if-eqz v8, :cond_36

    goto :goto_20

    :cond_36
    instance-of v8, v12, Landroid/text/style/TypefaceSpan;

    if-eqz v8, :cond_39

    move-object v8, v12

    check-cast v8, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v8}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_38

    :cond_37
    :goto_20
    const/4 v8, 0x3

    const/4 v10, 0x2

    goto :goto_22

    :cond_38
    move-object/from16 v7, v30

    goto :goto_20

    :cond_39
    instance-of v7, v12, Landroid/text/style/StyleSpan;

    if-eqz v7, :cond_3e

    move-object v7, v12

    check-cast v7, Landroid/text/style/StyleSpan;

    invoke-virtual {v7}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_3d

    const/4 v10, 0x2

    if-eq v7, v10, :cond_3c

    const/4 v8, 0x3

    if-eq v7, v8, :cond_3a

    goto :goto_21

    :cond_3a
    const-string v30, "</i></b>"

    :cond_3b
    :goto_21
    move-object/from16 v7, v30

    goto :goto_22

    :cond_3c
    const/4 v8, 0x3

    const-string v30, "</i>"

    goto :goto_21

    :cond_3d
    const/4 v8, 0x3

    const/4 v10, 0x2

    const-string v30, "</b>"

    goto :goto_21

    :cond_3e
    const/4 v8, 0x3

    const/4 v10, 0x2

    instance-of v7, v12, Lcom/google/android/exoplayer2/text/span/RubySpan;

    if-eqz v7, :cond_3f

    move-object v7, v12

    check-cast v7, Lcom/google/android/exoplayer2/text/span/RubySpan;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v14, "<rt>"

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v7, Lcom/google/android/exoplayer2/text/span/RubySpan;->a:Ljava/lang/String;

    invoke-static {v7}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v14, "</rt></ruby>"

    invoke-static {v7, v14, v11}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v30

    goto :goto_21

    :cond_3f
    instance-of v7, v12, Landroid/text/style/UnderlineSpan;

    if-eqz v7, :cond_3b

    const-string v30, "</u>"

    goto :goto_21

    :goto_22
    invoke-interface {v4, v12}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    invoke-interface {v4, v12}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v12

    if-eqz v3, :cond_42

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v14, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;

    invoke-direct {v14, v11, v12, v3, v7}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;

    if-nez v3, :cond_40

    new-instance v3, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;-><init>()V

    invoke-virtual {v6, v11, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_40
    iget-object v3, v3, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;

    if-nez v3, :cond_41

    new-instance v3, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;-><init>()V

    invoke-virtual {v6, v12, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_41
    iget-object v3, v3, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_42
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v8, v34

    move/from16 v11, v35

    move-object/from16 v10, v36

    move-object/from16 v3, v37

    move-object/from16 v7, v38

    goto/16 :goto_18

    :cond_43
    move-object/from16 v37, v3

    move-object/from16 v38, v7

    move-object/from16 v36, v10

    const/4 v8, 0x3

    const/4 v10, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v7, 0x0

    const/4 v15, 0x0

    :goto_23
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-ge v15, v11, :cond_46

    invoke-virtual {v6, v15}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    invoke-interface {v4, v7, v11}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;

    iget-object v12, v7, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;->b:Ljava/util/ArrayList;

    iget-object v14, v7, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;->a:Ljava/util/ArrayList;

    sget-object v8, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;->f:Lcom/google/android/exoplayer2/ui/a;

    invoke-static {v12, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v7, v7, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$Transition;->b:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_24
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_44

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;

    iget-object v8, v8, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;->d:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    :cond_44
    sget-object v7, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;->e:Lcom/google/android/exoplayer2/ui/a;

    invoke-static {v14, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_25
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_45

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;

    iget-object v8, v8, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$SpanInfo;->c:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_25

    :cond_45
    add-int/lit8 v15, v15, 0x1

    move v7, v11

    const/4 v8, 0x3

    goto :goto_23

    :cond_46
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-interface {v4, v7, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$HtmlAndCss;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3, v5}, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$HtmlAndCss;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    :goto_26
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_49

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_48

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    goto :goto_28

    :cond_47
    const/4 v5, 0x0

    goto :goto_29

    :cond_48
    :goto_28
    const/4 v5, 0x1

    :goto_29
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Assertions;->b(Z)V

    goto :goto_27

    :cond_49
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v25

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    const-string v30, "center"

    move-object/from16 v23, v3

    filled-new-array/range {v23 .. v36}, [Ljava/lang/Object;

    move-result-object v3

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "<div style=\'position:absolute;z-index:%s;%s:%.2f%%;%s:%s;%s:%s;text-align:%s;writing-mode:%s;font-size:%s;background-color:%s;transform:translate(%s%%,%s%%)%s;\'>"

    invoke-static {v5, v6, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<span class=\'default_bg\'>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v4, Lcom/google/android/exoplayer2/ui/SpannedToHtmlConverter$HtmlAndCss;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "</span></div>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v22, 0x1

    move v11, v10

    move/from16 v5, v16

    move-object/from16 v3, v37

    move-object/from16 v7, v38

    const/4 v4, 0x0

    const/4 v10, 0x3

    const/4 v12, 0x1

    goto/16 :goto_1

    :cond_4a
    const-string v3, "</div></body></html>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<html><head><style>"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "{"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "}"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2a

    :cond_4b
    const-string v2, "</style></head>"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v15, 0x0

    invoke-virtual {v1, v15, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/common/base/Charsets;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const/4 v7, 0x1

    invoke-static {v1, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    const-string v2, "text/html"

    const-string v3, "base64"

    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/WebViewSubtitleOutput;->c()V

    :cond_0
    return-void
.end method
