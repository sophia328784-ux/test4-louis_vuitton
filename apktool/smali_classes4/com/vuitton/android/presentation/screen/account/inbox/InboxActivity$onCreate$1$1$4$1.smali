.class final synthetic Lcom/vuitton/android/presentation/screen/account/inbox/InboxActivity$onCreate$1$1$4$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;",
        "Lkotlin/Unit;",
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


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxActivity;

    sget-object v0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxActivity;->s:Lcom/vuitton/android/presentation/screen/account/inbox/InboxActivity$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/account/inbox/InboxActivity;->H()Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModel;

    move-result-object v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxTrackingUIModel$NotificationClicked;->a:Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxTrackingUIModel$NotificationClicked;

    invoke-interface {v0, v1}, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModel;->gc(Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxTrackingUIModel;)V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/account/inbox/InboxActivity;->H()Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModel;

    move-result-object v0

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/vuitton/android/presentation/screen/account/inbox/InboxViewModel;->Ua(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;->e:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/account/inbox/InboxActivity;->p:Lcom/vuitton/android/presentation/link/LinkHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget v2, Lcom/vuitton/android/presentation/link/LinkHandler;->e:I

    invoke-virtual {v0, p1, p0, v1}, Lcom/vuitton/android/presentation/link/LinkHandler;->c(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Landroidx/activity/result/ActivityResultLauncher;)Z

    goto :goto_0

    :cond_0
    const-string p0, "linkHandler"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
