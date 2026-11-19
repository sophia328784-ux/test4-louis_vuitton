.class final Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$createRegisterInitiateBody$1;
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
    c = "com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModelImpl"
    f = "NativeRegisterViewModelImpl.kt"
    l = {
        0x51d,
        0x51b,
        0x53c
    }
    m = "createRegisterInitiateBody-IoAF18A"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/domain/usecase/forms/mapping/GetAddressCivilitiesMappingUseCase;

.field public c:Ljava/lang/Object;

.field public d:Lcom/vuitton/foundation/model/domain/model/authentication/LoginParam;

.field public e:Lcom/vuitton/foundation/model/domain/model/authentication/RegistrationAddress;

.field public f:Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;

.field public g:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

.field public h:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

.field public i:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

.field public synthetic j:Ljava/lang/Object;

.field public final synthetic k:Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;

.field public l:I


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$createRegisterInitiateBody$1;->k:Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$createRegisterInitiateBody$1;->j:Ljava/lang/Object;

    iget p1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$createRegisterInitiateBody$1;->l:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$createRegisterInitiateBody$1;->l:I

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl$createRegisterInitiateBody$1;->k:Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;

    invoke-virtual {p1, p0}, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModelImpl;->Gc(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    new-instance p1, Lkotlin/Result;

    invoke-direct {p1, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
