.class public final Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity;
.super Lcom/vuitton/android/presentation/screen/connectivity/faq/Hilt_FaqActivity;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqView;
.implements Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqAdapter$Listener;


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0001\u0006B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity;",
        "Lcom/vuitton/android/presentation/screen/base/BaseActivity;",
        "Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqView;",
        "Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqAdapter$Listener;",
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
.field public static final t:Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity$Companion;


# instance fields
.field public final p:Lkotlin/Lazy;

.field public final q:Lkotlin/Lazy;

.field public r:Lcom/vuitton/android/presentation/databinding/ActivityFaqBinding;

.field public final s:Landroidx/lifecycle/ViewModelLazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity;->t:Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/connectivity/faq/Hilt_FaqActivity;-><init>()V

    new-instance v0, Lax;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lax;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity;->p:Lkotlin/Lazy;

    new-instance v0, Lax;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lax;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity;->q:Lkotlin/Lazy;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    const-class v2, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqViewModel;

    sget-object v3, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v3, v2}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    new-instance v3, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity$special$$inlined$viewModels$default$2;

    invoke-direct {v3, p0}, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v4, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity$special$$inlined$viewModels$default$3;

    const/4 v5, 0x0

    invoke-direct {v4, v5, p0}, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity;->s:Landroidx/lifecycle/ViewModelLazy;

    return-void
.end method

