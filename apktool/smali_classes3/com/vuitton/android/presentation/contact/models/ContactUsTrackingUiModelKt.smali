.class public abstract Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModelKt;
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
.method public static final a(Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;
    .locals 15

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$ContactUsScreen;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    check-cast p0, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$ContactUsScreen;

    iget-boolean v5, p0, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$ContactUsScreen;->a:Z

    if-eqz v5, :cond_0

    const-string v5, "chat_enabled"

    goto :goto_0

    :cond_0
    const-string v5, "chat_disabled"

    :goto_0
    invoke-direct {v0, v5}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;

    iget-object p0, p0, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$ContactUsScreen;->b:Ljava/lang/String;

    invoke-direct {v5, p0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;-><init>(Ljava/lang/String;)V

    new-array p0, v3, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v0, p0, v2

    aput-object v5, p0, v1

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v5, 0x0

    const-string v6, "contact_us"

    const-string v7, "contact_us"

    const-string v8, "contact_us"

    invoke-direct/range {v4 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4

    :cond_1
    instance-of v0, p0, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$PowerfrontScreen;

    if-eqz v0, :cond_2

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    const/16 v10, 0x11

    const/4 v11, 0x0

    const/4 v5, 0x0

    const-string v6, "powerfront_chat"

    const-string v7, "powerfront_chat"

    const-string v8, "powerfront_chat"

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4

    :cond_2
    instance-of v0, p0, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$OnViewMoreClickEvent;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;

    check-cast p0, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$OnViewMoreClickEvent;

    iget-object p0, p0, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$OnViewMoreClickEvent;->a:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v9, 0x21

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-string v3, "contact_us"

    const-string v4, "click_view_more"

    const-string v5, "contact_us"

    const-string v6, "click"

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_3
    instance-of v0, p0, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$OnIconClickEvent;

    const-string v4, "open_chat"

    if-eqz v0, :cond_6

    check-cast p0, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$OnIconClickEvent;

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$OnIconClickEvent;->a:Z

    iget-object v7, p0, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$OnIconClickEvent;->b:Ljava/lang/String;

    if-eqz v0, :cond_4

    :goto_1
    move-object v8, v4

    goto :goto_2

    :cond_4
    const-string v4, "open_contact_us_bottom"

    goto :goto_1

    :goto_2
    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;

    iget-object p0, p0, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$OnIconClickEvent;->c:Ljava/lang/String;

    invoke-direct {v4, p0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;-><init>(Ljava/lang/String;)V

    new-instance p0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    if-eqz v0, :cond_5

    const-string v0, "with_notif_message"

    goto :goto_3

    :cond_5
    const-string v0, "without_notif_message"

    :goto_3
    invoke-direct {p0, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-array v0, v3, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v4, v0, v2

    aput-object p0, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v13, 0x21

    const/4 v14, 0x0

    const/4 v6, 0x0

    const-string v9, "contact_us"

    const-string v10, "click"

    const/4 v11, 0x0

    invoke-direct/range {v5 .. v14}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v5

    :cond_6
    instance-of v0, p0, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$OnContactMethodClickEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    check-cast p0, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$OnContactMethodClickEvent;

    iget-object v0, p0, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$OnContactMethodClickEvent;->a:Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod;

    instance-of v2, v0, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$Chat;

    if-eqz v2, :cond_7

    :goto_4
    move-object v8, v4

    goto :goto_6

    :cond_7
    instance-of v2, v0, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$Sms;

    if-eqz v2, :cond_8

    const-string v4, "open_sms"

    goto :goto_4

    :cond_8
    instance-of v2, v0, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$PhoneCall;

    if-eqz v2, :cond_9

    const-string v4, "open_call"

    goto :goto_4

    :cond_9
    instance-of v2, v0, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$EmailForm;

    if-nez v2, :cond_d

    instance-of v2, v0, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$EmailNative;

    if-eqz v2, :cond_a

    goto :goto_5

    :cond_a
    instance-of v2, v0, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$WhatsApp;

    if-eqz v2, :cond_b

    const-string v4, "open_whatsapp"

    goto :goto_4

    :cond_b
    instance-of v0, v0, Lcom/vuitton/android/presentation/contact/compose/ContactUsMethod$KakaoTalk;

    if-eqz v0, :cond_c

    const-string v4, "open_kakaotalk"

    goto :goto_4

    :cond_c
    invoke-static {}, Lv40;->g()V

    return-object v1

    :cond_d
    :goto_5
    const-string v4, "open_email"

    goto :goto_4

    :goto_6
    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;

    iget-object p0, p0, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$OnContactMethodClickEvent;->b:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v13, 0x21

    const/4 v14, 0x0

    const/4 v6, 0x0

    const-string v7, "contact_us"

    const-string v9, "contact_us"

    const-string v10, "click"

    const/4 v11, 0x0

    invoke-direct/range {v5 .. v14}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v5

    :cond_e
    instance-of v0, p0, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$OnPowerfrontCloseEvent;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/analytics/HitType$LiveChat;->a:Lcom/vuitton/foundation/model/domain/model/analytics/HitType$LiveChat;

    if-eqz v0, :cond_f

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;

    check-cast p0, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$OnPowerfrontCloseEvent;

    iget-object p0, p0, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$OnPowerfrontCloseEvent;->a:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v10, 0x20

    const/4 v11, 0x0

    const-string v4, "powerfront_chat"

    const-string v5, "close_chat"

    const-string v6, "powerfront"

    const-string v7, "click"

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_f
    instance-of v0, p0, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$OnPowerfrontMinimiseEvent;

    if-eqz v0, :cond_10

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;

    check-cast p0, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$OnPowerfrontMinimiseEvent;

    iget-object p0, p0, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$OnPowerfrontMinimiseEvent;->a:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v10, 0x20

    const/4 v11, 0x0

    const-string v4, "powerfront_chat"

    const-string v5, "minimise_chat"

    const-string v6, "powerfront"

    const-string v7, "click"

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_10
    instance-of v0, p0, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$OnAppLinkClickEvent;

    if-eqz v0, :cond_11

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    check-cast p0, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$OnAppLinkClickEvent;

    iget-object p0, p0, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$OnAppLinkClickEvent;->a:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v10, 0x20

    const/4 v11, 0x0

    const-string v4, "powerfront_chat"

    const-string v5, "open_app_link"

    const-string v6, "powerfront"

    const-string v7, "click"

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_11
    instance-of v0, p0, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$OnPowerfrontAcceptConsentEvent;

    if-eqz v0, :cond_12

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;

    check-cast p0, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$OnPowerfrontAcceptConsentEvent;

    iget-object p0, p0, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$OnPowerfrontAcceptConsentEvent;->a:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Origin;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v10, 0x20

    const/4 v11, 0x0

    const-string v4, "contact_us"

    const-string v5, "accept_consent"

    const-string v6, "powerfront"

    const-string v7, "click"

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_12
    instance-of p0, p0, Lcom/vuitton/android/presentation/contact/models/ContactUsTrackingUiModel$OnPowerfrontNotificationClickEvent;

    if-eqz p0, :cond_13

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    const/16 v10, 0x60

    const/4 v11, 0x0

    const-string v4, "powerfront_chat"

    const-string v5, "open_notification_toast"

    const-string v6, "powerfront"

    const-string v7, "click"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    :cond_13
    invoke-static {}, Lv40;->g()V

    return-object v1
.end method
