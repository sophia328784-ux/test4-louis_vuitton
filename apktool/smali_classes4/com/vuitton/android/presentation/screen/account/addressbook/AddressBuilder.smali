.class public abstract Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBuilder;",
        "",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Lkotlinx/serialization/json/Json;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/account/addressbook/models/AccountAddressUiModel;)Ljava/lang/String;
    .locals 14

    move-object/from16 v0, p3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_a

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/account/addressbook/models/AccountAddressUiModel;->i:Ljava/lang/String;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/account/addressbook/models/AccountAddressUiModel;->n:Ljava/lang/String;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/account/addressbook/models/AccountAddressUiModel;->o:Ljava/lang/String;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/account/addressbook/models/AccountAddressUiModel;->h:Ljava/lang/String;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/account/addressbook/models/AccountAddressUiModel;->g:Ljava/lang/String;

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/account/addressbook/models/AccountAddressUiModel;->k:Ljava/lang/String;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/account/addressbook/models/AccountAddressUiModel;->m:Ljava/lang/String;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/account/addressbook/models/AccountAddressUiModel;->j:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x0

    if-lez v9, :cond_0

    const/4 v9, 0x1

    goto :goto_0

    :cond_0
    move v9, v10

    :goto_0
    sget-object v11, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode$Companion;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v11, "\n"

    const-string v12, " "

    if-eqz v9, :cond_1

    invoke-static/range {p2 .. p2}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatchExtKt;->d(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Z

    move-result v13

    if-nez v13, :cond_3

    :cond_1
    sget-object v13, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode;->q:Ljava/lang/String;

    if-nez v2, :cond_2

    move v13, v10

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    :goto_1
    if-eqz v13, :cond_5

    :cond_3
    new-instance v0, Ljava/util/StringJoiner;

    invoke-direct {v0, v12}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0, v8}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->b(Ljava/util/StringJoiner;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {p0, p1, v2}, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressHelper;->e(Landroid/content/Context;Lkotlinx/serialization/json/Json;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_4
    invoke-static {v0, v6}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->b(Ljava/util/StringJoiner;Ljava/lang/String;)V

    new-instance p0, Ljava/util/StringJoiner;

    invoke-direct {p0, v12}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {p0, v5}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->b(Ljava/util/StringJoiner;Ljava/lang/String;)V

    invoke-static {p0, v4}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->b(Ljava/util/StringJoiner;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->b(Ljava/util/StringJoiner;Ljava/lang/String;)V

    new-instance p1, Ljava/util/StringJoiner;

    invoke-direct {p1, v11}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v0}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->b(Ljava/util/StringJoiner;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p0}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->b(Ljava/util/StringJoiner;Ljava/lang/String;)V

    invoke-static {p1, v3}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->b(Ljava/util/StringJoiner;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_5
    if-eqz v9, :cond_6

    invoke-static/range {p2 .. p2}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatchExtKt;->i(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Z

    move-result p0

    if-nez p0, :cond_8

    :cond_6
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode;->B:Ljava/lang/String;

    if-nez v2, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    :goto_2
    if-eqz v10, :cond_9

    :cond_8
    new-instance p0, Ljava/util/StringJoiner;

    invoke-direct {p0, v12}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {p0, v6}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->b(Ljava/util/StringJoiner;Ljava/lang/String;)V

    invoke-static {p0, v7}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->b(Ljava/util/StringJoiner;Ljava/lang/String;)V

    new-instance p1, Ljava/util/StringJoiner;

    invoke-direct {p1, v12}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {p1, v5}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->b(Ljava/util/StringJoiner;Ljava/lang/String;)V

    invoke-static {p1, v4}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->b(Ljava/util/StringJoiner;Ljava/lang/String;)V

    new-instance v0, Ljava/util/StringJoiner;

    invoke-direct {v0, v12}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0, v8}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->b(Ljava/util/StringJoiner;Ljava/lang/String;)V

    new-instance v1, Ljava/util/StringJoiner;

    invoke-direct {v1, v11}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v1, v3}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->b(Ljava/util/StringJoiner;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->b(Ljava/util/StringJoiner;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->b(Ljava/util/StringJoiner;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->b(Ljava/util/StringJoiner;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_9
    new-instance p0, Ljava/util/StringJoiner;

    invoke-direct {p0, v12}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {p0, v5}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->b(Ljava/util/StringJoiner;Ljava/lang/String;)V

    invoke-static {p0, v4}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->b(Ljava/util/StringJoiner;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->b(Ljava/util/StringJoiner;Ljava/lang/String;)V

    new-instance p1, Ljava/util/StringJoiner;

    invoke-direct {p1, v12}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {p1, v7}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->b(Ljava/util/StringJoiner;Ljava/lang/String;)V

    invoke-static {p1, v6}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->b(Ljava/util/StringJoiner;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/account/addressbook/models/AccountAddressUiModel;->l:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->b(Ljava/util/StringJoiner;Ljava/lang/String;)V

    invoke-static {p1, v8}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->b(Ljava/util/StringJoiner;Ljava/lang/String;)V

    new-instance v0, Ljava/util/StringJoiner;

    invoke-direct {v0, v11}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->b(Ljava/util/StringJoiner;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->b(Ljava/util/StringJoiner;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->b(Ljava/util/StringJoiner;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :cond_a
    const-string p0, ""

    return-object p0
.end method