.method public static H(Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity;)Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const-string v2, "FAQ_TYPE"

    if-lt v0, v1, :cond_0

    const-class v0, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;

    invoke-virtual {p0, v2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p0

    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    :cond_1
    check-cast p0, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;

    :goto_0
    check-cast p0, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    return-object p0

    :cond_3
    :goto_1
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;->EARPHONES:Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;

    return-object p0
.end method


# virtual methods
.method public final I()Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity;->p:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;

    return-object p0
.end method

.method public final J()Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqViewModel;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity;->s:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqViewModel;

    return-object p0
.end method

.method public final a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/util/List;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity;->r:Lcom/vuitton/android/presentation/databinding/ActivityFaqBinding;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/vuitton/android/presentation/databinding/ActivityFaqBinding;->d:Landroid/widget/ExpandableListView;

    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object p0

    instance-of v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqAdapter;

    if-eqz v1, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqAdapter;

    :cond_0
    if-eqz v0, :cond_1

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqAdapter;->d:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iget-object p0, v0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqAdapter;->e:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void

    :cond_2
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v0
.end method

.method public final d(ILjava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity;->J()Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqViewModel;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel$OpenFaqQuestionEvent;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity;->I()Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;

    move-result-object p0

    invoke-direct {v1, p0, p1, p2}, Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel$OpenFaqQuestionEvent;-><init>(Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqViewModel;->Cc(Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel;)V

    return-void
.end method

.method public final h(ILjava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity;->J()Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqViewModel;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel$CloseFaqQuestionEvent;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity;->I()Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;

    move-result-object p0

    invoke-direct {v1, p0, p1, p2}, Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel$CloseFaqQuestionEvent;-><init>(Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqViewModel;->Cc(Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel;)V

    return-void
.end method

.method public final i(Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Let;

    const/16 v0, 0x8

    invoke-direct {p1, p0, v0}, Let;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final k(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity;->J()Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqViewModel;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel$CloseFaqItemEvent;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity;->I()Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;

    move-result-object v2

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity;->q:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {v1, v2, p1, p0}, Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel$CloseFaqItemEvent;-><init>(Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqViewModel;->Cc(Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel;)V

    return-void
.end method

.method public final l(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity;->J()Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqViewModel;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel$OpenFaqItemEvent;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity;->I()Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;

    move-result-object v2

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity;->q:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {v1, v2, p1, p0}, Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel$OpenFaqItemEvent;-><init>(Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqViewModel;->Cc(Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity;->J()Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqViewModel;

    move-result-object p1

    invoke-virtual {p1, p0, p0}, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;->yc(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity;->J()Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqViewModel;

    move-result-object p1

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel$FaqPageScreen;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity;->I()Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;

    move-result-object v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity;->q:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel$FaqPageScreen;-><init>(Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqViewModel;->Cc(Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0021

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a02a4

    invoke-static {v0, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-static {v4}, Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;->a(Landroid/view/View;)Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;

    move-result-object v0

    const v4, 0x7f0a02b8

    invoke-static {v4, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ExpandableListView;

    if-eqz v5, :cond_8

    new-instance v4, Lcom/vuitton/android/presentation/databinding/ActivityFaqBinding;

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-direct {v4, p1, v0, v5}, Lcom/vuitton/android/presentation/databinding/ActivityFaqBinding;-><init>(Landroid/widget/LinearLayout;Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;Landroid/widget/ExpandableListView;)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    iput-object v4, p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity;->r:Lcom/vuitton/android/presentation/databinding/ActivityFaqBinding;

    sget-object p1, Landroidx/activity/SystemBarStyle;->e:Landroidx/activity/SystemBarStyle$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v3}, Landroidx/activity/SystemBarStyle$Companion;->b(II)Landroidx/activity/SystemBarStyle;

    move-result-object p1

    invoke-static {v3, v3}, Landroidx/activity/SystemBarStyle$Companion;->b(II)Landroidx/activity/SystemBarStyle;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroidx/activity/EdgeToEdge;->a(Landroidx/activity/ComponentActivity;Landroidx/activity/SystemBarStyle;Landroidx/activity/SystemBarStyle;)V

    invoke-static {p0}, Lcom/vuitton/android/presentation/extensions/ActivityExtKt;->d(Lcom/vuitton/android/presentation/screen/base/BaseActivity;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity;->r:Lcom/vuitton/android/presentation/databinding/ActivityFaqBinding;

    const-string v0, "binding"

    if-eqz p1, :cond_7

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/ActivityFaqBinding;->b:Landroid/widget/LinearLayout;

    new-instance v3, Lmt;

    const/16 v4, 0x12

    invoke-direct {v3, v4}, Lmt;-><init>(I)V

    invoke-static {p1, v3}, Landroidx/core/view/ViewCompat;->x(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity;->r:Lcom/vuitton/android/presentation/databinding/ActivityFaqBinding;

    if-eqz p1, :cond_6

    iget-object v0, p1, Lcom/vuitton/android/presentation/databinding/ActivityFaqBinding;->c:Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;->c:Lcom/vuitton/android/presentation/databinding/ToolbarTitleBinding;

    iget-object v0, v0, Lcom/vuitton/android/presentation/databinding/ToolbarTitleBinding;->c:Landroidx/appcompat/widget/AppCompatTextView;

    const v3, 0x7f141108

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->setAccessibilityHeading(Z)V

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/ActivityFaqBinding;->d:Landroid/widget/ExpandableListView;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqAdapter;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity;->I()Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;

    move-result-object v3

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v3, v2, p0}, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqAdapter;-><init>(Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqAdapter$Listener;)V

    invoke-virtual {p1, v0}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    const-string v3, "ITEMS"

    if-le v0, v2, :cond_0

    const-class v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqItemUiModel;

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    :cond_3
    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity;->J()Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqViewModel;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqItemUiModel;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqItem;

    iget-object v4, v2, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqItemUiModel;->b:Ljava/lang/String;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqItemUiModel;->c:Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqViewModel$displayItemList$1;

    invoke-direct {v0, p0, p1, v1}, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqViewModel$displayItemList$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqViewModel;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x3

    invoke-static {p0, v1, v0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;->Bc(Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;I)V

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity;->J()Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqViewModel;

    move-result-object p1

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity;->I()Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqViewModel$getFaqItemList$1;

    invoke-direct {v0, p1, v1}, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqViewModel$getFaqItemList$1;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqViewModel;Lkotlin/coroutines/Continuation;)V

    new-instance v2, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqViewModel$getFaqItemList$2;

    invoke-direct {v2, p1, p0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqViewModel$getFaqItemList$2;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqViewModel;Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x2

    invoke-static {p1, v0, v2, p0}, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;->Bc(Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;I)V

    return-void

    :cond_6
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v1

    :cond_7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v1

    :cond_8
    move v0, v4

    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Missing required view with ID: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity;->J()Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqViewModel;

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
