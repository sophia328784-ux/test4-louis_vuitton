.class Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->c:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lcom/google/android/material/internal/ViewUtils$RelativePadding;)Landroidx/core/view/WindowInsetsCompat;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/16 v4, 0x207

    invoke-virtual {v2, v4}, Landroidx/core/view/WindowInsetsCompat;->e(I)Landroidx/core/graphics/Insets;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v2, v5}, Landroidx/core/view/WindowInsetsCompat;->e(I)Landroidx/core/graphics/Insets;

    move-result-object v5

    iget-object v6, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->c:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-boolean v7, v6, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->p:Z

    iget v8, v4, Landroidx/core/graphics/Insets;->b:I

    iget v9, v4, Landroidx/core/graphics/Insets;->c:I

    iget v10, v4, Landroidx/core/graphics/Insets;->a:I

    iput v8, v6, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->x:I

    invoke-virtual {v1}, Landroid/view/View;->getLayoutDirection()I

    move-result v8

    const/4 v12, 0x1

    if-ne v8, v12, :cond_0

    move v8, v12

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v13

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v14

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v15

    if-eqz v7, :cond_1

    invoke-virtual {v2}, Landroidx/core/view/WindowInsetsCompat;->g()I

    move-result v13

    iput v13, v6, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->w:I

    iget v11, v3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->d:I

    add-int/2addr v13, v11

    :cond_1
    iget-boolean v11, v6, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:Z

    if-eqz v11, :cond_3

    if-eqz v8, :cond_2

    iget v11, v3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->c:I

    goto :goto_1

    :cond_2
    iget v11, v3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->a:I

    :goto_1
    add-int v14, v11, v10

    :cond_3
    iget-boolean v11, v6, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->r:Z

    if-eqz v11, :cond_5

    if-eqz v8, :cond_4

    iget v3, v3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->a:I

    goto :goto_2

    :cond_4
    iget v3, v3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->c:I

    :goto_2
    add-int v15, v3, v9

    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-boolean v8, v6, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->t:Z

    if-eqz v8, :cond_6

    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-eq v8, v10, :cond_6

    iput v10, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move v11, v12

    goto :goto_3

    :cond_6
    const/4 v11, 0x0

    :goto_3
    iget-boolean v8, v6, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->u:Z

    if-eqz v8, :cond_7

    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v8, v9, :cond_7

    iput v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v11, v12

    :cond_7
    iget-boolean v8, v6, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->v:Z

    if-eqz v8, :cond_8

    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v4, Landroidx/core/graphics/Insets;->b:I

    if-eq v8, v4, :cond_8

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_4

    :cond_8
    move v12, v11

    :goto_4
    if-eqz v12, :cond_9

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1, v14, v3, v15, v13}, Landroid/view/View;->setPadding(IIII)V

    iget-boolean v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->b:Z

    if-eqz v0, :cond_a

    iget v1, v5, Landroidx/core/graphics/Insets;->d:I

    iput v1, v6, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->n:I

    :cond_a
    if-nez v7, :cond_c

    if-eqz v0, :cond_b

    goto :goto_5

    :cond_b
    return-object v2

    :cond_c
    :goto_5
    invoke-virtual {v6}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->Q()V

    return-object v2
.end method
