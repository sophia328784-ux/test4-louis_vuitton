.class final synthetic Lcom/vuitton/android/presentation/screen/privacy/PrivacyActivity$onCreate$1$1$2$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function0<",
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
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyActivity;

    sget-object v0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyActivity;->s:Lcom/vuitton/android/presentation/screen/privacy/PrivacyActivity$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/privacy/PrivacyActivity;->H()Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;->O4()V

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/privacy/PrivacyActivity;->H()Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;

    move-result-object v0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;->d:Lcom/vuitton/android/domain/usecase/permissions/ShouldRequestNotificationsPermissionUseCase;

    iget-object v0, v0, Landroidx/lifecycle/AndroidViewModel;->a:Landroid/app/Application;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/vuitton/android/presentation/utils/NotificationUtils;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/vuitton/android/domain/usecase/permissions/ShouldRequestNotificationsPermissionUseCase;->a(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/privacy/PrivacyActivity;->H()Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;->e:Lcom/vuitton/android/domain/usecase/permissions/SetNotificationsPermissionAskedUseCase;

    iget-object v0, v0, Lcom/vuitton/android/domain/usecase/permissions/SetNotificationsPermissionAskedUseCase;->a:Lcom/vuitton/android/domain/repository/PermissionsRepository;

    invoke-interface {v0}, Lcom/vuitton/android/domain/repository/PermissionsRepository;->b()V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyActivity;->p:Landroidx/activity/result/ActivityResultLauncher;

    if-eqz p0, :cond_0

    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {p0, v0}, Landroidx/activity/result/ActivityResultLauncher;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "requestPermissionLauncher"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/privacy/PrivacyActivity;->I()V

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
