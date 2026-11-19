.class Lcom/google/android/material/internal/ViewUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;


# direct methods
.method public constructor <init>(ZZZLcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/material/internal/ViewUtils$1;->b:Z

    iput-boolean p2, p0, Lcom/google/android/material/internal/ViewUtils$1;->c:Z

    iput-boolean p3, p0, Lcom/google/android/material/internal/ViewUtils$1;->d:Z

    iput-object p4, p0, Lcom/google/android/material/internal/ViewUtils$1;->e:Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lcom/google/android/material/internal/ViewUtils$RelativePadding;)Landroidx/core/view/WindowInsetsCompat;
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/material/internal/ViewUtils$1;->b:Z

    if-eqz v0, :cond_0

    iget v0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->d:I

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->g()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->d:I

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-boolean v0, p0, Lcom/google/android/material/internal/ViewUtils$1;->c:Z

    if-eqz v0, :cond_3

    if-eqz v1, :cond_2

    iget v0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->c:I

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->h()I

    move-result v2

    add-int/2addr v2, v0

    iput v2, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->c:I

    goto :goto_1

    :cond_2
    iget v0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->a:I

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->h()I

    move-result v2

    add-int/2addr v2, v0

    iput v2, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->a:I

    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/google/android/material/internal/ViewUtils$1;->d:Z

    if-eqz v0, :cond_5

    if-eqz v1, :cond_4

    iget v0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->a:I

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->i()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->a:I

    goto :goto_2

    :cond_4
    iget v0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->c:I

    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->i()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->c:I

    :cond_5
    :goto_2
    iget v0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->a:I

    iget v1, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->b:I

    iget v2, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->c:I

    iget v3, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->d:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget-object p0, p0, Lcom/google/android/material/internal/ViewUtils$1;->e:Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;

    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;->a(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lcom/google/android/material/internal/ViewUtils$RelativePadding;)Landroidx/core/view/WindowInsetsCompat;

    return-object p2
.end method
