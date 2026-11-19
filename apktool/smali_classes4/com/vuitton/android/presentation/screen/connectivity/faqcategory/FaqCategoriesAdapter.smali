.class public final Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesAdapter$ViewHolder;,
        Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesAdapter$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesAdapter$ViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u000c\u0012\u0008\u0012\u00060\u0002R\u00020\u00000\u0001:\u0001\u0011B_\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0018\u0010\t\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0005\u0012\u0016\u0008\u0002\u0010\u000c\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0012\u0004\u0012\u00020\u00080\n\u0012\u001c\u0008\u0002\u0010\u000e\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00080\u0005\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesAdapter$ViewHolder;",
        "Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategoryType;",
        "faqCategoryType",
        "Lkotlin/Function2;",
        "Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategory;",
        "Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;",
        "",
        "routeToFaq",
        "Lkotlin/Function1;",
        "",
        "trackFaqCategoryClick",
        "Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;",
        "trackLightUpFaqCategoryClick",
        "<init>",
        "(Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategoryType;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V",
        "ViewHolder",
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
.field public final b:Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategoryType;

.field public final c:Lkotlin/jvm/functions/Function2;

.field public final d:Lkotlin/jvm/functions/Function1;

.field public final e:Lkotlin/jvm/functions/Function2;

.field public final f:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategoryType;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategoryType;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategory;",
            "-",
            "Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesAdapter;->b:Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategoryType;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesAdapter;->c:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesAdapter;->d:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesAdapter;->e:Lkotlin/jvm/functions/Function2;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesAdapter;->f:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategoryType;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 31
    new-instance p3, Liv;

    const/16 p6, 0x15

    invoke-direct {p3, p6}, Liv;-><init>(I)V

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 32
    new-instance p4, Lrq;

    const/16 p5, 0x12

    invoke-direct {p4, p5}, Lrq;-><init>(I)V

    .line 33
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesAdapter;-><init>(Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategoryType;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesAdapter;->f:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    check-cast p1, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesAdapter$ViewHolder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesAdapter;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategory;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesAdapter$ViewHolder;->b:Lcom/vuitton/android/presentation/databinding/ItemFaqCategoryBinding;

    iget-object v1, p1, Lcom/vuitton/android/presentation/databinding/ItemFaqCategoryBinding;->d:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategory;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/vuitton/android/presentation/databinding/ItemFaqCategoryBinding;->c:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategory;->c:Ljava/lang/String;

    const/4 v3, 0x0

    const/16 v4, 0x7e

    invoke-static {v1, v2, v3, v3, v4}, Lcom/vuitton/android/presentation/imageloading/xmlui/XmlUiKt;->a(Landroid/widget/ImageView;Ljava/lang/Object;III)V

    rem-int/lit8 p2, p2, 0x2

    iget-object v1, p1, Lcom/vuitton/android/presentation/databinding/ItemFaqCategoryBinding;->b:Landroid/widget/LinearLayout;

    const/16 v2, 0x10

    if-nez p2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v2}, Lcom/vuitton/android/presentation/extensions/ResourcesExtKt;->a(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {v2}, Lcom/vuitton/android/presentation/extensions/ResourcesExtKt;->a(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :goto_0
    new-instance p2, Ln0;

    const/16 v2, 0x1c

    invoke-direct {p2, p0, v0, p1, v2}, Ln0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v1, p2}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d009a

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0253

    invoke-static {p2, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const p2, 0x7f0a046c

    invoke-static {p2, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    new-instance p2, Lcom/vuitton/android/presentation/databinding/ItemFaqCategoryBinding;

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-direct {p2, p1, v0, v1}, Lcom/vuitton/android/presentation/databinding/ItemFaqCategoryBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    new-instance p1, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesAdapter$ViewHolder;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesAdapter$ViewHolder;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesAdapter;Lcom/vuitton/android/presentation/databinding/ItemFaqCategoryBinding;)V

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Missing required view with ID: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
