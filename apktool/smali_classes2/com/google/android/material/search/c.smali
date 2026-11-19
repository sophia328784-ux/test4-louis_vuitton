.class public final synthetic Lcom/google/android/material/search/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/google/android/material/search/SearchViewAnimationHelper;

.field public final synthetic b:F

.field public final synthetic c:[F

.field public final synthetic d:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/search/SearchViewAnimationHelper;F[FLandroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/search/c;->a:Lcom/google/android/material/search/SearchViewAnimationHelper;

    iput p2, p0, Lcom/google/android/material/search/c;->b:F

    iput-object p3, p0, Lcom/google/android/material/search/c;->c:[F

    iput-object p4, p0, Lcom/google/android/material/search/c;->d:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 24

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    iget-object v2, v0, Lcom/google/android/material/search/c;->c:[F

    const/4 v3, 0x0

    aget v4, v2, v3

    iget v5, v0, Lcom/google/android/material/search/c;->b:F

    invoke-static {v5, v4, v1}, Lcom/google/android/material/animation/AnimationUtils;->a(FFF)F

    move-result v4

    const/4 v6, 0x1

    aget v7, v2, v6

    invoke-static {v5, v7, v1}, Lcom/google/android/material/animation/AnimationUtils;->a(FFF)F

    move-result v7

    const/4 v8, 0x2

    aget v9, v2, v8

    invoke-static {v5, v9, v1}, Lcom/google/android/material/animation/AnimationUtils;->a(FFF)F

    move-result v9

    const/4 v10, 0x3

    aget v11, v2, v10

    invoke-static {v5, v11, v1}, Lcom/google/android/material/animation/AnimationUtils;->a(FFF)F

    move-result v11

    const/4 v12, 0x4

    aget v13, v2, v12

    invoke-static {v5, v13, v1}, Lcom/google/android/material/animation/AnimationUtils;->a(FFF)F

    move-result v13

    const/4 v14, 0x5

    aget v15, v2, v14

    invoke-static {v5, v15, v1}, Lcom/google/android/material/animation/AnimationUtils;->a(FFF)F

    move-result v15

    const/16 v16, 0x6

    move/from16 p1, v3

    aget v3, v2, v16

    invoke-static {v5, v3, v1}, Lcom/google/android/material/animation/AnimationUtils;->a(FFF)F

    move-result v3

    const/16 v17, 0x7

    aget v2, v2, v17

    invoke-static {v5, v2, v1}, Lcom/google/android/material/animation/AnimationUtils;->a(FFF)F

    move-result v1

    const/16 v2, 0x8

    new-array v2, v2, [F

    aput v4, v2, p1

    aput v7, v2, v6

    aput v9, v2, v8

    aput v11, v2, v10

    aput v13, v2, v12

    aput v15, v2, v14

    aput v3, v2, v16

    aput v1, v2, v17

    iget-object v1, v0, Lcom/google/android/material/search/c;->a:Lcom/google/android/material/search/SearchViewAnimationHelper;

    iget-object v1, v1, Lcom/google/android/material/search/SearchViewAnimationHelper;->c:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/google/android/material/search/c;->d:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v18, v1

    move-object/from16 v23, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    invoke-virtual/range {v18 .. v23}, Lcom/google/android/material/internal/ClippableRoundedCornerLayout;->a(FFFF[F)V

    return-void
.end method
