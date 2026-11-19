.class public Lcom/airbnb/lottie/value/Keyframe;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lcom/airbnb/lottie/LottieComposition;

.field public final b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public final d:Landroid/view/animation/Interpolator;

.field public final e:Landroid/view/animation/Interpolator;

.field public final f:Landroid/view/animation/Interpolator;

.field public final g:F

.field public h:Ljava/lang/Float;

.field public i:F

.field public j:F

.field public k:I

.field public l:I

.field public m:F

.field public n:F

.field public o:Landroid/graphics/PointF;

.field public p:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieComposition;",
            "TT;TT;",
            "Landroid/view/animation/Interpolator;",
            "F",
            "Ljava/lang/Float;",
            ")V"
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x358c9d09

    .line 86
    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->i:F

    .line 87
    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->j:F

    const v0, 0x2ec8fb09

    .line 88
    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->k:I

    .line 89
    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->l:I

    const/4 v0, 0x1

    .line 90
    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->m:F

    .line 91
    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->n:F

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/airbnb/lottie/value/Keyframe;->o:Landroid/graphics/PointF;

    .line 93
    iput-object v0, p0, Lcom/airbnb/lottie/value/Keyframe;->p:Landroid/graphics/PointF;

    .line 94
    iput-object p1, p0, Lcom/airbnb/lottie/value/Keyframe;->a:Lcom/airbnb/lottie/LottieComposition;

    .line 95
    iput-object p2, p0, Lcom/airbnb/lottie/value/Keyframe;->b:Ljava/lang/Object;

    .line 96
    iput-object p3, p0, Lcom/airbnb/lottie/value/Keyframe;->c:Ljava/lang/Object;

    .line 97
    iput-object p4, p0, Lcom/airbnb/lottie/value/Keyframe;->d:Landroid/view/animation/Interpolator;

    .line 98
    iput-object v0, p0, Lcom/airbnb/lottie/value/Keyframe;->e:Landroid/view/animation/Interpolator;

    .line 99
    iput-object v0, p0, Lcom/airbnb/lottie/value/Keyframe;->f:Landroid/view/animation/Interpolator;

    .line 100
    iput p5, p0, Lcom/airbnb/lottie/value/Keyframe;->g:F

    .line 101
    iput-object p6, p0, Lcom/airbnb/lottie/value/Keyframe;->h:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieComposition;",
            "TT;TT;",
            "Landroid/view/animation/Interpolator;",
            "Landroid/view/animation/Interpolator;",
            "F",
            "Ljava/lang/Float;",
            ")V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x358c9d09

    .line 52
    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->i:F

    .line 53
    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->j:F

    const v0, 0x2ec8fb09

    .line 54
    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->k:I

    .line 55
    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->l:I

    const/4 v0, 0x1

    .line 56
    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->m:F

    .line 57
    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->n:F

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/airbnb/lottie/value/Keyframe;->o:Landroid/graphics/PointF;

    .line 59
    iput-object v0, p0, Lcom/airbnb/lottie/value/Keyframe;->p:Landroid/graphics/PointF;

    .line 60
    iput-object p1, p0, Lcom/airbnb/lottie/value/Keyframe;->a:Lcom/airbnb/lottie/LottieComposition;

    .line 61
    iput-object p2, p0, Lcom/airbnb/lottie/value/Keyframe;->b:Ljava/lang/Object;

    .line 62
    iput-object p3, p0, Lcom/airbnb/lottie/value/Keyframe;->c:Ljava/lang/Object;

    .line 63
    iput-object v0, p0, Lcom/airbnb/lottie/value/Keyframe;->d:Landroid/view/animation/Interpolator;

    .line 64
    iput-object p4, p0, Lcom/airbnb/lottie/value/Keyframe;->e:Landroid/view/animation/Interpolator;

    .line 65
    iput-object p5, p0, Lcom/airbnb/lottie/value/Keyframe;->f:Landroid/view/animation/Interpolator;

    .line 66
    iput p6, p0, Lcom/airbnb/lottie/value/Keyframe;->g:F

    .line 67
    iput-object p7, p0, Lcom/airbnb/lottie/value/Keyframe;->h:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x358c9d09

    .line 69
    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->i:F

    .line 70
    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->j:F

    const v0, 0x2ec8fb09

    .line 71
    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->k:I

    .line 72
    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->l:I

    const/4 v0, 0x1

    .line 73
    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->m:F

    .line 74
    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->n:F

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/airbnb/lottie/value/Keyframe;->o:Landroid/graphics/PointF;

    .line 76
    iput-object v0, p0, Lcom/airbnb/lottie/value/Keyframe;->p:Landroid/graphics/PointF;

    .line 77
    iput-object p1, p0, Lcom/airbnb/lottie/value/Keyframe;->a:Lcom/airbnb/lottie/LottieComposition;

    .line 78
    iput-object p2, p0, Lcom/airbnb/lottie/value/Keyframe;->b:Ljava/lang/Object;

    .line 79
    iput-object p3, p0, Lcom/airbnb/lottie/value/Keyframe;->c:Ljava/lang/Object;

    .line 80
    iput-object p4, p0, Lcom/airbnb/lottie/value/Keyframe;->d:Landroid/view/animation/Interpolator;

    .line 81
    iput-object p5, p0, Lcom/airbnb/lottie/value/Keyframe;->e:Landroid/view/animation/Interpolator;

    .line 82
    iput-object p6, p0, Lcom/airbnb/lottie/value/Keyframe;->f:Landroid/view/animation/Interpolator;

    .line 83
    iput p7, p0, Lcom/airbnb/lottie/value/Keyframe;->g:F

    .line 84
    iput-object p8, p0, Lcom/airbnb/lottie/value/Keyframe;->h:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>(Lcom/airbnb/lottie/model/content/GradientColor;Lcom/airbnb/lottie/model/content/GradientColor;)V
    .locals 2

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x358c9d09

    .line 103
    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->i:F

    .line 104
    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->j:F

    const v0, 0x2ec8fb09

    .line 105
    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->k:I

    .line 106
    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->l:I

    const/4 v0, 0x1

    .line 107
    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->m:F

    .line 108
    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->n:F

    const/4 v1, 0x0

    .line 109
    iput-object v1, p0, Lcom/airbnb/lottie/value/Keyframe;->o:Landroid/graphics/PointF;

    .line 110
    iput-object v1, p0, Lcom/airbnb/lottie/value/Keyframe;->p:Landroid/graphics/PointF;

    .line 111
    iput-object v1, p0, Lcom/airbnb/lottie/value/Keyframe;->a:Lcom/airbnb/lottie/LottieComposition;

    .line 112
    iput-object p1, p0, Lcom/airbnb/lottie/value/Keyframe;->b:Ljava/lang/Object;

    .line 113
    iput-object p2, p0, Lcom/airbnb/lottie/value/Keyframe;->c:Ljava/lang/Object;

    .line 114
    iput-object v1, p0, Lcom/airbnb/lottie/value/Keyframe;->d:Landroid/view/animation/Interpolator;

    .line 115
    iput-object v1, p0, Lcom/airbnb/lottie/value/Keyframe;->e:Landroid/view/animation/Interpolator;

    .line 116
    iput-object v1, p0, Lcom/airbnb/lottie/value/Keyframe;->f:Landroid/view/animation/Interpolator;

    .line 117
    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->g:F

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    .line 118
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/value/Keyframe;->h:Ljava/lang/Float;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x358c9d09

    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->i:F

    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->j:F

    const v0, 0x2ec8fb09

    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->k:I

    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->l:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->m:F

    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->n:F

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/airbnb/lottie/value/Keyframe;->o:Landroid/graphics/PointF;

    iput-object v1, p0, Lcom/airbnb/lottie/value/Keyframe;->p:Landroid/graphics/PointF;

    iput-object v1, p0, Lcom/airbnb/lottie/value/Keyframe;->a:Lcom/airbnb/lottie/LottieComposition;

    iput-object p1, p0, Lcom/airbnb/lottie/value/Keyframe;->b:Ljava/lang/Object;

    iput-object p1, p0, Lcom/airbnb/lottie/value/Keyframe;->c:Ljava/lang/Object;

    iput-object v1, p0, Lcom/airbnb/lottie/value/Keyframe;->d:Landroid/view/animation/Interpolator;

    iput-object v1, p0, Lcom/airbnb/lottie/value/Keyframe;->e:Landroid/view/animation/Interpolator;

    iput-object v1, p0, Lcom/airbnb/lottie/value/Keyframe;->f:Landroid/view/animation/Interpolator;

    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->g:F

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/value/Keyframe;->h:Ljava/lang/Float;

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 6

    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/airbnb/lottie/value/Keyframe;->a:Lcom/airbnb/lottie/LottieComposition;

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget v2, p0, Lcom/airbnb/lottie/value/Keyframe;->n:F

    const/4 v3, 0x1

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/airbnb/lottie/value/Keyframe;->h:Ljava/lang/Float;

    if-nez v2, :cond_1

    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->n:F

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/airbnb/lottie/value/Keyframe;->b()F

    move-result v0

    iget-object v2, p0, Lcom/airbnb/lottie/value/Keyframe;->h:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget v3, p0, Lcom/airbnb/lottie/value/Keyframe;->g:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    iget v4, v1, Lcom/airbnb/lottie/LottieComposition;->m:F

    iget v1, v1, Lcom/airbnb/lottie/LottieComposition;->l:F

    sub-float/2addr v4, v1

    float-to-double v4, v4

    div-double/2addr v2, v4

    float-to-double v0, v0

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/airbnb/lottie/value/Keyframe;->n:F

    :cond_2
    :goto_0
    iget p0, p0, Lcom/airbnb/lottie/value/Keyframe;->n:F

    return p0
