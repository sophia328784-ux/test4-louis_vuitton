.class final synthetic Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailFragment$binding$2;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailFragment;-><init>()V
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
        "Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerRoomDetailPageBinding;",
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
.field public static final b:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailFragment$binding$2;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailFragment$binding$2;

    const-string v4, "bind(Landroid/view/View;)Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerRoomDetailPageBinding;"

    const/4 v5, 0x0

    const/4 v1, 0x1

    const-class v2, Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerRoomDetailPageBinding;

    const-string v3, "bind"

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailFragment$binding$2;->b:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailFragment$binding$2;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x7f0a02b1

    invoke-static {p0, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/views/FixedAspectRatioImageView;

    if-eqz v0, :cond_1

    const p0, 0x7f0a02b2

    invoke-static {p0, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;->a(Landroid/view/View;)Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;

    move-result-object p0

    const v0, 0x7f0a0378

    invoke-static {v0, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    const v0, 0x7f0a038e

    invoke-static {v0, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_0

    const v0, 0x7f0a039f

    invoke-static {v0, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/connectivity/views/ClickableEditText;

    if-eqz v2, :cond_0

    const v0, 0x7f0a03a0

    invoke-static {v0, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    const v0, 0x7f0a03b0

    invoke-static {v0, p1}, Landroidx/viewbinding/ViewBindings;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/core/widget/NestedScrollView;

    if-eqz v3, :cond_0

    new-instance v0, Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerRoomDetailPageBinding;

    check-cast p1, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0, v1, v2}, Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerRoomDetailPageBinding;-><init>(Lcom/vuitton/android/presentation/databinding/ToolbarSimpleBinding;Landroidx/recyclerview/widget/RecyclerView;Lcom/vuitton/android/presentation/screen/connectivity/views/ClickableEditText;)V

    return-object v0

    :cond_0
    move p0, v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Missing required view with ID: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
