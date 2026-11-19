.class public final synthetic Loi0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    const/4 p1, 0x1

    iput p1, p0, Loi0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p6, p0, Loi0;->d:Ljava/lang/Object;

    iput-object p3, p0, Loi0;->e:Ljava/lang/Object;

    iput-object p4, p0, Loi0;->f:Ljava/lang/Object;

    iput-object p5, p0, Loi0;->g:Ljava/lang/Object;

    iput p2, p0, Loi0;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListUiModel;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;I)V
    .locals 1

    .line 17
    const/4 v0, 0x6

    iput v0, p0, Loi0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loi0;->f:Ljava/lang/Object;

    iput-object p2, p0, Loi0;->d:Ljava/lang/Object;

    iput-object p3, p0, Loi0;->e:Ljava/lang/Object;

    iput-object p4, p0, Loi0;->g:Ljava/lang/Object;

    iput p5, p0, Loi0;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 18
    iput p6, p0, Loi0;->b:I

    iput-object p1, p0, Loi0;->d:Ljava/lang/Object;

    iput-object p2, p0, Loi0;->e:Ljava/lang/Object;

    iput-object p3, p0, Loi0;->f:Ljava/lang/Object;

    iput-object p4, p0, Loi0;->g:Ljava/lang/Object;

    iput p5, p0, Loi0;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget v0, p0, Loi0;->b:I

    iget v1, p0, Loi0;->c:I

    const/4 v2, 0x1

    iget-object v3, p0, Loi0;->g:Ljava/lang/Object;

    iget-object v4, p0, Loi0;->f:Ljava/lang/Object;

    iget-object v5, p0, Loi0;->e:Ljava/lang/Object;

    iget-object v6, p0, Loi0;->d:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    move-object v7, v6

    check-cast v7, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyLegalConsentUiModel;

    move-object v8, v5

    check-cast v8, Lkotlin/jvm/functions/Function1;

    move-object v9, v4

    check-cast v9, Lkotlin/jvm/functions/Function0;

    move-object v10, v3

    check-cast v10, Lkotlin/jvm/functions/Function1;

    move-object v11, p1

    check-cast v11, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    or-int/lit8 p0, v1, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v12

    invoke-static/range {v7 .. v12}, Lcom/vuitton/android/presentation/screen/pdp/bottomsheet/VtoConsentBottomSheetKt;->b(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyLegalConsentUiModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    move-object v0, v6

    check-cast v0, Landroidx/compose/ui/Modifier;

    check-cast v5, Ljava/lang/String;

    check-cast v4, Ljava/lang/String;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p0, v1, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p0

    move-object v2, v4

    move-object v1, v5

    move v5, p0

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/certificates/components/transfer/TransferCertificateConfirmationComposableKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    move-object v0, v6

    check-cast v0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;

    check-cast v5, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    check-cast v4, Lcom/vuitton/android/presentation/model/common/A11ySettings;

    check-cast v3, Lkotlin/jvm/functions/Function1;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p0, v1, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p0

    move-object v2, v4

    move-object v1, v5

    move v5, p0

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TrackDetailSectionKt;->a(Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lcom/vuitton/android/presentation/model/common/A11ySettings;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    move-object v0, v6

    check-cast v0, Landroidx/compose/ui/Modifier;

    check-cast v5, Ljava/lang/String;

    check-cast v4, Ljava/lang/String;

    check-cast v3, Ljava/util/List;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p0, v1, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p0

    move-object v2, v4

    move-object v1, v5

    move v5, p0

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/thankyou/components/ThankYouScreenKt;->d(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    check-cast v5, Lcom/vuitton/android/presentation/screen/search/models/SearchListState;

    check-cast v4, Lkotlin/jvm/functions/Function2;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    or-int/lit8 p0, v1, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p0

    move-object v2, v4

    move-object v1, v5

    move v5, p0

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/search/components/SuggestionCarouselComposableKt;->a(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/search/models/SearchListState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    move-object v0, v6

    check-cast v0, Landroidx/compose/ui/Modifier;

    check-cast v5, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;

    check-cast v4, Ljava/lang/String;

    check-cast v3, Lkotlin/jvm/functions/Function2;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p0, v1, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p0

    move-object v2, v4

    move-object v1, v5

    move v5, p0

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/wishlist/share/components/SharedWishlistScreenKt;->b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_5
    move-object v0, v6

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    check-cast v5, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentViewState;

    check-cast v4, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;

    check-cast v3, Lkotlin/jvm/functions/Function1;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    or-int/lit8 p0, v1, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p0

    move-object v2, v4

    move-object v1, v5

    move v5, p0

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailInformationKt;->b(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentViewState;Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_6
    move-object v0, v6

    check-cast v0, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState;

    check-cast v5, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModel;

    check-cast v4, Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;

    check-cast v3, Lkotlin/jvm/functions/Function1;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p0, v1, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p0

    move-object v2, v4

    move-object v1, v5

    move v5, p0

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/account/lvpass/components/QRCodeComposableKt;->a(Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeScreenState;Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModel;Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_7
    move-object v0, v6

    check-cast v0, Lcom/vuitton/foundation/model/domain/model/privacy/PrivacyType;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    or-int/lit8 p0, v1, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p0

    move-object v2, v4

    move-object v1, v5

    move v5, p0

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/privacy/components/precompliance/PrivacyPreComplianceFooterKt;->a(Lcom/vuitton/foundation/model/domain/model/privacy/PrivacyType;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_8
    move-object v0, v4

    check-cast v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    check-cast v6, Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListUiModel;

    check-cast v5, Lkotlin/jvm/functions/Function2;

    check-cast v3, Lkotlin/jvm/functions/Function1;

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p0, v1, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p0

    move-object v2, v5

    move-object v1, v6

    move v5, p0

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/personalselections/list/components/PersonalSelectionsListScreenKt;->d(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListUiModel;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_9
    move-object v0, v6

    check-cast v0, Landroidx/paging/compose/LazyPagingItems;

    check-cast v5, Lkotlinx/coroutines/flow/Flow;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    check-cast v3, Lkotlin/jvm/functions/Function1;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p0, v1, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p0

    move-object v2, v4

    move-object v1, v5

    move v5, p0

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/PLPWishlistFeedbackWatcherKt;->a(Landroidx/paging/compose/LazyPagingItems;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_a
    move-object v0, v6

    check-cast v0, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModel;

    check-cast v5, Ljava/util/LinkedHashMap;

    check-cast v4, Ljava/lang/String;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p0, v1, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p0

    move-object v2, v4

    move-object v1, v5

    move v5, p0

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/storemode/components/plp/PLPStoreModeComposableKt;->a(Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModel;Ljava/util/LinkedHashMap;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_b
    move-object v0, v6

    check-cast v0, Landroidx/compose/ui/Modifier;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p0, v1, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p0

    move-object v2, v4

    move-object v1, v5

    move v5, p0

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreenKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_c
    move-object v0, v6

    check-cast v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;

    check-cast v5, Landroidx/compose/material3/SnackbarHostState;

    check-cast v4, Lkotlin/jvm/functions/Function0;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    or-int/lit8 p0, v1, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p0

    move-object v2, v4

    move-object v1, v5

    move v5, p0

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/orders/components/returns/OrderReturnSummaryScreenKt;->a(Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeViewState;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_d
    check-cast v6, Lkotlin/jvm/functions/Function0;

    check-cast v5, Ljava/lang/String;

    check-cast v4, Ljava/lang/String;

    check-cast v3, Ljava/lang/String;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v0

    iget v1, p0, Loi0;->c:I

    move-object v2, v5

    move-object v5, v3

    move-object v3, v2

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/orders/components/exchange/OrderReturnOrExchangeComponentsKt;->m(IILandroidx/compose/runtime/Composer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_e
    move-object v0, v6

    check-cast v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;

    check-cast v5, Landroidx/compose/material3/SnackbarHostState;

    check-cast v4, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    check-cast v3, Lkotlin/jvm/functions/Function3;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p0, v1, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p0

    move-object v2, v4

    move-object v1, v5

    move v5, p0

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/orders/components/list/OrderListScreenKt;->d(Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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
