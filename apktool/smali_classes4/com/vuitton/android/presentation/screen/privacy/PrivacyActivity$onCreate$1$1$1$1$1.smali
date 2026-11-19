.class final Lcom/vuitton/android/presentation/screen/privacy/PrivacyActivity$onCreate$1$1$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
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


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/privacy/PrivacyActivity;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/privacy/PrivacyActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyActivity$onCreate$1$1$1$1$1;->b:Lcom/vuitton/android/presentation/screen/privacy/PrivacyActivity;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyActivity$onCreate$1$1$1$1$1;->b:Lcom/vuitton/android/presentation/screen/privacy/PrivacyActivity;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/base/BaseActivity;->B()Lcom/vuitton/android/presentation/push/NotificationsManager;

    move-result-object p2

    invoke-interface {p2, p0, p1}, Lcom/vuitton/android/presentation/push/NotificationsManager;->p(Landroid/app/Activity;Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
