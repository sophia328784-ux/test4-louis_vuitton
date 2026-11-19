.class Lcom/batch/android/j0/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batch/android/j0/f;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/batch/android/j0/f;


# direct methods
.method public constructor <init>(Lcom/batch/android/j0/f;)V
    .locals 0

    iput-object p1, p0, Lcom/batch/android/j0/f$a;->a:Lcom/batch/android/j0/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/batch/android/j0/f$a;->a:Lcom/batch/android/j0/f;

    invoke-static {p1}, Lcom/batch/android/j0/f;->a(Lcom/batch/android/j0/f;)Lcom/batch/android/j0/f$c;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/batch/android/j0/f$a;->a:Lcom/batch/android/j0/f;

    invoke-static {p1}, Lcom/batch/android/j0/f;->a(Lcom/batch/android/j0/f;)Lcom/batch/android/j0/f$c;

    move-result-object p1

    iget-object p0, p0, Lcom/batch/android/j0/f$a;->a:Lcom/batch/android/j0/f;

    invoke-interface {p1, p0}, Lcom/batch/android/j0/f$c;->a(Lcom/batch/android/j0/f;)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
