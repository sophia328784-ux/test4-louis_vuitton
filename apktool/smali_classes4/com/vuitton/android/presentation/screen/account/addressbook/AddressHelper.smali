.class public final Lcom/vuitton/android/presentation/screen/account/addressbook/AddressHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/account/addressbook/AddressHelper;",
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
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p0, p1, p2}, Ltr;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static b(Landroid/content/Context;Lkotlinx/serialization/json/Json;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f130033

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/vuitton/android/core/extensions/SerializationExtKt;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/profile/Country;->Companion:Lcom/vuitton/foundation/model/domain/model/profile/Country$Companion;

    invoke-virtual {v1}, Lcom/vuitton/foundation/model/domain/model/profile/Country$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    invoke-virtual {p1, v0, p0}, Lkotlinx/serialization/json/Json;->b(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/profile/Country;

    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/profile/Country;->a:Ljava/lang/String;

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/profile/Country;

    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/vuitton/foundation/model/domain/model/profile/Country;->b:Ljava/lang/String;

    :cond_2
    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    return-object v0

    :cond_4
    :goto_1
    const-string p0, ""

    return-object p0
.end method

.method public static c(Landroid/content/Context;Lkotlinx/serialization/json/Json;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 17

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p13

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v8, v11}, Lcj;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v12, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode$Companion;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode$Companion;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static/range {p2 .. p2}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatchExtKt;->d(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Z

    move-result v13

    const-string v14, ""

    const-string v15, "\n"

    move/from16 v16, v13

    const-string v13, " "

    if-nez v16, :cond_1

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode;->q:Ljava/lang/String;

    const/16 v16, 0x0

    if-nez v12, :cond_0

    move/from16 v0, v16

    goto :goto_0

    :cond_0
    invoke-virtual {v12, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    :cond_1
    move-object/from16 v12, p0

    goto/16 :goto_8

    :cond_2
    invoke-static/range {p2 .. p2}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatchExtKt;->i(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode;->B:Ljava/lang/String;

    if-nez v12, :cond_3

    move/from16 v0, v16

    goto :goto_1

    :cond_3
    invoke-virtual {v12, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_5

    :cond_4
    move-object/from16 v12, p0

    goto/16 :goto_6

    :cond_5
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual {v11, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    move-object v0, v14

    :goto_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v15}, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressHelper;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5, v15}, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressHelper;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6, v15}, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressHelper;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7, v14}, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressHelper;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode$Companion;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode;->m:Ljava/lang/String;

    if-nez v2, :cond_7

    move/from16 v3, v16

    goto :goto_3

    :cond_7
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_3
    if-nez v3, :cond_a

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode;->F:Ljava/lang/String;

    if-nez v2, :cond_8

    move/from16 v3, v16

    goto :goto_4

    :cond_8
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_4
    if-nez v3, :cond_a

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode;->g:Ljava/lang/String;

    if-nez v2, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    :goto_5
    if-eqz v16, :cond_b

    :cond_a
    const-string v2, ", "

    invoke-virtual {v2, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v14}, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressHelper;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_b
    invoke-virtual {v13, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v14}, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressHelper;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, p12

    invoke-static {v0, v2, v14}, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressHelper;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v12, p0

    invoke-static {v12, v1, v8}, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressHelper;->b(Landroid/content/Context;Lkotlinx/serialization/json/Json;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ld21;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :goto_6
    invoke-static {v14, v14, v15}, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressHelper;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3, v13, v2}, Ld21;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_c

    invoke-static {v13, v11, v15}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_c
    move-object v2, v15

    :goto_7
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v1, v8}, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressHelper;->b(Landroid/content/Context;Lkotlinx/serialization/json/Json;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v15}, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressHelper;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7, v15}, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressHelper;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9, v15}, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressHelper;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v15}, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressHelper;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5, v15}, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressHelper;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10, v14}, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressHelper;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :goto_8
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_d

    invoke-virtual {v11, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    :cond_d
    invoke-static {v14, v3, v2, v15}, Ld21;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v10, v15}, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressHelper;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v1, v9}, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressHelper;->e(Landroid/content/Context;Lkotlinx/serialization/json/Json;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v15}, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressHelper;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7, v15}, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressHelper;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v15}, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressHelper;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5, v15}, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressHelper;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6, v15}, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressHelper;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v1, v8}, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressHelper;->b(Landroid/content/Context;Lkotlinx/serialization/json/Json;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ld21;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Landroid/content/Context;Lkotlinx/serialization/json/Json;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v4, p5

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    invoke-static {v4, v8, v9}, Lcj;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/account/profile/ProfileHelper;->a:Ljava/util/List;

    invoke-static/range {p3 .. p3}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/account/profile/ProfileHelper;->e:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->u(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    :goto_0
    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    move-object v13, v0

    move-object v0, p0

    goto :goto_1

    :cond_0
    move-object/from16 v1, p3

    :cond_1
    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/account/profile/ProfileHelper;->a(Ljava/lang/String;)Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModelKt;->a(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_1
    invoke-static/range {v0 .. v13}, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressHelper;->c(Landroid/content/Context;Lkotlinx/serialization/json/Json;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/content/Context;Lkotlinx/serialization/json/Json;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f13003b

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/vuitton/android/core/extensions/SerializationExtKt;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v1, Lcom/vuitton/android/presentation/screen/account/addresseditor/legacy/AddressStateUiModel;->Companion:Lcom/vuitton/android/presentation/screen/account/addresseditor/legacy/AddressStateUiModel$Companion;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/account/addresseditor/legacy/AddressStateUiModel$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    invoke-virtual {p1, v0, p0}, Lkotlinx/serialization/json/Json;->b(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/legacy/AddressStateUiModel;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/legacy/AddressStateUiModel;->b:Ljava/lang/String;

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/legacy/AddressStateUiModel;->c:Ljava/lang/String;

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :cond_2
    :goto_0
    check-cast p1, Lcom/vuitton/android/presentation/screen/account/addresseditor/legacy/AddressStateUiModel;

    if-eqz p1, :cond_3

    iget-object p0, p1, Lcom/vuitton/android/presentation/screen/account/addresseditor/legacy/AddressStateUiModel;->c:Ljava/lang/String;

    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    return-object p2

    :cond_4
    const-string p0, ""

    return-object p0
.end method
