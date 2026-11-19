.class final Lcom/vuitton/android/presentation/screen/permissions/models/HandleNotificationsPermissionStateKt$HandleNotificationsPermissionState$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Boolean;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        ""
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.presentation.screen.permissions.models.HandleNotificationsPermissionStateKt$HandleNotificationsPermissionState$1$1$1"
    f = "HandleNotificationsPermissionState.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Landroidx/activity/compose/ManagedActivityResultLauncher;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;

.field public final synthetic e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/activity/compose/ManagedActivityResultLauncher;Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/permissions/models/HandleNotificationsPermissionStateKt$HandleNotificationsPermissionState$1$1$1;->c:Landroidx/activity/compose/ManagedActivityResultLauncher;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/permissions/models/HandleNotificationsPermissionStateKt$HandleNotificationsPermissionState$1$1$1;->d:Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/permissions/models/HandleNotificationsPermissionStateKt$HandleNotificationsPermissionState$1$1$1;->e:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance v0, Lcom/vuitton/android/presentation/screen/permissions/models/HandleNotificationsPermissionStateKt$HandleNotificationsPermissionState$1$1$1;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/permissions/models/HandleNotificationsPermissionStateKt$HandleNotificationsPermissionState$1$1$1;->d:Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/permissions/models/HandleNotificationsPermissionStateKt$HandleNotificationsPermissionState$1$1$1;->e:Landroid/content/Context;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/permissions/models/HandleNotificationsPermissionStateKt$HandleNotificationsPermissionState$1$1$1;->c:Landroidx/activity/compose/ManagedActivityResultLauncher;

    invoke-direct {v0, v2, p0, v1, p2}, Lcom/vuitton/android/presentation/screen/permissions/models/HandleNotificationsPermissionStateKt$HandleNotificationsPermissionState$1$1$1;-><init>(Landroid/content/Context;Landroidx/activity/compose/ManagedActivityResultLauncher;Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/permissions/models/HandleNotificationsPermissionStateKt$HandleNotificationsPermissionState$1$1$1;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/permissions/models/HandleNotificationsPermissionStateKt$HandleNotificationsPermissionState$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/permissions/models/HandleNotificationsPermissionStateKt$HandleNotificationsPermissionState$1$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/permissions/models/HandleNotificationsPermissionStateKt$HandleNotificationsPermissionState$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/permissions/models/HandleNotificationsPermissionStateKt$HandleNotificationsPermissionState$1$1$1;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p1, v0, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/permissions/models/HandleNotificationsPermissionStateKt$HandleNotificationsPermissionState$1$1$1;->c:Landroidx/activity/compose/ManagedActivityResultLauncher;

    const-string p1, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {p0, p1}, Landroidx/activity/compose/ManagedActivityResultLauncher;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/permissions/models/HandleNotificationsPermissionStateKt$HandleNotificationsPermissionState$1$1$1;->d:Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;

    invoke-interface {p1}, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;->Y6()V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/permissions/models/HandleNotificationsPermissionStateKt$HandleNotificationsPermissionState$1$1$1;->e:Landroid/content/Context;

    invoke-static {p0}, Lcom/vuitton/android/presentation/utils/NotificationUtils;->b(Landroid/content/Context;)V

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
