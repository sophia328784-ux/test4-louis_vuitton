.class final Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetKt$rememberSocialLoginBottomSheetState$2$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterNavEvent;",
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
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "event",
        "Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterNavEvent;"
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
    c = "com.vuitton.android.presentation.screen.authentication.social.components.SocialLoginBottomSheetKt$rememberSocialLoginBottomSheetState$2$1$1"
    f = "SocialLoginBottomSheet.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Landroidx/activity/compose/ManagedActivityResultLauncher;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;


# direct methods
.method public constructor <init>(Landroidx/activity/compose/ManagedActivityResultLauncher;Landroid/content/Context;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetKt$rememberSocialLoginBottomSheetState$2$1$1;->c:Landroidx/activity/compose/ManagedActivityResultLauncher;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetKt$rememberSocialLoginBottomSheetState$2$1$1;->d:Landroid/content/Context;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetKt$rememberSocialLoginBottomSheetState$2$1$1;->e:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetKt$rememberSocialLoginBottomSheetState$2$1$1;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetKt$rememberSocialLoginBottomSheetState$2$1$1;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetKt$rememberSocialLoginBottomSheetState$2$1$1;->e:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetKt$rememberSocialLoginBottomSheetState$2$1$1;->c:Landroidx/activity/compose/ManagedActivityResultLauncher;

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetKt$rememberSocialLoginBottomSheetState$2$1$1;-><init>(Landroidx/activity/compose/ManagedActivityResultLauncher;Landroid/content/Context;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetKt$rememberSocialLoginBottomSheetState$2$1$1;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterNavEvent;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetKt$rememberSocialLoginBottomSheetState$2$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetKt$rememberSocialLoginBottomSheetState$2$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetKt$rememberSocialLoginBottomSheetState$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetKt$rememberSocialLoginBottomSheetState$2$1$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterNavEvent;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    instance-of p1, v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterNavEvent$ToSocialRegister;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetKt$rememberSocialLoginBottomSheetState$2$1$1;->e:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetKt$rememberSocialLoginBottomSheetState$2$1$1;->c:Landroidx/activity/compose/ManagedActivityResultLauncher;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity;->s:Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity$Companion;

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterNavEvent$ToSocialRegister;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterNavEvent$ToSocialRegister;->a:Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;->a:Ljava/lang/String;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;->b:Ljava/lang/String;

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;->c:Ljava/lang/String;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;->g:Ljava/lang/String;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;->e:Ljava/lang/String;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;->j:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    if-nez v3, :cond_0

    move-object v9, v1

    goto :goto_0

    :cond_0
    move-object v9, v3

    :goto_0
    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;->k:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;->l:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetKt$rememberSocialLoginBottomSheetState$2$1$1;->d:Landroid/content/Context;

    const/4 v12, 0x0

    invoke-static/range {v3 .. v12}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroidx/activity/compose/ManagedActivityResultLauncher;->a(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    instance-of p1, v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterNavEvent$ToKisaForSocialRegister;

    if-eqz p1, :cond_3

    sget-object p1, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;->u:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;

    sget-object v3, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;->KISA_FOR_SOCIAL_SIGN_IN:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterNavEvent$ToKisaForSocialRegister;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterNavEvent$ToKisaForSocialRegister;->a:Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;->j:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v4

    :goto_1
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetKt$rememberSocialLoginBottomSheetState$2$1$1;->d:Landroid/content/Context;

    invoke-static {p1, p0, v3, v0, v1}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;->b(Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;Landroid/content/Context;Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroidx/activity/compose/ManagedActivityResultLauncher;->a(Ljava/lang/Object;)V

    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_3
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0
.end method
