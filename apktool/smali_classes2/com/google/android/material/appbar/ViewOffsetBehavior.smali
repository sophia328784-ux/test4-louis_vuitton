.class Lcom/google/android/material/appbar/ViewOffsetBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public b:Lcom/google/android/material/appbar/ViewOffsetHelper;

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->c:I

    return-void
.end method


# virtual methods
.method public l(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/appbar/ViewOffsetBehavior;->y(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V

    iget-object p1, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->b:Lcom/google/android/material/appbar/ViewOffsetHelper;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/material/appbar/ViewOffsetHelper;

    invoke-direct {p1, p2}, Lcom/google/android/material/appbar/ViewOffsetHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->b:Lcom/google/android/material/appbar/ViewOffsetHelper;

    :cond_0
    iget-object p1, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->b:Lcom/google/android/material/appbar/ViewOffsetHelper;

    iget-object p2, p1, Lcom/google/android/material/appbar/ViewOffsetHelper;->a:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p3

    iput p3, p1, Lcom/google/android/material/appbar/ViewOffsetHelper;->b:I

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p2

    iput p2, p1, Lcom/google/android/material/appbar/ViewOffsetHelper;->c:I

    iget-object p1, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->b:Lcom/google/android/material/appbar/ViewOffsetHelper;

    invoke-virtual {p1}, Lcom/google/android/material/appbar/ViewOffsetHelper;->a()V

    iget p1, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->c:I

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->b:Lcom/google/android/material/appbar/ViewOffsetHelper;

    iget p3, p2, Lcom/google/android/material/appbar/ViewOffsetHelper;->d:I

    if-eq p3, p1, :cond_1

    iput p1, p2, Lcom/google/android/material/appbar/ViewOffsetHelper;->d:I

    invoke-virtual {p2}, Lcom/google/android/material/appbar/ViewOffsetHelper;->a()V

    :cond_1
    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->c:I

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public w()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->b:Lcom/google/android/material/appbar/ViewOffsetHelper;

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/google/android/material/appbar/ViewOffsetHelper;->d:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public x()I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/material/appbar/ViewOffsetBehavior;->w()I

    move-result p0

    return p0
.end method

.method public y(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p1, p3, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->r(ILandroid/view/View;)V

    return-void
.end method

.method public z(I)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->b:Lcom/google/android/material/appbar/ViewOffsetHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget p0, v0, Lcom/google/android/material/appbar/ViewOffsetHelper;->d:I

    if-eq p0, p1, :cond_0

    iput p1, v0, Lcom/google/android/material/appbar/ViewOffsetHelper;->d:I

    invoke-virtual {v0}, Lcom/google/android/material/appbar/ViewOffsetHelper;->a()V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1

    :cond_1
    iput p1, p0, Lcom/google/android/material/appbar/ViewOffsetBehavior;->c:I

    return v1
.end method
