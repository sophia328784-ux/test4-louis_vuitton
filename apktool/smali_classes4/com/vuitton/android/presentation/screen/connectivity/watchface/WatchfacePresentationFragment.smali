.class public final Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment;
.super Lcom/vuitton/android/presentation/screen/connectivity/watchface/Hilt_WatchfacePresentationFragment;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u000bB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J!\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment;",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Companion",
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


# static fields
.field public static final L:Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment$Companion;

.field public static final synthetic M:[Lkotlin/reflect/KProperty;

.field public static final N:Ljava/lang/String;


# instance fields
.field public final F:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

.field public final G:Lkotlin/Lazy;

.field public final H:Lkotlin/Lazy;

.field public final I:Lkotlin/Lazy;

.field public J:Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchFacePresentationUiModel;

.field public K:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v1, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentWatchfacePresentationBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->h(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    aput-object v0, v1, v4

    sput-object v1, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment;->M:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment;->L:Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment$Companion;

    const-string v0, "WatchfacePresentationFragment"

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment;->N:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const v0, 0x7f0d008e

    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/screen/connectivity/watchface/Hilt_WatchfacePresentationFragment;-><init>(I)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment$binding$2;->b:Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment$binding$2;

    invoke-static {p0, v0}, Lcom/vuitton/android/presentation/extensions/FragmentExtKt;->d(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment;->F:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    new-instance v0, Lb51;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Lb51;-><init>(I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment;->G:Lkotlin/Lazy;

    new-instance v0, Lb51;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Lb51;-><init>(I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment;->H:Lkotlin/Lazy;

    new-instance v0, Lhv0;

    const/16 v1, 0x1d

    invoke-direct {v0, p0, v1}, Lhv0;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment;->I:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final O()Lcom/vuitton/android/presentation/databinding/FragmentWatchfacePresentationBinding;
    .locals 2

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment;->M:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment;->F:Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;

    invoke-virtual {v1, p0, v0}, Lcom/vuitton/android/presentation/extensions/FragmentViewBindingDelegate;->c(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KProperty;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/databinding/FragmentWatchfacePresentationBinding;

    return-object p0
.end method

.method public final P(Lcom/vuitton/android/presentation/screen/connectivity/VideoUiModel;)V
    .locals 5

    iget-object v0, p1, Lcom/vuitton/android/presentation/screen/connectivity/VideoUiModel;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/vuitton/android/presentation/screen/video/VideoActivity;->m:Lcom/vuitton/android/presentation/screen/video/VideoActivity$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/vuitton/android/presentation/utils/TrackingFrom;

    const-string v3, "LVPass/IoT/Watch/WatchInVideo"

    const-string v4, "IoT"

    invoke-direct {v2, v3, v4}, Lcom/vuitton/android/presentation/utils/TrackingFrom;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/connectivity/VideoUiModel;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/connectivity/VideoUiModel;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment;->J:Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchFacePresentationUiModel;

    if-eqz v4, :cond_0

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchFacePresentationUiModel;->c:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2, v3, p1, v4}, Lcom/vuitton/android/presentation/screen/video/VideoActivity$Companion;->b(Landroid/content/Context;Lcom/vuitton/android/presentation/utils/TrackingFrom;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public final Q(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->setOffscreenPageLimit(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07050d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f07050c

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    new-instance v1, Lpc0;

    invoke-direct {v1, p0, v0}, Lpc0;-><init>(II)V

    invoke-virtual {p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    return-void
.end method

.method public final R(Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchFacePresentationUiModel;Z)V
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment;->J:Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchFacePresentationUiModel;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment;->O()Lcom/vuitton/android/presentation/databinding/FragmentWatchfacePresentationBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/vuitton/android/presentation/databinding/FragmentWatchfacePresentationBinding;->i:Landroid/widget/ScrollView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/databinding/FragmentWatchfacePresentationBinding;->f:Landroid/widget/Button;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment;->I:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment;->J:Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchFacePresentationUiModel;

    if-eqz v3, :cond_0

    iget-object v7, v3, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchFacePresentationUiModel;->i:Lcom/vuitton/android/presentation/screen/connectivity/VideoUiModel;

    if-eqz v7, :cond_0

    iget-object v7, v7, Lcom/vuitton/android/presentation/screen/connectivity/VideoUiModel;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v7, v5

    :goto_0
    if-eqz v7, :cond_2

    if-eqz v3, :cond_1

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchFacePresentationUiModel;->k:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v6, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v3, v4

    :goto_2
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchFacePresentationUiModel;->h:Lcom/vuitton/android/presentation/screen/connectivity/VideoUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchFacePresentationUiModel;->g:Ljava/util/ArrayList;

    iget-object v7, p1, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchFacePresentationUiModel;->f:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    iget-object v5, v1, Lcom/vuitton/android/presentation/screen/connectivity/VideoUiModel;->b:Ljava/lang/String;

    :cond_3
    iget-object v1, v0, Lcom/vuitton/android/presentation/databinding/FragmentWatchfacePresentationBinding;->l:Landroid/widget/FrameLayout;

    if-eqz v5, :cond_4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v5, Lc61;

    const/4 v8, 0x5

    invoke-direct {v5, p0, p1, v8}, Lc61;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v1, v5}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchFacePresentationUiModel;->j:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v5, v0, Lcom/vuitton/android/presentation/databinding/FragmentWatchfacePresentationBinding;->k:Landroid/widget/ImageView;

    const/16 v8, 0x7e

    invoke-static {v5, v1, v2, v2, v8}, Lcom/vuitton/android/presentation/imageloading/xmlui/XmlUiKt;->a(Landroid/widget/ImageView;Ljava/lang/Object;III)V

    goto :goto_3

    :cond_4
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_3
    iget-object v1, v0, Lcom/vuitton/android/presentation/databinding/FragmentWatchfacePresentationBinding;->j:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchFacePresentationUiModel;->d:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/vuitton/android/presentation/extensions/TextViewExtKt;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    if-eqz p2, :cond_6

    iget-object p1, v0, Lcom/vuitton/android/presentation/databinding/FragmentWatchfacePresentationBinding;->c:Landroid/widget/ImageView;

    const p2, 0x7f080403

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_6
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment;->O()Lcom/vuitton/android/presentation/databinding/FragmentWatchfacePresentationBinding;

    move-result-object p1

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment;->G:Lkotlin/Lazy;

    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfaceImagePagerAdapter;

    iget-object v1, p2, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfaceImagePagerAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    if-eqz v7, :cond_7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_7
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    const/4 p2, 0x4

    if-eqz v7, :cond_9

    iget-object v1, p1, Lcom/vuitton/android/presentation/databinding/FragmentWatchfacePresentationBinding;->e:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Lcom/vuitton/android/presentation/databinding/FragmentWatchfacePresentationBinding;->h:Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v6, :cond_8

    move v5, v2

    goto :goto_4

    :cond_8
    move v5, p2

    :goto_4
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_9
    iget-object v1, p1, Lcom/vuitton/android/presentation/databinding/FragmentWatchfacePresentationBinding;->e:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Lcom/vuitton/android/presentation/databinding/FragmentWatchfacePresentationBinding;->h:Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    iget-object v1, p1, Lcom/vuitton/android/presentation/databinding/FragmentWatchfacePresentationBinding;->h:Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator;

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/FragmentWatchfacePresentationBinding;->e:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1, p1}, Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator;->setViewPager2(Landroidx/viewpager2/widget/ViewPager2;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment;->O()Lcom/vuitton/android/presentation/databinding/FragmentWatchfacePresentationBinding;

    move-result-object p1

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment;->H:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfaceImagePagerAdapter;

    iget-object v5, v1, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfaceImagePagerAdapter;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    if-eqz v3, :cond_a

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_a
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    if-eqz v3, :cond_c

    iget-object v1, p1, Lcom/vuitton/android/presentation/databinding/FragmentWatchfacePresentationBinding;->d:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1, v2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Lcom/vuitton/android/presentation/databinding/FragmentWatchfacePresentationBinding;->g:Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v6, :cond_b

    move p2, v2

    :cond_b
    invoke-virtual {v1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_c
    iget-object p2, p1, Lcom/vuitton/android/presentation/databinding/FragmentWatchfacePresentationBinding;->d:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p1, Lcom/vuitton/android/presentation/databinding/FragmentWatchfacePresentationBinding;->g:Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator;

    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_6
    iget-object p2, p1, Lcom/vuitton/android/presentation/databinding/FragmentWatchfacePresentationBinding;->g:Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator;

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/FragmentWatchfacePresentationBinding;->d:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p2, p1}, Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator;->setViewPager2(Landroidx/viewpager2/widget/ViewPager2;)V

    iget-object p1, v0, Lcom/vuitton/android/presentation/databinding/FragmentWatchfacePresentationBinding;->i:Landroid/widget/ScrollView;

    invoke-virtual {p1, v2, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment;->O()Lcom/vuitton/android/presentation/databinding/FragmentWatchfacePresentationBinding;

    move-result-object p1

    iget-object p2, p1, Lcom/vuitton/android/presentation/databinding/FragmentWatchfacePresentationBinding;->e:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0, p2}, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment;->Q(Landroidx/viewpager2/widget/ViewPager2;)V

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/FragmentWatchfacePresentationBinding;->d:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment;->Q(Landroidx/viewpager2/widget/ViewPager2;)V

    return-void
.end method

.method public final onDestroyView()V
    .locals 3

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment;->O()Lcom/vuitton/android/presentation/databinding/FragmentWatchfacePresentationBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/vuitton/android/presentation/databinding/FragmentWatchfacePresentationBinding;->h:Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator;

    iget-object v2, v0, Lcom/vuitton/android/presentation/databinding/FragmentWatchfacePresentationBinding;->e:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator;->e:Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator$listener2$1;

    invoke-virtual {v2, v1}, Landroidx/viewpager2/widget/ViewPager2;->e(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/databinding/FragmentWatchfacePresentationBinding;->g:Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator;

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/FragmentWatchfacePresentationBinding;->d:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator;->e:Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator$listener2$1;

    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->e(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/connectivity/watchface/Hilt_WatchfacePresentationFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    new-instance p1, Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling;

    new-instance v0, Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling$SystemBarsConfig;

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling$SystemBarsConfig;-><init>(ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p1, p0, v0}, Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling;-><init>(Landroidx/fragment/app/Fragment;Lcom/vuitton/android/presentation/lifecycleaware/SystemBarsHandling$SystemBarsConfig;)V

    new-instance p1, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling;

    sget-object p2, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;->h:Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;->j:Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling;-><init>(Landroidx/fragment/app/Fragment;Lcom/vuitton/android/presentation/lifecycleaware/BottomBarHandling$BottomBarConfig;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const-string v2, "WATCHFACE"

    if-lt v0, v1, :cond_0

    const-class v0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchFacePresentationUiModel;

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchFacePresentationUiModel;

    if-nez v0, :cond_1

    move-object p1, p2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchFacePresentationUiModel;

    :goto_0
    check-cast p1, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchFacePresentationUiModel;

    goto :goto_1

    :cond_2
    move-object p1, p2

    :goto_1
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment;->J:Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchFacePresentationUiModel;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_5

    const-string v1, "SHOULD_TRACK_PAGE"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment;->K:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    if-eqz p1, :cond_4

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$WatchfacePageScreen;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment;->J:Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchFacePresentationUiModel;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchFacePresentationUiModel;->c:Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object v2, p2

    :goto_2
    invoke-direct {v1, v2}, Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel$WatchfacePageScreen;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/connectivity/watch/models/WatchTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    goto :goto_3

    :cond_4
    const-string p0, "tracker"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw p2

    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment;->O()Lcom/vuitton/android/presentation/databinding/FragmentWatchfacePresentationBinding;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    const-string v3, "DISPLAY_TOOLBAR"

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v0, :cond_7

    iget-object v1, p1, Lcom/vuitton/android/presentation/databinding/FragmentWatchfacePresentationBinding;->b:Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;

    iget-object v1, v1, Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;->b:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v1, v2}, Lcom/google/android/material/appbar/AppBarLayout;->setVisibility(I)V

    iget-object v1, p1, Lcom/vuitton/android/presentation/databinding/FragmentWatchfacePresentationBinding;->b:Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;

    iget-object v1, v1, Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;->c:Lcom/vuitton/android/presentation/databinding/ToolbarTitleBinding;

    iget-object v3, v1, Lcom/vuitton/android/presentation/databinding/ToolbarTitleBinding;->b:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, v1, Lcom/vuitton/android/presentation/databinding/ToolbarTitleBinding;->c:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v4, 0x6

    invoke-static {p0, v3, p2, v4}, Lcom/vuitton/android/presentation/extensions/FragmentExtKt;->a(Landroidx/fragment/app/Fragment;Landroidx/appcompat/widget/Toolbar;Ll61;I)V

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment;->J:Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchFacePresentationUiModel;

    if-eqz v3, :cond_6

    iget-object p2, v3, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchFacePresentationUiModel;->c:Ljava/lang/String;

    :cond_6
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setAccessibilityHeading(Z)V

    :cond_7
    iget-object p2, p1, Lcom/vuitton/android/presentation/databinding/FragmentWatchfacePresentationBinding;->e:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment;->G:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfaceImagePagerAdapter;

    invoke-virtual {p2, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p2, p1, Lcom/vuitton/android/presentation/databinding/FragmentWatchfacePresentationBinding;->d:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment;->H:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfaceImagePagerAdapter;

    invoke-virtual {p2, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/FragmentWatchfacePresentationBinding;->f:Landroid/widget/Button;

    new-instance p2, Lp11;

    const/16 v1, 0x11

    invoke-direct {p2, p0, v1}, Lp11;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1, p2}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment;->J:Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchFacePresentationUiModel;

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_8

    const-string v1, "IS_V2"

    invoke-virtual {p2, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-ne p2, v0, :cond_8

    goto :goto_4

    :cond_8
    move v0, v2

    :goto_4
    invoke-virtual {p0, p1, v0}, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment;->R(Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchFacePresentationUiModel;Z)V

    :cond_9
    return-void
.end method
