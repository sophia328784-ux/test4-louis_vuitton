.class public final Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesActivity;
.super Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/Hilt_FaqCategoriesActivity;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesView;


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesActivity$Companion;,
        Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesActivity$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0005B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesActivity;",
        "Lcom/vuitton/android/presentation/screen/base/BaseActivity;",
        "Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesView;",
        "<init>",
        "()V",
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
.field public static final s:Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesActivity$Companion;


# instance fields
.field public final p:Lkotlin/Lazy;

.field public q:Lcom/vuitton/android/presentation/databinding/ActivityFaqCategoryListBinding;

.field public final r:Landroidx/lifecycle/ViewModelLazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesActivity;->s:Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/Hilt_FaqCategoriesActivity;-><init>()V

    new-instance v0, Lss;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Lss;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesActivity;->p:Lkotlin/Lazy;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesActivity$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    const-class v2, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesViewModel;

    sget-object v3, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v3, v2}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    new-instance v3, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesActivity$special$$inlined$viewModels$default$2;

    invoke-direct {v3, p0}, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v4, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesActivity$special$$inlined$viewModels$default$3;

    const/4 v5, 0x0

    invoke-direct {v4, v5, p0}, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesActivity;->r:Landroidx/lifecycle/ViewModelLazy;

    return-void
.end method

.method public static H(Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesActivity;)Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategoryType;
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const-string v2, "FAQ_CATEGORY_TYPE"

    if-lt v0, v1, :cond_0

    const-class v0, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategoryType;

    invoke-virtual {p0, v2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategoryType;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    :cond_1
    check-cast p0, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategoryType;

    :goto_0
    check-cast p0, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategoryType;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    return-object p0

    :cond_3
    :goto_1
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategoryType;->EARPHONES:Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategoryType;

    return-object p0
.end method


# virtual methods
.method public final I()Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesViewModel;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesActivity;->r:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesViewModel;

    return-object p0
.end method

.method public final b(Ljava/util/List;)V
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesActivity;->q:Lcom/vuitton/android/presentation/databinding/ActivityFaqCategoryListBinding;

    const-string v1, "binding"

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/ActivityFaqCategoryListBinding;->f:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesActivity;->q:Lcom/vuitton/android/presentation/databinding/ActivityFaqCategoryListBinding;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/ActivityFaqCategoryListBinding;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v4, v0, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesAdapter;

    if-eqz v4, :cond_0

    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesAdapter;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesAdapter;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    move-object v5, p1

    check-cast v5, Ljava/util/Collection;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategory;

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategory;->e:Ljava/util/List;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesActivity;->q:Lcom/vuitton/android/presentation/databinding/ActivityFaqCategoryListBinding;

    if-eqz v4, :cond_7

    iget-object v4, v4, Lcom/vuitton/android/presentation/databinding/ActivityFaqCategoryListBinding;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesActivity;->q:Lcom/vuitton/android/presentation/databinding/ActivityFaqCategoryListBinding;

    if-eqz v4, :cond_6

    iget-object v4, v4, Lcom/vuitton/android/presentation/databinding/ActivityFaqCategoryListBinding;->g:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqPdf;

    iget-object v5, v4, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqPdf;->b:Ljava/lang/String;

    new-instance v6, Lbx;

    invoke-direct {v6, p0, v4, v3}, Lbx;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v7, 0x7f0d00a1

    invoke-virtual {v4, v7, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v7, v4

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesActivity;->q:Lcom/vuitton/android/presentation/databinding/ActivityFaqCategoryListBinding;

    if-eqz v5, :cond_5

    iget-object v5, v5, Lcom/vuitton/android/presentation/databinding/ActivityFaqCategoryListBinding;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2

    :cond_6
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2

    :cond_7
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2

    :cond_8
    return-void

    :cond_9
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2

    :cond_a
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2
.end method

.method public final j(Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p1, 0x1020002

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const p1, 0x7f140967

    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/google/android/material/snackbar/Snackbar;->f(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/snackbar/Snackbar;->h()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 13

    invoke-super {p0, p1}, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesActivity;->p:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategoryType;

    sget-object v1, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesActivity$WhenMappings;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lv40;->g()V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesActivity;->I()Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesViewModel;

    move-result-object v0

    new-instance v2, Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$FaqScreen;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;->X408PAIR:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;

    invoke-direct {v2, v3}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$FaqScreen;-><init>(Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;)V

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesViewModel;->d:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesActivity;->I()Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesViewModel;

    move-result-object v0

    new-instance v2, Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$FaqScreen;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;->KEEPALL:Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;

    invoke-direct {v2, v3}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel$FaqScreen;-><init>(Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;)V

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesViewModel;->d:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/connectivity/lightup/models/LVLightUpTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesActivity;->I()Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesViewModel;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesViewModel;->d:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    sget-object v2, Lcom/vuitton/android/presentation/screen/connectivity/earphone/models/EarphoneTrackingUiModel$FaqCategoriesScreen;->a:Lcom/vuitton/android/presentation/screen/connectivity/earphone/models/EarphoneTrackingUiModel$FaqCategoriesScreen;

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/connectivity/earphone/models/EarphoneTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/connectivity/earphone/models/EarphoneTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    :goto_0
    :pswitch_3
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d0022

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a0254

    invoke-static {v2, v0}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Lcom/vuitton/android/presentation/screen/connectivity/views/FixedAspectRatioImageView;

    if-eqz v8, :cond_3

    const v2, 0x7f0a0292

    invoke-static {v2, v0}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_3

    const v2, 0x7f0a02a4

    invoke-static {v2, v0}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-static {v5}, Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;->a(Landroid/view/View;)Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;

    move-result-object v10

    const v2, 0x7f0a0387

    invoke-static {v2, v0}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v11, :cond_3

    const v2, 0x7f0a046a

    invoke-static {v2, v0}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_3

    new-instance v6, Lcom/vuitton/android/presentation/databinding/ActivityFaqCategoryListBinding;

    move-object v7, v0

    check-cast v7, Landroid/widget/LinearLayout;

    invoke-direct/range {v6 .. v12}, Lcom/vuitton/android/presentation/databinding/ActivityFaqCategoryListBinding;-><init>(Landroid/widget/LinearLayout;Lcom/vuitton/android/presentation/screen/connectivity/views/FixedAspectRatioImageView;Landroid/widget/LinearLayout;Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;)V

    invoke-virtual {p0, v7}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    iput-object v6, p0, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesActivity;->q:Lcom/vuitton/android/presentation/databinding/ActivityFaqCategoryListBinding;

    sget-object v0, Landroidx/activity/SystemBarStyle;->e:Landroidx/activity/SystemBarStyle$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v4}, Landroidx/activity/SystemBarStyle$Companion;->b(II)Landroidx/activity/SystemBarStyle;

    move-result-object v0

    invoke-static {v4, v4}, Landroidx/activity/SystemBarStyle$Companion;->b(II)Landroidx/activity/SystemBarStyle;

    move-result-object v2

    invoke-static {p0, v0, v2}, Landroidx/activity/EdgeToEdge;->a(Landroidx/activity/ComponentActivity;Landroidx/activity/SystemBarStyle;Landroidx/activity/SystemBarStyle;)V

    invoke-static {p0}, Lcom/vuitton/android/presentation/extensions/ActivityExtKt;->d(Lcom/vuitton/android/presentation/screen/base/BaseActivity;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesActivity;->q:Lcom/vuitton/android/presentation/databinding/ActivityFaqCategoryListBinding;

    const-string v2, "binding"

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/ActivityFaqCategoryListBinding;->b:Landroid/widget/LinearLayout;

    new-instance v4, Lmt;

    const/16 v5, 0x13

    invoke-direct {v4, v5}, Lmt;-><init>(I)V

    invoke-static {v0, v4}, Landroidx/core/view/ViewCompat;->x(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesActivity;->q:Lcom/vuitton/android/presentation/databinding/ActivityFaqCategoryListBinding;

    if-eqz v0, :cond_1

    iget-object v4, v0, Lcom/vuitton/android/presentation/databinding/ActivityFaqCategoryListBinding;->e:Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;

    iget-object v4, v4, Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;->c:Lcom/vuitton/android/presentation/databinding/ToolbarTitleBinding;

    iget-object v4, v4, Lcom/vuitton/android/presentation/databinding/ToolbarTitleBinding;->c:Landroidx/appcompat/widget/AppCompatTextView;

    const v5, 0x7f141108

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/View;->setAccessibilityHeading(Z)V

    iget-object v4, v0, Lcom/vuitton/android/presentation/databinding/ActivityFaqCategoryListBinding;->f:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v5, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v6, 0x2

    invoke-direct {v5, p0, v6}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    new-instance v5, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesAdapter;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategoryType;

    new-instance v8, Lrs;

    const/16 v9, 0xa

    invoke-direct {v8, p0, v0, v9}, Lrs;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v0, Lck;

    const/16 v9, 0x17

    invoke-direct {v0, p0, v9}, Lck;-><init>(Ljava/lang/Object;I)V

    new-instance v9, Lc;

    const/16 v10, 0x1a

    invoke-direct {v9, p0, v10}, Lc;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v5, v7, v8, v0, v9}, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesAdapter;-><init>(Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategoryType;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/views/divider/SimpleGridDivider;

    const v5, 0x7f0603f4

    invoke-static {p0, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {v0, v5}, Lcom/vuitton/android/presentation/screen/connectivity/views/divider/SimpleGridDivider;-><init>(I)V

    invoke-virtual {v4, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategoryType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    invoke-static {}, Lv40;->g()V

    return-void

    :pswitch_4
    const v0, 0x7f08013d

    goto :goto_1

    :pswitch_5
    const v0, 0x7f08013e

    goto :goto_1

    :pswitch_6
    const v0, 0x7f08028e

    goto :goto_1

    :pswitch_7
    const v0, 0x7f08028b

    goto :goto_1

    :pswitch_8
    const v0, 0x7f08013f

    goto :goto_1

    :pswitch_9
    const v0, 0x7f080140

    :goto_1
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesActivity;->q:Lcom/vuitton/android/presentation/databinding/ActivityFaqCategoryListBinding;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/vuitton/android/presentation/databinding/ActivityFaqCategoryListBinding;->c:Lcom/vuitton/android/presentation/screen/connectivity/views/FixedAspectRatioImageView;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesActivity;->I()Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesViewModel;

    move-result-object v0

    invoke-virtual {v0, p0, p0}, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;->yc(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesActivity;->I()Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesViewModel;

    move-result-object p0

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategoryType;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesViewModel$getFaqCategoryList$1;

    invoke-direct {v0, p0, v3}, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesViewModel$getFaqCategoryList$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesViewModel;Lkotlin/coroutines/Continuation;)V

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesViewModel$getFaqCategoryList$2;

    invoke-direct {v1, p0, p1, v3}, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesViewModel$getFaqCategoryList$2;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesViewModel;Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategoryType;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, v0, v1, v6}, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;->Bc(Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;I)V

    return-void

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v3

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v3

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Missing required view with ID: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public final onDestroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesActivity;->I()Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesViewModel;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;->Ac(Landroidx/lifecycle/LifecycleOwner;)V

    invoke-super {p0}, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public final onSupportNavigateUp()Z
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p0, 0x1

    return p0
.end method
