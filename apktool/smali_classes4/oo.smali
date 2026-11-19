.class public final synthetic Loo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Loo;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget p0, p0, Loo;->b:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/vuitton/android/data/dto/connectivity/sync/ConnectedObjectsConfigDto;->Companion:Lcom/vuitton/android/data/dto/connectivity/sync/ConnectedObjectsConfigDto$Companion;

    new-instance p0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    invoke-direct {p0, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/vuitton/android/data/dto/distantrepairs/ConfirmAppointmentDtoRequest;->Companion:Lcom/vuitton/android/data/dto/distantrepairs/ConfirmAppointmentDtoRequest$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto;->Companion:Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/vuitton/android/data/dto/pdp/ConfigurationDto;->Companion:Lcom/vuitton/android/data/dto/pdp/ConfigurationDto$Companion;

    sget-object p0, Lcom/vuitton/android/data/dto/pdp/CustomizationTypeDto;->Companion:Lcom/vuitton/android/data/dto/pdp/CustomizationTypeDto$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/pdp/CustomizationTypeDto$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object p0

    return-object p0

    :pswitch_2
    const-string p0, "Unexpected call to default provider"

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->b(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0

    :pswitch_3
    sget-object p0, Landroidx/compose/runtime/tooling/CompositionErrorContextKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    const/4 p0, 0x0

    return-object p0

    :pswitch_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/vuitton/android/presentation/screen/wishlist/components/ComposableSingletons$WishlistScreenKt;->a:Lcom/vuitton/android/presentation/screen/wishlist/components/ComposableSingletons$WishlistScreenKt;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_a
    sget-object p0, Lcom/vuitton/android/presentation/screen/wishlist/components/ComposableSingletons$WishlistProductItemKt;->a:Lcom/vuitton/android/presentation/screen/wishlist/components/ComposableSingletons$WishlistProductItemKt;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/vuitton/android/presentation/screen/wishlist/components/ComposableSingletons$WishlistProductItemKt;->a:Lcom/vuitton/android/presentation/screen/wishlist/components/ComposableSingletons$WishlistProductItemKt;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_c
    sget-object p0, Lcom/vuitton/android/presentation/screen/authentication/welcome/components/ComposableSingletons$WelcomeScreenKt;->a:Lcom/vuitton/android/presentation/screen/authentication/welcome/components/ComposableSingletons$WelcomeScreenKt;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_d
    sget-object p0, Lcom/vuitton/android/presentation/screen/authentication/welcome/components/ComposableSingletons$WelcomeScreenKt;->a:Lcom/vuitton/android/presentation/screen/authentication/welcome/components/ComposableSingletons$WelcomeScreenKt;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_e
    sget-object p0, Lcom/vuitton/android/presentation/screen/authentication/welcome/components/ComposableSingletons$WelcomeScreenKt;->a:Lcom/vuitton/android/presentation/screen/authentication/welcome/components/ComposableSingletons$WelcomeScreenKt;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_f
    sget-object p0, Lcom/vuitton/android/presentation/screen/authentication/welcome/components/ComposableSingletons$WelcomeScreenKt;->a:Lcom/vuitton/android/presentation/screen/authentication/welcome/components/ComposableSingletons$WelcomeScreenKt;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_10
    sget-object p0, Lcom/vuitton/android/presentation/screen/authentication/welcome/components/ComposableSingletons$WelcomeScreenKt;->a:Lcom/vuitton/android/presentation/screen/authentication/welcome/components/ComposableSingletons$WelcomeScreenKt;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_11
    sget-object p0, Lcom/vuitton/android/presentation/screen/authentication/welcome/components/ComposableSingletons$WelcomeScreenKt;->a:Lcom/vuitton/android/presentation/screen/authentication/welcome/components/ComposableSingletons$WelcomeScreenKt;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_12
    sget-object p0, Lcom/vuitton/android/presentation/screen/authentication/welcome/components/ComposableSingletons$WelcomeScreenKt;->a:Lcom/vuitton/android/presentation/screen/authentication/welcome/components/ComposableSingletons$WelcomeScreenKt;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_13
    sget-object p0, Lcom/vuitton/android/presentation/screen/certificates/components/ComposableSingletons$TransferCertificateCardKt;->a:Lcom/vuitton/android/presentation/screen/certificates/components/ComposableSingletons$TransferCertificateCardKt;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_14
    sget-object p0, Lcom/vuitton/android/presentation/screen/thankyou/components/ComposableSingletons$ThankYouScreenKt;->a:Lcom/vuitton/android/presentation/screen/thankyou/components/ComposableSingletons$ThankYouScreenKt;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_15
    sget-object p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/components/ComposableSingletons$TermsAndConditionsComposableKt;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/components/ComposableSingletons$TermsAndConditionsComposableKt;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_16
    sget-object p0, Lcom/vuitton/android/presentation/screen/search/components/ComposableSingletons$SuggestionCarouselComposableKt;->a:Lcom/vuitton/android/presentation/screen/search/components/ComposableSingletons$SuggestionCarouselComposableKt;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_17
    sget-object p0, Lcom/vuitton/android/presentation/screen/search/components/ComposableSingletons$SuggestionCarouselComposableKt;->a:Lcom/vuitton/android/presentation/screen/search/components/ComposableSingletons$SuggestionCarouselComposableKt;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_18
    sget-object p0, Lcom/vuitton/android/presentation/screen/storemode/components/ComposableSingletons$StoreModeExpiredComposableKt;->a:Lcom/vuitton/android/presentation/screen/storemode/components/ComposableSingletons$StoreModeExpiredComposableKt;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_19
    sget-object p0, Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;->a:Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1a
    sget-object p0, Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;->a:Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1b
    sget-object p0, Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;->a:Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1c
    sget-object p0, Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;->a:Lcom/vuitton/android/presentation/screen/spotlight/components/ComposableSingletons$SpotlightScreenKt;

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
