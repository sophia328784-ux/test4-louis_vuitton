.class final Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$patchUserConsents$1$1$emit$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.presentation.screen.options.settings.SettingsViewModelImpl$patchUserConsents$1$1"
    f = "SettingsViewModelImpl.kt"
    l = {
        0xb6,
        0xc2
    }
    m = "emit"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/presentation/screen/mylv/models/MarketingUserConsentsUiModel;

.field public c:Ljava/lang/Object;

.field public d:Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl;

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$patchUserConsents$1$1;

.field public g:I


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$patchUserConsents$1$1;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$patchUserConsents$1$1$emit$1;->f:Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$patchUserConsents$1$1;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$patchUserConsents$1$1$emit$1;->e:Ljava/lang/Object;

    iget p1, p0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$patchUserConsents$1$1$emit$1;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$patchUserConsents$1$1$emit$1;->g:I

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$patchUserConsents$1$1$emit$1;->f:Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$patchUserConsents$1$1;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/vuitton/android/presentation/screen/options/settings/SettingsViewModelImpl$patchUserConsents$1$1;->b(Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
