.class public final Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/style/LineHeightSpan;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u00020\u0001BA\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\u0008\u0008\u0001\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;",
        "Landroid/text/style/LineHeightSpan;",
        "",
        "lineHeight",
        "",
        "startIndex",
        "endIndex",
        "",
        "trimFirstLineTop",
        "trimLastLineBottom",
        "topRatio",
        "Landroidx/compose/ui/text/style/LineHeightStyle$Mode;",
        "mode",
        "<init>",
        "(FIIZZFILkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "ui-text"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final b:F

.field public final c:I

.field public final d:I

.field public final e:Z

.field public final f:Z

.field public final g:F

.field public final h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I


# direct methods
.method public constructor <init>(FIIZZFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->b:F

    iput p2, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->c:I

    iput p3, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->d:I

    iput-boolean p4, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->e:Z

    iput-boolean p5, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->f:Z

    iput p6, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->g:F

    iput p7, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->h:I

    const/high16 p1, -0x80000000

    iput p1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->i:I

    iput p1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->j:I

    iput p1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->k:I

    iput p1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->l:I

    const/4 p0, 0x0

    cmpg-float p0, p0, p6

    if-gtz p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    cmpg-float p0, p6, p0

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p0, -0x40800000    # -1.0f

    cmpg-float p0, p6, p0

    if-nez p0, :cond_1

    :goto_0
    return-void

    :cond_1
    const-string p0, "topRatio should be in [0..1] range or -1"

    invoke-static {p0}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->c(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V
    .locals 6

    iget p1, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget p4, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr p1, p4

    if-gtz p1, :cond_0

    goto :goto_2

    :cond_0
    iget p1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->c:I

    const/4 p4, 0x1

    const/4 p5, 0x0

    if-ne p2, p1, :cond_1

    move p1, p4

    goto :goto_0

    :cond_1
    move p1, p5

    :goto_0
    iget p2, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->d:I

    if-ne p3, p2, :cond_2

    goto :goto_1

    :cond_2
    move p4, p5

    :goto_1
    iget p2, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->h:I

    iget-boolean p3, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->f:Z

    iget-boolean v0, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->e:Z

    if-eqz p1, :cond_4

    if-eqz p4, :cond_4

    if-eqz v0, :cond_4

    if-eqz p3, :cond_4

    sget-object v1, Landroidx/compose/ui/text/style/LineHeightStyle$Mode;->b:Landroidx/compose/ui/text/style/LineHeightStyle$Mode$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Landroidx/compose/ui/text/style/LineHeightStyle$Mode;->d:I

    if-ne p2, v1, :cond_3

    goto :goto_3

    :cond_3
    :goto_2
    return-void

    :cond_4
    :goto_3
    iget v1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->i:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_e

    iget v1, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v2, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->b:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    float-to-int v2, v2

    sub-int v1, v2, v1

    sget-object v3, Landroidx/compose/ui/text/style/LineHeightStyle$Mode;->b:Landroidx/compose/ui/text/style/LineHeightStyle$Mode$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v3, Landroidx/compose/ui/text/style/LineHeightStyle$Mode;->c:I

    if-ne p2, v3, :cond_5

    if-gtz v1, :cond_5

    iget p2, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput p2, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->j:I

    iget p3, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput p3, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->k:I

    iput p2, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->i:I

    iput p3, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->l:I

    iput p5, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->m:I

    iput p5, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->n:I

    goto/16 :goto_9

    :cond_5
    const/high16 v3, -0x40800000    # -1.0f

    iget v4, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->g:F

    cmpg-float v3, v4, v3

    if-nez v3, :cond_6

    iget v3, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v5, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float v4, v3, v4

    :cond_6
    if-gtz v1, :cond_7

    int-to-float v3, v1

    mul-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    :goto_4
    double-to-float v3, v3

    float-to-int v3, v3

    goto :goto_5

    :cond_7
    int-to-float v3, v1

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v4

    mul-float/2addr v5, v3

    float-to-double v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    goto :goto_4

    :goto_5
    iget v4, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v3, v4

    iput v3, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->k:I

    sub-int v2, v3, v2

    iput v2, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->j:I

    if-nez p2, :cond_8

    goto :goto_6

    :cond_8
    if-ltz v1, :cond_b

    :goto_6
    if-eqz v0, :cond_9

    iget v2, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    :cond_9
    iput v2, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->i:I

    if-eqz p3, :cond_a

    move v3, v4

    :cond_a
    iput v3, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->l:I

    iget p2, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr p2, v2

    iput p2, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->m:I

    sub-int/2addr v3, v4

    iput v3, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->n:I

    goto :goto_9

    :cond_b
    sget v1, Landroidx/compose/ui/text/style/LineHeightStyle$Mode;->d:I

    if-ne p2, v1, :cond_e

    iget p2, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    if-eqz v0, :cond_c

    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_7

    :cond_c
    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_7
    iput p2, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->i:I

    iget p2, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v0, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->k:I

    if-eqz p3, :cond_d

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_8

    :cond_d
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    :goto_8
    iput p2, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->l:I

    iput p5, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->m:I

    iput p5, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->n:I

    :cond_e
    :goto_9
    if-eqz p1, :cond_f

    iget p1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->i:I

    goto :goto_a

    :cond_f
    iget p1, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->j:I

    :goto_a
    iput p1, p6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    if-eqz p4, :cond_10

    iget p0, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->l:I

    goto :goto_b

    :cond_10
    iget p0, p0, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;->k:I

    :goto_b
    iput p0, p6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    return-void
.end method
