.class public final synthetic Lxe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lxe;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 12

    iget p0, p0, Lxe;->b:I

    const-string v0, "com.vuitton.android.data.dto.booking.BookingFormStepDataDto.UnknownDataDto"

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch p0, :pswitch_data_0

    const-string p0, "Failed to get account status"

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl;->w:Ljava/lang/String;

    const-string p0, "Failed to get booking policy"

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl;->w:Ljava/lang/String;

    const-string p0, "Failed to get profile"

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoViewModelImpl;->w:Ljava/lang/String;

    const-string p0, "Failed to load the booking form"

    return-object p0

    :pswitch_3
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoRoutes$InfoForm;->INSTANCE:Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoRoutes$InfoForm;

    new-array v1, v2, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoRoutes.InfoForm"

    invoke-direct {p0, v2, v0, v1}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_4
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoRoutes$AccountStatus;->INSTANCE:Lcom/vuitton/android/presentation/screen/booking/personalinfo/BookingPersonalInfoRoutes$AccountStatus;

    new-array v1, v2, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoRoutes.AccountStatus"

    invoke-direct {p0, v2, v0, v1}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/vuitton/android/data/dto/booking/BookingPassDto;->Companion:Lcom/vuitton/android/data/dto/booking/BookingPassDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/booking/BookingInfoDto$$serializer;->a:Lcom/vuitton/android/data/dto/booking/BookingInfoDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/vuitton/android/data/dto/booking/BookingListDto;->Companion:Lcom/vuitton/android/data/dto/booking/BookingListDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/booking/BookingAdditionalDto$$serializer;->a:Lcom/vuitton/android/data/dto/booking/BookingAdditionalDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/vuitton/android/data/dto/booking/BookingListDto;->Companion:Lcom/vuitton/android/data/dto/booking/BookingListDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/booking/BookingDto$$serializer;->a:Lcom/vuitton/android/data/dto/booking/BookingDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_8
    invoke-static {}, Lcom/vuitton/android/data/dto/booking/BookingInfoTypeDto;->values()[Lcom/vuitton/android/data/dto/booking/BookingInfoTypeDto;

    move-result-object p0

    const-string v0, "address"

    const-string v2, "phone"

    const-string v3, "text"

    filled-new-array {v3, v0, v2}, [Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v1, v1}, [[Ljava/lang/annotation/Annotation;

    move-result-object v1

    const-string v2, "com.vuitton.android.data.dto.booking.BookingInfoTypeDto"

    invoke-static {v2, p0, v0, v1}, Lkotlinx/serialization/internal/EnumsKt;->a(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;)Lkotlinx/serialization/internal/EnumSerializer;

    move-result-object p0

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/vuitton/android/data/dto/booking/BookingInfoDto;->Companion:Lcom/vuitton/android/data/dto/booking/BookingInfoDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/booking/BookingInfoTypeDto;->Companion:Lcom/vuitton/android/data/dto/booking/BookingInfoTypeDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/booking/BookingInfoTypeDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_a
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$UnknownDataDto;->INSTANCE:Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$UnknownDataDto;

    new-array v2, v2, [Ljava/lang/annotation/Annotation;

    invoke-direct {p0, v0, v1, v2}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$SlotDataDto;->Companion:Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$SlotDataDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/booking/BookingFormSlotDateDto$$serializer;->a:Lcom/vuitton/android/data/dto/booking/BookingFormSlotDateDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_c
    sget-object p0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$SingleTextDataDto;->Companion:Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$SingleTextDataDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/booking/SingleTextLayoutDto;->Companion:Lcom/vuitton/android/data/dto/booking/SingleTextLayoutDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/booking/SingleTextLayoutDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_d
    sget-object p0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$SingleTextDataDto;->Companion:Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$SingleTextDataDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/booking/BookingFormChoiceValueDto$$serializer;->a:Lcom/vuitton/android/data/dto/booking/BookingFormChoiceValueDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_e
    sget-object p0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$MultipleTextDataDto;->Companion:Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$MultipleTextDataDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/booking/BookingFormCategoryDto$$serializer;->a:Lcom/vuitton/android/data/dto/booking/BookingFormCategoryDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_f
    sget-object p0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$DateDataDto;->Companion:Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$DateDataDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_10
    sget-object p0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto;->Companion:Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$Companion;

    new-instance v3, Lkotlinx/serialization/SealedClassSerializer;

    sget-object p0, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v1, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto;

    invoke-virtual {p0, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    const-class v1, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$DateDataDto;

    invoke-virtual {p0, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const-class v4, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$MultipleTextDataDto;

    invoke-virtual {p0, v4}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const-class v6, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$SingleTextDataDto;

    invoke-virtual {p0, v6}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    const-class v7, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$SlotDataDto;

    invoke-virtual {p0, v7}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v7

    const-class v8, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$UnknownDataDto;

    invoke-virtual {p0, v8}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    const/4 v8, 0x5

    move-object v9, v6

    new-array v6, v8, [Lkotlin/reflect/KClass;

    aput-object v1, v6, v2

    const/4 v1, 0x1

    aput-object v4, v6, v1

    const/4 v4, 0x2

    aput-object v9, v6, v4

    const/4 v9, 0x3

    aput-object v7, v6, v9

    const/4 v7, 0x4

    aput-object p0, v6, v7

    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v10, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$UnknownDataDto;->INSTANCE:Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$UnknownDataDto;

    new-array v11, v2, [Ljava/lang/annotation/Annotation;

    invoke-direct {p0, v0, v10, v11}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    new-array v0, v8, [Lkotlinx/serialization/KSerializer;

    sget-object v8, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$DateDataDto$$serializer;->a:Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$DateDataDto$$serializer;

    aput-object v8, v0, v2

    sget-object v8, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$MultipleTextDataDto$$serializer;->a:Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$MultipleTextDataDto$$serializer;

    aput-object v8, v0, v1

    sget-object v1, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$SingleTextDataDto$$serializer;->a:Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$SingleTextDataDto$$serializer;

    aput-object v1, v0, v4

    sget-object v1, Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$SlotDataDto$$serializer;->a:Lcom/vuitton/android/data/dto/booking/BookingFormStepDataDto$SlotDataDto$$serializer;

    aput-object v1, v0, v9

    aput-object p0, v0, v7

    new-array v8, v2, [Ljava/lang/annotation/Annotation;

    const-string v4, "com.vuitton.android.data.dto.booking.BookingFormStepDataDto"

    move-object v7, v0

    invoke-direct/range {v3 .. v8}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    return-object v3

    :pswitch_11
    sget-object p0, Lcom/vuitton/android/data/dto/booking/BookingFormSlotDateDto;->Companion:Lcom/vuitton/android/data/dto/booking/BookingFormSlotDateDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/booking/BookingFormSlotDto$$serializer;->a:Lcom/vuitton/android/data/dto/booking/BookingFormSlotDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_12
    sget-object p0, Lcom/vuitton/android/data/dto/booking/BookingFormSlotDateDto;->Companion:Lcom/vuitton/android/data/dto/booking/BookingFormSlotDateDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/booking/BookingFormSlotDto$$serializer;->a:Lcom/vuitton/android/data/dto/booking/BookingFormSlotDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_13
    sget-object p0, Lcom/vuitton/android/data/dto/booking/BookingFormResponseDto;->Companion:Lcom/vuitton/android/data/dto/booking/BookingFormResponseDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/booking/BookingTypeDto;->Companion:Lcom/vuitton/android/data/dto/booking/BookingTypeDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/booking/BookingTypeDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_14
    sget-object p0, Lcom/vuitton/android/data/dto/booking/BookingFormDto;->Companion:Lcom/vuitton/android/data/dto/booking/BookingFormDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/booking/BookingFormStepDtoSerializer;->a:Lcom/vuitton/android/data/dto/booking/BookingFormStepDtoSerializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_15
    sget-object p0, Lcom/vuitton/android/data/dto/booking/BookingFormCategoryDto;->Companion:Lcom/vuitton/android/data/dto/booking/BookingFormCategoryDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/booking/BookingFormCategoryOptionDto$$serializer;->a:Lcom/vuitton/android/data/dto/booking/BookingFormCategoryOptionDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_16
    invoke-static {}, Lcom/vuitton/android/data/dto/booking/BookingExternalContentTypeDto;->values()[Lcom/vuitton/android/data/dto/booking/BookingExternalContentTypeDto;

    move-result-object p0

    const-string v0, "pdf"

    const-string v2, "webview"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v1}, [[Ljava/lang/annotation/Annotation;

    move-result-object v1

    const-string v2, "com.vuitton.android.data.dto.booking.BookingExternalContentTypeDto"

    invoke-static {v2, p0, v0, v1}, Lkotlinx/serialization/internal/EnumsKt;->a(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;)Lkotlinx/serialization/internal/EnumSerializer;

    move-result-object p0

    return-object p0

    :pswitch_17
    sget-object p0, Lcom/vuitton/android/data/dto/booking/BookingExternalContentDto;->Companion:Lcom/vuitton/android/data/dto/booking/BookingExternalContentDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/booking/BookingExternalContentTypeDto;->Companion:Lcom/vuitton/android/data/dto/booking/BookingExternalContentTypeDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/booking/BookingExternalContentTypeDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_18
    sget-object p0, Lcom/vuitton/android/data/dto/booking/BookingDto;->Companion:Lcom/vuitton/android/data/dto/booking/BookingDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/booking/BookingActionDto$$serializer;->a:Lcom/vuitton/android/data/dto/booking/BookingActionDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_19
    sget-object p0, Lcom/vuitton/android/data/dto/booking/BookingDto;->Companion:Lcom/vuitton/android/data/dto/booking/BookingDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/booking/BookingInfoDto$$serializer;->a:Lcom/vuitton/android/data/dto/booking/BookingInfoDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_1a
    sget-object p0, Lcom/vuitton/android/data/dto/booking/BookingDto;->Companion:Lcom/vuitton/android/data/dto/booking/BookingDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/booking/BookingTypeDto;->Companion:Lcom/vuitton/android/data/dto/booking/BookingTypeDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/booking/BookingTypeDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_1b
    sget-object p0, Lcom/vuitton/android/data/dto/booking/BookingConfirmedListDto;->Companion:Lcom/vuitton/android/data/dto/booking/BookingConfirmedListDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/booking/BookingDto$$serializer;->a:Lcom/vuitton/android/data/dto/booking/BookingDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_1c
    invoke-static {}, Lcom/vuitton/android/data/dto/booking/BookingActionTypeDto;->values()[Lcom/vuitton/android/data/dto/booking/BookingActionTypeDto;

    move-result-object p0

    const-string v0, "cancel"

    const-string v2, "modify"

    const-string v3, "addToCalendar"

    const-string v4, "qrCode"

    filled-new-array {v3, v4, v0, v2}, [Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v1, v1, v1}, [[Ljava/lang/annotation/Annotation;

    move-result-object v1

    const-string v2, "com.vuitton.android.data.dto.booking.BookingActionTypeDto"

    invoke-static {v2, p0, v0, v1}, Lkotlinx/serialization/internal/EnumsKt;->a(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;)Lkotlinx/serialization/internal/EnumSerializer;

    move-result-object p0

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
