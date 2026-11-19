.class public abstract Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModelKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModelKt$WhenMappings;
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
.method public static final a(Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModelKt$WhenMappings;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "google_sign_up"

    return-object p0

    :cond_0
    const-string p0, "kakao_sign_up"

    return-object p0

    :cond_1
    const-string p0, "line_sign_up"

    return-object p0
.end method

.method public static final b(Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;
    .locals 20

    move-object/from16 v0, p0

    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterClickEvent;

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sget-object v7, Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Interaction;->a:Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Interaction;

    const-string v6, "social_sign_up"

    const-string v8, ""

    const/4 v9, 0x0

    if-eqz v1, :cond_6

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterClickEvent;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterClickEvent;->c:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

    sget-object v10, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModelKt$WhenMappings;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v10, v1

    if-eq v1, v5, :cond_1

    if-eq v1, v4, :cond_0

    const-string v1, "continue_with_google_cta"

    goto :goto_0

    :cond_0
    const-string v1, "continue_with_kakao_cta"

    goto :goto_0

    :cond_1
    const-string v1, "continue_with_line_cta"

    :goto_0
    new-instance v10, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ChannelId;

    invoke-direct {v10, v6}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ChannelId;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterClickEvent;->a:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    if-eqz v11, :cond_2

    invoke-virtual {v11}, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->a()Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    :cond_2
    move-object v11, v9

    :goto_1
    if-nez v11, :cond_3

    move-object v11, v8

    :cond_3
    invoke-direct {v6, v11}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;-><init>(Ljava/lang/String;)V

    new-instance v11, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$EntryPoint;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterClickEvent;->b:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;->a()Ljava/lang/String;

    move-result-object v9

    :cond_4
    if-nez v9, :cond_5

    goto :goto_2

    :cond_5
    move-object v8, v9

    :goto_2
    invoke-direct {v11, v8}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$EntryPoint;-><init>(Ljava/lang/String;)V

    new-array v0, v3, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v10, v0, v2

    aput-object v6, v0, v5

    aput-object v11, v0, v4

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const-string v11, "click"

    const-string v12, "mylv_native_authentification"

    const-string v8, "account_creation"

    const-string v10, "mylv_native"

    move-object v9, v1

    invoke-direct/range {v6 .. v13}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v6

    :cond_6
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterCloseEvent;

    if-eqz v1, :cond_b

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ChannelId;

    invoke-direct {v1, v6}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ChannelId;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterCloseEvent;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterCloseEvent;->a:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    if-eqz v10, :cond_7

    invoke-virtual {v10}, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->a()Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    :cond_7
    move-object v10, v9

    :goto_3
    if-nez v10, :cond_8

    move-object v10, v8

    :cond_8
    invoke-direct {v6, v10}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;-><init>(Ljava/lang/String;)V

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$EntryPoint;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterCloseEvent;->b:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;->a()Ljava/lang/String;

    move-result-object v9

    :cond_9
    if-nez v9, :cond_a

    goto :goto_4

    :cond_a
    move-object v8, v9

    :goto_4
    invoke-direct {v10, v8}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$EntryPoint;-><init>(Ljava/lang/String;)V

    new-array v0, v3, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v2

    aput-object v6, v0, v5

    aput-object v10, v0, v4

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const-string v11, "click"

    const-string v12, "mylv_native_authentification"

    const-string v8, "account_creation"

    const-string v9, "close_popin"

    const-string v10, "mylv_native"

    invoke-direct/range {v6 .. v13}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v6

    :cond_b
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterConfirmEvent;

    const/4 v10, 0x4

    if-eqz v1, :cond_12

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterConfirmEvent;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterConfirmEvent;->c:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

    sget-object v11, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModelKt$WhenMappings;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v11, v11, v12

    if-eq v11, v5, :cond_d

    if-eq v11, v4, :cond_c

    const-string v11, "confirm_google_sign_up_cta"

    goto :goto_5

    :cond_c
    const-string v11, "confirm_kakao_sign_up_cta"

    goto :goto_5

    :cond_d
    const-string v11, "confirm_line_sign_up_cta"

    :goto_5
    new-instance v12, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ChannelId;

    invoke-direct {v12, v6}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ChannelId;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModelKt;->a(Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterConfirmEvent;->a:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    if-eqz v13, :cond_e

    invoke-virtual {v13}, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->a()Ljava/lang/String;

    move-result-object v13

    goto :goto_6

    :cond_e
    move-object v13, v9

    :goto_6
    if-nez v13, :cond_f

    move-object v13, v8

    :cond_f
    invoke-direct {v1, v13}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;-><init>(Ljava/lang/String;)V

    new-instance v13, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$EntryPoint;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterConfirmEvent;->b:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;->a()Ljava/lang/String;

    move-result-object v9

    :cond_10
    if-nez v9, :cond_11

    goto :goto_7

    :cond_11
    move-object v8, v9

    :goto_7
    invoke-direct {v13, v8}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$EntryPoint;-><init>(Ljava/lang/String;)V

    new-array v0, v10, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v12, v0, v2

    aput-object v6, v0, v5

    aput-object v1, v0, v4

    aput-object v13, v0, v3

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    move-object v9, v11

    const-string v11, "click"

    const-string v12, "mylv_native_authentification"

    const-string v8, "account_creation"

    const-string v10, "mylv_native"

    invoke-direct/range {v6 .. v13}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v6

    :cond_12
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterPrivacyCheckBoxEvent;

    if-eqz v1, :cond_18

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterPrivacyCheckBoxEvent;

    iget-boolean v1, v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterPrivacyCheckBoxEvent;->c:Z

    if-eqz v1, :cond_13

    const-string v1, "untick_checkbox"

    goto :goto_8

    :cond_13
    const-string v1, "tick_checkbox"

    :goto_8
    new-instance v11, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ChannelId;

    invoke-direct {v11, v6}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ChannelId;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterPrivacyCheckBoxEvent;->d:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

    invoke-static {v12}, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModelKt;->a(Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v6, v12}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-instance v12, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterPrivacyCheckBoxEvent;->a:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    if-eqz v13, :cond_14

    invoke-virtual {v13}, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->a()Ljava/lang/String;

    move-result-object v13

    goto :goto_9

    :cond_14
    move-object v13, v9

    :goto_9
    if-nez v13, :cond_15

    move-object v13, v8

    :cond_15
    invoke-direct {v12, v13}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;-><init>(Ljava/lang/String;)V

    new-instance v13, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$EntryPoint;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterPrivacyCheckBoxEvent;->b:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;->a()Ljava/lang/String;

    move-result-object v9

    :cond_16
    if-nez v9, :cond_17

    goto :goto_a

    :cond_17
    move-object v8, v9

    :goto_a
    invoke-direct {v13, v8}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$EntryPoint;-><init>(Ljava/lang/String;)V

    new-array v0, v10, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v11, v0, v2

    aput-object v6, v0, v5

    aput-object v12, v0, v4

    aput-object v13, v0, v3

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const-string v11, "click"

    const-string v12, "mylv_native_authentification"

    const-string v8, "account_creation"

    const-string v10, "mylv_native"

    move-object v9, v1

    invoke-direct/range {v6 .. v13}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v6

    :cond_18
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterPrivacyLinkEvent;

    if-eqz v1, :cond_1d

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ChannelId;

    invoke-direct {v1, v6}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ChannelId;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterPrivacyLinkEvent;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterPrivacyLinkEvent;->c:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

    invoke-static {v11}, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModelKt;->a(Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-instance v11, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterPrivacyLinkEvent;->a:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    if-eqz v12, :cond_19

    invoke-virtual {v12}, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->a()Ljava/lang/String;

    move-result-object v12

    goto :goto_b

    :cond_19
    move-object v12, v9

    :goto_b
    if-nez v12, :cond_1a

    move-object v12, v8

    :cond_1a
    invoke-direct {v11, v12}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;-><init>(Ljava/lang/String;)V

    new-instance v12, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$EntryPoint;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterPrivacyLinkEvent;->b:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;->a()Ljava/lang/String;

    move-result-object v9

    :cond_1b
    if-nez v9, :cond_1c

    goto :goto_c

    :cond_1c
    move-object v8, v9

    :goto_c
    invoke-direct {v12, v8}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$EntryPoint;-><init>(Ljava/lang/String;)V

    new-array v0, v10, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v2

    aput-object v6, v0, v5

    aput-object v11, v0, v4

    aput-object v12, v0, v3

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const-string v11, "click"

    const-string v12, "mylv_native_authentification"

    const-string v8, "account_creation"

    const-string v9, "privacy_policy"

    const-string v10, "mylv_native"

    invoke-direct/range {v6 .. v13}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v6

    :cond_1d
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterCloseProfileEvent;

    if-eqz v1, :cond_24

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterCloseProfileEvent;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterCloseProfileEvent;->c:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

    sget-object v11, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModelKt$WhenMappings;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v11, v11, v12

    if-eq v11, v5, :cond_1f

    if-eq v11, v4, :cond_1e

    const-string v11, "close_google_sign_up"

    goto :goto_d

    :cond_1e
    const-string v11, "close_kakao_sign_up"

    goto :goto_d

    :cond_1f
    const-string v11, "close_line_sign_up"

    :goto_d
    new-instance v12, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ChannelId;

    invoke-direct {v12, v6}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ChannelId;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModelKt;->a(Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterCloseProfileEvent;->a:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    if-eqz v13, :cond_20

    invoke-virtual {v13}, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->a()Ljava/lang/String;

    move-result-object v13

    goto :goto_e

    :cond_20
    move-object v13, v9

    :goto_e
    if-nez v13, :cond_21

    move-object v13, v8

    :cond_21
    invoke-direct {v1, v13}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;-><init>(Ljava/lang/String;)V

    new-instance v13, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$EntryPoint;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterCloseProfileEvent;->b:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;->a()Ljava/lang/String;

    move-result-object v9

    :cond_22
    if-nez v9, :cond_23

    goto :goto_f

    :cond_23
    move-object v8, v9

    :goto_f
    invoke-direct {v13, v8}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$EntryPoint;-><init>(Ljava/lang/String;)V

    new-array v0, v10, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v12, v0, v2

    aput-object v6, v0, v5

    aput-object v1, v0, v4

    aput-object v13, v0, v3

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    move-object v9, v11

    const-string v11, "click"

    const-string v12, "mylv_native_authentification"

    const-string v8, "account_creation"

    const-string v10, "mylv_native"

    invoke-direct/range {v6 .. v13}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v6

    :cond_24
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterSuccessEvent;

    if-eqz v1, :cond_29

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ChannelId;

    invoke-direct {v1, v6}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ChannelId;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterSuccessEvent;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterSuccessEvent;->c:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

    invoke-static {v7}, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModelKt;->a(Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterSuccessEvent;->a:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    if-eqz v11, :cond_25

    invoke-virtual {v11}, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->a()Ljava/lang/String;

    move-result-object v11

    goto :goto_10

    :cond_25
    move-object v11, v9

    :goto_10
    if-nez v11, :cond_26

    move-object v11, v8

    :cond_26
    invoke-direct {v7, v11}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;-><init>(Ljava/lang/String;)V

    new-instance v11, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$EntryPoint;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterSuccessEvent;->b:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;->a()Ljava/lang/String;

    move-result-object v9

    :cond_27
    if-nez v9, :cond_28

    goto :goto_11

    :cond_28
    move-object v8, v9

    :goto_11
    invoke-direct {v11, v8}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$EntryPoint;-><init>(Ljava/lang/String;)V

    new-array v0, v10, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v2

    aput-object v6, v0, v5

    aput-object v7, v0, v4

    aput-object v11, v0, v3

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    new-instance v12, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const-string v17, "create_an_account"

    const-string v18, "mylv_native_authentification"

    sget-object v13, Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Register;->a:Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Register;

    const-string v14, "account_creation"

    const-string v15, "registration_successful"

    const-string v16, "mylv_native"

    invoke-direct/range {v12 .. v19}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v12

    :cond_29
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterFailureEvent;

    if-eqz v1, :cond_2e

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ChannelId;

    invoke-direct {v1, v6}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ChannelId;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterFailureEvent;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterFailureEvent;->c:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

    invoke-static {v11}, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModelKt;->a(Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-instance v11, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterFailureEvent;->a:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    if-eqz v12, :cond_2a

    invoke-virtual {v12}, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->a()Ljava/lang/String;

    move-result-object v12

    goto :goto_12

    :cond_2a
    move-object v12, v9

    :goto_12
    if-nez v12, :cond_2b

    move-object v12, v8

    :cond_2b
    invoke-direct {v11, v12}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;-><init>(Ljava/lang/String;)V

    new-instance v12, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$EntryPoint;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterFailureEvent;->b:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;->a()Ljava/lang/String;

    move-result-object v9

    :cond_2c
    if-nez v9, :cond_2d

    goto :goto_13

    :cond_2d
    move-object v8, v9

    :goto_13
    invoke-direct {v12, v8}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$EntryPoint;-><init>(Ljava/lang/String;)V

    new-array v0, v10, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v2

    aput-object v6, v0, v5

    aput-object v11, v0, v4

    aput-object v12, v0, v3

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const-string v11, "event"

    const-string v12, "mylv_native_authentification"

    const-string v8, "account_creation"

    const-string v9, "registration_failed"

    const-string v10, "mylv_native"

    invoke-direct/range {v6 .. v13}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v6

    :cond_2e
    invoke-static {}, Lv40;->g()V

    return-object v9
.end method
