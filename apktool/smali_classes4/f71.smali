.class public final synthetic Lf71;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;I)V
    .locals 0

    iput p2, p0, Lf71;->b:I

    iput-object p1, p0, Lf71;->c:Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lf71;->b:I

    sget-object v1, Lcom/vuitton/android/presentation/screen/wishlist/WishlistDestinations$ToCatalogPage;->a:Lcom/vuitton/android/presentation/screen/wishlist/WishlistDestinations$ToCatalogPage;

    const/4 v2, 0x0

    const-string v3, "chatLifecycleObserver"

    iget-object p0, p0, Lf71;->c:Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;->t:Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;->I()Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;->G()V

    invoke-static {v1, p0}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/wishlist/WishlistDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;->p:Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;->c(Landroidx/lifecycle/LifecycleOwner;)V

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    sget-object v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;->t:Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;->I()Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;->G()V

    invoke-static {v1, p0}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/wishlist/WishlistDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;->p:Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;

    if-eqz v0, :cond_3

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;->c(Landroidx/lifecycle/LifecycleOwner;)V

    goto :goto_1

    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2

    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    sget-object v0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;->t:Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$Companion;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "IS_STORE_MODE_CONTEXT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;->I()Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;->F()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_5
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;->p:Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;

    if-eqz v0, :cond_7

    if-eqz v0, :cond_6

    invoke-virtual {v0, p0}, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;->c(Landroidx/lifecycle/LifecycleOwner;)V

    goto :goto_3

    :cond_6
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2

    :cond_7
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
