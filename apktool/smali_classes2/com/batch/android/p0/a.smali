.class public Lcom/batch/android/p0/a;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/p0/a$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/batch/android/p0/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/batch/android/p0/b;

    invoke-direct {p1, p0}, Lcom/batch/android/p0/b;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/batch/android/p0/a;->a:Lcom/batch/android/p0/b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    new-instance p1, Lcom/batch/android/p0/b;

    invoke-direct {p1, p0}, Lcom/batch/android/p0/b;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/batch/android/p0/a;->a:Lcom/batch/android/p0/b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    new-instance p1, Lcom/batch/android/p0/b;

    invoke-direct {p1, p0}, Lcom/batch/android/p0/b;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/batch/android/p0/a;->a:Lcom/batch/android/p0/b;

    return-void
.end method


# virtual methods
.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object p0, p0, Lcom/batch/android/p0/a;->a:Lcom/batch/android/p0/b;

    invoke-virtual {p0}, Lcom/batch/android/p0/b;->b()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 1

    iget-object v0, p0, Lcom/batch/android/p0/a;->a:Lcom/batch/android/p0/b;

    invoke-virtual {v0, p1, p2}, Lcom/batch/android/p0/b;->a(II)V

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget-object v0, p0, Lcom/batch/android/p0/a;->a:Lcom/batch/android/p0/b;

    invoke-virtual {v0}, Lcom/batch/android/p0/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :cond_0
    return-void
.end method
