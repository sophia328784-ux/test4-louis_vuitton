.class final synthetic Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity$binding$2;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/View;",
        "Lcom/vuitton/android/presentation/databinding/ActivityAddTravelBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final b:Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity$binding$2;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity$binding$2;

    const-string v4, "bind(Landroid/view/View;)Lcom/vuitton/android/presentation/databinding/ActivityAddTravelBinding;"

    const/4 v5, 0x0

    const/4 v1, 0x1

    const-class v2, Lcom/vuitton/android/presentation/databinding/ActivityAddTravelBinding;

    const-string v3, "bind"

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity$binding$2;->b:Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity$binding$2;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x7f0a0056

    invoke-static {p0, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/ScrollView;

    const/4 v0, 0x0

    const-string v1, "Missing required view with ID: "

    if-eqz v2, :cond_1

    const p0, 0x7f0a012a

    invoke-static {p0, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    if-eqz v3, :cond_1

    const p0, 0x7f0a012b

    invoke-static {p0, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_1

    const p0, 0x7f0a012c

    invoke-static {p0, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_1

    const p0, 0x7f0a0130

    invoke-static {p0, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_1

    const p0, 0x7f0a012d

    invoke-static {p0, v5}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    const p0, 0x7f0a012e

    invoke-static {p0, v5}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    const p0, 0x7f0a012f

    invoke-static {p0, v5}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    move-object v6, v5

    new-instance v5, Lcom/vuitton/android/presentation/databinding/TravelCreationConfirmationBinding;

    move-object p0, v6

    check-cast p0, Landroid/widget/LinearLayout;

    invoke-direct {v5, p0}, Lcom/vuitton/android/presentation/databinding/TravelCreationConfirmationBinding;-><init>(Landroid/widget/LinearLayout;)V

    const p0, 0x7f0a02a4

    invoke-static {p0, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-static {v6}, Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;->a(Landroid/view/View;)Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;

    move-result-object v6

    const p0, 0x7f0a034c

    invoke-static {p0, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_1

    const p0, 0x7f0a037e

    invoke-static {p0, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_1

    check-cast v7, Landroid/widget/FrameLayout;

    move-object p0, v7

    new-instance v7, Lcom/vuitton/android/presentation/databinding/ProgressOverlayBinding;

    invoke-direct {v7, p0}, Lcom/vuitton/android/presentation/databinding/ProgressOverlayBinding;-><init>(Landroid/widget/FrameLayout;)V

    const p0, 0x7f0a04c8

    invoke-static {p0, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/google/android/material/tabs/TabLayout;

    if-eqz v8, :cond_1

    new-instance v1, Lcom/vuitton/android/presentation/databinding/ActivityAddTravelBinding;

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-direct/range {v1 .. v8}, Lcom/vuitton/android/presentation/databinding/ActivityAddTravelBinding;-><init>(Landroid/widget/ScrollView;Landroid/widget/Button;Landroid/widget/TextView;Lcom/vuitton/android/presentation/databinding/TravelCreationConfirmationBinding;Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;Lcom/vuitton/android/presentation/databinding/ProgressOverlayBinding;Lcom/google/android/material/tabs/TabLayout;)V

    return-object v1

    :cond_0
    move-object v6, v5

    invoke-virtual {v6}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    return-object v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    return-object v0
.end method
