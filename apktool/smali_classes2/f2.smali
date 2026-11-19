.class public final synthetic Lf2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lf2;->b:I

    iput-object p1, p0, Lf2;->c:Ljava/lang/Object;

    iput-object p2, p0, Lf2;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouchExplorationStateChanged(Z)V
    .locals 3

    iget v0, p0, Lf2;->b:I

    const/4 v1, 0x1

    iget-object v2, p0, Lf2;->d:Ljava/lang/Object;

    iget-object p0, p0, Lf2;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;

    check-cast v2, Landroid/view/View;

    iget-boolean v0, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->e:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->l:I

    if-ne p1, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/google/android/material/behavior/HideViewOnScrollBehavior;->x(Landroid/view/View;)V

    :cond_0
    return-void

    :pswitch_0
    check-cast p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;

    check-cast v2, Landroid/view/View;

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->k:I

    if-ne p1, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;->w(Landroid/view/View;)V

    :cond_1
    return-void

    :pswitch_1
    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    check-cast v2, Landroidx/compose/runtime/MutableState;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {v2, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
