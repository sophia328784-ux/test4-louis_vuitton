.class public final synthetic Lul0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lul0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget p0, p0, Lul0;->b:I

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/vuitton/android/data/dto/distantrepairs/PrebookAppointmentDtoRequest;->Companion:Lcom/vuitton/android/data/dto/distantrepairs/PrebookAppointmentDtoRequest$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/distantrepairs/PrebookContextDto;->Companion:Lcom/vuitton/android/data/dto/distantrepairs/PrebookContextDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/distantrepairs/PrebookContextDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/vuitton/android/data/dto/distantrepairs/PrebookAppointmentDtoRequest;->Companion:Lcom/vuitton/android/data/dto/distantrepairs/PrebookAppointmentDtoRequest$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto;->Companion:Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto;->Companion:Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/booking/BookingAdditionalDto$$serializer;->a:Lcom/vuitton/android/data/dto/booking/BookingAdditionalDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto;->Companion:Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/booking/PreBookDto$$serializer;->a:Lcom/vuitton/android/data/dto/booking/PreBookDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/vuitton/android/data/dto/booking/PreBookDto;->Companion:Lcom/vuitton/android/data/dto/booking/PreBookDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/booking/BookingInfoDto$$serializer;->a:Lcom/vuitton/android/data/dto/booking/BookingInfoDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/vuitton/android/data/dto/booking/PreBookDto;->Companion:Lcom/vuitton/android/data/dto/booking/PreBookDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/booking/BookingTypeDto;->Companion:Lcom/vuitton/android/data/dto/booking/BookingTypeDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/booking/BookingTypeDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/vuitton/android/data/dto/portal/PortalDto;->Companion:Lcom/vuitton/android/data/dto/portal/PortalDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/portal/SlideDtoSerializer;->c:Lcom/vuitton/android/data/dto/portal/SlideDtoSerializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_6
    sget-object p0, Landroidx/compose/foundation/text/selection/PlatformSelectionBehaviors_androidKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    sget-object p0, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object p0, Lkotlinx/coroutines/scheduling/DefaultIoScheduler;->b:Lkotlinx/coroutines/scheduling/DefaultIoScheduler;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/vuitton/android/data/dto/config/cache/PersonalisationConfigCache;->Companion:Lcom/vuitton/android/data/dto/config/cache/PersonalisationConfigCache$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/config/cache/RegionCache;->Companion:Lcom/vuitton/android/data/dto/config/cache/RegionCache$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/config/cache/RegionCache$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/vuitton/android/data/dto/personalselections/PersonalSharingDto;->Companion:Lcom/vuitton/android/data/dto/personalselections/PersonalSharingDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/personalselections/SelectionTypeDto;->Companion:Lcom/vuitton/android/data/dto/personalselections/SelectionTypeDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/personalselections/SelectionTypeDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_9
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsRoute$List;->INSTANCE:Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsRoute$List;

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.android.presentation.screen.personalselections.PersonalSelectionsRoute.List"

    invoke-direct {p0, v2, v1, v0}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_a
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_b
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_c
    sget-object p0, Lcom/vuitton/android/data/dto/personalselections/PersonalSelectionsDto;->Companion:Lcom/vuitton/android/data/dto/personalselections/PersonalSelectionsDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/personalselections/PersonalSharingDto$$serializer;->a:Lcom/vuitton/android/data/dto/personalselections/PersonalSharingDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_d
    sget-object p0, Lcom/vuitton/android/data/dto/personalselections/PersonalSelectionsDto;->Companion:Lcom/vuitton/android/data/dto/personalselections/PersonalSelectionsDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/personalselections/PersonalSharingDto$$serializer;->a:Lcom/vuitton/android/data/dto/personalselections/PersonalSharingDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_e
    sget-object p0, Lcom/vuitton/android/data/dto/personalselections/PersonalSelectionsDetailDto;->Companion:Lcom/vuitton/android/data/dto/personalselections/PersonalSelectionsDetailDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialSectionDtoSerializer;->a:Lcom/vuitton/android/data/dto/common/editorial/EditorialSectionDtoSerializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_f
    sget-object p0, Lcom/vuitton/android/data/dto/personalselections/PersonalSelectionsDetailDto;->Companion:Lcom/vuitton/android/data/dto/personalselections/PersonalSelectionsDetailDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/personalselections/SelectionProductDto$$serializer;->a:Lcom/vuitton/android/data/dto/personalselections/SelectionProductDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_10
    sget-object p0, Lcom/vuitton/android/data/dto/personalselections/PersonalSelectionsDetailDto;->Companion:Lcom/vuitton/android/data/dto/personalselections/PersonalSelectionsDetailDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/personalselections/SelectionAssetDto$$serializer;->a:Lcom/vuitton/android/data/dto/personalselections/SelectionAssetDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_11
    sget-object p0, Lcom/vuitton/android/data/dto/personalselections/PersonalSelectionsDetailDto;->Companion:Lcom/vuitton/android/data/dto/personalselections/PersonalSelectionsDetailDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/personalselections/SelectionTypeDto;->Companion:Lcom/vuitton/android/data/dto/personalselections/SelectionTypeDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/personalselections/SelectionTypeDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_12
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionDetailRoutes$Look;->INSTANCE:Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionDetailRoutes$Look;

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.PersonalSelectionDetailRoutes.Look"

    invoke-direct {p0, v2, v1, v0}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_13
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionDetailRoutes$Detail;->INSTANCE:Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionDetailRoutes$Detail;

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.PersonalSelectionDetailRoutes.Detail"

    invoke-direct {p0, v2, v1, v0}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_14
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_15
    sget-object p0, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackerEntryPointKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "no local PdpTracker provided"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_16
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_17
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/PdpRoutes$Pdp;->INSTANCE:Lcom/vuitton/android/presentation/screen/pdp/PdpRoutes$Pdp;

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.android.presentation.screen.pdp.PdpRoutes.Pdp"

    invoke-direct {p0, v2, v1, v0}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_18
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/PdpRoutes$ContextualSize;->INSTANCE:Lcom/vuitton/android/presentation/screen/pdp/PdpRoutes$ContextualSize;

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.android.presentation.screen.pdp.PdpRoutes.ContextualSize"

    invoke-direct {p0, v2, v1, v0}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_19
    sget-object p0, Lcom/vuitton/android/presentation/screen/pdp/PdpActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/PdpActivity$Companion;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1a
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1b
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1c
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
