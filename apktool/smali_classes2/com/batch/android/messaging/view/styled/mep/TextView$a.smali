.class Lcom/batch/android/messaging/view/styled/mep/TextView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batch/android/messaging/view/styled/mep/TextView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field a:Landroid/view/GestureDetector;

.field final synthetic b:Landroid/widget/Scroller;

.field final synthetic c:Lcom/batch/android/messaging/view/styled/mep/TextView;


# direct methods
.method public constructor <init>(Lcom/batch/android/messaging/view/styled/mep/TextView;Landroid/widget/Scroller;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/batch/android/messaging/view/styled/mep/TextView$a;->c:Lcom/batch/android/messaging/view/styled/mep/TextView;

    iput-object p2, p0, Lcom/batch/android/messaging/view/styled/mep/TextView$a;->b:Landroid/widget/Scroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/batch/android/messaging/view/styled/mep/TextView$a$a;

    invoke-direct {v0, p0}, Lcom/batch/android/messaging/view/styled/mep/TextView$a$a;-><init>(Lcom/batch/android/messaging/view/styled/mep/TextView$a;)V

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/batch/android/messaging/view/styled/mep/TextView$a;->a:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/batch/android/messaging/view/styled/mep/TextView$a;->c:Lcom/batch/android/messaging/view/styled/mep/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/batch/android/messaging/view/styled/mep/TextView$a;->c:Lcom/batch/android/messaging/view/styled/mep/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-object p0, p0, Lcom/batch/android/messaging/view/styled/mep/TextView$a;->a:Landroid/view/GestureDetector;

    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
