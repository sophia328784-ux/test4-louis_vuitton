.class public abstract Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingMapperKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "presentation"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Lcom/vuitton/foundation/model/domain/model/onboarding/OnboardingState;)Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingStateUiModel;
    .locals 1

    sget-object v0, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingMapperKt$WhenMappings;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingStateUiModel;->DONE:Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingStateUiModel;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingStateUiModel;->ICONS:Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingStateUiModel;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingStateUiModel;->NOTIFICATION:Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingStateUiModel;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingStateUiModel;->GEOLOCATION:Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingStateUiModel;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingStateUiModel;->START:Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingStateUiModel;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingStateUiModel;->NOT_STARTED:Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingStateUiModel;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
