.class public final synthetic Llg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Llg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    iget p0, p0, Llg;->b:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lcom/vuitton/android/data/dto/careservices/CareServiceOriginDto;->values()[Lcom/vuitton/android/data/dto/careservices/CareServiceOriginDto;

    move-result-object p0

    const-string v1, "CSC Call"

    const-string v2, "CSC Email"

    const-string v3, "LV App-Form"

    const-string v4, "LV App-Appointment Call"

    const-string v5, "LV App-Appointment Video Call"

    filled-new-array {v3, v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v0, v0, v0, v0}, [[Ljava/lang/annotation/Annotation;

    move-result-object v0

    const-string v2, "com.vuitton.android.data.dto.careservices.CareServiceOriginDto"

    invoke-static {v2, p0, v1, v0}, Lkotlinx/serialization/internal/EnumsKt;->a(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;)Lkotlinx/serialization/internal/EnumSerializer;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/vuitton/android/data/dto/careservices/CareServiceListDto;->Companion:Lcom/vuitton/android/data/dto/careservices/CareServiceListDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/careservices/CareServicesDto$$serializer;->a:Lcom/vuitton/android/data/dto/careservices/CareServicesDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDto;->Companion:Lcom/vuitton/android/data/dto/careservices/CareServiceDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDto;->Companion:Lcom/vuitton/android/data/dto/careservices/CareServiceDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/careservices/CareServiceOriginDto;->Companion:Lcom/vuitton/android/data/dto/careservices/CareServiceOriginDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/careservices/CareServiceOriginDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ShippingInformation;->Companion:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$ShippingInformation$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->Companion:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AssessmentItem$$serializer;->a:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AssessmentItem$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->Companion:Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto$$serializer;->a:Lcom/vuitton/android/data/dto/careservices/CareServiceLineDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->Companion:Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/careservices/CareServiceOriginDto;->Companion:Lcom/vuitton/android/data/dto/careservices/CareServiceOriginDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/careservices/CareServiceOriginDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->Companion:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$InformationSection$$serializer;->a:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$InformationSection$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->Companion:Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/repair/RepairStatusDto;->Companion:Lcom/vuitton/android/data/dto/repair/RepairStatusDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/repair/RepairStatusDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->Companion:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$CancellationReason$$serializer;->a:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$CancellationReason$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_a
    sget-object p0, Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto;->Companion:Lcom/vuitton/android/data/dto/careservices/CareServiceDetailDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/repair/RepairTypeDto;->Companion:Lcom/vuitton/android/data/dto/repair/RepairTypeDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/repair/RepairTypeDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;->Companion:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Step$$serializer;->a:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Step$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_c
    sget-object p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;->Companion:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_d
    sget-object p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto;->Companion:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceCreationDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceContactMethodDto;->Companion:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceContactMethodDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceContactMethodDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_e
    invoke-static {}, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceContactMethodDto;->values()[Lcom/vuitton/android/data/dto/careservices/bff/CareServiceContactMethodDto;

    move-result-object p0

    const-string v1, "phoneCall"

    const-string v2, "videoCall"

    const-string v3, "email"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v0, v0}, [[Ljava/lang/annotation/Annotation;

    move-result-object v0

    const-string v2, "com.vuitton.android.data.dto.careservices.bff.CareServiceContactMethodDto"

    invoke-static {v2, p0, v1, v0}, Lkotlinx/serialization/internal/EnumsKt;->a(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;)Lkotlinx/serialization/internal/EnumSerializer;

    move-result-object p0

    return-object p0

    :pswitch_f
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p0

    return-object p0

    :pswitch_10
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p0

    return-object p0

    :pswitch_11
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CampaignsResponse;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CampaignsResponse$Companion;

    new-instance v2, Lkotlinx/serialization/SealedClassSerializer;

    sget-object p0, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/CampaignsResponse;

    invoke-virtual {p0, v0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const-class v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantResponse;

    invoke-virtual {p0, v0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-class v3, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/ChooseResponse;

    invoke-virtual {p0, v3}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-class v5, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchResponse;

    invoke-virtual {p0, v5}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    const-class v6, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/VisualSearchResponse;

    invoke-virtual {p0, v6}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    const/4 v6, 0x4

    move-object v7, v5

    new-array v5, v6, [Lkotlin/reflect/KClass;

    aput-object v0, v5, v1

    const/4 v0, 0x1

    aput-object v3, v5, v0

    const/4 v3, 0x2

    aput-object v7, v5, v3

    const/4 v7, 0x3

    aput-object p0, v5, v7

    new-array v6, v6, [Lkotlinx/serialization/KSerializer;

    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantResponse$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/AssistantResponse$$serializer;

    aput-object p0, v6, v1

    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/ChooseResponse$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/ChooseResponse$$serializer;

    aput-object p0, v6, v0

    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchResponse$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/SemanticSearchResponse$$serializer;

    aput-object p0, v6, v3

    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/VisualSearchResponse$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/VisualSearchResponse$$serializer;

    aput-object p0, v6, v7

    new-array v7, v1, [Ljava/lang/annotation/Annotation;

    const-string v3, "com.dynamicyield.sdk.wrapper.core.models.choose.response.CampaignsResponse"

    invoke-direct/range {v2 .. v7}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    return-object v2

    :pswitch_12
    sget-object p0, Lcom/vuitton/android/data/repository/CalendarEventsListData;->Companion:Lcom/vuitton/android/data/repository/CalendarEventsListData$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/calendar/CalendarEvent$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/calendar/CalendarEvent$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_13
    invoke-static {}, Lcom/sightcall/graphik/composent/ButtonsKt;->a()Lkotlin/Unit;

    move-result-object p0

    return-object p0

    :pswitch_14
    invoke-static {}, Lcom/sightcall/graphik/composent/ButtonsKt;->b()Lkotlin/Unit;

    move-result-object p0

    return-object p0

    :pswitch_15
    sget-object p0, Lcom/vuitton/android/data/dto/cart/bff/BundleDto;->Companion:Lcom/vuitton/android/data/dto/cart/bff/BundleDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/cart/bff/CartItemDto$$serializer;->a:Lcom/vuitton/android/data/dto/cart/bff/CartItemDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_16
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch$Companion;

    invoke-static {}, Lcom/dynamicyield/sdk/wrapper/core/enums/OrderFulfillment;->values()[Lcom/dynamicyield/sdk/wrapper/core/enums/OrderFulfillment;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkotlinx/serialization/internal/EnumSerializer;

    const-string v1, "com.dynamicyield.sdk.wrapper.core.enums.OrderFulfillment"

    invoke-direct {v0, v1, p0}, Lkotlinx/serialization/internal/EnumSerializer;-><init>(Ljava/lang/String;[Ljava/lang/Enum;)V

    return-object v0

    :pswitch_17
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/Branch$Companion;

    invoke-static {}, Lcom/dynamicyield/sdk/wrapper/core/enums/DayPart;->values()[Lcom/dynamicyield/sdk/wrapper/core/enums/DayPart;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkotlinx/serialization/internal/EnumSerializer;

    const-string v1, "com.dynamicyield.sdk.wrapper.core.enums.DayPart"

    invoke-direct {v0, v1, p0}, Lkotlinx/serialization/internal/EnumSerializer;-><init>(Ljava/lang/String;[Ljava/lang/Enum;)V

    return-object v0

    :pswitch_18
    invoke-static {}, Lcom/vuitton/android/data/dto/booking/BookingTypeDto;->values()[Lcom/vuitton/android/data/dto/booking/BookingTypeDto;

    move-result-object p0

    const-string v1, "appointment"

    const-string v2, "experience"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v0}, [[Ljava/lang/annotation/Annotation;

    move-result-object v0

    const-string v2, "com.vuitton.android.data.dto.booking.BookingTypeDto"

    invoke-static {v2, p0, v1, v0}, Lkotlinx/serialization/internal/EnumsKt;->a(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;)Lkotlinx/serialization/internal/EnumSerializer;

    move-result-object p0

    return-object p0

    :pswitch_19
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1a
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v0, Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Summary;->INSTANCE:Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Summary;

    new-array v1, v1, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.android.presentation.screen.booking.BookingRoutes.Summary"

    invoke-direct {p0, v2, v0, v1}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_1b
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v0, Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$PersonalInfo;->INSTANCE:Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$PersonalInfo;

    new-array v1, v1, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.android.presentation.screen.booking.BookingRoutes.PersonalInfo"

    invoke-direct {p0, v2, v0, v1}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_1c
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v0, Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Confirmation;->INSTANCE:Lcom/vuitton/android/presentation/screen/booking/BookingRoutes$Confirmation;

    new-array v1, v1, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.android.presentation.screen.booking.BookingRoutes.Confirmation"

    invoke-direct {p0, v2, v0, v1}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

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
