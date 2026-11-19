.class public final Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator$listener2$1;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator$listener2$1",
        "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;",
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
.field public final synthetic a:Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator$listener2$1;->a:Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(IIF)V
    .locals 1

    int-to-float p1, p1

    add-float/2addr p1, p3

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator$listener2$1;->a:Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator;

    iget p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator;->c:I

    add-int/lit8 p2, p2, -0x1

    int-to-float p2, p2

    div-float/2addr p1, p2

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator;->b:Lcom/vuitton/android/presentation/databinding/ViewViewPagerIndicatorBinding;

    iget-object p3, p2, Lcom/vuitton/android/presentation/databinding/ViewViewPagerIndicatorBinding;->b:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    int-to-float p3, p3

    iget-object v0, p2, Lcom/vuitton/android/presentation/databinding/ViewViewPagerIndicatorBinding;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p3, v0

    sget-object v0, Landroidx/core/view/ViewCompat;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    if-nez p0, :cond_0

    iget-object p0, p2, Lcom/vuitton/android/presentation/databinding/ViewViewPagerIndicatorBinding;->c:Landroid/view/View;

    mul-float/2addr p3, p1

    invoke-virtual {p0, p3}, Landroid/view/View;->setTranslationX(F)V

    return-void

    :cond_0
    iget-object p0, p2, Lcom/vuitton/android/presentation/databinding/ViewViewPagerIndicatorBinding;->c:Landroid/view/View;

    neg-float p2, p3

    mul-float/2addr p2, p1

    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method public final c(I)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator$listener2$1;->a:Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator;->b:Lcom/vuitton/android/presentation/databinding/ViewViewPagerIndicatorBinding;

    iget-object p0, p0, Lcom/vuitton/android/presentation/databinding/ViewViewPagerIndicatorBinding;->c:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    return-void
.end method
