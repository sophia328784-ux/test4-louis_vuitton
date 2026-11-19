.class final Lcom/vuitton/android/presentation/screen/pdp/bottomsheet/FindInStoreBottomSheetKt$FindInStoreBottomSheet$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;",
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
        "place",
        "Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;"
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
    c = "com.vuitton.android.presentation.screen.pdp.bottomsheet.FindInStoreBottomSheetKt$FindInStoreBottomSheet$1$1$1"
    f = "FindInStoreBottomSheet.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModel;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModel;Ljava/lang/String;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/bottomsheet/FindInStoreBottomSheetKt$FindInStoreBottomSheet$1$1$1;->c:Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/bottomsheet/FindInStoreBottomSheetKt$FindInStoreBottomSheet$1$1$1;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/pdp/bottomsheet/FindInStoreBottomSheetKt$FindInStoreBottomSheet$1$1$1;->e:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/bottomsheet/FindInStoreBottomSheetKt$FindInStoreBottomSheet$1$1$1;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/bottomsheet/FindInStoreBottomSheetKt$FindInStoreBottomSheet$1$1$1;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/bottomsheet/FindInStoreBottomSheetKt$FindInStoreBottomSheet$1$1$1;->e:Landroidx/compose/runtime/MutableState;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/bottomsheet/FindInStoreBottomSheetKt$FindInStoreBottomSheet$1$1$1;->c:Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModel;

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/vuitton/android/presentation/screen/pdp/bottomsheet/FindInStoreBottomSheetKt$FindInStoreBottomSheet$1$1$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModel;Ljava/lang/String;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/pdp/bottomsheet/FindInStoreBottomSheetKt$FindInStoreBottomSheet$1$1$1;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/pdp/bottomsheet/FindInStoreBottomSheetKt$FindInStoreBottomSheet$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/bottomsheet/FindInStoreBottomSheetKt$FindInStoreBottomSheet$1$1$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/pdp/bottomsheet/FindInStoreBottomSheetKt$FindInStoreBottomSheet$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/bottomsheet/FindInStoreBottomSheetKt$FindInStoreBottomSheet$1$1$1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/bottomsheet/FindInStoreBottomSheetKt$FindInStoreBottomSheet$1$1$1;->e:Landroidx/compose/runtime/MutableState;

    invoke-interface {p1, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/bottomsheet/FindInStoreBottomSheetKt$FindInStoreBottomSheet$1$1$1;->c:Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/bottomsheet/FindInStoreBottomSheetKt$FindInStoreBottomSheet$1$1$1;->d:Ljava/lang/String;

    invoke-interface {p1, p0, v0}, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModel;->a6(Ljava/lang/String;Lcom/vuitton/android/presentation/model/location/PlaceGeocodingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
