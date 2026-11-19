.class public final synthetic Llp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Llp;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 10

    iget p0, p0, Llp;->b:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context$Companion;

    new-instance p0, Lkotlinx/serialization/internal/LinkedHashMapSerializer;

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    sget-object v1, Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/PageAttributesValueSerializer;->a:Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/customSerialization/PageAttributesValueSerializer;

    invoke-direct {p0, v0, v1}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/common/payload/Context$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/CartItem$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/choose/payload/CartItem$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/vuitton/android/data/dto/connectivity/watchface/ContentDto;->Companion:Lcom/vuitton/android/data/dto/connectivity/watchface/ContentDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/vuitton/android/data/dto/connectivity/watchface/ContentDto;->Companion:Lcom/vuitton/android/data/dto/connectivity/watchface/ContentDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/vuitton/android/presentation/contact/ContactUsTrackerEntryPointKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "no local ContactUsTracker provided"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_6
    invoke-static {}, Lcom/sightcall/core/consent/compose/ConsentViewKt;->e()Lkotlin/Unit;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-static {}, Lcom/sightcall/core/consent/compose/ConsentViewKt;->b()Lkotlin/Unit;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-static {}, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->values()[Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkotlinx/serialization/internal/EnumSerializer;

    const-string v1, "com.vuitton.foundation.model.domain.model.privacy.ConsentValue"

    invoke-direct {v0, v1, p0}, Lkotlinx/serialization/internal/EnumSerializer;-><init>(Ljava/lang/String;[Ljava/lang/Enum;)V

    return-object v0

    :pswitch_9
    sget-object p0, Lcom/vuitton/android/data/dto/legal/ConsentRequirementDto;->Companion:Lcom/vuitton/android/data/dto/legal/ConsentRequirementDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/legal/ConsentFeatureDto;->Companion:Lcom/vuitton/android/data/dto/legal/ConsentFeatureDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/legal/ConsentFeatureDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-static {}, Lcom/sightcall/core/consent/compose/ConsentLayoutKt;->d()Lkotlin/Unit;

    move-result-object p0

    return-object p0

    :pswitch_b
    invoke-static {}, Lcom/sightcall/core/consent/compose/ConsentLayoutKt;->c()Lkotlin/Unit;

    move-result-object p0

    return-object p0

    :pswitch_c
    invoke-static {}, Lcom/sightcall/core/consent/compose/ConsentLayoutKt;->b()Lkotlin/Unit;

    move-result-object p0

    return-object p0

    :pswitch_d
    invoke-static {}, Lcom/vuitton/android/data/dto/legal/ConsentFeatureDto;->values()[Lcom/vuitton/android/data/dto/legal/ConsentFeatureDto;

    move-result-object p0

    const-string v0, "shadeFinderImageStorage"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    filled-new-array {v1}, [[Ljava/lang/annotation/Annotation;

    move-result-object v1

    const-string v2, "com.vuitton.android.data.dto.legal.ConsentFeatureDto"

    invoke-static {v2, p0, v0, v1}, Lkotlinx/serialization/internal/EnumsKt;->a(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;)Lkotlinx/serialization/internal/EnumSerializer;

    move-result-object p0

    return-object p0

    :pswitch_e
    invoke-static {}, Lcom/sightcall/core/consent/compose/ConsentDeclineViewKt;->b()Lkotlin/Unit;

    move-result-object p0

    return-object p0

    :pswitch_f
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$SocialConsent;->Companion:Lcom/vuitton/foundation/model/domain/model/privacy/Consent$SocialConsent$Companion;

    sget-object p0, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->Companion:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue$Companion;

    invoke-virtual {p0}, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_10
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$SocialConsent;->Companion:Lcom/vuitton/foundation/model/domain/model/privacy/Consent$SocialConsent$Companion;

    sget-object p0, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->Companion:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue$Companion;

    invoke-virtual {p0}, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_11
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$LucieLabsConsent;->Companion:Lcom/vuitton/foundation/model/domain/model/privacy/Consent$LucieLabsConsent$Companion;

    sget-object p0, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->Companion:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue$Companion;

    invoke-virtual {p0}, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_12
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$LucieLabsConsent;->Companion:Lcom/vuitton/foundation/model/domain/model/privacy/Consent$LucieLabsConsent$Companion;

    sget-object p0, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->Companion:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue$Companion;

    invoke-virtual {p0}, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_13
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$FunctionalConsent;->Companion:Lcom/vuitton/foundation/model/domain/model/privacy/Consent$FunctionalConsent$Companion;

    sget-object p0, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->Companion:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue$Companion;

    invoke-virtual {p0}, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_14
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$FunctionalConsent;->Companion:Lcom/vuitton/foundation/model/domain/model/privacy/Consent$FunctionalConsent$Companion;

    sget-object p0, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->Companion:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue$Companion;

    invoke-virtual {p0}, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_15
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$CustomisationConsent;->Companion:Lcom/vuitton/foundation/model/domain/model/privacy/Consent$CustomisationConsent$Companion;

    sget-object p0, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->Companion:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue$Companion;

    invoke-virtual {p0}, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_16
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$CustomisationConsent;->Companion:Lcom/vuitton/foundation/model/domain/model/privacy/Consent$CustomisationConsent$Companion;

    sget-object p0, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->Companion:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue$Companion;

    invoke-virtual {p0}, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_17
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$ChatConsent;->Companion:Lcom/vuitton/foundation/model/domain/model/privacy/Consent$ChatConsent$Companion;

    sget-object p0, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->Companion:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue$Companion;

    invoke-virtual {p0}, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_18
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$ChatConsent;->Companion:Lcom/vuitton/foundation/model/domain/model/privacy/Consent$ChatConsent$Companion;

    sget-object p0, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->Companion:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue$Companion;

    invoke-virtual {p0}, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_19
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent;->Companion:Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent$Companion;

    sget-object p0, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->Companion:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue$Companion;

    invoke-virtual {p0}, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_1a
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent;->Companion:Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent$Companion;

    sget-object p0, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->Companion:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue$Companion;

    invoke-virtual {p0}, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_1b
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;->Companion:Lcom/vuitton/foundation/model/domain/model/privacy/Consent$Companion;

    new-instance v0, Lkotlinx/serialization/SealedClassSerializer;

    sget-object p0, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v1, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;

    invoke-virtual {p0, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-class v1, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent;

    invoke-virtual {p0, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const-class v3, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$ChatConsent;

    invoke-virtual {p0, v3}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    const-class v4, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$CustomisationConsent;

    invoke-virtual {p0, v4}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    const-class v5, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$FunctionalConsent;

    invoke-virtual {p0, v5}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    const-class v6, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$LucieLabsConsent;

    invoke-virtual {p0, v6}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    const-class v7, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$SocialConsent;

    invoke-virtual {p0, v7}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p0

    const/4 v7, 0x6

    move-object v8, v3

    new-array v3, v7, [Lkotlin/reflect/KClass;

    const/4 v9, 0x0

    aput-object v1, v3, v9

    const/4 v1, 0x1

    aput-object v8, v3, v1

    const/4 v8, 0x2

    aput-object v4, v3, v8

    const/4 v4, 0x3

    aput-object v5, v3, v4

    const/4 v5, 0x4

    aput-object v6, v3, v5

    const/4 v6, 0x5

    aput-object p0, v3, v6

    new-array p0, v7, [Lkotlinx/serialization/KSerializer;

    sget-object v7, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/privacy/Consent$AnalyticsConsent$$serializer;

    aput-object v7, p0, v9

    sget-object v7, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$ChatConsent$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/privacy/Consent$ChatConsent$$serializer;

    aput-object v7, p0, v1

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$CustomisationConsent$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/privacy/Consent$CustomisationConsent$$serializer;

    aput-object v1, p0, v8

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$FunctionalConsent$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/privacy/Consent$FunctionalConsent$$serializer;

    aput-object v1, p0, v4

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$LucieLabsConsent$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/privacy/Consent$LucieLabsConsent$$serializer;

    aput-object v1, p0, v5

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/privacy/Consent$SocialConsent$$serializer;->a:Lcom/vuitton/foundation/model/domain/model/privacy/Consent$SocialConsent$$serializer;

    aput-object v1, p0, v6

    new-array v5, v9, [Ljava/lang/annotation/Annotation;

    const-string v1, "com.vuitton.foundation.model.domain.model.privacy.Consent"

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lkotlinx/serialization/SealedClassSerializer;-><init>(Ljava/lang/String;Lkotlin/reflect/KClass;[Lkotlin/reflect/KClass;[Lkotlinx/serialization/KSerializer;[Ljava/lang/annotation/Annotation;)V

    return-object v0

    :pswitch_1c
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/privacy/Consent;->Companion:Lcom/vuitton/foundation/model/domain/model/privacy/Consent$Companion;

    sget-object p0, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue;->Companion:Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue$Companion;

    invoke-virtual {p0}, Lcom/vuitton/foundation/model/domain/model/privacy/ConsentValue$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

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
