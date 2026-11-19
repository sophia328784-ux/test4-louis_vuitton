.class public abstract Lcom/vuitton/android/presentation/screen/account/addresseditor/mappers/ProfileFormMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/account/addresseditor/mappers/ProfileFormMapperKt$WhenMappings;
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
.method public static final a(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Lcom/vuitton/foundation/model/domain/model/profile/Profile;Ljava/util/List;ZZZ)Ljava/lang/Object;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->q:Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/presentation/screen/account/addresseditor/mappers/ProfileFormMapperKt$WhenMappings;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    if-eqz p3, :cond_8

    invoke-virtual {p1}, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->b()Lcom/vuitton/foundation/model/domain/model/profile/Address;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-static {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/account/addresseditor/mappers/AddressFormMapperKt;->b(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Lcom/vuitton/foundation/model/domain/model/profile/Address;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    goto/16 :goto_4

    :pswitch_1
    if-eqz v0, :cond_3

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_3

    if-eqz p5, :cond_1

    sget-object p4, Lcom/vuitton/android/presentation/helper/PhoneNumberHelper;->a:Ljava/util/Set;

    iget-object p4, v0, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;->c:Ljava/lang/String;

    iget-object p5, v0, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;->a:Ljava/lang/String;

    invoke-static {p4, p5}, Lcom/vuitton/android/presentation/helper/PhoneNumberHelper;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_2

    :cond_1
    move-object v2, v0

    :cond_2
    if-eqz v2, :cond_3

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;->a:Ljava/lang/String;

    if-eqz v2, :cond_3

    goto/16 :goto_4

    :cond_3
    move-object v3, p0

    new-instance p0, Lgq0;

    const/4 p5, 0x2

    move-object p4, p2

    move-object p2, p1

    move p1, p3

    move-object p3, v3

    invoke-direct/range {p0 .. p5}, Lgq0;-><init>(ZLcom/vuitton/foundation/model/domain/model/profile/Profile;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/util/List;I)V

    move-object v2, p0

    goto/16 :goto_4

    :pswitch_2
    move-object v3, p0

    move-object v4, p2

    move v1, p3

    move-object p2, p1

    if-eqz v0, :cond_5

    if-eqz p4, :cond_4

    goto :goto_1

    :cond_4
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_5

    iget-object v2, v0, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;->c:Ljava/lang/String;

    if-nez v2, :cond_8

    :cond_5
    new-instance v0, Lgq0;

    const/4 v5, 0x1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lgq0;-><init>(ZLcom/vuitton/foundation/model/domain/model/profile/Profile;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/util/List;I)V

    :goto_2
    move-object v2, v0

    goto :goto_4

    :pswitch_3
    move-object v3, p0

    move-object v4, p2

    move v1, p3

    move-object p2, p1

    if-eqz v0, :cond_7

    if-eqz p4, :cond_6

    goto :goto_3

    :cond_6
    move-object v0, v2

    :goto_3
    if-eqz v0, :cond_7

    iget-object v2, v0, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;->b:Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;

    if-nez v2, :cond_8

    :cond_7
    new-instance v0, Lgq0;

    const/4 v5, 0x0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lgq0;-><init>(ZLcom/vuitton/foundation/model/domain/model/profile/Profile;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/util/List;I)V

    goto :goto_2

    :pswitch_4
    move-object p2, p1

    iget-object v2, p2, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->j:Ljava/lang/String;

    goto :goto_4

    :pswitch_5
    move-object p2, p1

    iget-object v2, p2, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->f:Ljava/lang/String;

    goto :goto_4

    :pswitch_6
    move-object p2, p1

    iget-object v2, p2, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->e:Ljava/lang/String;

    goto :goto_4

    :pswitch_7
    move-object p2, p1

    iget-object v2, p2, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->b:Ljava/lang/String;

    goto :goto_4

    :pswitch_8
    move-object p2, p1

    iget-object v2, p2, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->d:Ljava/lang/String;

    goto :goto_4

    :pswitch_9
    move-object p2, p1

    iget-object v2, p2, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->c:Ljava/lang/String;

    goto :goto_4

    :pswitch_a
    move-object v4, p2

    move-object p2, p1

    iget-object p0, p2, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->h:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/vuitton/android/presentation/screen/account/addresseditor/mappers/AddressFormMapperKt;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :pswitch_b
    move-object p2, p1

    iget-object v2, p2, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->k:Ljava/lang/String;

    :cond_8
    :goto_4
    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/dynamicform/model/ext/FormFieldTypeUiModelExtKt;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
