.class final Landroidx/media3/ui/WebViewSubtitleOutput;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/ui/SubtitleView$Output;


# instance fields
.field public final b:Landroidx/media3/ui/CanvasSubtitleOutput;

.field public final c:Landroid/webkit/WebView;

.field public d:Ljava/util/List;

.field public e:Landroidx/media3/ui/CaptionStyleCompat;

.field public f:F

.field public g:I

.field public h:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, v0}, Landroidx/media3/ui/WebViewSubtitleOutput;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->d:Ljava/util/List;

    sget-object v0, Landroidx/media3/ui/CaptionStyleCompat;->g:Landroidx/media3/ui/CaptionStyleCompat;

    iput-object v0, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->e:Landroidx/media3/ui/CaptionStyleCompat;

    const v0, 0x3d5a511a    # 0.0533f

    iput v0, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->f:F

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->g:I

    const v1, 0x3da3d70a    # 0.08f

    iput v1, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->h:F

    new-instance v1, Landroidx/media3/ui/CanvasSubtitleOutput;

    invoke-direct {v1, p1, p2}, Landroidx/media3/ui/CanvasSubtitleOutput;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->b:Landroidx/media3/ui/CanvasSubtitleOutput;

    new-instance v2, Landroidx/media3/ui/WebViewSubtitleOutput$1;

    invoke-direct {v2, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->c:Landroid/webkit/WebView;

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Landroidx/media3/ui/CaptionStyleCompat;FIF)V
    .locals 6

    iput-object p2, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->e:Landroidx/media3/ui/CaptionStyleCompat;

    iput p3, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->f:F

    iput p4, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->g:I

    iput p5, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->h:F

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/text/Cue;

    iget-object v4, v3, Landroidx/media3/common/text/Cue;->d:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    iput-object v0, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->d:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/media3/ui/WebViewSubtitleOutput;->c()V

    :cond_3
    iget-object v0, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->b:Landroidx/media3/ui/CanvasSubtitleOutput;

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/ui/CanvasSubtitleOutput;->a(Ljava/util/List;Landroidx/media3/ui/CaptionStyleCompat;FIF)V

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

    invoke-static {p2, v0, v1, p1}, Landroidx/media3/ui/SubtitleViewUtils;->b(IIIF)F

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

    sget-object p1, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string p2, "%.2fpx"

    invoke-static {p1, p2, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final c()V
    .locals 47

    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Landroidx/media3/ui/WebViewSubtitleOutput;->e:Landroidx/media3/ui/CaptionStyleCompat;

    iget v2, v2, Landroidx/media3/ui/CaptionStyleCompat;->a:I

    invoke-static {v2}, Landroidx/media3/ui/HtmlUtils;->a(I)Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Landroidx/media3/ui/WebViewSubtitleOutput;->g:I

    iget v4, v0, Landroidx/media3/ui/WebViewSubtitleOutput;->f:F

    invoke-virtual {v0, v4, v3}, Landroidx/media3/ui/WebViewSubtitleOutput;->b(FI)Ljava/lang/String;

    move-result-object v3

    const v4, 0x3f99999a    # 1.2f

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget-object v6, v0, Landroidx/media3/ui/WebViewSubtitleOutput;->e:Landroidx/media3/ui/CaptionStyleCompat;

    iget v7, v6, Landroidx/media3/ui/CaptionStyleCompat;->d:I

    iget v6, v6, Landroidx/media3/ui/CaptionStyleCompat;->e:I

    const-string v8, "unset"

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eq v7, v11, :cond_3

    if-eq v7, v10, :cond_2

    if-eq v7, v9, :cond_1

    const/4 v12, 0x4

    if-eq v7, v12, :cond_0

    move-object v6, v8

    goto :goto_0

    :cond_0
    invoke-static {v6}, Landroidx/media3/ui/HtmlUtils;->a(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "-0.05em -0.05em 0.15em "

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    invoke-static {v6}, Landroidx/media3/ui/HtmlUtils;->a(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "0.06em 0.08em 0.15em "

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_2
    invoke-static {v6}, Landroidx/media3/ui/HtmlUtils;->a(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "0.1em 0.12em 0.15em "

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_3
    invoke-static {v6}, Landroidx/media3/ui/HtmlUtils;->a(I)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v12, "1px 1px 0 %1$s, 1px -1px 0 %1$s, -1px 1px 0 %1$s, -1px -1px 0 %1$s"

    invoke-static {v7, v12, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_0
    filled-new-array {v2, v3, v5, v6}, [Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "<body><div style=\'-webkit-user-select:none;position:fixed;top:0;bottom:0;left:0;right:0;color:%s;font-size:%s;line-height:%.2f;text-shadow:%s;\'>"

    invoke-static {v3, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, v0, Landroidx/media3/ui/WebViewSubtitleOutput;->e:Landroidx/media3/ui/CaptionStyleCompat;

    iget v3, v3, Landroidx/media3/ui/CaptionStyleCompat;->b:I

    invoke-static {v3}, Landroidx/media3/ui/HtmlUtils;->a(I)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "background-color:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, ".default_bg,.default_bg *"

    invoke-virtual {v2, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x0

    :goto_1
    iget-object v12, v0, Landroidx/media3/ui/WebViewSubtitleOutput;->d:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v7, v12, :cond_54

    iget-object v12, v0, Landroidx/media3/ui/WebViewSubtitleOutput;->d:Ljava/util/List;

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/media3/common/text/Cue;

    iget v13, v12, Landroidx/media3/common/text/Cue;->h:F

    iget v14, v12, Landroidx/media3/common/text/Cue;->p:I

    const v15, -0x800001

    cmpl-float v16, v13, v15

    const/high16 v17, 0x42c80000    # 100.0f

    if-eqz v16, :cond_4

    mul-float v13, v13, v17

    :goto_2
    move/from16 v16, v4

    goto :goto_3

    :cond_4
    const/high16 v13, 0x42480000    # 50.0f

    goto :goto_2

    :goto_3
    iget v4, v12, Landroidx/media3/common/text/Cue;->i:I

    const/16 v18, -0x32

    const/16 v19, -0x64

    if-eq v4, v11, :cond_6

    if-eq v4, v10, :cond_5

    move/from16 v20, v15

    const/4 v4, 0x0

    goto :goto_4

    :cond_5
    move/from16 v20, v15

    move/from16 v4, v19

    goto :goto_4

    :cond_6
    move/from16 v20, v15

    move/from16 v4, v18

    :goto_4
    iget v15, v12, Landroidx/media3/common/text/Cue;->e:F

    cmpl-float v21, v15, v20

    const/high16 v22, 0x3f800000    # 1.0f

    const/16 v23, 0x0

    const-string v9, "%.2f%%"

    if-eqz v21, :cond_e

    iget v5, v12, Landroidx/media3/common/text/Cue;->f:I

    if-eq v5, v11, :cond_c

    mul-float v15, v15, v17

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v15, v9, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget v15, v12, Landroidx/media3/common/text/Cue;->g:I

    if-ne v14, v11, :cond_9

    if-eq v15, v11, :cond_8

    if-eq v15, v10, :cond_7

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
    if-eq v15, v11, :cond_b

    if-eq v15, v10, :cond_a

    const/16 v18, 0x0

    goto :goto_6

    :cond_a
    move/from16 v18, v19

    :cond_b
    :goto_6
    move/from16 v19, v18

    :goto_7
    move-object/from16 v28, v5

    const/4 v5, 0x0

    goto :goto_9

    :cond_c
    cmpl-float v5, v15, v23

    const-string v10, "%.2fem"

    if-ltz v5, :cond_d

    mul-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v15, v10, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v28, v5

    const/4 v5, 0x0

    :goto_8
    const/16 v19, 0x0

    goto :goto_9

    :cond_d
    neg-float v5, v15

    sub-float v5, v5, v22

    mul-float v5, v5, v16

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v15, v10, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v28, v5

    move v5, v11

    goto :goto_8

    :cond_e
    iget v5, v0, Landroidx/media3/ui/WebViewSubtitleOutput;->h:F

    sub-float v22, v22, v5

    mul-float v22, v22, v17

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v10, v9, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_7

    :goto_9
    iget v10, v12, Landroidx/media3/common/text/Cue;->j:F

    cmpl-float v15, v10, v20

    if-eqz v15, :cond_f

    mul-float v10, v10, v17

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v15, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    :goto_a
    move-object/from16 v30, v9

    goto :goto_b

    :cond_f
    const-string v9, "fit-content"

    goto :goto_a

    :goto_b
    iget-object v9, v12, Landroidx/media3/common/text/Cue;->b:Landroid/text/Layout$Alignment;

    const-string v10, "start"

    const-string v15, "end"

    const-string v20, "center"

    if-nez v9, :cond_10

    move v9, v11

    move-object/from16 v31, v20

    const/4 v11, 0x2

    goto :goto_d

    :cond_10
    sget-object v22, Landroidx/media3/ui/WebViewSubtitleOutput$2;->a:[I

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v9, v22, v9

    if-eq v9, v11, :cond_12

    const/4 v11, 0x2

    if-eq v9, v11, :cond_11

    move-object/from16 v31, v20

    :goto_c
    const/4 v9, 0x1

    goto :goto_d

    :cond_11
    move-object/from16 v31, v15

    goto :goto_c

    :cond_12
    const/4 v11, 0x2

    move-object/from16 v31, v10

    goto :goto_c

    :goto_d
    if-eq v14, v9, :cond_14

    if-eq v14, v11, :cond_13

    const-string v9, "horizontal-tb"

    :goto_e
    move-object/from16 v32, v9

    goto :goto_f

    :cond_13
    const-string v9, "vertical-lr"

    goto :goto_e

    :cond_14
    const-string v9, "vertical-rl"

    goto :goto_e

    :goto_f
    iget v9, v12, Landroidx/media3/common/text/Cue;->n:I

    iget v11, v12, Landroidx/media3/common/text/Cue;->o:F

    invoke-virtual {v0, v11, v9}, Landroidx/media3/ui/WebViewSubtitleOutput;->b(FI)Ljava/lang/String;

    move-result-object v33

    iget-boolean v9, v12, Landroidx/media3/common/text/Cue;->l:Z

    if-eqz v9, :cond_15

    iget v9, v12, Landroidx/media3/common/text/Cue;->m:I

    goto :goto_10

    :cond_15
    iget-object v9, v0, Landroidx/media3/ui/WebViewSubtitleOutput;->e:Landroidx/media3/ui/CaptionStyleCompat;

    iget v9, v9, Landroidx/media3/ui/CaptionStyleCompat;->c:I

    :goto_10
    invoke-static {v9}, Landroidx/media3/ui/HtmlUtils;->a(I)Ljava/lang/String;

    move-result-object v34

    const-string v9, "right"

    const-string v11, "left"

    const-string v24, "top"

    move/from16 v25, v4

    const/4 v4, 0x1

    if-eq v14, v4, :cond_1a

    const/4 v4, 0x2

    if-eq v14, v4, :cond_17

    if-eqz v5, :cond_16

    const-string v24, "bottom"

    :cond_16
    move-object/from16 v27, v24

    :goto_11
    const/4 v4, 0x2

    goto :goto_14

    :cond_17
    if-eqz v5, :cond_18

    goto :goto_13

    :cond_18
    :goto_12
    move-object v9, v11

    :cond_19
    :goto_13
    move-object/from16 v27, v9

    move-object/from16 v11, v24

    goto :goto_11

    :cond_1a
    if-eqz v5, :cond_19

    goto :goto_12

    :goto_14
    if-eq v14, v4, :cond_1c

    const/4 v4, 0x1

    if-ne v14, v4, :cond_1b

    goto :goto_15

    :cond_1b
    const-string v4, "width"

    move-object/from16 v29, v4

    move/from16 v4, v25

    goto :goto_16

    :cond_1c
    :goto_15
    const-string v4, "height"

    move-object/from16 v29, v4

    move/from16 v4, v19

    move/from16 v19, v25

    :goto_16
    iget-object v5, v12, Landroidx/media3/common/text/Cue;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    sget-object v24, Landroidx/media3/ui/SpannedToHtmlConverter;->a:Ljava/util/regex/Pattern;

    move/from16 v24, v4

    const-string v4, "</span>"

    move/from16 v38, v7

    const-string v7, ";\'>"

    move/from16 v25, v9

    const-string v9, ""

    if-nez v5, :cond_1d

    new-instance v5, Landroidx/media3/ui/SpannedToHtmlConverter$HtmlAndCss;

    move-object/from16 v39, v10

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->h()Lcom/google/common/collect/ImmutableMap;

    move-result-object v10

    invoke-direct {v5, v9, v10}, Landroidx/media3/ui/SpannedToHtmlConverter$HtmlAndCss;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v40, v3

    move-object/from16 v42, v6

    move-object/from16 v26, v9

    :goto_17
    move-object/from16 v35, v11

    move/from16 v36, v13

    move-object/from16 v41, v15

    goto/16 :goto_2a

    :cond_1d
    move-object/from16 v39, v10

    instance-of v10, v5, Landroid/text/Spanned;

    if-nez v10, :cond_1e

    new-instance v10, Landroidx/media3/ui/SpannedToHtmlConverter$HtmlAndCss;

    invoke-static {v5}, Landroidx/media3/ui/SpannedToHtmlConverter;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v26, v9

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->h()Lcom/google/common/collect/ImmutableMap;

    move-result-object v9

    invoke-direct {v10, v5, v9}, Landroidx/media3/ui/SpannedToHtmlConverter$HtmlAndCss;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v40, v3

    move-object/from16 v42, v6

    move-object v5, v10

    goto :goto_17

    :cond_1e
    move-object/from16 v26, v9

    check-cast v5, Landroid/text/Spanned;

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v10

    move-object/from16 v35, v11

    const-class v11, Landroid/text/style/BackgroundColorSpan;

    move/from16 v36, v13

    const/4 v13, 0x0

    invoke-interface {v5, v13, v10, v11}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/text/style/BackgroundColorSpan;

    array-length v11, v10

    const/4 v13, 0x0

    :goto_18
    if-ge v13, v11, :cond_1f

    aget-object v37, v10, v13

    invoke-virtual/range {v37 .. v37}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v37

    move-object/from16 v40, v10

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v10, v40

    goto :goto_18

    :cond_1f
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_19
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_20

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const-string v13, "bg_"

    invoke-static {v11, v13}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v37, v9

    const-string v9, ",."

    move/from16 v40, v11

    const-string v11, " *"

    move-object/from16 v41, v15

    const-string v15, "."

    invoke-static {v15, v13, v9, v13, v11}, Ld21;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v40 .. v40}, Landroidx/media3/ui/HtmlUtils;->a(I)Ljava/lang/String;

    move-result-object v11

    sget-object v13, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v9, v37

    move-object/from16 v15, v41

    goto :goto_19

    :cond_20
    move-object/from16 v41, v15

    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v11

    const-class v13, Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-interface {v5, v15, v11, v13}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    array-length v13, v11

    const/4 v15, 0x0

    :goto_1a
    if-ge v15, v13, :cond_47

    move-object/from16 v40, v3

    aget-object v3, v11, v15

    move-object/from16 v42, v6

    instance-of v6, v3, Landroid/text/style/StrikethroughSpan;

    const/16 v37, 0x0

    if-eqz v6, :cond_21

    const-string v43, "<span style=\'text-decoration:line-through;\'>"

    move-object/from16 v44, v43

    move/from16 v43, v6

    move-object/from16 v6, v44

    move-object/from16 v44, v11

    :goto_1b
    move/from16 v45, v13

    :goto_1c
    move/from16 v46, v15

    goto/16 :goto_22

    :cond_21
    move/from16 v43, v6

    instance-of v6, v3, Landroid/text/style/ForegroundColorSpan;

    if-eqz v6, :cond_22

    move-object v6, v3

    check-cast v6, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v6}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v6

    invoke-static {v6}, Landroidx/media3/ui/HtmlUtils;->a(I)Ljava/lang/String;

    move-result-object v6

    sget-object v44, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    sget-object v44, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v44, v11

    const-string v11, "<span style=\'color:"

    invoke-static {v11, v6, v7}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1b

    :cond_22
    move-object/from16 v44, v11

    instance-of v6, v3, Landroid/text/style/BackgroundColorSpan;

    if-eqz v6, :cond_23

    move-object v6, v3

    check-cast v6, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v6}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v6

    sget-object v11, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "<span class=\'bg_"

    move/from16 v45, v13

    const-string v13, "\'>"

    invoke-static {v6, v11, v13}, Ln00;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1c

    :cond_23
    move/from16 v45, v13

    instance-of v6, v3, Landroidx/media3/common/text/HorizontalTextInVerticalContextSpan;

    if-eqz v6, :cond_24

    const-string v6, "<span style=\'text-combine-upright:all;\'>"

    goto :goto_1c

    :cond_24
    instance-of v6, v3, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v6, :cond_26

    move-object v6, v3

    check-cast v6, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {v6}, Landroid/text/style/AbsoluteSizeSpan;->getDip()Z

    move-result v11

    if-eqz v11, :cond_25

    invoke-virtual {v6}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    move-result v6

    int-to-float v6, v6

    goto :goto_1d

    :cond_25
    invoke-virtual {v6}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v6, v25

    :goto_1d
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    sget-object v11, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "<span style=\'font-size:%.2fpx;\'>"

    invoke-static {v11, v13, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1c

    :cond_26
    instance-of v6, v3, Landroid/text/style/RelativeSizeSpan;

    if-eqz v6, :cond_27

    move-object v6, v3

    check-cast v6, Landroid/text/style/RelativeSizeSpan;

    invoke-virtual {v6}, Landroid/text/style/RelativeSizeSpan;->getSizeChange()F

    move-result v6

    mul-float v6, v6, v17

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    sget-object v11, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "<span style=\'font-size:%.2f%%;\'>"

    invoke-static {v11, v13, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1c

    :cond_27
    instance-of v6, v3, Landroid/text/style/TypefaceSpan;

    if-eqz v6, :cond_29

    move-object v6, v3

    check-cast v6, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v6}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_28

    sget-object v11, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "<span style=\'font-family:\""

    const-string v13, "\";\'>"

    invoke-static {v11, v6, v13}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1c

    :cond_28
    :goto_1e
    move/from16 v46, v15

    move-object/from16 v6, v37

    goto/16 :goto_22

    :cond_29
    instance-of v6, v3, Landroid/text/style/StyleSpan;

    if-eqz v6, :cond_2d

    move-object v6, v3

    check-cast v6, Landroid/text/style/StyleSpan;

    invoke-virtual {v6}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v6

    const/4 v11, 0x1

    if-eq v6, v11, :cond_2c

    const/4 v11, 0x2

    if-eq v6, v11, :cond_2b

    const/4 v11, 0x3

    if-eq v6, v11, :cond_2a

    goto :goto_1e

    :cond_2a
    const-string v6, "<b><i>"

    goto/16 :goto_1c

    :cond_2b
    const-string v6, "<i>"

    goto/16 :goto_1c

    :cond_2c
    const-string v6, "<b>"

    goto/16 :goto_1c

    :cond_2d
    instance-of v6, v3, Landroidx/media3/common/text/RubySpan;

    if-eqz v6, :cond_31

    move-object v6, v3

    check-cast v6, Landroidx/media3/common/text/RubySpan;

    iget v6, v6, Landroidx/media3/common/text/RubySpan;->b:I

    const/4 v11, -0x1

    if-eq v6, v11, :cond_30

    const/4 v11, 0x1

    if-eq v6, v11, :cond_2f

    const/4 v11, 0x2

    if-eq v6, v11, :cond_2e

    goto :goto_1e

    :cond_2e
    const-string v6, "<ruby style=\'ruby-position:under;\'>"

    goto/16 :goto_1c

    :cond_2f
    const-string v6, "<ruby style=\'ruby-position:over;\'>"

    goto/16 :goto_1c

    :cond_30
    const-string v6, "<ruby style=\'ruby-position:unset;\'>"

    goto/16 :goto_1c

    :cond_31
    instance-of v6, v3, Landroid/text/style/UnderlineSpan;

    if-eqz v6, :cond_32

    const-string v6, "<u>"

    goto/16 :goto_1c

    :cond_32
    instance-of v6, v3, Landroidx/media3/common/text/TextEmphasisSpan;

    if-eqz v6, :cond_28

    move-object v6, v3

    check-cast v6, Landroidx/media3/common/text/TextEmphasisSpan;

    iget v11, v6, Landroidx/media3/common/text/TextEmphasisSpan;->a:I

    iget v13, v6, Landroidx/media3/common/text/TextEmphasisSpan;->b:I

    move/from16 v46, v15

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x1

    if-eq v13, v0, :cond_34

    const/4 v0, 0x2

    if-eq v13, v0, :cond_33

    goto :goto_1f

    :cond_33
    const-string v13, "open "

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f

    :cond_34
    const/4 v0, 0x2

    const-string v13, "filled "

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1f
    if-eqz v11, :cond_38

    const/4 v13, 0x1

    if-eq v11, v13, :cond_37

    if-eq v11, v0, :cond_36

    const/4 v0, 0x3

    if-eq v11, v0, :cond_35

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    :cond_35
    const-string v0, "sesame"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    :cond_36
    const-string v0, "dot"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    :cond_37
    const-string v0, "circle"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    :cond_38
    const-string v0, "none"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_20
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v6, v6, Landroidx/media3/common/text/TextEmphasisSpan;->c:I

    const/4 v11, 0x2

    if-eq v6, v11, :cond_39

    const-string v6, "over right"

    goto :goto_21

    :cond_39
    const-string v6, "under left"

    :goto_21
    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v6, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "<span style=\'-webkit-text-emphasis-style:%1$s;text-emphasis-style:%1$s;-webkit-text-emphasis-position:%2$s;text-emphasis-position:%2$s;display:inline-block;\'>"

    invoke-static {v6, v11, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    :goto_22
    if-nez v43, :cond_3a

    instance-of v0, v3, Landroid/text/style/ForegroundColorSpan;

    if-nez v0, :cond_3a

    instance-of v0, v3, Landroid/text/style/BackgroundColorSpan;

    if-nez v0, :cond_3a

    instance-of v0, v3, Landroidx/media3/common/text/HorizontalTextInVerticalContextSpan;

    if-nez v0, :cond_3a

    instance-of v0, v3, Landroid/text/style/AbsoluteSizeSpan;

    if-nez v0, :cond_3a

    instance-of v0, v3, Landroid/text/style/RelativeSizeSpan;

    if-nez v0, :cond_3a

    instance-of v0, v3, Landroidx/media3/common/text/TextEmphasisSpan;

    if-eqz v0, :cond_3b

    :cond_3a
    const/4 v11, 0x3

    goto :goto_25

    :cond_3b
    instance-of v0, v3, Landroid/text/style/TypefaceSpan;

    if-eqz v0, :cond_3d

    move-object v0, v3

    check-cast v0, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v0}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3c

    move-object v0, v4

    :goto_23
    const/4 v11, 0x3

    goto :goto_26

    :cond_3c
    move-object/from16 v0, v37

    goto :goto_23

    :cond_3d
    instance-of v0, v3, Landroid/text/style/StyleSpan;

    if-eqz v0, :cond_42

    move-object v0, v3

    check-cast v0, Landroid/text/style/StyleSpan;

    invoke-virtual {v0}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v0

    const/4 v11, 0x1

    if-eq v0, v11, :cond_41

    const/4 v11, 0x2

    if-eq v0, v11, :cond_40

    const/4 v11, 0x3

    if-eq v0, v11, :cond_3e

    goto :goto_24

    :cond_3e
    const-string v37, "</i></b>"

    :cond_3f
    :goto_24
    move-object/from16 v0, v37

    goto :goto_26

    :cond_40
    const/4 v11, 0x3

    const-string v37, "</i>"

    goto :goto_24

    :cond_41
    const/4 v11, 0x3

    const-string v37, "</b>"

    goto :goto_24

    :cond_42
    const/4 v11, 0x3

    instance-of v0, v3, Landroidx/media3/common/text/RubySpan;

    if-eqz v0, :cond_43

    move-object v0, v3

    check-cast v0, Landroidx/media3/common/text/RubySpan;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v15, "<rt>"

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/media3/common/text/RubySpan;->a:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/ui/SpannedToHtmlConverter;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v15, "</rt></ruby>"

    invoke-static {v0, v15, v13}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v37

    goto :goto_24

    :cond_43
    instance-of v0, v3, Landroid/text/style/UnderlineSpan;

    if-eqz v0, :cond_3f

    const-string v37, "</u>"

    goto :goto_24

    :goto_25
    move-object v0, v4

    :goto_26
    invoke-interface {v5, v3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v13

    invoke-interface {v5, v3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    if-eqz v6, :cond_46

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v15, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;

    invoke-direct {v15, v13, v3, v6, v0}, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/ui/SpannedToHtmlConverter$Transition;

    if-nez v0, :cond_44

    new-instance v0, Landroidx/media3/ui/SpannedToHtmlConverter$Transition;

    invoke-direct {v0}, Landroidx/media3/ui/SpannedToHtmlConverter$Transition;-><init>()V

    invoke-virtual {v9, v13, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_44
    iget-object v0, v0, Landroidx/media3/ui/SpannedToHtmlConverter$Transition;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/ui/SpannedToHtmlConverter$Transition;

    if-nez v0, :cond_45

    new-instance v0, Landroidx/media3/ui/SpannedToHtmlConverter$Transition;

    invoke-direct {v0}, Landroidx/media3/ui/SpannedToHtmlConverter$Transition;-><init>()V

    invoke-virtual {v9, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_45
    iget-object v0, v0, Landroidx/media3/ui/SpannedToHtmlConverter$Transition;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_46
    add-int/lit8 v15, v46, 0x1

    move-object/from16 v0, p0

    move-object/from16 v3, v40

    move-object/from16 v6, v42

    move-object/from16 v11, v44

    move/from16 v13, v45

    goto/16 :goto_1a

    :cond_47
    move-object/from16 v40, v3

    move-object/from16 v42, v6

    const/4 v11, 0x3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    const/4 v13, 0x0

    :goto_27
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v13, v6, :cond_4a

    invoke-virtual {v9, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-interface {v5, v3, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroidx/media3/ui/SpannedToHtmlConverter;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/ui/SpannedToHtmlConverter$Transition;

    iget-object v15, v3, Landroidx/media3/ui/SpannedToHtmlConverter$Transition;->b:Ljava/util/ArrayList;

    iget-object v11, v3, Landroidx/media3/ui/SpannedToHtmlConverter$Transition;->a:Ljava/util/ArrayList;

    move/from16 v17, v6

    sget-object v6, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->f:Landroidx/media3/ui/i;

    invoke-static {v15, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v3, v3, Landroidx/media3/ui/SpannedToHtmlConverter$Transition;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_48

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;

    iget-object v6, v6, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->d:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_28

    :cond_48
    sget-object v3, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->e:Landroidx/media3/ui/i;

    invoke-static {v11, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_49

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;

    iget-object v6, v6, Landroidx/media3/ui/SpannedToHtmlConverter$SpanInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_29

    :cond_49
    add-int/lit8 v13, v13, 0x1

    move/from16 v3, v17

    const/4 v11, 0x3

    goto :goto_27

    :cond_4a
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-interface {v5, v3, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroidx/media3/ui/SpannedToHtmlConverter;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Landroidx/media3/ui/SpannedToHtmlConverter$HtmlAndCss;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, v10}, Landroidx/media3/ui/SpannedToHtmlConverter$HtmlAndCss;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    :goto_2a
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_4c

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    goto :goto_2c

    :cond_4b
    const/4 v3, 0x0

    goto :goto_2d

    :cond_4c
    :goto_2c
    const/4 v3, 0x1

    :goto_2d
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->q(Z)V

    goto :goto_2b

    :cond_4d
    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static/range {v36 .. v36}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    iget v9, v12, Landroidx/media3/common/text/Cue;->q:F

    cmpl-float v10, v9, v23

    if-eqz v10, :cond_50

    const/4 v11, 0x2

    if-eq v14, v11, :cond_4f

    const/4 v11, 0x1

    if-ne v14, v11, :cond_4e

    goto :goto_2e

    :cond_4e
    const-string v10, "skewX"

    goto :goto_2f

    :cond_4f
    :goto_2e
    const-string v10, "skewY"

    :goto_2f
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    filled-new-array {v10, v9}, [Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "%s(%.2fdeg)"

    invoke-static {v10, v11, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v37, v9

    move-object/from16 v24, v0

    move-object/from16 v26, v3

    move-object/from16 v25, v35

    :goto_30
    move-object/from16 v35, v6

    goto :goto_31

    :cond_50
    move-object/from16 v37, v26

    move-object/from16 v24, v0

    move-object/from16 v25, v35

    move-object/from16 v26, v3

    goto :goto_30

    :goto_31
    filled-new-array/range {v24 .. v37}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "<div style=\'position:absolute;z-index:%s;%s:%.2f%%;%s:%s;%s:%s;text-align:%s;writing-mode:%s;font-size:%s;background-color:%s;transform:translate(%s%%,%s%%)%s;\'>"

    invoke-static {v3, v6, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<span class=\'default_bg\'>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v12, Landroidx/media3/common/text/Cue;->c:Landroid/text/Layout$Alignment;

    iget-object v3, v5, Landroidx/media3/ui/SpannedToHtmlConverter$HtmlAndCss;->a:Ljava/lang/String;

    if-eqz v0, :cond_53

    sget-object v5, Landroidx/media3/ui/WebViewSubtitleOutput$2;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v5, v0

    const/4 v11, 0x1

    if-eq v0, v11, :cond_52

    const/4 v11, 0x2

    if-eq v0, v11, :cond_51

    move-object/from16 v10, v20

    goto :goto_32

    :cond_51
    move-object/from16 v10, v41

    goto :goto_32

    :cond_52
    const/4 v11, 0x2

    move-object/from16 v10, v39

    :goto_32
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "<span style=\'display:inline-block; text-align:"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_33

    :cond_53
    const/4 v11, 0x2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_33
    const-string v0, "</span></div>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v38, 0x1

    const/4 v9, 0x3

    move-object/from16 v0, p0

    move v10, v11

    move/from16 v4, v16

    move-object/from16 v3, v40

    move-object/from16 v6, v42

    const/4 v11, 0x1

    goto/16 :goto_1

    :cond_54
    const-string v0, "</div></body></html>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<html><head><style>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_34
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_55

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "{"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "}"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_34

    :cond_55
    const-string v2, "</style></head>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v15, 0x0

    invoke-virtual {v1, v15, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/4 v11, 0x1

    invoke-static {v0, v11}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v1, "text/html"

    const-string v2, "base64"

    move-object/from16 v3, p0

    iget-object v3, v3, Landroidx/media3/ui/WebViewSubtitleOutput;->c:Landroid/webkit/WebView;

    invoke-virtual {v3, v0, v1, v2}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/media3/ui/WebViewSubtitleOutput;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/media3/ui/WebViewSubtitleOutput;->c()V

    :cond_0
    return-void
.end method
