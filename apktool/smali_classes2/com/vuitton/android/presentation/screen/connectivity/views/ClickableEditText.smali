.class public final Lcom/vuitton/android/presentation/screen/connectivity/views/ClickableEditText;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/connectivity/views/ClickableEditText$ClickableEditTextListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0001\u0018\u00002\u00020\u0001:\u0001\u0015B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\"\u0010\u0014\u001a\u00020\r8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/views/ClickableEditText;",
        "Landroidx/appcompat/widget/AppCompatEditText;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "Lcom/vuitton/android/presentation/screen/connectivity/views/ClickableEditText$ClickableEditTextListener;",
        "clickableEditTextListener",
        "",
        "setClickableEditTextListener",
        "(Lcom/vuitton/android/presentation/screen/connectivity/views/ClickableEditText$ClickableEditTextListener;)V",
        "",
        "i",
        "Z",
        "getShowDrawableFocusedOnly",
        "()Z",
        "setShowDrawableFocusedOnly",
        "(Z)V",
        "showDrawableFocusedOnly",
        "ClickableEditTextListener",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public g:Landroid/graphics/drawable/Drawable;

.field public h:Lcom/vuitton/android/presentation/screen/connectivity/views/ClickableEditText$ClickableEditTextListener;

.field public i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/views/ClickableEditText;->i:Z

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x2

    aget-object v0, p2, v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/views/ClickableEditText;->g:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    aget-object v0, p2, v0

    aget-object p1, p2, p1

    const/4 v1, 0x3

    aget-object p2, p2, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Landroidx/appcompat/widget/AppCompatEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public final getShowDrawableFocusedOnly()Z
    .locals 0

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/views/ClickableEditText;->i:Z

    return p0
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    iget-boolean p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/views/ClickableEditText;->i:Z

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 p3, 0x0

    aget-object p3, p2, p3

    const/4 v0, 0x1

    aget-object v0, p2, v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/views/ClickableEditText;->g:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x3

    aget-object p2, p2, v1

    invoke-super {p0, p3, v0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/views/ClickableEditText;->g:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gt v1, v2, :cond_1

    if-gt v2, v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v2, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    if-gt v1, v5, :cond_2

    if-gt v5, v2, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/views/ClickableEditText;->h:Lcom/vuitton/android/presentation/screen/connectivity/views/ClickableEditText$ClickableEditTextListener;

    if-eqz v0, :cond_3

    invoke-interface {v0, p0}, Lcom/vuitton/android/presentation/screen/connectivity/views/ClickableEditText$ClickableEditTextListener;->a(Lcom/vuitton/android/presentation/screen/connectivity/views/ClickableEditText;)V

    goto :goto_2

    :cond_3
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    const/4 p0, 0x3

    invoke-virtual {p1, p0}, Landroid/view/MotionEvent;->setAction(I)V

    return v4

    :cond_4
    :goto_3
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final setClickableEditTextListener(Lcom/vuitton/android/presentation/screen/connectivity/views/ClickableEditText$ClickableEditTextListener;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/views/ClickableEditText;->h:Lcom/vuitton/android/presentation/screen/connectivity/views/ClickableEditText$ClickableEditTextListener;

    return-void
.end method

.method public final setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-eqz p3, :cond_0

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/connectivity/views/ClickableEditText;->g:Landroid/graphics/drawable/Drawable;

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatEditText;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setShowDrawableFocusedOnly(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/views/ClickableEditText;->i:Z

    return-void
.end method
