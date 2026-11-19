.class public final synthetic Lvu0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic b:Lcom/google/android/material/search/SearchView;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/search/SearchView;)V
    .locals 0

    iput-object p1, p0, Lvu0;->b:Lcom/google/android/material/search/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lcom/google/android/material/internal/ViewUtils$RelativePadding;)Landroidx/core/view/WindowInsetsCompat;
    .locals 3

    iget-object p0, p0, Lvu0;->b:Lcom/google/android/material/search/SearchView;

    iget-object p0, p0, Lcom/google/android/material/search/SearchView;->h:Lcom/google/android/material/appbar/MaterialToolbar;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget p1, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->c:I

    goto :goto_1

    :cond_1
    iget p1, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->a:I

    :goto_1
    if-eqz v0, :cond_2

    iget v0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->a:I

    goto :goto_2

    :cond_2
    iget v0, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->c:I

    :goto_2
    const/16 v1, 0x287

    invoke-virtual {p2, v1}, Landroidx/core/view/WindowInsetsCompat;->e(I)Landroidx/core/graphics/Insets;

    move-result-object v1

    iget v2, v1, Landroidx/core/graphics/Insets;->a:I

    add-int/2addr p1, v2

    iget v1, v1, Landroidx/core/graphics/Insets;->c:I

    add-int/2addr v0, v1

    iget v1, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->b:I

    iget p3, p3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->d:I

    invoke-virtual {p0, p1, v1, v0, p3}, Landroid/view/View;->setPadding(IIII)V

    return-object p2
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    iget-object p0, p0, Lvu0;->b:Lcom/google/android/material/search/SearchView;

    invoke-static {p0, p2}, Lcom/google/android/material/search/SearchView;->e(Lcom/google/android/material/search/SearchView;Landroidx/core/view/WindowInsetsCompat;)V

    return-object p2
.end method
