.class public abstract Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModelKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
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
.method public static final a(Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;
    .locals 19

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$NotLoggedScreen;->a:Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$NotLoggedScreen;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v8, 0x11

    const/4 v9, 0x0

    const/4 v3, 0x0

    const-string v4, "LVPass/MyLV/Identification"

    const-string v5, "mylv/identification"

    const-string v6, "connexion_module"

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_0
    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$RegisterScreen;->a:Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$RegisterScreen;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v8, 0x11

    const/4 v9, 0x0

    const/4 v3, 0x0

    const-string v4, "LVPass/MyLV/Identification/CreateAnAccount"

    const-string v5, "mylv/account_creation"

    const-string v6, "account_creation"

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_1
    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$SignInScreen;->a:Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$SignInScreen;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v8, 0x11

    const/4 v9, 0x0

    const/4 v3, 0x0

    const-string v4, "LVPass/MyLV/Identification/Login"

    const-string v5, "mylv/identification"

    const-string v6, "connexion_module"

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_2
    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$OsaAuthenticationScreen;->a:Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$OsaAuthenticationScreen;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v8, 0x11

    const/4 v9, 0x0

    const/4 v3, 0x0

    const-string v4, "LVPass/Authentication"

    const-string v5, "LVPass/Authentication"

    const-string v6, "OSA"

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_3
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$KisaConsentsScreen;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v5, ""

    const/4 v6, 0x0

    if-eqz v1, :cond_6

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$KisaConsentsScreen;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$KisaConsentsScreen;->a:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->a()Ljava/lang/String;

    move-result-object v6

    :cond_4
    if-nez v6, :cond_5

    goto :goto_0

    :cond_5
    move-object v5, v6

    :goto_0
    invoke-direct {v1, v5}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$EntryPoint;

    sget-object v5, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;->SIGN_UP:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    invoke-virtual {v5}, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;->a()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$EntryPoint;-><init>(Ljava/lang/String;)V

    new-array v4, v4, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v4, v3

    aput-object v0, v4, v2

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v8, 0x0

    const-string v9, "account_creation_kisa_consents"

    const-string v10, "account_creation_kisa_consents"

    const-string v11, "mylv_native_authentification"

    invoke-direct/range {v7 .. v14}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7

    :cond_6
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$RegisterClickEvent;

    const-string v7, "OSA"

    if-eqz v1, :cond_8

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$RegisterClickEvent;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$RegisterClickEvent;->a:Z

    if-eqz v0, :cond_7

    invoke-static {v7}, Lo60;->t(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_1
    move-object v15, v0

    goto :goto_2

    :cond_7
    sget-object v0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    goto :goto_1

    :goto_2
    const/16 v16, 0x21

    const/16 v17, 0x0

    const/4 v9, 0x0

    const-string v10, "LVPass/MyLV/Identification"

    const-string v11, "CreateAnAccount"

    const-string v13, "navigation"

    const/4 v14, 0x0

    move-object/from16 v12, p1

    invoke-direct/range {v8 .. v17}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v8

    :cond_8
    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$OpenConnectivityFromWelcomePageEvent;->a:Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$OpenConnectivityFromWelcomePageEvent;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v16, 0x61

    const/16 v17, 0x0

    const/4 v9, 0x0

    const-string v10, "LVPass/MyLV/Identification"

    const-string v11, "connected_objects"

    const-string v12, "MyLV"

    const-string v13, "navigation"

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v8 .. v17}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v8

    :cond_9
    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$RegistrationFailedEvent;->a:Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$RegistrationFailedEvent;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v17, 0x61

    const/16 v18, 0x0

    const/4 v10, 0x0

    const-string v11, "LVPass/MyLV/Identification/CreateAnAccount"

    const-string v12, "Registration_Failed"

    const-string v14, "response"

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v13, p1

    invoke-direct/range {v9 .. v18}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9

    :cond_a
    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$RegistrationSuccessfulEvent;->a:Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$RegistrationSuccessfulEvent;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v17, 0x61

    const/16 v18, 0x0

    const/4 v10, 0x0

    const-string v11, "LVPass/MyLV/Identification/CreateAnAccount"

    const-string v12, "Registration_Successful"

    const-string v14, "response"

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v13, p1

    invoke-direct/range {v9 .. v18}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9

    :cond_b
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$LoginInClickEvent;

    if-eqz v1, :cond_d

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$LoginInClickEvent;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$LoginInClickEvent;->a:Z

    if-eqz v0, :cond_c

    invoke-static {v7}, Lo60;->t(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_3
    move-object/from16 v16, v0

    goto :goto_4

    :cond_c
    sget-object v0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    goto :goto_3

    :goto_4
    const/16 v17, 0x21

    const/16 v18, 0x0

    const/4 v10, 0x0

    const-string v11, "LVPass/MyLV/Identification"

    const-string v12, "Login"

    const-string v14, "navigation"

    const/4 v15, 0x0

    move-object/from16 v13, p1

    invoke-direct/range {v9 .. v18}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9

    :cond_d
    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$SignInFailedEvent;->a:Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$SignInFailedEvent;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v17, 0x61

    const/16 v18, 0x0

    const/4 v10, 0x0

    const-string v11, "LVPass/MyLV/Identification/Login"

    const-string v12, "Login_Failed"

    const-string v14, "response"

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v13, p1

    invoke-direct/range {v9 .. v18}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9

    :cond_e
    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$SignInSuccessfulEvent;->a:Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$SignInSuccessfulEvent;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v17, 0x61

    const/16 v18, 0x0

    const/4 v10, 0x0

    const-string v11, "LVPass/MyLV/Identification/Login"

    const-string v12, "Login_Successful"

    const-string v14, "response"

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v13, p1

    invoke-direct/range {v9 .. v18}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9

    :cond_f
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$ContinueAsGuestClickedEvent;

    if-eqz v1, :cond_11

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$ContinueAsGuestClickedEvent;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$ContinueAsGuestClickedEvent;->a:Z

    if-eqz v0, :cond_10

    invoke-static {v7}, Lo60;->t(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_5
    move-object/from16 v16, v0

    goto :goto_6

    :cond_10
    sget-object v0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    goto :goto_5

    :goto_6
    const/16 v17, 0x21

    const/16 v18, 0x0

    const/4 v10, 0x0

    const-string v11, "LVPass/MyLV/Identification"

    const-string v12, "guest"

    const-string v14, "navigation"

    const/4 v15, 0x0

    move-object/from16 v13, p1

    invoke-direct/range {v9 .. v18}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9

    :cond_11
    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$ManageSettingsClickedEvent;->a:Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$ManageSettingsClickedEvent;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v17, 0x61

    const/16 v18, 0x0

    const/4 v10, 0x0

    const-string v11, "LVPass/MyLV/Identification"

    const-string v12, "manage_settings"

    const-string v14, "navigation"

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v13, p1

    invoke-direct/range {v9 .. v18}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9

    :cond_12
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$OnConfirmKisaConsentsEvent;

    if-eqz v1, :cond_15

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    const-string v7, "kisa_consent_step"

    invoke-direct {v1, v7}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$OnConfirmKisaConsentsEvent;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/authentication/models/AuthenticationTrackingUiModel$OnConfirmKisaConsentsEvent;->a:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;->a()Ljava/lang/String;

    move-result-object v6

    :cond_13
    if-nez v6, :cond_14

    goto :goto_7

    :cond_14
    move-object v5, v6

    :goto_7
    invoke-direct {v7, v5}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$EntryPoint;

    sget-object v5, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;->SIGN_UP:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    invoke-virtual {v5}, Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;->a()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$EntryPoint;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v5, v3

    aput-object v7, v5, v2

    aput-object v0, v5, v4

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const-string v13, "click"

    const-string v14, "mylv_native_authentification"

    sget-object v9, Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Interaction;->a:Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Interaction;

    const-string v10, "account_creation_kisa_consents"

    const-string v11, "consent_confirm"

    const-string v12, "mylv_native"

    invoke-direct/range {v8 .. v15}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v8

    :cond_15
    invoke-static {}, Lv40;->g()V

    return-object v6
.end method
