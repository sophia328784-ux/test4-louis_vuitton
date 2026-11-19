.class public final Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u0019\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0008B!\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0004\u0010\u000bJ\u0015\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator;",
        "Landroid/widget/FrameLayout;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Landroid/util/AttributeSet;",
        "attrs",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "defStyleAttr",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "Landroidx/viewpager2/widget/ViewPager2;",
        "viewPager2",
        "",
        "setViewPager2",
        "(Landroidx/viewpager2/widget/ViewPager2;)V",
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
.field public final b:Lcom/vuitton/android/presentation/databinding/ViewViewPagerIndicatorBinding;

.field public c:I

.field public d:Z

.field public final e:Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator$listener2$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/vuitton/android/presentation/databinding/ViewViewPagerIndicatorBinding;->a(Landroid/view/LayoutInflater;Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator;)Lcom/vuitton/android/presentation/databinding/ViewViewPagerIndicatorBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator;->b:Lcom/vuitton/android/presentation/databinding/ViewViewPagerIndicatorBinding;

    .line 36
    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator$listener2$1;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator$listener2$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator;)V

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator;->e:Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator$listener2$1;

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p0, p1, v0}, Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/vuitton/android/presentation/databinding/ViewViewPagerIndicatorBinding;->a(Landroid/view/LayoutInflater;Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator;)Lcom/vuitton/android/presentation/databinding/ViewViewPagerIndicatorBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator;->b:Lcom/vuitton/android/presentation/databinding/ViewViewPagerIndicatorBinding;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator$listener2$1;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator$listener2$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator;)V

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator;->e:Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator$listener2$1;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    invoke-static {p3, p0}, Lcom/vuitton/android/presentation/databinding/ViewViewPagerIndicatorBinding;->a(Landroid/view/LayoutInflater;Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator;)Lcom/vuitton/android/presentation/databinding/ViewViewPagerIndicatorBinding;

    move-result-object p3

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator;->b:Lcom/vuitton/android/presentation/databinding/ViewViewPagerIndicatorBinding;

    .line 40
    new-instance p3, Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator$listener2$1;

    invoke-direct {p3, p0}, Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator$listener2$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator;)V

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator;->e:Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator$listener2$1;

    .line 41
    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    if-eqz p2, :cond_0

    sget-object v0, Lcom/vuitton/android/presentation/R$styleable;->b:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator;->d:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    iget-boolean p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator;->d:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final setViewPager2(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator;->e:Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator$listener2$1;

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->e(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->b(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator$listener2$1;->c(I)V

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator;->c:I

    const/4 v1, 0x1

    if-le p1, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator;->d:Z

    if-eqz p1, :cond_2

    const/4 v0, 0x4

    goto :goto_1

    :cond_2
    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
