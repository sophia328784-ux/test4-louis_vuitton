.class public final synthetic Lk61;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lk61;->b:I

    iput-object p1, p0, Lk61;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lk61;->b:I

    const-string v1, "authenticationActivityRouter"

    const/4 v2, 0x0

    iget-object p0, p0, Lk61;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/work/Worker;

    invoke-virtual {p0}, Landroidx/work/Worker;->c()Landroidx/work/ListenableWorker$Result$Success;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Landroidx/work/impl/WorkManagerImpl;

    iget-object v0, p0, Landroidx/work/impl/WorkManagerImpl;->d:Landroidx/work/impl/WorkDatabase;

    iget-object v1, p0, Landroidx/work/impl/WorkManagerImpl;->b:Landroid/content/Context;

    sget v2, Landroidx/work/impl/background/systemjob/SystemJobScheduler;->g:I

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x22

    if-lt v2, v3, :cond_0

    invoke-static {v1}, Landroidx/work/impl/background/systemjob/JobSchedulerExtKt;->b(Landroid/content/Context;)Landroid/app/job/JobScheduler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/job/JobScheduler;->cancelAll()V

    :cond_0
    const-string v2, "jobscheduler"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobScheduler;

    invoke-static {v1, v2}, Landroidx/work/impl/background/systemjob/SystemJobScheduler;->e(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getId()I

    move-result v3

    invoke-static {v2, v3}, Landroidx/work/impl/background/systemjob/SystemJobScheduler;->c(Landroid/app/job/JobScheduler;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->D()Landroidx/work/impl/model/WorkSpecDao;

    move-result-object v1

    invoke-interface {v1}, Landroidx/work/impl/model/WorkSpecDao;->n()I

    iget-object v1, p0, Landroidx/work/impl/WorkManagerImpl;->c:Landroidx/work/Configuration;

    iget-object p0, p0, Landroidx/work/impl/WorkManagerImpl;->f:Ljava/util/List;

    invoke-static {v1, v0, p0}, Landroidx/work/impl/Schedulers;->b(Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast p0, Landroidx/work/impl/WorkContinuationImpl;

    sget v0, Landroidx/work/impl/WorkContinuationImpl;->j:I

    sget v0, Landroidx/work/impl/utils/EnqueueRunnable;->a:I

    iget-object v0, p0, Landroidx/work/impl/WorkContinuationImpl;->a:Landroidx/work/impl/WorkManagerImpl;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0, v1}, Landroidx/work/impl/WorkContinuationImpl;->b(Landroidx/work/impl/WorkContinuationImpl;Ljava/util/HashSet;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, v0, Landroidx/work/impl/WorkManagerImpl;->d:Landroidx/work/impl/WorkDatabase;

    iget-object v2, v0, Landroidx/work/impl/WorkManagerImpl;->c:Landroidx/work/Configuration;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->c()V

    :try_start_0
    invoke-static {v1, v2, p0}, Landroidx/work/impl/utils/EnqueueUtilsKt;->a(Landroidx/work/impl/WorkDatabase;Landroidx/work/Configuration;Landroidx/work/impl/WorkContinuationImpl;)V

    invoke-static {p0}, Landroidx/work/impl/utils/EnqueueRunnable;->a(Landroidx/work/impl/WorkContinuationImpl;)Z

    move-result p0

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->w()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->h()V

    if-eqz p0, :cond_2

    iget-object p0, v0, Landroidx/work/impl/WorkManagerImpl;->d:Landroidx/work/impl/WorkDatabase;

    iget-object v0, v0, Landroidx/work/impl/WorkManagerImpl;->f:Ljava/util/List;

    invoke-static {v2, p0, v0}, Landroidx/work/impl/Schedulers;->b(Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    :cond_2
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->h()V

    throw p0

    :cond_3
    const-string v0, "WorkContinuation has cycles ("

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Lmt;->j(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    return-object v2

    :pswitch_2
    check-cast p0, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;

    sget-object v0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel$OpenMyLVEvent;->a:Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel$OpenMyLVEvent;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistViewModel;->h1(Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    check-cast p0, Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/link/WebViewSocialAuthenticationHandlerImpl;->e:Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {p0}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/register/legacy/WebViewRegisterFragment;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/legacy/WebViewRegisterFragment;->K:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;->c(Landroidx/fragment/app/FragmentActivity;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2

    :pswitch_5
    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/register/kisa/WebViewKisaFragment;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/kisa/WebViewKisaFragment;->K:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;->c(Landroidx/fragment/app/FragmentActivity;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2

    :pswitch_6
    check-cast p0, Landroid/net/http/SslError;

    sget v0, Lcom/vuitton/android/presentation/screen/authentication/base/WebViewAuthClient;->f:I

    invoke-virtual {p0}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/authentication/base/WebViewAuthUtilsKt;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/vuitton/android/presentation/extensions/WebViewExtKt;->a(Landroid/net/http/SslError;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "SSL error on "

    const-string v2, ": "

    invoke-static {v1, v0, v2, p0}, Lfc;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p0, Landroid/webkit/ConsoleMessage;

    sget v0, Lcom/vuitton/android/presentation/screen/authentication/base/WebViewAuthChromeClient;->e:I

    invoke-virtual {p0}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/authentication/base/WebViewAuthUtilsKt;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "at "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
