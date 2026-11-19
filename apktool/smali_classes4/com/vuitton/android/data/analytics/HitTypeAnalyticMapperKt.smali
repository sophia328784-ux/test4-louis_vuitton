.class public abstract Lcom/vuitton/android/data/analytics/HitTypeAnalyticMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "data"
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
.method public static final a(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/analytics/HitType$AddToCart;->a:Lcom/vuitton/foundation/model/domain/model/analytics/HitType$AddToCart;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "add_to_cart"

    return-object p0

    :cond_0
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/analytics/HitType$AddToWishlist;->a:Lcom/vuitton/foundation/model/domain/model/analytics/HitType$AddToWishlist;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "add_to_wishlist"

    return-object p0

    :cond_1
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/analytics/HitType$BeginCheckout;->a:Lcom/vuitton/foundation/model/domain/model/analytics/HitType$BeginCheckout;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "begin_checkout"

    return-object p0

    :cond_2
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Purchase;->a:Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Purchase;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "purchase"

    return-object p0

    :cond_3
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Screen;->a:Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Screen;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "screen_view"

    return-object p0

    :cond_4
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/analytics/HitType$SelectItem;->a:Lcom/vuitton/foundation/model/domain/model/analytics/HitType$SelectItem;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "select_item"

    return-object p0

    :cond_5
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/analytics/HitType$ViewItem;->a:Lcom/vuitton/foundation/model/domain/model/analytics/HitType$ViewItem;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p0, "view_item"

    return-object p0

    :cond_6
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/analytics/HitType$ViewItemList;->a:Lcom/vuitton/foundation/model/domain/model/analytics/HitType$ViewItemList;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p0, "view_item_list"

    return-object p0

    :cond_7
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/analytics/HitType$ViewSearchResults;->a:Lcom/vuitton/foundation/model/domain/model/analytics/HitType$ViewSearchResults;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p0, "view_search_results"

    return-object p0

    :cond_8
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/analytics/HitType$ABTest;->a:Lcom/vuitton/foundation/model/domain/model/analytics/HitType$ABTest;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, "abTest"

    return-object p0

    :cond_9
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/analytics/HitType$ActivateStore;->a:Lcom/vuitton/foundation/model/domain/model/analytics/HitType$ActivateStore;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p0, "activate_store"

    return-object p0

    :cond_a
    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Anomaly;

    if-eqz v0, :cond_b

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Anomaly;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Anomaly;->a:Ljava/lang/String;

    return-object p0

    :cond_b
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/analytics/HitType$CloseStore;->a:Lcom/vuitton/foundation/model/domain/model/analytics/HitType$CloseStore;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p0, "close_store"

    return-object p0

    :cond_c
    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Custom;

    if-eqz v0, :cond_d

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Custom;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Custom;->a:Ljava/lang/String;

    return-object p0

    :cond_d
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Interaction;->a:Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Interaction;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string p0, "interaction"

    return-object p0

    :cond_e
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Scroll;->a:Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Scroll;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string p0, "scroll"

    return-object p0

    :cond_f
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/analytics/HitType$LegalConsents;->a:Lcom/vuitton/foundation/model/domain/model/analytics/HitType$LegalConsents;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string p0, "legal_consents"

    return-object p0

    :cond_10
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/analytics/HitType$LiveChat;->a:Lcom/vuitton/foundation/model/domain/model/analytics/HitType$LiveChat;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string p0, "live_chat"

    return-object p0

    :cond_11
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Login;->a:Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Login;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string p0, "login"

    return-object p0

    :cond_12
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/analytics/HitType$PasswordResetSuccess;->a:Lcom/vuitton/foundation/model/domain/model/analytics/HitType$PasswordResetSuccess;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string p0, "password_reset"

    return-object p0

    :cond_13
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/analytics/HitType$RemoveFromWishlist;->a:Lcom/vuitton/foundation/model/domain/model/analytics/HitType$RemoveFromWishlist;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string p0, "delete_from_wishlist"

    return-object p0

    :cond_14
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Register;->a:Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Register;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string p0, "sign_up"

    return-object p0

    :cond_15
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Vto;->a:Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Vto;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string p0, "vto_cta_click"

    return-object p0

    :cond_16
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/analytics/HitType$VtoLaunch;->a:Lcom/vuitton/foundation/model/domain/model/analytics/HitType$VtoLaunch;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17

    const-string p0, "vto_launch"

    return-object p0

    :cond_17
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0
.end method
