.class public final Lcom/batch/android/q0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/util/DisplayMetrics;

.field private b:[F

.field private c:Z

.field private d:F

.field private e:Landroid/content/res/ColorStateList;

.field private f:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/batch/android/q0/d;->b:[F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/batch/android/q0/d;->c:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/batch/android/q0/d;->d:F

    const/high16 v0, -0x1000000

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/q0/d;->e:Landroid/content/res/ColorStateList;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/batch/android/q0/d;->f:Landroid/widget/ImageView$ScaleType;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/q0/d;->a:Landroid/util/DisplayMetrics;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public a(F)Lcom/batch/android/q0/d;
    .locals 0

    .line 8
    iput p1, p0, Lcom/batch/android/q0/d;->d:F

    return-object p0
.end method

.method public a(I)Lcom/batch/android/q0/d;
    .locals 0

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/batch/android/q0/d;->e:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public a(IF)Lcom/batch/android/q0/d;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/batch/android/q0/d;->b:[F

    aput p2, v0, p1

    return-object p0
.end method

.method public a(Landroid/content/res/ColorStateList;)Lcom/batch/android/q0/d;
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/batch/android/q0/d;->e:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public a(Landroid/widget/ImageView$ScaleType;)Lcom/batch/android/q0/d;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/batch/android/q0/d;->f:Landroid/widget/ImageView$ScaleType;

    return-object p0
.end method

.method public a(Z)Lcom/batch/android/q0/d;
    .locals 0

    .line 11
    iput-boolean p1, p0, Lcom/batch/android/q0/d;->c:Z

    return-object p0
.end method

.method public b(F)Lcom/batch/android/q0/d;
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/batch/android/q0/d;->a:Landroid/util/DisplayMetrics;

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Lcom/batch/android/q0/d;->d:F

    return-object p0
.end method

.method public b(IF)Lcom/batch/android/q0/d;
    .locals 2

    iget-object v0, p0, Lcom/batch/android/q0/d;->a:Landroid/util/DisplayMetrics;

    const/4 v1, 0x1

    invoke-static {v1, p2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/batch/android/q0/d;->a(IF)Lcom/batch/android/q0/d;

    move-result-object p0

    return-object p0
.end method

.method public c(F)Lcom/batch/android/q0/d;
    .locals 2

    iget-object v0, p0, Lcom/batch/android/q0/d;->b:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x2

    aput p1, v0, v1

    const/4 v1, 0x3

    aput p1, v0, v1

    return-object p0
.end method

.method public d(F)Lcom/batch/android/q0/d;
    .locals 2

    iget-object v0, p0, Lcom/batch/android/q0/d;->a:Landroid/util/DisplayMetrics;

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/batch/android/q0/d;->c(F)Lcom/batch/android/q0/d;

    move-result-object p0

    return-object p0
.end method
