.class public Lcom/batch/android/p0/a$a;
.super Landroid/widget/FrameLayout$LayoutParams;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/p0/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/p0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private b:Lcom/batch/android/p0/b$a;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput p1, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return-void
.end method

.method public constructor <init>(Lcom/batch/android/p0/a$a;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/batch/android/p0/a$a;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 13
    iget-object p1, p1, Lcom/batch/android/p0/a$a;->b:Lcom/batch/android/p0/b$a;

    iput-object p1, p0, Lcom/batch/android/p0/a$a;->b:Lcom/batch/android/p0/b$a;

    return-void
.end method


# virtual methods
.method public a()Lcom/batch/android/p0/b$a;
    .locals 1

    iget-object v0, p0, Lcom/batch/android/p0/a$a;->b:Lcom/batch/android/p0/b$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/batch/android/p0/b$a;

    invoke-direct {v0}, Lcom/batch/android/p0/b$a;-><init>()V

    iput-object v0, p0, Lcom/batch/android/p0/a$a;->b:Lcom/batch/android/p0/b$a;

    :cond_0
    iget-object p0, p0, Lcom/batch/android/p0/a$a;->b:Lcom/batch/android/p0/b$a;

    return-object p0
.end method

.method public setBaseAttributes(Landroid/content/res/TypedArray;II)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/batch/android/p0/b;->a(Landroid/view/ViewGroup$LayoutParams;Landroid/content/res/TypedArray;II)V

    return-void
.end method
