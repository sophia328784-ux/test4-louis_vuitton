.class public final Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;
.super Lcom/vuitton/android/presentation/screen/authentication/Hilt_AuthenticationActivity;
.source "SourceFile"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;,
        Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;,
        Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;",
        "Lcom/vuitton/android/presentation/screen/base/BaseActivity;",
        "<init>",
        "()V",
        "Routes",
        "Companion",
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


# static fields
.field public static final u:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;


# instance fields
.field public final p:Landroidx/lifecycle/ViewModelLazy;

.field public final q:Landroidx/activity/result/ActivityResultLauncher;

.field public r:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;

.field public s:Lkotlinx/serialization/json/Json;

.field public t:Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;->u:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/authentication/Hilt_AuthenticationActivity;-><init>()V

    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    const-class v2, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModelImpl;

    sget-object v3, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v3, v2}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    new-instance v3, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$special$$inlined$viewModels$default$2;

    invoke-direct {v3, p0}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v4, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$special$$inlined$viewModels$default$3;

    const/4 v5, 0x0

    invoke-direct {v4, v5, p0}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;->p:Landroidx/lifecycle/ViewModelLazy;

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    new-instance v1, Lec;

    invoke-direct {v1, p0}, Lec;-><init>(Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;)V

    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;->q:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method

.method public static H(Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 13

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "KEY_KISA_CONSENTS"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 p2, 0x0

    if-eqz v9, :cond_1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;->s:Lkotlinx/serialization/json/Json;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;->Companion:Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents$Companion;

    invoke-virtual {v1}, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {v0, v1, v9}, Lkotlinx/serialization/json/Json;->b(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;

    goto :goto_0

    :cond_0
    const-string p0, "json"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw p2

    :cond_1
    move-object v0, p2

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "KEY_IDENTITY_TOKEN_VALUE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;->q:Landroidx/activity/result/ActivityResultLauncher;

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity;->s:Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity$Companion;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "KEY_EMAIL_VALUE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "KEY_FIRSTNAME_VALUE"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "KEY_LASTNAME_VALUE"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "KEY_RAW_NONCE_VALUE"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x21

    const-string v10, "KEY_ORIGIN_VALUE"

    if-lt v7, v8, :cond_2

    const-class v11, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v6

    goto :goto_1

    :cond_2
    invoke-virtual {v6, v10}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    instance-of v10, v6, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    if-nez v10, :cond_3

    move-object v6, p2

    :cond_3
    check-cast v6, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    :goto_1
    check-cast v6, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v11, "KEY_ENTRY_POINT_VALUE"

    if-lt v7, v8, :cond_4

    const-class v12, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v10

    goto :goto_2

    :cond_4
    invoke-virtual {v10, v11}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v10

    instance-of v11, v10, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    if-nez v11, :cond_5

    move-object v10, p2

    :cond_5
    check-cast v10, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    :goto_2
    check-cast v10, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v12, "KEY_PROVIDER_VALUE"

    if-lt v7, v8, :cond_6

    const-class p2, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

    invoke-virtual {v11, v12, p2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p2

    goto :goto_4

    :cond_6
    invoke-virtual {v11, v12}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    instance-of v8, v7, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

    if-nez v8, :cond_7

    goto :goto_3

    :cond_7
    move-object p2, v7

    :goto_3
    check-cast p2, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

    :goto_4
    move-object v8, p2

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, v4

    move-object v4, v2

    move-object v2, v3

    move-object v3, v0

    move-object v0, p0

    move-object v7, v10

    invoke-static/range {v0 .. v9}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity$Companion;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/activity/result/ActivityResultLauncher;->a(Ljava/lang/Object;)V

    return-void

    :cond_8
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;->I()Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->d()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    const p2, 0x7f010037

    const v1, 0x7f01003a

    invoke-virtual {p0, p2, v1, p2, v1}, Landroidx/fragment/app/FragmentTransaction;->n(IIII)V

    sget-object p2, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterFragment;->G:Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterFragment$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterFragment;

    invoke-direct {p2}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz v0, :cond_9

    sget-object v2, Lcom/vuitton/android/core/platform/serialization/JsonProviderKt;->a:Lkotlinx/serialization/json/Json;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;->Companion:Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents$Companion;

    invoke-virtual {v3}, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v3

    check-cast v3, Lkotlinx/serialization/SerializationStrategy;

    invoke-virtual {v2, v3, v0}, Lkotlinx/serialization/json/Json;->c(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p2, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    sget-object p1, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterFragment;->H:Ljava/lang/String;

    const v0, 0x7f0a0204

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p2, p1, v1}, Landroidx/fragment/app/FragmentTransaction;->i(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    iput-boolean v1, p0, Landroidx/fragment/app/FragmentTransaction;->p:Z

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->e()I

    :cond_a
    return-void
.end method


# virtual methods
.method public final I()Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;->r:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "authenticationActivityRouter"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final J()Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;->p:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;

    return-object p0
.end method

.method public final K(Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const-string v2, "EXTRA_ROUTE"

    if-lt v0, v1, :cond_0

    const-class v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    :goto_0
    check-cast p1, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "MAIN_ACTIVITY_REQUEST_CODE"

    const/16 v2, 0xa3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;->WELCOME_PAGE_WITH_EXIT_REDIRECT_WISHLIST:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    if-ne p1, v0, :cond_2

    sget-object v1, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity;->t:Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$Companion;

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/wishlist/WishlistActivity$Companion;Landroid/content/Context;ZLjava/util/List;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_2
    move-object v2, p0

    sget-object p0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;->WELCOME_PAGE_WITH_EXIT_REDIRECT_LVPASS:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    if-ne p1, p0, :cond_3

    sget-object p0, Lcom/vuitton/android/presentation/screen/account/lvpass/LVPassActivity;->s:Lcom/vuitton/android/presentation/screen/account/lvpass/LVPassActivity$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/account/lvpass/LVPassActivity$Companion;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3
    :goto_1
    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;->J()Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;

    move-result-object p0

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;->J8()V

    :cond_4
    return-void
.end method

.method public final onBackPressed()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->M()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->M()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->M(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/main/OnBackPressedListener;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/vuitton/android/presentation/screen/main/OnBackPressedListener;

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/main/OnBackPressedListener;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 16

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget-object v1, Lcom/vuitton/android/core/type/SystemIcons;->b:Lcom/vuitton/android/core/type/SystemIcons$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v1, Lcom/vuitton/android/core/type/SystemIcons;->c:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3}, Lcom/vuitton/android/presentation/compose/components/EdgeToEdgeKt;->b(Landroidx/activity/ComponentActivity;ZZI)V

    const v1, 0x7f0d0023

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    new-instance v4, Lec;

    invoke-direct {v4, v0}, Lec;-><init>(Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;)V

    const-string v5, "EXTRA_KISA_CONSENT_RESULT"

    invoke-virtual {v1, v5, v0, v4}, Landroidx/fragment/app/FragmentManager;->j0(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/fragment/app/FragmentResultListener;)V

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->a(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v1

    new-instance v4, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$onCreate$2;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$onCreate$2;-><init>(Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;Lkotlin/coroutines/Continuation;)V

    const/4 v6, 0x3

    invoke-static {v1, v5, v5, v4, v6}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_7

    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x21

    const-string v8, "EXTRA_LOGIN_CONTEXT"

    if-lt v4, v7, :cond_1

    const-class v9, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v8

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v8}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v8

    instance-of v9, v8, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;

    if-nez v9, :cond_2

    move-object v8, v5

    :cond_2
    check-cast v8, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;

    :goto_0
    check-cast v8, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;

    if-nez v8, :cond_3

    sget-object v8, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;->DEFAULT:Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;

    :cond_3
    const-string v9, "EXTRA_ROUTE"

    invoke-virtual {v1, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    goto/16 :goto_7

    :cond_4
    if-lt v4, v7, :cond_5

    const-class v10, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v9

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v9}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v9

    instance-of v10, v9, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    if-nez v10, :cond_6

    move-object v9, v5

    :cond_6
    check-cast v9, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    :goto_1
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v9, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    sget-object v10, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$WhenMappings;->a:[I

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v9, v10, v9

    const-string v10, ""

    const v11, 0x7f010035

    const-class v12, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    const v13, 0x7f0a0204

    const v14, 0x7f010037

    const v15, 0x7f01003a

    const-string v6, "EXTRA_LOGIN_PARAM"

    packed-switch v9, :pswitch_data_0

    invoke-static {}, Lv40;->g()V

    return-void

    :pswitch_0
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "KEY_ORIGIN_VALUE"

    if-lt v4, v7, :cond_7

    invoke-virtual {v1, v2, v12}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v1

    goto :goto_2

    :cond_7
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    instance-of v2, v1, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    if-nez v2, :cond_8

    move-object v1, v5

    :cond_8
    check-cast v1, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    :goto_2
    check-cast v1, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;->I()Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;

    invoke-static {v0, v1}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;->a(Landroidx/fragment/app/FragmentActivity;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;)V

    goto/16 :goto_7

    :pswitch_1
    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;->I()Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;

    invoke-static {v0, v8, v3}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;->f(Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;Z)V

    goto/16 :goto_7

    :pswitch_2
    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;->I()Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;

    invoke-static {v0, v8, v3}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;->f(Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;Z)V

    goto/16 :goto_7

    :pswitch_3
    const-string v2, "EXTRA_TRACKING_ORIGIN"

    if-lt v4, v7, :cond_9

    invoke-virtual {v1, v2, v12}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v1

    goto :goto_3

    :cond_9
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    instance-of v2, v1, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    if-nez v2, :cond_a

    move-object v1, v5

    :cond_a
    check-cast v1, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    :goto_3
    check-cast v1, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;->I()Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;->J()Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;->R()Z

    move-result v2

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;->J()Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;

    move-result-object v3

    invoke-interface {v3}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;->j0()Z

    move-result v3

    invoke-static {v0, v2, v3, v1}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;->e(Landroidx/fragment/app/FragmentActivity;ZZLcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;)V

    goto/16 :goto_7

    :pswitch_4
    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;->J()Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;

    move-result-object v2

    invoke-interface {v2}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;->L0()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;->I()Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;

    invoke-static {v0, v1}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;->d(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_b
    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;->I()Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;

    invoke-static {v0, v1}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;->b(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    goto/16 :goto_7

    :pswitch_5
    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;->I()Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;->g(Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;)V

    sget-object v1, Lcom/vuitton/android/presentation/screen/privacy/PrivacyActivity;->s:Lcom/vuitton/android/presentation/screen/privacy/PrivacyActivity$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v5, v3}, Lcom/vuitton/android/presentation/screen/privacy/PrivacyActivity$Companion;->a(Landroid/content/Context;Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_7

    :pswitch_6
    const-string v2, "EXTRA_ACTIVATE_ACCOUNT_ARGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;->I()Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;->g(Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->d()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v14, v15, v11, v15}, Landroidx/fragment/app/FragmentTransaction;->n(IIII)V

    sget-object v4, Lcom/vuitton/android/presentation/screen/authentication/register/legacy/WebViewRegisterFragment;->M:Lcom/vuitton/android/presentation/screen/authentication/register/legacy/WebViewRegisterFragment$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/vuitton/android/presentation/screen/authentication/register/legacy/WebViewRegisterFragment;

    invoke-direct {v4}, Lcom/vuitton/android/presentation/screen/authentication/register/legacy/WebViewRegisterFragment;-><init>()V

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v7, "KEY_DEEPLINK_VALUES"

    invoke-virtual {v6, v7, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v6}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/register/legacy/WebViewRegisterFragment;->N:Ljava/lang/String;

    invoke-virtual {v2, v13, v4, v1}, Landroidx/fragment/app/FragmentTransaction;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroidx/fragment/app/FragmentTransaction;->d(Ljava/lang/String;)V

    iput-boolean v3, v2, Landroidx/fragment/app/FragmentTransaction;->p:Z

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->e()I

    goto/16 :goto_7

    :pswitch_7
    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    goto :goto_4

    :cond_c
    move-object v10, v1

    :goto_4
    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;->J()Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;->L0()Z

    move-result v1

    const v2, 0x7f010020

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;->I()Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;->g(Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->d()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v14, v2, v11, v15}, Landroidx/fragment/app/FragmentTransaction;->n(IIII)V

    sget-object v2, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginFragment;->A:Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginFragment$Companion;

    sget-object v4, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginRouteName;->LOGIN:Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginRouteName;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10, v4}, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginFragment$Companion;->a(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginRouteName;)Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginFragment;

    move-result-object v2

    sget-object v4, Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginFragment;->B:Ljava/lang/String;

    invoke-virtual {v1, v13, v2, v4}, Landroidx/fragment/app/FragmentTransaction;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroidx/fragment/app/FragmentTransaction;->d(Ljava/lang/String;)V

    iput-boolean v3, v1, Landroidx/fragment/app/FragmentTransaction;->p:Z

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->e()I

    goto/16 :goto_7

    :cond_d
    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;->I()Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;->g(Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->d()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v14, v2, v11, v15}, Landroidx/fragment/app/FragmentTransaction;->n(IIII)V

    sget-object v2, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginFragment;->L:Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginFragment$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginFragment$Companion;->a(Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginFragment;

    move-result-object v2

    sget-object v4, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginFragment;->M:Ljava/lang/String;

    invoke-virtual {v1, v13, v2, v4}, Landroidx/fragment/app/FragmentTransaction;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroidx/fragment/app/FragmentTransaction;->d(Ljava/lang/String;)V

    iput-boolean v3, v1, Landroidx/fragment/app/FragmentTransaction;->p:Z

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->e()I

    goto :goto_7

    :pswitch_8
    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_e

    goto :goto_5

    :cond_e
    move-object v10, v1

    :goto_5
    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;->I()Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->d()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v14, v15, v14, v15}, Landroidx/fragment/app/FragmentTransaction;->n(IIII)V

    sget-object v2, Lcom/vuitton/android/presentation/screen/authentication/register/legacy/WebViewRegisterFragment;->M:Lcom/vuitton/android/presentation/screen/authentication/register/legacy/WebViewRegisterFragment$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/vuitton/android/presentation/screen/authentication/register/legacy/WebViewRegisterFragment;

    invoke-direct {v2}, Lcom/vuitton/android/presentation/screen/authentication/register/legacy/WebViewRegisterFragment;-><init>()V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_f

    goto :goto_6

    :cond_f
    const-string v6, "KEY_CID"

    invoke-virtual {v4, v6, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    invoke-virtual {v2, v4}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    sget-object v4, Lcom/vuitton/android/presentation/screen/authentication/register/legacy/WebViewRegisterFragment;->N:Ljava/lang/String;

    invoke-virtual {v1, v13, v2, v4, v3}, Landroidx/fragment/app/FragmentTransaction;->i(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    invoke-static {v1, v0}, Lcom/vuitton/android/presentation/extensions/FragmentTransactionExtKt;->a(Landroidx/fragment/app/FragmentTransaction;Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->e()I

    goto :goto_7

    :pswitch_9
    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;->I()Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;

    invoke-static {v0, v8, v3}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;->f(Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;Z)V

    goto :goto_7

    :pswitch_a
    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;->I()Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;

    invoke-static {v0, v8, v2}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivityRouter;->f(Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;Z)V

    :cond_10
    :goto_7
    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->a(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$onCreate$3;

    invoke-direct {v2, v0, v5}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$onCreate$3;-><init>(Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x3

    invoke-static {v1, v5, v5, v2, v0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public final onSupportNavigateUp()Z
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    const-string v3, "EXTRA_ROUTE"

    if-lt v1, v2, :cond_0

    const-class v1, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->J()I

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;->LOGIN_FROM_OUTSIDE:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;->REGISTER_FROM_OUTSIDE:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationActivity$Routes;

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->V()V

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_2
    const/4 p0, 0x1

    return p0
.end method
