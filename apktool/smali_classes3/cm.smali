.class public final synthetic Lcm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcm;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget p0, p0, Lcm;->b:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/ComposableSingletons$AudioPlayerControlsKt;->a:Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/ComposableSingletons$AudioPlayerControlsKt;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/ComposableSingletons$AudioPlayerControlsKt;->a:Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/ComposableSingletons$AudioPlayerControlsKt;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/ComposableSingletons$AudioPlayerControlsKt;->a:Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/ComposableSingletons$AudioPlayerControlsKt;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/ComposableSingletons$AudioPlayerControlsKt;->a:Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/ComposableSingletons$AudioPlayerControlsKt;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/ComposableSingletons$AudioPlayerControlsKt;->a:Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/ComposableSingletons$AudioPlayerControlsKt;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    invoke-static {}, Lcom/sightcall/graphik/ColorsKt;->a()Lcom/sightcall/graphik/Colors;

    move-result-object p0

    return-object p0

    :pswitch_5
    sget-object p0, Landroidx/compose/material3/ColorSchemeKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_6
    const-wide/16 v0, 0x0

    const/4 p0, -0x1

    invoke-static {p0, v0, v1}, Landroidx/compose/material3/ColorSchemeKt;->e(IJ)Landroidx/compose/material3/ColorScheme;

    move-result-object p0

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/vuitton/android/designkit/ui/theme/ColorKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "no local LV colors provided"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_8
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/CodeAndMessageWarnings;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/common/CodeAndMessageWarnings$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/common/CodeWarning$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/common/CodeWarning$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/ClickEngagement;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/engagment/ClickEngagement$Companion;

    invoke-static {}, Lcom/dynamicyield/sdk/wrapper/core/enums/EngagementType;->values()[Lcom/dynamicyield/sdk/wrapper/core/enums/EngagementType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkotlinx/serialization/internal/EnumSerializer;

    const-string v1, "com.dynamicyield.sdk.wrapper.core.enums.EngagementType"

    invoke-direct {v0, v1, p0}, Lkotlinx/serialization/internal/EnumSerializer;-><init>(Ljava/lang/String;[Ljava/lang/Enum;)V

    return-object v0

    :pswitch_a
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/engagment/ClickEngagement;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/engagment/ClickEngagement$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lkotlinx/serialization/internal/IntSerializer;->a:Lkotlinx/serialization/internal/IntSerializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/ChooseResponse;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/ChooseResponse$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Cookie$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/Cookie$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_c
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/ChooseResponse;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/choose/response/ChooseResponse$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/ChoiceSerializer;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/ChoiceSerializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_d
    sget-object p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto;->Companion:Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_e
    sget-object p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto;->Companion:Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_f
    sget-object p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto;->Companion:Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/cart/bff/CartSampleItemDto$$serializer;->a:Lcom/vuitton/android/data/dto/cart/bff/CartSampleItemDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_10
    sget-object p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto;->Companion:Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutConfirmationDetailDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto$$serializer;->a:Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CheckoutItemDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_11
    sget-object p0, Lcom/vuitton/android/data/dto/aicompanion/ChatSessionDto;->Companion:Lcom/vuitton/android/data/dto/aicompanion/ChatSessionDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/aicompanion/ChatMessageDto$$serializer;->a:Lcom/vuitton/android/data/dto/aicompanion/ChatMessageDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_12
    invoke-static {}, Lcom/vuitton/android/data/dto/aicompanion/ChatRoleDto;->values()[Lcom/vuitton/android/data/dto/aicompanion/ChatRoleDto;

    move-result-object p0

    const-string v1, "rootAgent"

    const-string v2, "user"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v0}, [[Ljava/lang/annotation/Annotation;

    move-result-object v0

    const-string v2, "com.vuitton.android.data.dto.aicompanion.ChatRoleDto"

    invoke-static {v2, p0, v1, v0}, Lkotlinx/serialization/internal/EnumsKt;->a(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;)Lkotlinx/serialization/internal/EnumSerializer;

    move-result-object p0

    return-object p0

    :pswitch_13
    sget-object p0, Lcom/vuitton/android/data/dto/aicompanion/ChatMessageDto;->Companion:Lcom/vuitton/android/data/dto/aicompanion/ChatMessageDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/aicompanion/ChatMessageSectionDto$$serializer;->a:Lcom/vuitton/android/data/dto/aicompanion/ChatMessageSectionDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_14
    sget-object p0, Lcom/vuitton/android/data/dto/aicompanion/ChatMessageDto;->Companion:Lcom/vuitton/android/data/dto/aicompanion/ChatMessageDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/aicompanion/ChatRoleDto;->Companion:Lcom/vuitton/android/data/dto/aicompanion/ChatRoleDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/aicompanion/ChatRoleDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_15
    invoke-static {}, Lcom/vuitton/android/data/dto/account/orders/ChannelDto;->values()[Lcom/vuitton/android/data/dto/account/orders/ChannelDto;

    move-result-object p0

    const-string v1, "online"

    const-string v2, "phone"

    const-string v3, "offline"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v0, v0}, [[Ljava/lang/annotation/Annotation;

    move-result-object v0

    const-string v2, "com.vuitton.android.data.dto.account.orders.ChannelDto"

    invoke-static {v2, p0, v1, v0}, Lkotlinx/serialization/internal/EnumsKt;->a(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;)Lkotlinx/serialization/internal/EnumSerializer;

    move-result-object p0

    return-object p0

    :pswitch_16
    sget-object p0, Lcom/vuitton/android/data/dto/certificate/CertificateVisionnaireDto;->Companion:Lcom/vuitton/android/data/dto/certificate/CertificateVisionnaireDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/certificate/CertificateStatusDto;->Companion:Lcom/vuitton/android/data/dto/certificate/CertificateStatusDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/certificate/CertificateStatusDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_17
    invoke-static {}, Lcom/vuitton/android/data/dto/certificate/CertificateStatusDto;->values()[Lcom/vuitton/android/data/dto/certificate/CertificateStatusDto;

    move-result-object p0

    const-string v1, "unlocked"

    const-string v2, "pending"

    const-string v3, "locked"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v0, v0}, [[Ljava/lang/annotation/Annotation;

    move-result-object v0

    const-string v2, "com.vuitton.android.data.dto.certificate.CertificateStatusDto"

    invoke-static {v2, p0, v1, v0}, Lkotlinx/serialization/internal/EnumsKt;->a(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;)Lkotlinx/serialization/internal/EnumSerializer;

    move-result-object p0

    return-object p0

    :pswitch_18
    sget-object p0, Lcom/vuitton/android/data/dto/certificate/CertificateRubyDto;->Companion:Lcom/vuitton/android/data/dto/certificate/CertificateRubyDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/certificate/CertificateStatusDto;->Companion:Lcom/vuitton/android/data/dto/certificate/CertificateStatusDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/certificate/CertificateStatusDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_19
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$TransferConfirmation;->INSTANCE:Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$TransferConfirmation;

    new-array v1, v1, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.android.presentation.screen.certificates.CertificateRoute.TransferConfirmation"

    invoke-direct {p0, v2, v0, v1}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_1a
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$Transfer;->INSTANCE:Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$Transfer;

    new-array v1, v1, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.android.presentation.screen.certificates.CertificateRoute.Transfer"

    invoke-direct {p0, v2, v0, v1}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_1b
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$List;->INSTANCE:Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$List;

    new-array v1, v1, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.android.presentation.screen.certificates.CertificateRoute.List"

    invoke-direct {p0, v2, v0, v1}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_1c
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v0, Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$AddConfirmation;->INSTANCE:Lcom/vuitton/android/presentation/screen/certificates/CertificateRoute$AddConfirmation;

    new-array v1, v1, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.android.presentation.screen.certificates.CertificateRoute.AddConfirmation"

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
