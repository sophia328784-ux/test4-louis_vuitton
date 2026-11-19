.class Lcom/batch/android/messaging/view/styled/mep/TextView$a$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/messaging/view/styled/mep/TextView$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/batch/android/messaging/view/styled/mep/TextView$a;


# direct methods
.method public constructor <init>(Lcom/batch/android/messaging/view/styled/mep/TextView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/batch/android/messaging/view/styled/mep/TextView$a$a;->a:Lcom/batch/android/messaging/view/styled/mep/TextView$a;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 11

    iget-object v0, p0, Lcom/batch/android/messaging/view/styled/mep/TextView$a$a;->a:Lcom/batch/android/messaging/view/styled/mep/TextView$a;

    iget-object v0, v0, Lcom/batch/android/messaging/view/styled/mep/TextView$a;->c:Lcom/batch/android/messaging/view/styled/mep/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/batch/android/messaging/view/styled/mep/TextView$a$a;->a:Lcom/batch/android/messaging/view/styled/mep/TextView$a;

    iget-object v1, v1, Lcom/batch/android/messaging/view/styled/mep/TextView$a;->c:Lcom/batch/android/messaging/view/styled/mep/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/batch/android/messaging/view/styled/mep/TextView$a$a;->a:Lcom/batch/android/messaging/view/styled/mep/TextView$a;

    iget-object v1, v1, Lcom/batch/android/messaging/view/styled/mep/TextView$a;->c:Lcom/batch/android/messaging/view/styled/mep/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/batch/android/messaging/view/styled/mep/TextView$a$a;->a:Lcom/batch/android/messaging/view/styled/mep/TextView$a;

    iget-object v0, v0, Lcom/batch/android/messaging/view/styled/mep/TextView$a;->c:Lcom/batch/android/messaging/view/styled/mep/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    add-int v10, v0, v1

    iget-object v0, p0, Lcom/batch/android/messaging/view/styled/mep/TextView$a$a;->a:Lcom/batch/android/messaging/view/styled/mep/TextView$a;

    iget-object v2, v0, Lcom/batch/android/messaging/view/styled/mep/TextView$a;->b:Landroid/widget/Scroller;

    iget-object v0, v0, Lcom/batch/android/messaging/view/styled/mep/TextView$a;->c:Lcom/batch/android/messaging/view/styled/mep/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v4

    neg-float v0, p4

    float-to-int v6, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p0

    return p0
.end method
