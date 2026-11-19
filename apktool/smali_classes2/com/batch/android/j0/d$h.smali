.class public Lcom/batch/android/j0/d$h;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/j0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# static fields
.field private static final k:I = 0x1

.field private static final l:F = 0.0f

.field private static final m:F = 1.0f

.field public static final n:F = -1.0f

.field public static final o:I = -0x1

.field public static final p:I = 0x0

.field public static final q:I = 0x1

.field public static final r:I = 0x2

.field public static final s:I = 0x3

.field public static final t:I = 0x4

.field private static final u:I = 0xffffff


# instance fields
.field public a:I

.field public b:F

.field public c:F

.field public d:I

.field public e:F

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:Z


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 84
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-direct {p0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    .line 85
    iput p1, p0, Lcom/batch/android/j0/d$h;->a:I

    const/4 p1, 0x0

    .line 86
    iput p1, p0, Lcom/batch/android/j0/d$h;->b:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 87
    iput p1, p0, Lcom/batch/android/j0/d$h;->c:F

    const/4 p1, -0x1

    .line 88
    iput p1, p0, Lcom/batch/android/j0/d$h;->d:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 89
    iput p1, p0, Lcom/batch/android/j0/d$h;->e:F

    const p1, 0xffffff

    .line 90
    iput p1, p0, Lcom/batch/android/j0/d$h;->h:I

    .line 91
    iput p1, p0, Lcom/batch/android/j0/d$h;->i:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 69
    iput p1, p0, Lcom/batch/android/j0/d$h;->a:I

    const/4 p1, 0x0

    .line 70
    iput p1, p0, Lcom/batch/android/j0/d$h;->b:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 71
    iput p1, p0, Lcom/batch/android/j0/d$h;->c:F

    const/4 p1, -0x1

    .line 72
    iput p1, p0, Lcom/batch/android/j0/d$h;->d:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 73
    iput p1, p0, Lcom/batch/android/j0/d$h;->e:F

    const p1, 0xffffff

    .line 74
    iput p1, p0, Lcom/batch/android/j0/d$h;->h:I

    .line 75
    iput p1, p0, Lcom/batch/android/j0/d$h;->i:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    .line 77
    iput p1, p0, Lcom/batch/android/j0/d$h;->a:I

    const/4 p1, 0x0

    .line 78
    iput p1, p0, Lcom/batch/android/j0/d$h;->b:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 79
    iput p1, p0, Lcom/batch/android/j0/d$h;->c:F

    const/4 p1, -0x1

    .line 80
    iput p1, p0, Lcom/batch/android/j0/d$h;->d:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 81
    iput p1, p0, Lcom/batch/android/j0/d$h;->e:F

    const p1, 0xffffff

    .line 82
    iput p1, p0, Lcom/batch/android/j0/d$h;->h:I

    .line 83
    iput p1, p0, Lcom/batch/android/j0/d$h;->i:I

    return-void
.end method

.method public constructor <init>(Lcom/batch/android/j0/d$h;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/batch/android/j0/d$h;->a:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/batch/android/j0/d$h;->b:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/batch/android/j0/d$h;->c:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/batch/android/j0/d$h;->d:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/batch/android/j0/d$h;->e:F

    const v0, 0xffffff

    iput v0, p0, Lcom/batch/android/j0/d$h;->h:I

    iput v0, p0, Lcom/batch/android/j0/d$h;->i:I

    iget v0, p1, Lcom/batch/android/j0/d$h;->a:I

    iput v0, p0, Lcom/batch/android/j0/d$h;->a:I

    iget v0, p1, Lcom/batch/android/j0/d$h;->b:F

    iput v0, p0, Lcom/batch/android/j0/d$h;->b:F

    iget v0, p1, Lcom/batch/android/j0/d$h;->c:F

    iput v0, p0, Lcom/batch/android/j0/d$h;->c:F

    iget v0, p1, Lcom/batch/android/j0/d$h;->d:I

    iput v0, p0, Lcom/batch/android/j0/d$h;->d:I

    iget v0, p1, Lcom/batch/android/j0/d$h;->e:F

    iput v0, p0, Lcom/batch/android/j0/d$h;->e:F

    iget v0, p1, Lcom/batch/android/j0/d$h;->f:I

    iput v0, p0, Lcom/batch/android/j0/d$h;->f:I

    iget v0, p1, Lcom/batch/android/j0/d$h;->g:I

    iput v0, p0, Lcom/batch/android/j0/d$h;->g:I

    iget v0, p1, Lcom/batch/android/j0/d$h;->h:I

    iput v0, p0, Lcom/batch/android/j0/d$h;->h:I

    iget v0, p1, Lcom/batch/android/j0/d$h;->i:I

    iput v0, p0, Lcom/batch/android/j0/d$h;->i:I

    iget-boolean p1, p1, Lcom/batch/android/j0/d$h;->j:Z

    iput-boolean p1, p0, Lcom/batch/android/j0/d$h;->j:Z

    return-void
.end method
