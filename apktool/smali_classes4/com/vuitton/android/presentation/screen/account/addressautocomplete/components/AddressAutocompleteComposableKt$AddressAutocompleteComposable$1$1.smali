.class final Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressAutocompleteComposableKt$AddressAutocompleteComposable$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
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
    c = "com.vuitton.android.presentation.screen.account.addressautocomplete.components.AddressAutocompleteComposableKt$AddressAutocompleteComposable$1$1"
    f = "AddressAutocompleteComposable.kt"
    l = {
        0x68
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModel;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteScreenContext;

.field public final synthetic e:Lkotlin/jvm/functions/Function1;

.field public final synthetic f:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

.field public final synthetic g:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:Landroidx/compose/runtime/State;

.field public final synthetic k:Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModel;

.field public final synthetic l:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModel;Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteScreenContext;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/State;Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressAutocompleteComposableKt$AddressAutocompleteComposable$1$1;->c:Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressAutocompleteComposableKt$AddressAutocompleteComposable$1$1;->d:Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteScreenContext;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressAutocompleteComposableKt$AddressAutocompleteComposable$1$1;->e:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressAutocompleteComposableKt$AddressAutocompleteComposable$1$1;->f:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressAutocompleteComposableKt$AddressAutocompleteComposable$1$1;->g:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressAutocompleteComposableKt$AddressAutocompleteComposable$1$1;->h:Ljava/lang/String;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressAutocompleteComposableKt$AddressAutocompleteComposable$1$1;->i:Ljava/lang/String;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressAutocompleteComposableKt$AddressAutocompleteComposable$1$1;->j:Landroidx/compose/runtime/State;

    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressAutocompleteComposableKt$AddressAutocompleteComposable$1$1;->k:Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModel;

    iput-object p10, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressAutocompleteComposableKt$AddressAutocompleteComposable$1$1;->l:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p11}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 12

    new-instance v0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressAutocompleteComposableKt$AddressAutocompleteComposable$1$1;

    iget-object v9, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressAutocompleteComposableKt$AddressAutocompleteComposable$1$1;->k:Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModel;

    iget-object v10, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressAutocompleteComposableKt$AddressAutocompleteComposable$1$1;->l:Lkotlin/jvm/functions/Function0;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressAutocompleteComposableKt$AddressAutocompleteComposable$1$1;->c:Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModel;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressAutocompleteComposableKt$AddressAutocompleteComposable$1$1;->d:Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteScreenContext;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressAutocompleteComposableKt$AddressAutocompleteComposable$1$1;->e:Lkotlin/jvm/functions/Function1;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressAutocompleteComposableKt$AddressAutocompleteComposable$1$1;->f:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressAutocompleteComposableKt$AddressAutocompleteComposable$1$1;->g:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressAutocompleteComposableKt$AddressAutocompleteComposable$1$1;->h:Ljava/lang/String;

    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressAutocompleteComposableKt$AddressAutocompleteComposable$1$1;->i:Ljava/lang/String;

    iget-object v8, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressAutocompleteComposableKt$AddressAutocompleteComposable$1$1;->j:Landroidx/compose/runtime/State;

    move-object v11, p2

    invoke-direct/range {v0 .. v11}, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressAutocompleteComposableKt$AddressAutocompleteComposable$1$1;-><init>(Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModel;Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteScreenContext;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/State;Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressAutocompleteComposableKt$AddressAutocompleteComposable$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressAutocompleteComposableKt$AddressAutocompleteComposable$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressAutocompleteComposableKt$AddressAutocompleteComposable$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressAutocompleteComposableKt$AddressAutocompleteComposable$1$1;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteScreenContext;->NATIVE_REGISTER_ADDRESS:Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteScreenContext;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressAutocompleteComposableKt$AddressAutocompleteComposable$1$1;->c:Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressAutocompleteComposableKt$AddressAutocompleteComposable$1$1;->d:Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteScreenContext;

    if-ne v1, p1, :cond_2

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressAutocompleteComposableKt$AddressAutocompleteComposable$1$1;->e:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_3

    new-instance v3, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel$AddressSearchScreen;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressAutocompleteComposableKt$AddressAutocompleteComposable$1$1;->f:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressAutocompleteComposableKt$AddressAutocompleteComposable$1$1;->g:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    invoke-direct {v3, v4, v6}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel$AddressSearchScreen;-><init>(Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;)V

    invoke-interface {p1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/tracking/AddressAutocompleteTrackingUiModel$AddressAutocompletePage;->a:Lcom/vuitton/android/presentation/screen/account/addressautocomplete/tracking/AddressAutocompleteTrackingUiModel$AddressAutocompletePage;

    invoke-interface {v5, p1}, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModel;->N1(Lcom/vuitton/android/presentation/screen/account/addressautocomplete/tracking/AddressAutocompleteTrackingUiModel;)V

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressAutocompleteComposableKt$AddressAutocompleteComposable$1$1;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressAutocompleteComposableKt$AddressAutocompleteComposable$1$1;->j:Landroidx/compose/runtime/State;

    if-nez p1, :cond_4

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState;->e:Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorAutocompleteSetup;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorAutocompleteSetup;->a:Ljava/lang/String;

    :cond_4
    invoke-interface {v5, p1, v1}, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModel;->pa(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteScreenContext;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressAutocompleteComposableKt$AddressAutocompleteComposable$1$1;->i:Ljava/lang/String;

    if-nez p1, :cond_5

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorViewState;->e:Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorAutocompleteSetup;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/account/addresseditor/models/AddressEditorAutocompleteSetup;->b:Ljava/lang/String;

    :cond_5
    invoke-interface {v5, p1}, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModel;->X5(Ljava/lang/String;)V

    new-instance v3, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressAutocompleteComposableKt$AddressAutocompleteComposable$1$1$1$1;

    const-string v8, "updateSearchBarValue(Ljava/lang/String;)V"

    const/4 v9, 0x0

    const/4 v4, 0x1

    const-class v6, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModel;

    const-string v7, "updateSearchBarValue"

    invoke-direct/range {v3 .. v9}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v5, v3}, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModel;->zb(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v5}, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/AddressAutocompleteViewModel;->g4()Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance v1, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressAutocompleteComposableKt$AddressAutocompleteComposable$1$1$1$2;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressAutocompleteComposableKt$AddressAutocompleteComposable$1$1;->k:Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModel;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressAutocompleteComposableKt$AddressAutocompleteComposable$1$1;->l:Lkotlin/jvm/functions/Function0;

    invoke-direct {v1, v3, v4}, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressAutocompleteComposableKt$AddressAutocompleteComposable$1$1$1$2;-><init>(Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModel;Lkotlin/jvm/functions/Function0;)V

    iput v2, p0, Lcom/vuitton/android/presentation/screen/account/addressautocomplete/components/AddressAutocompleteComposableKt$AddressAutocompleteComposable$1$1;->b:I

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/Flow;->f(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_6

    return-object v0

    :cond_6
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
