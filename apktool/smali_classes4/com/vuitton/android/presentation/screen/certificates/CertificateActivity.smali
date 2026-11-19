.class public final Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity;
.super Lcom/vuitton/android/presentation/screen/certificates/Hilt_CertificateActivity;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/chat/ChatHostActivity;


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0005B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity;",
        "Lcom/vuitton/android/presentation/screen/base/BaseActivity;",
        "Lcom/vuitton/android/presentation/chat/ChatHostActivity;",
        "<init>",
        "()V",
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
.field public static final x:Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity$Companion;


# instance fields
.field public final p:Landroidx/lifecycle/ViewModelLazy;

.field public q:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

.field public r:Lcom/vuitton/android/presentation/link/navigation/ContactUsNavigator;

.field public s:Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;

.field public t:Lcom/vuitton/android/presentation/chat/ChatAttachable;

.field public u:Lcom/vuitton/android/core/events/LVEventSender;

.field public v:Lcom/vuitton/foundation/logger/Logger;

.field public w:Lcom/vuitton/android/presentation/screen/certificates/nfc/NfcManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity;->x:Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/certificates/Hilt_CertificateActivity;-><init>()V

    new-instance v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity$special$$inlined$viewModels$default$1;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    const-class v2, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModelImpl;

    sget-object v3, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v3, v2}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    new-instance v3, Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity$special$$inlined$viewModels$default$2;

    invoke-direct {v3, p0}, Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    new-instance v4, Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity$special$$inlined$viewModels$default$3;

    const/4 v5, 0x0

    invoke-direct {v4, v5, p0}, Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    iput-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity;->p:Landroidx/lifecycle/ViewModelLazy;

    return-void
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity;->s:Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;

    if-eqz p0, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;->d(IILandroid/content/Intent;)V

    return-void

    :cond_0
    const-string p0, "chatLifecycleObserver"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Landroidx/activity/SystemBarStyle;->e:Landroidx/activity/SystemBarStyle$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    invoke-static {p1, p1}, Landroidx/activity/SystemBarStyle$Companion;->b(II)Landroidx/activity/SystemBarStyle;

    move-result-object v0

    invoke-static {p1, p1}, Landroidx/activity/SystemBarStyle$Companion;->b(II)Landroidx/activity/SystemBarStyle;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroidx/activity/EdgeToEdge;->a(Landroidx/activity/ComponentActivity;Landroidx/activity/SystemBarStyle;Landroidx/activity/SystemBarStyle;)V

    new-instance v0, Lcom/vuitton/android/presentation/chat/ChatComposeContainer;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/chat/ChatComposeContainer;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity;->s:Lcom/vuitton/android/presentation/chat/ChatLifecycleObserver;

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/LifecycleObserver;)V

    new-instance v1, Lvk;

    invoke-direct {v1, p0, p1}, Lvk;-><init>(Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity;I)V

    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const p1, -0x1156108c

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-virtual {v0, p0}, Lcom/vuitton/android/presentation/chat/ChatComposeContainer;->a(Lkotlin/jvm/functions/Function2;)V

    return-void

    :cond_0
    const-string p0, "chatLifecycleObserver"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onPause()V
    .locals 1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/certificates/CertificateActivity;->w:Lcom/vuitton/android/presentation/screen/certificates/nfc/NfcManager;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/certificates/nfc/NfcManager;->a:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/nfc/NfcAdapter;->disableReaderMode(Landroid/app/Activity;)V

    :cond_0
    invoke-super {p0}, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->onPause()V

    return-void

    :cond_1
    const-string p0, "nfcManager"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
