.class public final synthetic Lpc0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;
.implements Landroidx/viewpager2/widget/ViewPager2$PageTransformer;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    iput p1, p0, Lpc0;->b:I

    iput p2, p0, Lpc0;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FLandroid/view/View;)V
    .locals 2

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment;->L:Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment$Companion;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    iget v1, p0, Lpc0;->b:I

    mul-int/lit8 v1, v1, 0x2

    iget p0, p0, Lpc0;->c:I

    add-int/2addr v1, p0

    neg-int p0, v1

    int-to-float p0, p0

    mul-float/2addr p1, p0

    sget-object p0, Landroidx/core/view/ViewCompat;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    neg-float p0, p1

    invoke-virtual {p2, p0}, Landroid/view/View;->setTranslationX(F)V

    return-void

    :cond_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lpc0;->c:I

    check-cast p1, Landroidx/media3/common/Player$Listener;

    iget p0, p0, Lpc0;->b:I

    invoke-interface {p1, p0, v0}, Landroidx/media3/common/Player$Listener;->X(II)V

    return-void
.end method
