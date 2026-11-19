.class public final Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpPresetAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpPresetAdapter$PresetViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpPresetAdapter$PresetViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u000c\u0012\u0008\u0012\u00060\u0002R\u00020\u00000\u0001:\u0001\u000eB?\u00126\u0010\u000b\u001a2\u0012\u0013\u0012\u00110\u0004\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\u0007\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008\u0005\u0012\u0008\u0008\u0006\u0012\u0004\u0008\u0008(\t\u0012\u0004\u0012\u00020\n0\u0003\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpPresetAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpPresetAdapter$PresetViewHolder;",
        "Lkotlin/Function2;",
        "Lcom/lightup/sdk/animation/CreatorProject;",
        "Lkotlin/ParameterName;",
        "name",
        "preset",
        "",
        "position",
        "",
        "onPresetClick",
        "<init>",
        "(Lkotlin/jvm/functions/Function2;)V",
        "PresetViewHolder",
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
.field public final b:Lkotlin/jvm/functions/Function2;

.field public final c:Ljava/util/ArrayList;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/lightup/sdk/animation/CreatorProject;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpPresetAdapter;->b:Lkotlin/jvm/functions/Function2;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpPresetAdapter;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpPresetAdapter;->c:Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lightup/sdk/animation/CreatorProject;

    invoke-virtual {v1}, Lcom/lightup/sdk/animation/CreatorProject;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpPresetAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    check-cast p1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpPresetAdapter$PresetViewHolder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpPresetAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/lightup/sdk/animation/CreatorProject;

    iget-object p2, p1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpPresetAdapter$PresetViewHolder;->b:Lcom/vuitton/android/presentation/databinding/ItemPresetLightUpBinding;

    iget-object v0, p1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpPresetAdapter$PresetViewHolder;->c:Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpPresetAdapter;

    iget-object v1, p2, Lcom/vuitton/android/presentation/databinding/ItemPresetLightUpBinding;->c:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/lightup/sdk/animation/CreatorProject;->getDrawableId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x7e

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v4, v3}, Lcom/vuitton/android/presentation/imageloading/xmlui/XmlUiKt;->a(Landroid/widget/ImageView;Ljava/lang/Object;III)V

    iget-object v1, p2, Lcom/vuitton/android/presentation/databinding/ItemPresetLightUpBinding;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/lightup/sdk/animation/CreatorProject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p2, Lcom/vuitton/android/presentation/databinding/ItemPresetLightUpBinding;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/lightup/sdk/animation/CreatorProject;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpPresetAdapter;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    iget-object p2, p2, Lcom/vuitton/android/presentation/databinding/ItemPresetLightUpBinding;->d:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v4, 0x8

    :goto_0
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1}, Landroid/view/View;->isSelected()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    new-instance p2, Ljx;

    const/16 v2, 0xd

    invoke-direct {p2, v0, p0, p1, v2}, Ljx;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v1, p2}, Lcom/vuitton/android/presentation/extensions/ViewExtKt;->d(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d00a3

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a025e

    invoke-static {p2, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const p2, 0x7f0a025f

    invoke-static {p2, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    const p2, 0x7f0a0479

    invoke-static {p2, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    new-instance p2, Lcom/vuitton/android/presentation/databinding/ItemPresetLightUpBinding;

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1, v0, v1, v2}, Lcom/vuitton/android/presentation/databinding/ItemPresetLightUpBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    new-instance p1, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpPresetAdapter$PresetViewHolder;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpPresetAdapter$PresetViewHolder;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/LightUpPresetAdapter;Lcom/vuitton/android/presentation/databinding/ItemPresetLightUpBinding;)V

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
