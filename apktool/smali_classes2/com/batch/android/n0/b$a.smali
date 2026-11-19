.class public Lcom/batch/android/n0/b$a;
.super Lcom/batch/android/j0/c;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/j0/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/n0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private b:Lcom/batch/android/j0/b$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/batch/android/messaging/Size2D;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/batch/android/j0/c;-><init>(Landroid/content/Context;Lcom/batch/android/messaging/Size2D;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/batch/android/n0/b$a;->b:Lcom/batch/android/j0/b$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p0}, Lcom/batch/android/j0/b$a;->a(Landroid/view/MotionEvent;Lcom/batch/android/j0/b;)Z

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/batch/android/n0/b$a;->b:Lcom/batch/android/j0/b$a;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, p1, p0, v1}, Lcom/batch/android/j0/b$a;->a(Landroid/view/MotionEvent;Lcom/batch/android/j0/b;Z)Z

    move-result p0

    return p0

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setTouchEventDelegate(Lcom/batch/android/j0/b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/batch/android/n0/b$a;->b:Lcom/batch/android/j0/b$a;

    return-void
.end method
