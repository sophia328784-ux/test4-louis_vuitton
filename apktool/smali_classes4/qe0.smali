.class public final synthetic Lqe0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/cart/NativeCartActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/cart/NativeCartActivity;I)V
    .locals 0

    iput p2, p0, Lqe0;->b:I

    iput-object p1, p0, Lqe0;->c:Lcom/vuitton/android/presentation/screen/cart/NativeCartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget v0, p0, Lqe0;->b:I

    const/4 v1, 0x0

    const-string v2, "contributionLinkNavigator"

    check-cast p1, Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartActivity;->w:Lcom/vuitton/android/presentation/screen/cart/NativeCartActivity$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p0, Lqe0;->c:Lcom/vuitton/android/presentation/screen/cart/NativeCartActivity;

    iget-object v3, v4, Lcom/vuitton/android/presentation/screen/cart/NativeCartActivity;->q:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    if-eqz v3, :cond_0

    new-instance v5, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$ImmersiveArticle;

    invoke-direct {v5, p1}, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$ImmersiveArticle;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    const/16 v9, 0x10

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;->a(Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;Landroidx/fragment/app/FragmentActivity;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Landroid/os/Bundle;Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator$ContributionLinkNavigationAnimation;Landroidx/activity/result/ActivityResultLauncher;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/cart/NativeCartActivity;->w:Lcom/vuitton/android/presentation/screen/cart/NativeCartActivity$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p0, Lqe0;->c:Lcom/vuitton/android/presentation/screen/cart/NativeCartActivity;

    iget-object v3, v4, Lcom/vuitton/android/presentation/screen/cart/NativeCartActivity;->q:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    if-eqz v3, :cond_1

    new-instance v5, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$ImmersiveArticle;

    invoke-direct {v5, p1}, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$ImmersiveArticle;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    const/16 v9, 0x10

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;->a(Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;Landroidx/fragment/app/FragmentActivity;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Landroid/os/Bundle;Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator$ContributionLinkNavigationAnimation;Landroidx/activity/result/ActivityResultLauncher;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
