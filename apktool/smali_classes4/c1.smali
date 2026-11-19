.class public final synthetic Lc1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lc1;->b:I

    iput-object p1, p0, Lc1;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget v0, p0, Lc1;->b:I

    const/4 v1, 0x3

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object p0, p0, Lc1;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/vuitton/android/presentation/screen/catalog/CatalogTracker;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/catalog/CatalogTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    new-instance v0, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnCategoryScrollEvent;

    invoke-direct {v0, p1}, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel$OnCategoryScrollEvent;-><init>(I)V

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/catalog/models/CatalogTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p0, Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;

    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/semantics/Role;->b:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v4}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->o(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;I)V

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;->a:Ljava/lang/String;

    filled-new-array {v0, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/ArraysKt;->v([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v7, 0x0

    const/16 v8, 0x3e

    const-string v4, ", "

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/collections/CollectionsKt;->K(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v3

    :cond_0
    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    invoke-static {p1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->i(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast p0, Lcom/vuitton/android/presentation/common/editorial/models/CarouselLMultipleItemUiModel;

    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/ui/semantics/Role;->b:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v4}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->o(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;I)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/common/editorial/models/CarouselLMultipleItemUiModel;->b:Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;

    if-eqz p0, :cond_2

    iget-object v0, p0, Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/presentation/common/editorial/models/CarouselItemTitlesUiModel;->a:Ljava/lang/String;

    filled-new-array {v0, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/ArraysKt;->v([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v7, 0x0

    const/16 v8, 0x3e

    const-string v4, ", "

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/collections/CollectionsKt;->K(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v3

    :cond_2
    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    move-object v2, v3

    :goto_1
    invoke-static {p1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->i(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    check-cast p0, Lcom/kizitonwose/calendar/compose/CalendarState;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object v0, Lcom/kizitonwose/calendar/compose/CalendarState;->k:Lcom/kizitonwose/calendar/compose/CalendarState$Companion;

    invoke-virtual {p0}, Lcom/kizitonwose/calendar/compose/CalendarState;->g()Ljava/time/YearMonth;

    move-result-object v0

    iget-object v1, p0, Lcom/kizitonwose/calendar/compose/CalendarState;->c:Landroidx/compose/runtime/MutableState;

    check-cast v1, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/time/DayOfWeek;

    iget-object p0, p0, Lcom/kizitonwose/calendar/compose/CalendarState;->d:Landroidx/compose/runtime/MutableState;

    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/kizitonwose/calendar/core/OutDateStyle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/time/YearMonth;->plusMonths(J)Ljava/time/YearMonth;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, v5}, Ljava/time/YearMonth;->atDay(I)Ljava/time/LocalDate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/time/LocalDate;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x7

    rem-int/lit8 v0, v0, 0x7

    invoke-virtual {p1}, Ljava/time/YearMonth;->lengthOfMonth()I

    move-result v1

    add-int/2addr v1, v0

    rem-int/lit8 v2, v1, 0x7

    if-eqz v2, :cond_4

    rsub-int/lit8 v2, v2, 0x7

    goto :goto_2

    :cond_4
    move v2, v4

    :goto_2
    sget-object v3, Lcom/kizitonwose/calendar/core/OutDateStyle;->EndOfRow:Lcom/kizitonwose/calendar/core/OutDateStyle;

    if-ne p0, v3, :cond_5

    goto :goto_3

    :cond_5
    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x7

    rsub-int/lit8 p0, v1, 0x6

    mul-int/lit8 v4, p0, 0x7

    :goto_3
    add-int/2addr v2, v4

    new-instance p0, Lcom/kizitonwose/calendar/data/MonthData;

    invoke-direct {p0, p1, v0, v2}, Lcom/kizitonwose/calendar/data/MonthData;-><init>(Ljava/time/YearMonth;II)V

    iget-object p0, p0, Lcom/kizitonwose/calendar/data/MonthData;->g:Lcom/kizitonwose/calendar/core/CalendarMonth;

    return-object p0

    :pswitch_3
    check-cast p0, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState;

    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/compose/ui/semantics/CollectionInfo;

    check-cast p0, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;->a:Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState$Success;->a:Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookSummaryUiModel;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/2addr p0, v1

    invoke-direct {v0, p0, v5}, Landroidx/compose/ui/semantics/CollectionInfo;-><init>(II)V

    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->f(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/semantics/CollectionInfo;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    check-cast p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl;

    check-cast p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    sget-object v0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl$loadForm$1$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    if-eq p1, v1, :cond_6

    goto :goto_4

    :cond_6
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl;->m:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Ljava/lang/String;

    goto :goto_4

    :cond_7
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl;->l:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->j:Ljava/lang/String;

    :goto_4
    return-object v3

    :pswitch_5
    check-cast p0, Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Pass;

    check-cast p1, Lcom/vuitton/android/presentation/screen/booking/pass/BookingPassViewModelImpl$Factory;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Pass;->a:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/vuitton/android/presentation/screen/booking/pass/BookingPassViewModelImpl$Factory;->a(Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/booking/pass/BookingPassViewModelImpl;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast p0, Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation;

    move-object v4, p1

    check-cast v4, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl$Factory;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation;->a:Ljava/lang/String;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation;->b:Ljava/lang/String;

    if-nez p1, :cond_8

    move-object v6, v3

    goto :goto_5

    :cond_8
    move-object v6, p1

    :goto_5
    iget-boolean v8, p0, Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Reservation;->c:Z

    const/4 v9, 0x4

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl$Factory;->a(Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl$Factory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoice;

    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/compose/ui/semantics/CollectionInfo;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoice;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-direct {v0, p0, v5}, Landroidx/compose/ui/semantics/CollectionInfo;-><init>(II)V

    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->f(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/semantics/CollectionInfo;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_8
    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;

    check-cast p1, Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0, v3, v4}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;->ta(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyBottomSheet;Z)V

    invoke-interface {p0, p1}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;->y6(Ljava/util/List;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_9
    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/compose/ui/semantics/CollectionInfo;

    if-eqz p0, :cond_9

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->h:Ljava/util/List;

    if-eqz p0, :cond_9

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    :cond_9
    invoke-direct {v0, v5, v4}, Landroidx/compose/ui/semantics/CollectionInfo;-><init>(II)V

    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->f(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/semantics/CollectionInfo;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_a
    check-cast p0, Landroidx/compose/material3/TooltipState;

    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    new-instance p1, Landroidx/compose/material3/internal/BasicTooltipKt$BasicTooltipBox$lambda$4$lambda$3$$inlined$onDispose$1;

    invoke-direct {p1, p0}, Landroidx/compose/material3/internal/BasicTooltipKt$BasicTooltipBox$lambda$4$lambda$3$$inlined$onDispose$1;-><init>(Landroidx/compose/material3/TooltipState;)V

    return-object p1

    :pswitch_b
    check-cast p0, Landroidx/compose/foundation/text/contextmenu/provider/BasicTextContextMenuProvider;

    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    new-instance p1, Landroidx/compose/foundation/text/contextmenu/provider/BasicTextContextMenuProviderKt$basicTextContextMenuProvider$lambda$1$0$$inlined$onDispose$1;

    invoke-direct {p1, p0}, Landroidx/compose/foundation/text/contextmenu/provider/BasicTextContextMenuProviderKt$basicTextContextMenuProvider$lambda$1$0$$inlined$onDispose$1;-><init>(Landroidx/compose/foundation/text/contextmenu/provider/BasicTextContextMenuProvider;)V

    return-object p1

    :pswitch_c
    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseListBottomSheet;

    check-cast p1, Landroid/view/View;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseListBottomSheet;->S:Lcom/vuitton/android/presentation/screen/connectivity/views/bottomsheets/BaseListBottomSheet$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->dismiss()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_d
    check-cast p0, Landroidx/navigation3/runtime/NavEntry;

    check-cast p1, Landroidx/navigation3/runtime/NavEntry;

    iget-object p1, p1, Landroidx/navigation3/runtime/NavEntry;->b:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/navigation3/runtime/NavEntry;->b:Ljava/lang/Object;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_e
    check-cast p0, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarSectionUiModel;

    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/compose/ui/semantics/CollectionInfo;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarSectionUiModel;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-direct {v0, v5, p0}, Landroidx/compose/ui/semantics/CollectionInfo;-><init>(II)V

    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->f(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/semantics/CollectionInfo;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_f
    check-cast p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;

    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/compose/ui/semantics/CollectionInfo;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel;->m:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-direct {v0, p0, v5}, Landroidx/compose/ui/semantics/CollectionInfo;-><init>(II)V

    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->f(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/semantics/CollectionInfo;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_10
    move-object v1, p0

    check-cast v1, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideActivity;

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    sget-object p0, Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideActivity;->r:Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideActivity$Companion;

    if-eqz v2, :cond_a

    sget-object v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->H:Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$Companion;

    const/4 v6, 0x0

    const/16 v7, 0x7c

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v7}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$Companion;->a(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity$Companion;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_a
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_11
    check-cast p0, Lcom/vuitton/android/data/repository/AppsFlyerRepositoryImpl;

    check-cast p1, Ljava/lang/String;

    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/data/repository/AppsFlyerRepositoryImpl;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/appsflyer/AppsFlyerLib;->updateServerUninstallToken(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/vuitton/android/data/repository/AppsFlyerRepositoryImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_12
    check-cast p0, Landroidx/compose/foundation/text/selection/OffsetProvider;

    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    sget v0, Landroidx/compose/foundation/text/AndroidCursorHandle_androidKt;->a:F

    sget-object v0, Landroidx/compose/foundation/text/selection/SelectionHandlesKt;->c:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    new-instance v1, Landroidx/compose/foundation/text/selection/SelectionHandleInfo;

    sget-object v2, Landroidx/compose/foundation/text/Handle;->Cursor:Landroidx/compose/foundation/text/Handle;

    invoke-interface {p0}, Landroidx/compose/foundation/text/selection/OffsetProvider;->a()J

    move-result-wide v3

    sget-object v5, Landroidx/compose/foundation/text/selection/SelectionHandleAnchor;->Middle:Landroidx/compose/foundation/text/selection/SelectionHandleAnchor;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Landroidx/compose/foundation/text/selection/SelectionHandleInfo;-><init>(Landroidx/compose/foundation/text/Handle;JLandroidx/compose/foundation/text/selection/SelectionHandleAnchor;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p1, v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;->a(Landroidx/compose/ui/semantics/SemanticsPropertyKey;Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_13
    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListFragment;

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Airport;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListFragment;->K:Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListFragment;->J:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_b

    iget-object p0, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Airport;->d:Ljava/lang/String;

    goto :goto_6

    :cond_b
    iget-object p0, p1, Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Airport;->c:Ljava/lang/String;

    :goto_6
    return-object p0

    :pswitch_14
    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity;

    check-cast p1, Landroid/view/View;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity;->r:Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity;->I(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity;->p:Lcom/vuitton/android/presentation/databinding/ActivityAirportListBinding;

    if-eqz p1, :cond_c

    iget-object p1, p1, Lcom/vuitton/android/presentation/databinding/ActivityAirportListBinding;->d:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->d(Landroid/content/Context;Landroid/os/IBinder;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_c
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v3

    :pswitch_15
    check-cast p0, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookActivity;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    sget-object v0, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookActivity;->q:Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookActivity$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p1, Landroidx/activity/result/ActivityResult;->b:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_d

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookActivity;->H()Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookViewModel;

    move-result-object p0

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookViewModel;->h8()V

    :cond_d
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_16
    check-cast p0, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryTextResearch;

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem;->a()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryTextResearch;->a:Ljava/lang/String;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_17
    check-cast p0, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;

    if-eqz v0, :cond_e

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/search/HistoryItem$HistoryProduct;->a:Ljava/lang/String;

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    move v4, v5

    :cond_e
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_18
    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl;

    check-cast p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl;->c:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FormPasswordValidationRules;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModelImpl;->j:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;

    new-instance v3, Lw1;

    invoke-direct {v3, p0, v1}, Lw1;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v2, p1}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FormPasswordValidationRules;->a(Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/customvalidation/FieldValidationRule;

    move-result-object p0

    return-object p0

    :pswitch_19
    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationActivity;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationActivity;->r:Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationActivity$Companion;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationActivity;->q:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {v0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModel;

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel$CloseClick;

    if-eqz p1, :cond_10

    if-eq p1, v5, :cond_f

    sget-object p1, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel$Step;->PASSWORD:Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel$Step;

    goto :goto_7

    :cond_f
    sget-object p1, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel$Step;->ACTIVATION_CODE:Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel$Step;

    goto :goto_7

    :cond_10
    sget-object p1, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel$Step;->PASSWORD:Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel$Step;

    :goto_7
    invoke-direct {v1, p1}, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel$CloseClick;-><init>(Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel$Step;)V

    invoke-interface {v0, v1}, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModel;->s8(Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationTrackingUiModel;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1a
    check-cast p0, Lkotlin/collections/AbstractMap;

    check-cast p1, Ljava/util/Map$Entry;

    sget-object v0, Lkotlin/collections/AbstractMap;->d:Lkotlin/collections/AbstractMap$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "(this Map)"

    if-ne v1, p0, :cond_11

    move-object v1, v2

    goto :goto_8

    :cond_11
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p0, :cond_12

    goto :goto_9

    :cond_12
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1b
    check-cast p0, Lkotlin/collections/AbstractCollection;

    if-ne p1, p0, :cond_13

    const-string p0, "(this Collection)"

    goto :goto_a

    :cond_13
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_a
    return-object p0

    :pswitch_1c
    check-cast p0, Lcom/vuitton/android/presentation/compose/LvExoPlayer;

    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    sget v0, Lcom/vuitton/android/presentation/screen/aicompanion/components/onboarding/AICompanionOnboardingScreenKt;->b:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/vuitton/android/presentation/screen/aicompanion/components/onboarding/AICompanionOnboardingScreenKt$AICompanionOnboardingScreen$lambda$3$0$$inlined$onDispose$1;

    invoke-direct {p1, p0}, Lcom/vuitton/android/presentation/screen/aicompanion/components/onboarding/AICompanionOnboardingScreenKt$AICompanionOnboardingScreen$lambda$3$0$$inlined$onDispose$1;-><init>(Lcom/vuitton/android/presentation/compose/LvExoPlayer;)V

    return-object p1

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
