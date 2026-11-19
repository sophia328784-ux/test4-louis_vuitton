.class public final synthetic Ly40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/lifecycleaware/KeyboardVisibilityListener;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/lifecycleaware/KeyboardVisibilityListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly40;->b:Lcom/vuitton/android/presentation/lifecycleaware/KeyboardVisibilityListener;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 6

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object p0, p0, Ly40;->b:Lcom/vuitton/android/presentation/lifecycleaware/KeyboardVisibilityListener;

    iget-object v1, p0, Lcom/vuitton/android/presentation/lifecycleaware/KeyboardVisibilityListener;->d:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v1, v0

    int-to-double v2, v0

    int-to-double v0, v1

    const-wide v4, 0x3fc3333333333333L    # 0.15

    mul-double/2addr v0, v4

    cmpl-double v0, v2, v0

    iget-object p0, p0, Lcom/vuitton/android/presentation/lifecycleaware/KeyboardVisibilityListener;->c:Lcom/vuitton/android/presentation/lifecycleaware/KeyboardVisibilityListener$OnKeyboardVisibilityListener;

    if-lez v0, :cond_0

    invoke-interface {p0}, Lcom/vuitton/android/presentation/lifecycleaware/KeyboardVisibilityListener$OnKeyboardVisibilityListener;->b()V

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/vuitton/android/presentation/lifecycleaware/KeyboardVisibilityListener$OnKeyboardVisibilityListener;->a()V

    return-void
.end method
