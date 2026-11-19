.class public final Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqAdapter$Companion;,
        Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqAdapter$Listener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001:\u0002\n\u000bB#\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqAdapter;",
        "Landroid/widget/BaseExpandableListAdapter;",
        "Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;",
        "faqType",
        "",
        "categoryId",
        "Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqAdapter$Listener;",
        "listener",
        "<init>",
        "(Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqAdapter$Listener;)V",
        "Companion",
        "Listener",
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
.field public final a:Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqAdapter$Listener;

.field public d:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public final e:Ljava/util/ArrayList;

.field public f:Lcom/vuitton/android/presentation/databinding/ItemFaqQuestionBinding;

.field public g:Lcom/vuitton/android/presentation/databinding/ItemFaqAnswerBinding;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqAdapter$Listener;)V
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqAdapter;->a:Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqAdapter;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqAdapter;->c:Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqAdapter$Listener;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqAdapter;->e:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final getChild(II)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqAdapter;->e:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqItem;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqItem;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final getChildId(II)J
    .locals 0

    int-to-long p0, p2

    return-wide p0
.end method

.method public final getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x0

    if-nez p4, :cond_1

    invoke-virtual {p5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const p4, 0x7f0d0099

    const/4 v0, 0x0

    invoke-virtual {p3, p4, p5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const p4, 0x7f0a045e

    invoke-static {p4, p3}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/TextView;

    if-eqz p5, :cond_0

    new-instance p4, Lcom/vuitton/android/presentation/databinding/ItemFaqAnswerBinding;

    check-cast p3, Landroid/widget/LinearLayout;

    invoke-direct {p4, p3, p5}, Lcom/vuitton/android/presentation/databinding/ItemFaqAnswerBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqAdapter;->g:Lcom/vuitton/android/presentation/databinding/ItemFaqAnswerBinding;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object p4, p3

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Missing required view with ID: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    return-object p2

    :cond_1
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p3, Lcom/vuitton/android/presentation/databinding/ItemFaqAnswerBinding;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqAdapter;->g:Lcom/vuitton/android/presentation/databinding/ItemFaqAnswerBinding;

    :goto_0
    iget-object p3, p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqAdapter;->g:Lcom/vuitton/android/presentation/databinding/ItemFaqAnswerBinding;

    const-string p5, "childViewBinding"

    if-eqz p3, :cond_4

    iget-object p3, p3, Lcom/vuitton/android/presentation/databinding/ItemFaqAnswerBinding;->b:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqAdapter;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqItem;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqItem;->b:Ljava/lang/String;

    const-string v0, "\n"

    const-string v1, "<br />"

    invoke-static {p1, v0, v1}, Lkotlin/text/StringsKt;->J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/vuitton/android/presentation/extensions/TextViewExtKt;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqAdapter;->d:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    if-eqz p1, :cond_2

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatchExtKt;->a:Ljava/util/List;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->j:Ljava/lang/String;

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode;->C:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    const/16 p1, 0x8

    invoke-static {p1}, Lcom/vuitton/android/presentation/extensions/ResourcesExtKt;->a(I)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p3, p1, v0}, Landroid/widget/TextView;->setLineSpacing(FF)V

    :cond_2
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqAdapter;->g:Lcom/vuitton/android/presentation/databinding/ItemFaqAnswerBinding;

    if-eqz p0, :cond_3

    invoke-virtual {p4, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p4

    :cond_3
    invoke-static {p5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw p2

    :cond_4
    invoke-static {p5}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw p2
.end method

.method public final getChildrenCount(I)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getGroup(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final getGroupCount()I
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqAdapter;->e:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final getGroupId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public final getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    if-nez p3, :cond_1

    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v1, 0x7f0d009b

    const/4 v2, 0x0

    invoke-virtual {p3, v1, p4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const p4, 0x7f0a0256

    invoke-static {p4, p3}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    const p4, 0x7f0a047e

    invoke-static {p4, p3}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    new-instance p4, Lcom/vuitton/android/presentation/databinding/ItemFaqQuestionBinding;

    check-cast p3, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {p4, p3, v1, v2}, Lcom/vuitton/android/presentation/databinding/ItemFaqQuestionBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqAdapter;->f:Lcom/vuitton/android/presentation/databinding/ItemFaqQuestionBinding;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Missing required view with ID: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    return-object v0

    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p4, Lcom/vuitton/android/presentation/databinding/ItemFaqQuestionBinding;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqAdapter;->f:Lcom/vuitton/android/presentation/databinding/ItemFaqQuestionBinding;

    :goto_0
    iget-object p4, p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqAdapter;->f:Lcom/vuitton/android/presentation/databinding/ItemFaqQuestionBinding;

    const-string v1, "parentViewBinding"

    if-eqz p4, :cond_4

    iget-object v2, p4, Lcom/vuitton/android/presentation/databinding/ItemFaqQuestionBinding;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqAdapter;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqItem;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqItem;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p4, Lcom/vuitton/android/presentation/databinding/ItemFaqQuestionBinding;->b:Landroid/widget/ImageView;

    if-eqz p2, :cond_2

    const p2, 0x7f080190

    goto :goto_1

    :cond_2
    const p2, 0x7f080245

    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqAdapter;->f:Lcom/vuitton/android/presentation/databinding/ItemFaqQuestionBinding;

    if-eqz p0, :cond_3

    invoke-virtual {p3, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p3

    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v0
.end method

.method public final hasStableIds()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isChildSelectable(II)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onGroupCollapsed(I)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/BaseExpandableListAdapter;->onGroupCollapsed(I)V

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;->LIGHT_UP_SNEAKERS:Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqAdapter;->c:Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqAdapter$Listener;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqAdapter;->a:Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;

    if-eq v0, v2, :cond_1

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;->LIGHT_UP_KEEP_ALL:Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1, p1}, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqAdapter$Listener;->k(I)V

    return-void

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqAdapter;->b:Ljava/lang/String;

    invoke-interface {v1, p1, p0}, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqAdapter$Listener;->h(ILjava/lang/String;)V

    return-void
.end method

.method public final onGroupExpanded(I)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/BaseExpandableListAdapter;->onGroupExpanded(I)V

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;->LIGHT_UP_SNEAKERS:Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqAdapter;->c:Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqAdapter$Listener;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqAdapter;->a:Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;

    if-eq v0, v2, :cond_1

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;->LIGHT_UP_KEEP_ALL:Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1, p1}, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqAdapter$Listener;->l(I)V

    return-void

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqAdapter;->b:Ljava/lang/String;

    invoke-interface {v1, p1, p0}, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqAdapter$Listener;->d(ILjava/lang/String;)V

    return-void
.end method
