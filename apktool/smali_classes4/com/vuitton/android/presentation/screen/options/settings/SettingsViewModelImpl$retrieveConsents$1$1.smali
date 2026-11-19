.class final Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$retrieveConsents$1$1;
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
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$retrieveConsents$1$1;->b:Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of p2, p1, Lkotlin/Result$Failure;

    if-nez p2, :cond_0

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents;

    invoke-static {p1}, Lcom/vuitton/android/presentation/screen/mylv/mappers/UserConsentsUiModelMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents;)Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;

    move-result-object p2

    invoke-static {p1}, Lcom/vuitton/android/presentation/screen/mylv/mappers/UserConsentsUiModelMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents;)Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;

    move-result-object p1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$retrieveConsents$1$1;->b:Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;->n:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0, p2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;->m:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;->yc(Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;)Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;

    move-result-object p0

    invoke-interface {p2, p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