.end method

.method public final b()F
    .locals 3

    iget-object v0, p0, Lcom/airbnb/lottie/value/Keyframe;->a:Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v1, p0, Lcom/airbnb/lottie/value/Keyframe;->m:F

    const/4 v2, 0x1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget v1, v0, Lcom/airbnb/lottie/LottieComposition;->l:F

    iget v2, p0, Lcom/airbnb/lottie/value/Keyframe;->g:F

    sub-float/2addr v2, v1

    iget v0, v0, Lcom/airbnb/lottie/LottieComposition;->m:F

    sub-float/2addr v0, v1

    div-float/2addr v2, v0

    iput v2, p0, Lcom/airbnb/lottie/value/Keyframe;->m:F

    :cond_1
    iget p0, p0, Lcom/airbnb/lottie/value/Keyframe;->m:F

    return p0
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/value/Keyframe;->d:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/value/Keyframe;->e:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/airbnb/lottie/value/Keyframe;->f:Landroid/view/animation/Interpolator;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Keyframe{startValue="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/airbnb/lottie/value/Keyframe;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", endValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/airbnb/lottie/value/Keyframe;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", startFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/airbnb/lottie/value/Keyframe;->g:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", endFrame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/airbnb/lottie/value/Keyframe;->h:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", interpolator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/airbnb/lottie/value/Keyframe;->d:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
