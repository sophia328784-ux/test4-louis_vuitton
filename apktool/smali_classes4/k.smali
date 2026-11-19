.class public final synthetic Lk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lk;->b:I

    iput-object p1, p0, Lk;->c:Ljava/lang/Object;

    iput-object p2, p0, Lk;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Lk;->b:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, v0, Lk;->d:Ljava/lang/Object;

    iget-object v0, v0, Lk;->c:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    move-object v7, v0

    check-cast v7, Landroidx/compose/ui/graphics/Path;

    move-object v8, v5

    check-cast v8, Landroidx/compose/ui/graphics/Brush;

    move-object/from16 v6, p1

    check-cast v6, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;

    invoke-interface {v6}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->R1()V

    const/4 v12, 0x0

    const/16 v13, 0x3c

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v6 .. v13}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->G0(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/Stroke;Landroidx/compose/ui/graphics/ColorFilter;II)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    check-cast v0, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, v1, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$BookingExperience;

    if-eqz v2, :cond_0

    new-instance v2, Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel$ExtendExperienceEvent;

    move-object v3, v1

    check-cast v3, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$BookingExperience;

    iget-object v3, v3, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$BookingExperience;->b:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel$ExtendExperienceEvent;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/vuitton/android/presentation/screen/booking/summary/PrebookSummaryViewModel;->S3(Lcom/vuitton/android/presentation/screen/booking/summary/models/BookingSummaryTrackingUiModel;)V

    :cond_0
    invoke-interface {v5, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1
    check-cast v0, Lcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;

    check-cast v5, Ljava/lang/String;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    sget v2, Lcom/vuitton/android/presentation/screen/booking/form/components/BookingReservationScreenKt;->b:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;->LOADING:Lcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;

    if-ne v0, v2, :cond_1

    invoke-static {v1, v5}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->i(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    sget-object v0, Landroidx/compose/ui/semantics/LiveRegionMode;->b:Landroidx/compose/ui/semantics/LiveRegionMode$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v3}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->m(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;I)V

    :cond_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_2
    check-cast v0, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModel;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingUiModel$ContinueEvent;

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;->a:Ljava/lang/String;

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModel;->ma()Z

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingUiModel$ContinueEvent;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v2}, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModel;->Ma(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingUiModel;)V

    invoke-interface {v5, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_3
    check-cast v0, Lkotlin/jvm/functions/Function2;

    check-cast v5, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;

    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v5, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->a:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_4
    check-cast v0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;

    check-cast v5, Ljava/lang/String;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->g:Z

    if-nez v0, :cond_2

    invoke-static {v1, v5}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->i(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    :cond_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_5
    check-cast v0, Lkotlin/jvm/functions/Function1;

    check-cast v5, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$ChoiceValue;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v5, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$ChoiceValue;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_6
    check-cast v0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoice;

    check-cast v5, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$ChoiceValue;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoice;->b:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    new-instance v4, Landroidx/compose/ui/semantics/CollectionItemInfo;

    invoke-direct {v4, v0, v2, v3, v2}, Landroidx/compose/ui/semantics/CollectionItemInfo;-><init>(IIII)V

    invoke-static {v1, v4}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->g(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/semantics/CollectionItemInfo;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_7
    check-cast v0, Landroid/app/Activity;

    check-cast v5, Lcom/vuitton/foundation/model/domain/model/booking/BookingExternalContent;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v5, Lcom/vuitton/foundation/model/domain/model/booking/BookingExternalContent;->b:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-static {v0, v1, v4, v2}, Lcom/vuitton/android/presentation/extensions/ActivityExtKt;->h(Landroid/app/Activity;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_8
    check-cast v0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModel;

    check-cast v5, Landroid/content/Context;

    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/booking/BookingExternalContent;

    if-nez v1, :cond_3

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModel;->k4()V

    goto :goto_1

    :cond_3
    instance-of v0, v5, Landroid/app/Activity;

    if-eqz v0, :cond_4

    check-cast v5, Landroid/app/Activity;

    move-object v7, v5

    goto :goto_0

    :cond_4
    move-object v7, v4

    :goto_0
    if-eqz v7, :cond_7

    iget-object v0, v1, Lcom/vuitton/foundation/model/domain/model/booking/BookingExternalContent;->a:Lcom/vuitton/foundation/model/domain/model/booking/BookingExternalContentType;

    sget-object v3, Lcom/vuitton/android/presentation/screen/booking/personalinfo/infoform/components/BookingInfoFormComposableKt$WhenMappings;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v3, v0

    if-eq v0, v2, :cond_6

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    sget-object v6, Lcom/vuitton/android/presentation/screen/webview/WebViewActivity;->v:Lcom/vuitton/android/presentation/screen/webview/WebViewActivity$Companion;

    iget-object v8, v1, Lcom/vuitton/foundation/model/domain/model/booking/BookingExternalContent;->b:Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x7fc

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v6 .. v17}, Lcom/vuitton/android/presentation/screen/webview/WebViewActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/webview/WebViewActivity$Companion;Landroid/content/Context;Ljava/lang/String;ZZLjava/lang/String;Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;Ljava/lang/String;ZZLcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationType;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_5
    invoke-static {}, Lv40;->g()V

    goto :goto_2

    :cond_6
    iget-object v0, v1, Lcom/vuitton/foundation/model/domain/model/booking/BookingExternalContent;->b:Ljava/lang/String;

    new-instance v2, Lk;

    const/16 v3, 0x15

    invoke-direct {v2, v7, v1, v3}, Lk;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const-string v1, "application/pdf"

    invoke-static {v7, v0, v1, v2}, Lcom/vuitton/android/presentation/extensions/ActivityExtKt;->g(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    :cond_7
    :goto_1
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_2
    return-object v4

    :pswitch_9
    check-cast v0, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;

    check-cast v5, Landroid/content/Context;

    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/vuitton/android/presentation/screen/booking/list/models/MyExperiencesTrackingUiModel$AddToCalendarClickEvent;

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->b:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/vuitton/android/presentation/screen/booking/list/models/MyExperiencesTrackingUiModel$AddToCalendarClickEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/vuitton/android/presentation/screen/booking/list/BookingListViewModelImpl;->zc(Lcom/vuitton/android/presentation/screen/booking/list/models/MyExperiencesTrackingUiModel;)V

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->m:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingActionUiModel;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingActionUiModel;->a:Lcom/vuitton/android/presentation/screen/booking/list/models/BookingActionTypeUiModel;

    sget-object v6, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingActionTypeUiModel;->ADD_TO_CALENDAR:Lcom/vuitton/android/presentation/screen/booking/list/models/BookingActionTypeUiModel;

    if-ne v3, v6, :cond_8

    goto :goto_3

    :cond_9
    move-object v2, v4

    :goto_3
    check-cast v2, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingActionUiModel;

    if-eqz v2, :cond_a

    iget-object v0, v2, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingActionUiModel;->b:Lcom/vuitton/foundation/model/domain/model/booking/BookingCalendarData;

    goto :goto_4

    :cond_a
    move-object v0, v4

    :goto_4
    if-eqz v0, :cond_f

    instance-of v2, v5, Landroid/app/Activity;

    if-eqz v2, :cond_b

    check-cast v5, Landroid/app/Activity;

    move-object v6, v5

    goto :goto_5

    :cond_b
    move-object v6, v4

    :goto_5
    if-eqz v6, :cond_f

    iget-object v7, v1, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->d:Ljava/lang/String;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->j:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingInfoUiModel;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingInfoUiModel;->c:Lcom/vuitton/android/presentation/screen/booking/list/models/BookingInfoTypeUiModel;

    sget-object v5, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingInfoTypeUiModel;->ADDRESS:Lcom/vuitton/android/presentation/screen/booking/list/models/BookingInfoTypeUiModel;

    if-ne v3, v5, :cond_c

    goto :goto_6

    :cond_d
    move-object v2, v4

    :goto_6
    check-cast v2, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingInfoUiModel;

    if-eqz v2, :cond_e

    iget-object v4, v2, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingInfoUiModel;->b:Ljava/lang/String;

    :cond_e
    move-object v8, v4

    iget-object v9, v0, Lcom/vuitton/foundation/model/domain/model/booking/BookingCalendarData;->a:Ljava/time/Instant;

    iget-object v10, v0, Lcom/vuitton/foundation/model/domain/model/booking/BookingCalendarData;->b:Ljava/time/Instant;

    iget-object v11, v0, Lcom/vuitton/foundation/model/domain/model/booking/BookingCalendarData;->c:Ljava/time/ZoneId;

    invoke-static/range {v6 .. v11}, Lcom/vuitton/android/presentation/extensions/ActivityExtKt;->e(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/time/Instant;Ljava/time/Instant;Ljava/time/ZoneId;)V

    :cond_f
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_a
    check-cast v0, Lcom/vuitton/android/presentation/screen/booking/confirmation/BookingConfirmationViewModel;

    check-cast v5, Landroid/content/Context;

    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationTrackingUiModel$AddToCalendarEvent;

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->b:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationTrackingUiModel$AddToCalendarEvent;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/vuitton/android/presentation/screen/booking/confirmation/BookingConfirmationViewModel;->ya(Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationTrackingUiModel;)V

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->m:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingActionUiModel;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingActionUiModel;->a:Lcom/vuitton/android/presentation/screen/booking/list/models/BookingActionTypeUiModel;

    sget-object v6, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingActionTypeUiModel;->ADD_TO_CALENDAR:Lcom/vuitton/android/presentation/screen/booking/list/models/BookingActionTypeUiModel;

    if-ne v3, v6, :cond_10

    goto :goto_7

    :cond_11
    move-object v2, v4

    :goto_7
    check-cast v2, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingActionUiModel;

    if-eqz v2, :cond_12

    iget-object v0, v2, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingActionUiModel;->b:Lcom/vuitton/foundation/model/domain/model/booking/BookingCalendarData;

    goto :goto_8

    :cond_12
    move-object v0, v4

    :goto_8
    if-eqz v0, :cond_17

    instance-of v2, v5, Landroid/app/Activity;

    if-eqz v2, :cond_13

    check-cast v5, Landroid/app/Activity;

    move-object v6, v5

    goto :goto_9

    :cond_13
    move-object v6, v4

    :goto_9
    if-eqz v6, :cond_17

    iget-object v7, v1, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->d:Ljava/lang/String;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->j:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingInfoUiModel;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingInfoUiModel;->c:Lcom/vuitton/android/presentation/screen/booking/list/models/BookingInfoTypeUiModel;

    sget-object v5, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingInfoTypeUiModel;->ADDRESS:Lcom/vuitton/android/presentation/screen/booking/list/models/BookingInfoTypeUiModel;

    if-ne v3, v5, :cond_14

    goto :goto_a

    :cond_15
    move-object v2, v4

    :goto_a
    check-cast v2, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingInfoUiModel;

    if-eqz v2, :cond_16

    iget-object v4, v2, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingInfoUiModel;->b:Ljava/lang/String;

    :cond_16
    move-object v8, v4

    iget-object v9, v0, Lcom/vuitton/foundation/model/domain/model/booking/BookingCalendarData;->a:Ljava/time/Instant;

    iget-object v10, v0, Lcom/vuitton/foundation/model/domain/model/booking/BookingCalendarData;->b:Ljava/time/Instant;

    iget-object v11, v0, Lcom/vuitton/foundation/model/domain/model/booking/BookingCalendarData;->c:Ljava/time/ZoneId;

    invoke-static/range {v6 .. v11}, Lcom/vuitton/android/presentation/extensions/ActivityExtKt;->e(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/time/Instant;Ljava/time/Instant;Ljava/time/ZoneId;)V

    :cond_17
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_b
    check-cast v0, Lcom/vuitton/android/presentation/screen/booking/confirmation/BookingConfirmationViewModel;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationTrackingUiModel$ViewQrCodeEvent;

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->b:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationTrackingUiModel$ViewQrCodeEvent;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/vuitton/android/presentation/screen/booking/confirmation/BookingConfirmationViewModel;->ya(Lcom/vuitton/android/presentation/screen/booking/confirmation/models/BookingConfirmationTrackingUiModel;)V

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->a:Ljava/lang/String;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/booking/BookingId;

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/booking/BookingId;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_c
    check-cast v0, Lcom/vuitton/android/presentation/screen/booking/BookingActivity;

    check-cast v5, Landroid/content/Context;

    move-object/from16 v8, p1

    check-cast v8, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    sget-object v1, Lcom/vuitton/android/presentation/screen/booking/BookingActivity;->r:Lcom/vuitton/android/presentation/screen/booking/BookingActivity$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/booking/BookingActivity;->p:Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;

    if-eqz v6, :cond_18

    invoke-static {v5}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->b(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v11, 0x0

    const/16 v12, 0x1c

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v6 .. v12}, Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;->a(Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator;Landroidx/fragment/app/FragmentActivity;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Landroid/os/Bundle;Lcom/vuitton/android/presentation/link/navigation/ContributionLinkNavigator$ContributionLinkNavigationAnimation;Landroidx/activity/result/ActivityResultLauncher;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_18
    const-string v0, "contributionLinkNavigator"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v4

    :pswitch_d
    check-cast v0, Landroidx/compose/ui/focus/FocusManager;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/text/KeyboardActionScope;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v3}, Landroidx/compose/ui/focus/FocusManager;->z(Z)V

    invoke-interface {v5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_e
    check-cast v0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModel;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/activity/result/ActivityResult;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModel;->V8()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v5}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_19
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_f
    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;

    check-cast v5, Landroidx/compose/runtime/MutableState;

    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModel;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyBottomSheet$BackInStock;

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;->u:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyFeatureFlags;

    iget-boolean v4, v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyFeatureFlags;->e:Z

    invoke-direct {v2, v1, v4}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyBottomSheet$BackInStock;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyAddToCartUiModel;Z)V

    invoke-interface {v0, v2, v3}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;->ta(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyBottomSheet;Z)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_10
    check-cast v0, Lkotlin/jvm/functions/Function1;

    check-cast v5, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v5, v2}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;->A1(F)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_11
    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;

    check-cast v5, Landroidx/compose/runtime/MutableFloatState;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$Companion;

    invoke-interface {v5}, Landroidx/compose/runtime/FloatState;->a()F

    move-result v2

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->s:Lcom/perfectcorp/perfectlib/MakeupCam;

    if-eqz v0, :cond_1a

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    add-float/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/perfectcorp/perfectlib/MakeupCam;->setComparisonPosition(F)V

    :cond_1a
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_12
    check-cast v0, Lkotlin/jvm/functions/Function1;

    check-cast v5, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LookUiModel;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_13
    check-cast v0, Landroidx/compose/ui/text/input/TextFieldValue;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/text/input/TextFieldValue;

    sget v2, Landroidx/compose/foundation/text/BasicTextFieldKt;->a:I

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-interface {v5, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_14
    check-cast v0, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier$Node;

    check-cast v5, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/spatial/RelativeLayoutBounds;

    iget-object v1, v0, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier$Node;->p:Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;->b()V

    :cond_1c
    iput-object v4, v0, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier$Node;->p:Landroidx/compose/ui/spatial/ThrottledCallbacks$Entry;

    iget-object v0, v5, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;->c:Lkotlinx/coroutines/CompletableDeferred;

    if-eqz v0, :cond_1d

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/CompletableDeferred;->g(Ljava/lang/Object;)Z

    :cond_1d
    iput-object v4, v5, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;->c:Lkotlinx/coroutines/CompletableDeferred;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_15
    check-cast v0, Landroid/content/Context;

    check-cast v5, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v5, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$TrackUiModel;->f:Lcom/vuitton/android/presentation/model/common/SoundUiModel;

    iget-wide v3, v2, Lcom/vuitton/android/presentation/model/common/SoundUiModel;->c:J

    invoke-static {v3, v4}, Lcom/vuitton/android/presentation/extensions/LongExtKt;->a(J)Ljava/lang/String;

    move-result-object v3

    iget-wide v4, v2, Lcom/vuitton/android/presentation/model/common/SoundUiModel;->c:J

    invoke-static {v4, v5}, Lcom/vuitton/android/presentation/extensions/LongExtKt;->b(J)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f140379

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->i(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_16
    check-cast v0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideTracker;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    new-instance v2, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnLanguageSelectedEvent;

    invoke-direct {v2, v1}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel$OnLanguageSelectedEvent;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    invoke-interface {v5, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_17
    check-cast v0, Lkotlin/jvm/functions/Function1;

    check-cast v5, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v5, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_18
    check-cast v0, Lcom/vuitton/android/presentation/screen/options/appinfo/models/AppInfoViewState;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/lazy/LazyListScope;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/options/appinfo/models/AppInfoViewState;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    new-instance v7, Lcom/vuitton/android/presentation/screen/options/appinfo/components/AppInfoScreenKt$AppInfoScreen$lambda$1$0$0$$inlined$itemsIndexed$default$2;

    invoke-direct {v7, v3}, Lcom/vuitton/android/presentation/screen/options/appinfo/components/AppInfoScreenKt$AppInfoScreen$lambda$1$0$0$$inlined$itemsIndexed$default$2;-><init>(Ljava/util/List;)V

    new-instance v8, Lcom/vuitton/android/presentation/screen/options/appinfo/components/AppInfoScreenKt$AppInfoScreen$lambda$1$0$0$$inlined$itemsIndexed$default$3;

    invoke-direct {v8, v3, v0, v5}, Lcom/vuitton/android/presentation/screen/options/appinfo/components/AppInfoScreenKt$AppInfoScreen$lambda$1$0$0$$inlined$itemsIndexed$default$3;-><init>(Ljava/util/List;Lcom/vuitton/android/presentation/screen/options/appinfo/models/AppInfoViewState;Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v3, 0x799532c4

    invoke-direct {v0, v3, v2, v8}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-interface {v1, v6, v4, v7, v0}, Landroidx/compose/foundation/lazy/LazyListScope;->h(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_19
    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter;

    check-cast v5, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Airport;

    move-object/from16 v1, p1

    check-cast v1, Landroid/view/View;

    sget v2, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter$AirportHolder;->d:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter;->b:Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter$OnAirportSelectedListener;

    new-instance v6, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportUiModel;

    iget-object v7, v5, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Airport;->a:Ljava/lang/String;

    iget-object v8, v5, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Airport;->b:Ljava/lang/String;

    iget-object v9, v5, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Airport;->c:Ljava/lang/String;

    iget-object v10, v5, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Airport;->d:Ljava/lang/String;

    iget-object v11, v5, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Airport;->e:Ljava/lang/String;

    invoke-direct/range {v6 .. v11}, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v6}, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter$OnAirportSelectedListener;->e(Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportUiModel;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1a
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    check-cast v5, Landroidx/compose/runtime/MutableState;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Le2;

    invoke-direct {v1, v0, v5}, Le2;-><init>(Landroid/view/accessibility/AccessibilityManager;Landroidx/compose/runtime/MutableState;)V

    new-instance v2, Lf2;

    invoke-direct {v2, v0, v5, v3}, Lf2;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    new-instance v3, Lcom/vuitton/android/designkit/ui/common/AccessibilityExtKt$isTalkbackActivated$lambda$4$0$$inlined$onDispose$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/vuitton/android/designkit/ui/common/AccessibilityExtKt$isTalkbackActivated$lambda$4$0$$inlined$onDispose$1;-><init>(Landroid/view/accessibility/AccessibilityManager;Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)V

    return-object v3

    :pswitch_1b
    check-cast v0, Landroidx/compose/foundation/interaction/MutableInteractionSource;

    check-cast v5, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Throwable;

    sget-object v1, Landroidx/compose/foundation/AbstractClickableNode;->L:Landroidx/compose/foundation/AbstractClickableNode$TraverseKey;

    invoke-interface {v0, v5}, Landroidx/compose/foundation/interaction/MutableInteractionSource;->b(Landroidx/compose/foundation/interaction/Interaction;)Z

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1c
    check-cast v0, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTracker;

    check-cast v5, Landroid/content/ClipboardManager;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    sget-object v2, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitCopyMessageEvent;->a:Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel$OnHitCopyMessageEvent;

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1e

    const-string v0, "message"

    invoke-static {v0, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    :cond_1e
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

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
