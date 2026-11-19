.class public final synthetic Lyh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p6, p0, Lyh;->b:I

    iput-object p1, p0, Lyh;->c:Ljava/lang/Object;

    iput-object p2, p0, Lyh;->d:Ljava/lang/Object;

    iput-object p3, p0, Lyh;->e:Ljava/lang/Object;

    iput-object p4, p0, Lyh;->f:Ljava/lang/Object;

    iput-object p5, p0, Lyh;->g:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 14

    iget v0, p0, Lyh;->b:I

    const-string v1, ""

    const/4 v2, 0x0

    iget-object v3, p0, Lyh;->g:Ljava/lang/Object;

    iget-object v4, p0, Lyh;->f:Ljava/lang/Object;

    iget-object v5, p0, Lyh;->e:Ljava/lang/Object;

    iget-object v6, p0, Lyh;->d:Ljava/lang/Object;

    iget-object p0, p0, Lyh;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModel;

    move-object v7, v6

    check-cast v7, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;

    check-cast v5, Landroidx/compose/runtime/MutableState;

    check-cast v4, Landroidx/compose/runtime/MutableState;

    check-cast v3, Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModel;->d0()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/storemode/models/PLPStoreModeViewState;

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/storemode/models/PLPStoreModeViewState;->a:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;

    sget-object v6, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;->STORE:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;

    if-ne v5, v6, :cond_0

    move-object v11, v0

    goto :goto_0

    :cond_0
    move-object v11, v2

    :goto_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/plp/models/PSPTrackingUiModel$FilterClick;->a:Lcom/vuitton/android/presentation/screen/plp/models/PSPTrackingUiModel$FilterClick;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/storemode/PSPStoreModeViewModel;->Wa(Lcom/vuitton/android/presentation/screen/plp/models/PSPTrackingUiModel;)V

    new-instance p0, Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterTrackingUiModel$OnFiltersOpenedEvent;

    invoke-direct {p0, v2}, Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterTrackingUiModel$OnFiltersOpenedEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->Cc(Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterTrackingUiModel;)V

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PSPViewState;->a:Ljava/lang/String;

    if-nez p0, :cond_1

    move-object v10, v1

    goto :goto_1

    :cond_1
    move-object v10, p0

    :goto_1
    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;

    iget-object v8, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;->b:Ljava/lang/String;

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;

    iget-object v9, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;->c:Ljava/lang/String;

    const/4 v12, 0x1

    invoke-virtual/range {v7 .. v12}, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->yc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p0, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModel;

    move-object v7, v6

    check-cast v7, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;

    check-cast v5, Ljava/lang/String;

    check-cast v4, Landroidx/compose/runtime/MutableState;

    check-cast v3, Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModel;->q0()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModel;->d0()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/storemode/models/PLPStoreModeViewState;

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/storemode/models/PLPStoreModeViewState;->a:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;

    sget-object v6, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;->STORE:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeContentUiModel;

    if-ne v4, v6, :cond_2

    move-object v11, v0

    goto :goto_2

    :cond_2
    move-object v11, v2

    :goto_2
    sget-object v0, Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$FilterClickedEvent;->a:Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel$FilterClickedEvent;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/storemode/PLPStoreModeViewModel;->O0(Lcom/vuitton/android/presentation/screen/plp/models/PLPTrackingUiModel;)V

    new-instance p0, Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterTrackingUiModel$OnFiltersOpenedEvent;

    invoke-direct {p0, v5}, Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterTrackingUiModel$OnFiltersOpenedEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->Cc(Lcom/vuitton/android/presentation/screen/storemode/filters/model/ProductFilterTrackingUiModel;)V

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;->b:Ljava/lang/String;

    if-nez p0, :cond_3

    move-object v8, v1

    goto :goto_3

    :cond_3
    move-object v8, p0

    :goto_3
    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;

    iget-object v9, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;->c:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v7 .. v12}, Lcom/vuitton/android/presentation/screen/storemode/filters/ProductFilterViewModel;->yc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleBannerUiModel;

    check-cast v6, Lkotlin/jvm/functions/Function1;

    check-cast v5, Ljava/lang/String;

    check-cast v4, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    check-cast v3, Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleBannerUiModel;->c:Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleCtaUiModel;

    if-eqz p0, :cond_5

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleCtaUiModel;->b:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    if-eqz p0, :cond_5

    new-instance v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$StickyBannerCtaClickEvent;

    invoke-direct {v0, v5, v4}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$StickyBannerCtaClickEvent;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;)V

    invoke-interface {v6, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleNavigationType$OnContributionLinkClick;

    invoke-direct {v0, p0}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleNavigationType$OnContributionLinkClick;-><init>(Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;)V

    invoke-interface {v3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    check-cast p0, Lkotlin/jvm/functions/Function1;

    check-cast v6, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModel;

    check-cast v5, Ljava/lang/String;

    check-cast v4, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;

    check-cast v3, Landroidx/compose/runtime/MutableState;

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;->d:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ScreenshotUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ScreenshotUiModel;->b:Landroid/graphics/Bitmap;

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ShareOnScreenshotEvent;

    invoke-direct {p0, v5, v4}, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel$ShareOnScreenshotEvent;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleType;)V

    invoke-interface {v6, p0}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleViewModel;->U8(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    check-cast p0, Lkotlin/jvm/functions/Function2;

    check-cast v6, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModel;

    check-cast v5, Ljava/lang/String;

    check-cast v4, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    check-cast v3, Landroidx/compose/runtime/MutableState;

    new-instance v0, Lty;

    const/4 v1, 0x0

    invoke-direct {v0, v6, v1}, Lty;-><init>(Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModel;I)V

    new-instance v1, Lm8;

    const/4 v7, 0x3

    invoke-direct {v1, v4, v3, v7}, Lm8;-><init>(Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/runtime/MutableState;I)V

    invoke-interface {p0, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel$ClickOnUseCurrentLocationEvent;

    invoke-direct {p0, v5, v2}, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel$ClickOnUseCurrentLocationEvent;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v6, p0}, Lcom/vuitton/android/presentation/screen/pdp/FindInStoreViewModel;->s6(Lcom/vuitton/android/presentation/screen/pdp/models/tracking/FindInStoreTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    check-cast p0, Landroidx/compose/runtime/MutableState;

    check-cast v6, Landroidx/compose/runtime/MutableState;

    check-cast v5, Landroidx/compose/runtime/MutableState;

    check-cast v4, Landroidx/compose/runtime/MutableState;

    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-static {v0}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    move-object v0, v2

    goto :goto_5

    :cond_7
    :goto_4
    const v0, 0x7f1410dc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_5
    invoke-interface {v6, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-static {v0}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_6

    :cond_8
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const v0, 0x7f140dc6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_7

    :cond_9
    move-object v0, v2

    goto :goto_7

    :cond_a
    :goto_6
    const v0, 0x7f1410dd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_7
    invoke-interface {v4, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 v0, 0x1

    if-eqz p0, :cond_b

    invoke-static {p0}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-ne v1, v0, :cond_b

    goto :goto_8

    :cond_b
    move-object p0, v2

    :goto_8
    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_c

    invoke-static {v1}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v4, v0

    if-ne v4, v0, :cond_c

    move-object v2, v1

    :cond_c
    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, p0, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, v0, Lkotlin/Pair;->b:Ljava/lang/Object;

    if-eqz p0, :cond_d

    iget-object v0, v0, Lkotlin/Pair;->c:Ljava/lang/Object;

    if-eqz v0, :cond_d

    check-cast v0, Ljava/lang/String;

    check-cast p0, Ljava/lang/String;

    invoke-interface {v3, p0, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_5
    check-cast p0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    check-cast v6, Lkotlin/jvm/functions/Function1;

    check-cast v5, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    check-cast v4, Lkotlin/jvm/functions/Function1;

    check-cast v3, Lkotlin/jvm/functions/Function1;

    if-nez p0, :cond_e

    invoke-interface {v6, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_e
    invoke-static {v5, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    invoke-interface {v4, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_f

    invoke-interface {v3, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_f
    invoke-interface {v6, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    :goto_9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_6
    check-cast p0, Landroidx/compose/material3/DateInputValidator;

    check-cast v6, Landroidx/compose/material3/internal/CalendarModel;

    check-cast v5, Landroidx/compose/material3/internal/DateInputFormat;

    check-cast v4, Ljava/util/Locale;

    check-cast v3, Landroidx/compose/runtime/MutableState;

    sget-object v0, Landroidx/compose/material3/DateInputKt;->a:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/input/TextFieldValue;

    iget-object v0, v0, Landroidx/compose/ui/text/input/TextFieldValue;->a:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v0, v0, Landroidx/compose/ui/text/AnnotatedString;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_11

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/input/TextFieldValue;

    iget-object v0, v0, Landroidx/compose/ui/text/input/TextFieldValue;->a:Landroidx/compose/ui/text/AnnotatedString;

    iget-object v0, v0, Landroidx/compose/ui/text/AnnotatedString;->c:Ljava/lang/String;

    iget-object v1, v5, Landroidx/compose/material3/internal/DateInputFormat;->c:Ljava/lang/String;

    invoke-virtual {v6, v0, v1, v4}, Landroidx/compose/material3/internal/CalendarModel;->i(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Landroidx/compose/material3/internal/CalendarDate;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Landroidx/compose/material3/DateInputValidator;->a(Landroidx/compose/material3/internal/CalendarDate;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    :cond_11
    invoke-static {v1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p0, Ljava/lang/String;

    check-cast v6, Ljava/lang/String;

    check-cast v5, Ljava/lang/String;

    check-cast v4, Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;

    iget-object v0, v4, Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;->b:Lcom/powerfront/insidewebsdkandroid/InsideClient;

    iget-object v1, v4, Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    check-cast v3, Ljava/lang/String;

    sget v2, Lcom/vuitton/core/infrastructure/chat/ChatTrackerImpl;->d:I

    invoke-static {p0}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v4, "language"

    if-eqz v2, :cond_12

    invoke-static {v6}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-static {v5}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lkotlin/Pair;

    invoke-direct {p0, v4, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {p0}, [Lkotlin/Pair;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/MapsKt;->e([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object p0

    const-string v1, "unknown"

    invoke-virtual {v0, v1, v1, p0}, Lcom/powerfront/insidewebsdkandroid/InsideClient;->n(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_a

    :cond_12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lkotlin/Pair;

    const-string v2, "email"

    invoke-direct {v1, v2, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lkotlin/Pair;

    const-string v7, "salesforce_id"

    invoke-direct {v2, v7, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lkotlin/Pair;

    invoke-direct {v5, v4, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v1, v2, v5}, [Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->e([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, p0, v6, v1}, Lcom/powerfront/insidewebsdkandroid/InsideClient;->n(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    :goto_a
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_8
    move-object v1, p0

    check-cast v1, Ljava/time/YearMonth;

    move-object v2, v6

    check-cast v2, Ljava/time/YearMonth;

    check-cast v5, Ljava/time/DayOfWeek;

    check-cast v4, Ljava/time/YearMonth;

    check-cast v3, Lcom/kizitonwose/calendar/core/OutDateStyle;

    new-instance v0, Lcom/kizitonwose/calendar/compose/CalendarState;

    const/4 v6, 0x0

    move-object v13, v5

    move-object v5, v3

    move-object v3, v13

    invoke-direct/range {v0 .. v6}, Lcom/kizitonwose/calendar/compose/CalendarState;-><init>(Ljava/time/YearMonth;Ljava/time/YearMonth;Ljava/time/DayOfWeek;Ljava/time/YearMonth;Lcom/kizitonwose/calendar/core/OutDateStyle;Lcom/kizitonwose/calendar/compose/VisibleItemState;)V

    return-object v0

    :pswitch_9
    check-cast p0, Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;

    check-cast v6, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;

    check-cast v5, Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;

    check-cast v4, Lcom/vuitton/android/presentation/screen/feed/components/c;

    check-cast v3, Lkotlin/jvm/functions/Function0;

    iget-object v0, p0, Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;->j:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/vuitton/android/presentation/model/calendar/CalendarEventUiModel;->a:Ljava/lang/String;

    iget-object v0, v6, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    new-instance v1, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitRemoveFromCalendarEvent;

    invoke-direct {v1, v5, p0}, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OnHitRemoveFromCalendarEvent;-><init>(Lcom/vuitton/android/presentation/screen/feed/models/FeedTab;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    invoke-virtual {v4}, Lcom/vuitton/android/presentation/screen/feed/components/c;->invoke()Ljava/lang/Object;

    goto :goto_b

    :cond_13
    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_b
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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
