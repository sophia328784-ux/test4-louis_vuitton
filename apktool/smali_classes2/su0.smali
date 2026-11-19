.class public final synthetic Lsu0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic b:Landroid/view/ViewGroup$MarginLayoutParams;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsu0;->b:Landroid/view/ViewGroup$MarginLayoutParams;

    iput p2, p0, Lsu0;->c:I

    iput p3, p0, Lsu0;->d:I

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2

    sget p1, Lcom/google/android/material/search/SearchView;->F:I

    const/16 p1, 0x287

    invoke-virtual {p2, p1}, Landroidx/core/view/WindowInsetsCompat;->e(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    iget v0, p1, Landroidx/core/graphics/Insets;->a:I

    iget v1, p0, Lsu0;->c:I

    add-int/2addr v1, v0

    iget-object v0, p0, Lsu0;->b:Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget p1, p1, Landroidx/core/graphics/Insets;->c:I

    iget p0, p0, Lsu0;->d:I

    add-int/2addr p0, p1

    iput p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    return-object p2
.end method
