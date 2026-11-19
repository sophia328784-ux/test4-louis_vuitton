.class public final synthetic Lmg0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lmg0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget p0, p0, Lmg0;->b:I

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/vuitton/android/data/dto/account/orders/OrderDto;->Companion:Lcom/vuitton/android/data/dto/account/orders/OrderDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/account/orders/ChannelDto;->Companion:Lcom/vuitton/android/data/dto/account/orders/ChannelDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/account/orders/ChannelDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lcom/vuitton/android/presentation/screen/options/OptionsRoutes$PrivacyPolicy;->INSTANCE:Lcom/vuitton/android/presentation/screen/options/OptionsRoutes$PrivacyPolicy;

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.android.presentation.screen.options.OptionsRoutes.PrivacyPolicy"

    invoke-direct {p0, v2, v1, v0}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_1
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lcom/vuitton/android/presentation/screen/options/OptionsRoutes$Notifications;->INSTANCE:Lcom/vuitton/android/presentation/screen/options/OptionsRoutes$Notifications;

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.android.presentation.screen.options.OptionsRoutes.Notifications"

    invoke-direct {p0, v2, v1, v0}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_2
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lcom/vuitton/android/presentation/screen/options/OptionsRoutes$Menu;->INSTANCE:Lcom/vuitton/android/presentation/screen/options/OptionsRoutes$Menu;

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.android.presentation.screen.options.OptionsRoutes.Menu"

    invoke-direct {p0, v2, v1, v0}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_3
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lcom/vuitton/android/presentation/screen/options/OptionsRoutes$LegalMentions;->INSTANCE:Lcom/vuitton/android/presentation/screen/options/OptionsRoutes$LegalMentions;

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.android.presentation.screen.options.OptionsRoutes.LegalMentions"

    invoke-direct {p0, v2, v1, v0}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_4
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lcom/vuitton/android/presentation/screen/options/OptionsRoutes$FeatureFlagMenu;->INSTANCE:Lcom/vuitton/android/presentation/screen/options/OptionsRoutes$FeatureFlagMenu;

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.android.presentation.screen.options.OptionsRoutes.FeatureFlagMenu"

    invoke-direct {p0, v2, v1, v0}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_5
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lcom/vuitton/android/presentation/screen/options/OptionsRoutes$Dispatch;->INSTANCE:Lcom/vuitton/android/presentation/screen/options/OptionsRoutes$Dispatch;

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.android.presentation.screen.options.OptionsRoutes.Dispatch"

    invoke-direct {p0, v2, v1, v0}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lcom/vuitton/android/presentation/screen/options/OptionsRoutes$AppInfo;->INSTANCE:Lcom/vuitton/android/presentation/screen/options/OptionsRoutes$AppInfo;

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.android.presentation.screen.options.OptionsRoutes.AppInfo"

    invoke-direct {p0, v2, v1, v0}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_7
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lcom/vuitton/android/presentation/screen/options/OptionsRoutes$Accessibility;->INSTANCE:Lcom/vuitton/android/presentation/screen/options/OptionsRoutes$Accessibility;

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.android.presentation.screen.options.OptionsRoutes.Accessibility"

    invoke-direct {p0, v2, v1, v0}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_8
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/components/OptOutOthers;->INSTANCE:Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/components/OptOutOthers;

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.android.presentation.screen.options.optoutprivacymenu.components.OptOutOthers"

    invoke-direct {p0, v2, v1, v0}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/vuitton/android/designkit/ui/theme/OpacityKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "no local opacity provided"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_a
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/components/OpOutMenu;->INSTANCE:Lcom/vuitton/android/presentation/screen/options/optoutprivacymenu/components/OpOutMenu;

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.android.presentation.screen.options.optoutprivacymenu.components.OpOutMenu"

    invoke-direct {p0, v2, v1, v0}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/vuitton/android/data/dto/account/orders/OngoingOrdersDtoResponse;->Companion:Lcom/vuitton/android/data/dto/account/orders/OngoingOrdersDtoResponse$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/vuitton/android/data/dto/account/orders/OrderDto$$serializer;->a:Lcom/vuitton/android/data/dto/account/orders/OrderDto$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_c
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Transition;->INSTANCE:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Transition;

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.android.presentation.screen.onboarding.OnboardingRoutes.Transition"

    invoke-direct {p0, v2, v1, v0}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_d
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$StartNow;->INSTANCE:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$StartNow;

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.android.presentation.screen.onboarding.OnboardingRoutes.StartNow"

    invoke-direct {p0, v2, v1, v0}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_e
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$PrivacyPreCompliance;->INSTANCE:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$PrivacyPreCompliance;

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.android.presentation.screen.onboarding.OnboardingRoutes.PrivacyPreCompliance"

    invoke-direct {p0, v2, v1, v0}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_f
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Privacy;->INSTANCE:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Privacy;

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.android.presentation.screen.onboarding.OnboardingRoutes.Privacy"

    invoke-direct {p0, v2, v1, v0}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_10
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$PiplCbt;->INSTANCE:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$PiplCbt;

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.android.presentation.screen.onboarding.OnboardingRoutes.PiplCbt"

    invoke-direct {p0, v2, v1, v0}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_11
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Notifications;->INSTANCE:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Notifications;

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.android.presentation.screen.onboarding.OnboardingRoutes.Notifications"

    invoke-direct {p0, v2, v1, v0}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_12
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Login;->INSTANCE:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Login;

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.android.presentation.screen.onboarding.OnboardingRoutes.Login"

    invoke-direct {p0, v2, v1, v0}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_13
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Icons;->INSTANCE:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Icons;

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.android.presentation.screen.onboarding.OnboardingRoutes.Icons"

    invoke-direct {p0, v2, v1, v0}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_14
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Geolocation;->INSTANCE:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Geolocation;

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.android.presentation.screen.onboarding.OnboardingRoutes.Geolocation"

    invoke-direct {p0, v2, v1, v0}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_15
    new-instance p0, Lkotlinx/serialization/internal/ObjectSerializer;

    sget-object v1, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Accessibility;->INSTANCE:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes$Accessibility;

    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    const-string v2, "com.vuitton.android.presentation.screen.onboarding.OnboardingRoutes.Accessibility"

    invoke-direct {p0, v2, v1, v0}, Lkotlinx/serialization/internal/ObjectSerializer;-><init>(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/annotation/Annotation;)V

    return-object p0

    :pswitch_16
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_17
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_18
    new-instance p0, Lokhttp3/OkHttpClient;

    invoke-direct {p0}, Lokhttp3/OkHttpClient;-><init>()V

    new-instance v0, Lcoil3/network/okhttp/internal/CallFactoryNetworkClient;

    invoke-direct {v0, p0}, Lcoil3/network/okhttp/internal/CallFactoryNetworkClient;-><init>(Lokhttp3/Call$Factory;)V

    return-object v0

    :pswitch_19
    invoke-static {}, Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;->values()[Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkotlinx/serialization/internal/EnumSerializer;

    const-string v1, "com.vuitton.foundation.model.domain.model.account.notifications.NotificationPreferenceType"

    invoke-direct {v0, v1, p0}, Lkotlinx/serialization/internal/EnumSerializer;-><init>(Ljava/lang/String;[Ljava/lang/Enum;)V

    return-object v0

    :pswitch_1a
    sget-object p0, Lcom/vuitton/android/presentation/notification/NotificationBuilderKt;->a:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    new-instance p0, Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    new-instance v0, Lcom/vuitton/android/domain/usecase/account/accessibility/GetAccessibilityValueUseCase;

    new-instance v1, Lcom/vuitton/android/presentation/notification/NotificationBuilderKt$previewNotificationBuilder$2$1;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Lcom/vuitton/android/domain/usecase/account/accessibility/GetAccessibilityValueUseCase;-><init>(Lcom/vuitton/android/domain/repository/AccessibilityPreferencesRepository;)V

    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;-><init>(Lcom/vuitton/android/domain/usecase/account/accessibility/GetAccessibilityValueUseCase;)V

    return-object p0

    :pswitch_1b
    invoke-static {}, Lcom/vuitton/android/data/dto/pdp/NotSellableReasonDto;->values()[Lcom/vuitton/android/data/dto/pdp/NotSellableReasonDto;

    move-result-object p0

    const-string v0, "web_only"

    const-string v1, "unavailable"

    const-string v2, "not_ecommerce"

    const-string v3, "mandatory_customization"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    filled-new-array {v1, v1, v1, v1}, [[Ljava/lang/annotation/Annotation;

    move-result-object v1

    const-string v2, "com.vuitton.android.data.dto.pdp.NotSellableReasonDto"

    invoke-static {v2, p0, v0, v1}, Lkotlinx/serialization/internal/EnumsKt;->a(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;)Lkotlinx/serialization/internal/EnumSerializer;

    move-result-object p0

    return-object p0

    :pswitch_1c
    sget-object p0, Lcom/dynamicyield/sdk/wrapper/core/models/event/NewsletterSubscriptionEventProperties;->Companion:Lcom/dynamicyield/sdk/wrapper/core/models/event/NewsletterSubscriptionEventProperties$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lcom/dynamicyield/sdk/wrapper/core/models/event/SecondaryIdentifier$$serializer;->a:Lcom/dynamicyield/sdk/wrapper/core/models/event/SecondaryIdentifier$$serializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

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
