.class public final synthetic Ljm0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Ljm0;->b:I

    iput-object p1, p0, Ljm0;->c:Ljava/lang/Object;

    iput-object p2, p0, Ljm0;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 14

    iget v0, p0, Ljm0;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Ljm0;->d:Ljava/lang/Object;

    iget-object p0, p0, Ljm0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lkotlin/jvm/functions/Function0;

    check-cast v3, Landroidx/compose/runtime/State;

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterViewState;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterViewState;->e:Z

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterViewState;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterViewState;->e:Z

    if-eqz p0, :cond_1

    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;

    check-cast v3, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetType$SocialSignInDebug;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;->c:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->c(Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;->a:Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModel;

    iget-boolean v1, v3, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetType$SocialSignInDebug;->a:Z

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;->g:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    iget-object v2, v3, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetType$SocialSignInDebug;->b:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

    invoke-interface {v0, v1, p0, v2}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModel;->rb(ZLcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    check-cast p0, Landroidx/compose/ui/platform/Clipboard;

    check-cast v3, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;

    invoke-interface {p0}, Landroidx/compose/ui/platform/Clipboard;->b()Landroid/content/ClipboardManager;

    move-result-object p0

    iget-object v0, v3, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;->a:Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;

    invoke-static {v0, v2}, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModelKt;->a(Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->b0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;

    check-cast v3, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetType$AuthSelection;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;->c:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->c(Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;)V

    iget-boolean v0, v3, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetType$AuthSelection;->a:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;->f:Lkotlin/jvm/functions/Function0;

    :goto_0
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialLoginBottomSheetState;->e:Lkotlin/jvm/functions/Function0;

    goto :goto_0

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    check-cast p0, Lkotlin/jvm/functions/Function1;

    check-cast v3, Lcom/vuitton/android/presentation/common/editorial/models/SlideShowItemUiModel;

    iget-object v0, v3, Lcom/vuitton/android/presentation/common/editorial/models/SlideShowItemUiModel;->d:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_5
    check-cast p0, Lkotlin/jvm/functions/Function2;

    check-cast v3, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistItemUiModel;

    sget v0, Lcom/vuitton/android/presentation/screen/wishlist/share/components/SharedWishlistProductItemKt;->a:F

    iget-object v0, v3, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistItemUiModel;->b:Ljava/lang/String;

    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v2, v0}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v2, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_6
    check-cast p0, Lkotlin/jvm/functions/Function1;

    check-cast v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/RecommendationUiModel;

    iget-object v0, v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/RecommendationUiModel;->a:Lcom/vuitton/android/presentation/model/common/ProductTinyUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/model/common/ProductTinyUiModel;->d:Ljava/lang/String;

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_7
    check-cast p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;

    check-cast v3, Landroidx/navigation/NavHostController;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;->Da()V

    invoke-virtual {v3}, Landroidx/navigation/NavController;->b()Landroidx/navigation/NavBackStackEntry;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroidx/navigation/NavBackStackEntry;->a()Landroidx/lifecycle/SavedStateHandle;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string v0, "already_saved_info"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v1, v0}, Landroidx/lifecycle/SavedStateHandle;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_8
    check-cast p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModel;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/services/ServicesViewModel;->c()V

    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_9
    check-cast p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;->d2()V

    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_a
    check-cast p0, Lcom/vuitton/android/presentation/screen/search/SearchViewModel;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    sget-object v0, Lcom/vuitton/android/domain/monitoring/search/SearchPanelExitContext;->DISMISS:Lcom/vuitton/android/domain/monitoring/search/SearchPanelExitContext;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/search/SearchViewModel;->S5(Lcom/vuitton/android/domain/monitoring/search/SearchPanelExitContext;)V

    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_b
    check-cast p0, Ljava/lang/String;

    check-cast v3, Lkotlinx/serialization/SealedClassSerializer;

    sget-object v0, Lkotlinx/serialization/descriptors/PolymorphicKind$SEALED;->a:Lkotlinx/serialization/descriptors/PolymorphicKind$SEALED;

    new-array v1, v2, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    new-instance v4, Llu0;

    invoke-direct {v4, v3, v2}, Llu0;-><init>(Lkotlinx/serialization/SealedClassSerializer;I)V

    invoke-static {p0, v0, v1, v4}, Lkotlinx/serialization/descriptors/SerialDescriptorsKt;->e(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialKind;[Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    move-result-object p0

    return-object p0

    :pswitch_c
    check-cast p0, Lkotlin/jvm/functions/Function1;

    check-cast v3, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;

    iget-object v0, v3, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;->b:Ljava/lang/String;

    new-instance v1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_d
    check-cast p0, Lkotlin/text/Regex;

    check-cast v3, Ljava/lang/CharSequence;

    sget-object v0, Lkotlin/text/Regex;->c:Lkotlin/text/Regex$Companion;

    invoke-virtual {p0, v3}, Lkotlin/text/Regex;->b(Ljava/lang/CharSequence;)Lkotlin/text/MatchResult;

    move-result-object p0

    return-object p0

    :pswitch_e
    check-cast p0, Landroidx/collection/MutableScatterSet;

    check-cast v3, Landroidx/compose/runtime/ControlledComposition;

    sget-object v0, Landroidx/compose/runtime/Recomposer;->z:Landroidx/compose/runtime/Recomposer$Companion;

    iget-object v0, p0, Landroidx/collection/ScatterSet;->b:[Ljava/lang/Object;

    iget-object p0, p0, Landroidx/collection/ScatterSet;->a:[J

    array-length v1, p0

    add-int/lit8 v1, v1, -0x2

    if-ltz v1, :cond_7

    move v4, v2

    :goto_2
    aget-wide v5, p0, v4

    not-long v7, v5

    const/4 v9, 0x7

    shl-long/2addr v7, v9

    and-long/2addr v7, v5

    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v7, v9

    cmp-long v7, v7, v9

    if-eqz v7, :cond_6

    sub-int v7, v4, v1

    not-int v7, v7

    ushr-int/lit8 v7, v7, 0x1f

    const/16 v8, 0x8

    rsub-int/lit8 v7, v7, 0x8

    move v9, v2

    :goto_3
    if-ge v9, v7, :cond_5

    const-wide/16 v10, 0xff

    and-long/2addr v10, v5

    const-wide/16 v12, 0x80

    cmp-long v10, v10, v12

    if-gez v10, :cond_4

    shl-int/lit8 v10, v4, 0x3

    add-int/2addr v10, v9

    aget-object v10, v0, v10

    invoke-interface {v3, v10}, Landroidx/compose/runtime/ControlledComposition;->t(Ljava/lang/Object;)V

    :cond_4
    shr-long/2addr v5, v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_5
    if-ne v7, v8, :cond_7

    :cond_6
    if-eq v4, v1, :cond_7

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_f
    check-cast p0, Lkotlin/jvm/functions/Function1;

    check-cast v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PanelInfoUiModel;

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel;->d1:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductUiModel$Companion;

    invoke-interface {p0, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_10
    move-object v0, p0

    check-cast v0, Lkotlin/jvm/functions/Function5;

    check-cast v3, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBooleanFilterUiModel;

    iget-object v1, v3, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBooleanFilterUiModel;->b:Ljava/lang/String;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductBooleanFilterUiModel;->c:Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v2, v1

    invoke-interface/range {v0 .. v5}, Lkotlin/jvm/functions/Function5;->D(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_11
    check-cast p0, Lkotlin/jvm/functions/Function2;

    check-cast v3, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;

    iget-object v0, v3, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;->a:Ljava/lang/String;

    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;-><init>(Ljava/lang/String;)V

    iget-boolean v0, v3, Lcom/vuitton/android/presentation/common/editorial/models/ProductCarouselItemUiModel;->g:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_12
    check-cast p0, Landroidx/compose/runtime/MutableIntState;

    check-cast v3, [Ljava/lang/Object;

    sget v0, Landroidx/compose/ui/tooling/PreviewActivity;->h:I

    invoke-interface {p0}, Landroidx/compose/runtime/MutableIntState;->f()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    array-length v1, v3

    rem-int/2addr v0, v1

    invoke-interface {p0, v0}, Landroidx/compose/runtime/MutableIntState;->i(I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_13
    check-cast p0, Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModel;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    sget-object v0, Lcom/vuitton/android/presentation/screen/portal/models/PortalTrackingUiModel$OnHitClosePortalEvent;->a:Lcom/vuitton/android/presentation/screen/portal/models/PortalTrackingUiModel$OnHitClosePortalEvent;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/portal/PortalSliderViewModel;->bc(Lcom/vuitton/android/presentation/screen/portal/models/PortalTrackingUiModel;)V

    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_14
    check-cast p0, Lkotlin/jvm/functions/Function2;

    check-cast v3, Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSharingUiModel;

    iget-object v0, v3, Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSharingUiModel;->b:Ljava/lang/String;

    iget-object v1, v3, Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSharingUiModel;->c:Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionTypeUiModel;

    invoke-interface {p0, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_15
    check-cast p0, Lkotlin/jvm/functions/Function1;

    check-cast v3, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModel;

    invoke-interface {v3}, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModel;->i6()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_16
    check-cast p0, Lkotlin/jvm/functions/Function1;

    check-cast v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductImageUiModel;

    invoke-interface {p0, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_17
    check-cast p0, Lkotlin/jvm/functions/Function2;

    check-cast v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/HighlightUiModel;

    iget-object v0, v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/HighlightUiModel;->f:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    iget-object v1, v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/HighlightUiModel;->c:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_18
    check-cast p0, Lcom/vuitton/android/presentation/contact/ContactUsTracker;

    check-cast v3, Lkotlin/jvm/functions/Function1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/contact/ContactUsTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    new-instance v1, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$OnViewMoreClickEvent;

    iget-object p0, p0, Lcom/vuitton/android/presentation/contact/ContactUsTracker;->b:Ljava/lang/String;

    invoke-direct {v1, p0}, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$OnViewMoreClickEvent;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    sget-object p0, Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$TermsAndConditions;->a:Lcom/vuitton/android/presentation/screen/pdp/components/PdpBottomSheetType$TermsAndConditions;

    invoke-interface {v3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_19
    check-cast p0, Lkotlin/jvm/functions/Function1;

    check-cast v3, Lcom/vuitton/android/presentation/screen/pdp/models/PdpVirtualStudioConfigValues;

    invoke-interface {p0, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1a
    check-cast p0, Lkotlin/jvm/functions/Function1;

    check-cast v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;

    invoke-interface {p0, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1b
    check-cast p0, Lkotlin/jvm/functions/Function2;

    check-cast v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/EditorialContentUiModel;

    iget-object v0, v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/EditorialContentUiModel;->f:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    iget-object v1, v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/EditorialContentUiModel;->b:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1c
    check-cast p0, Lkotlin/jvm/functions/Function3;

    check-cast v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;

    iget-object v0, v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ConfigurationUiModel;->b:Ljava/lang/String;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;->DIAMOND_ENGRAVING:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;

    invoke-interface {p0, v0, v1, v2}, Lkotlin/jvm/functions/Function3;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
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
