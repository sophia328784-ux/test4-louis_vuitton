.class public abstract Lcom/vuitton/android/presentation/screen/account/addresseditor/mappers/AddressFormMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/account/addresseditor/mappers/AddressFormMapperKt$WhenMappings;
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
.method public static final a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/forms/Civility;

    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/forms/Civility;->b:Ljava/lang/String;

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    check-cast v0, Lcom/vuitton/foundation/model/domain/model/forms/Civility;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/forms/Civility;->a:Ljava/lang/String;

    :cond_2
    invoke-static {v1}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Lcom/vuitton/foundation/model/domain/model/profile/Address;Ljava/util/List;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/mappers/AddressFormMapperKt$WhenMappings;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p1, Lcom/vuitton/foundation/model/domain/model/profile/Address;->l:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p1, Lcom/vuitton/foundation/model/domain/model/profile/Address;->m:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_2
    iget-object p0, p1, Lcom/vuitton/foundation/model/domain/model/profile/Address;->q:Ljava/lang/String;

    if-eqz p0, :cond_2

    new-instance v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/profile/Address;->r:Ljava/lang/String;

    invoke-static {p1}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    move-object p1, p0

    :cond_0
    invoke-direct {v0, p1, p0}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p1, Lcom/vuitton/foundation/model/domain/model/profile/Address;->p:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    iget-object v0, p1, Lcom/vuitton/foundation/model/domain/model/profile/Address;->G:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    iget-object v0, p1, Lcom/vuitton/foundation/model/domain/model/profile/Address;->B:Ljava/lang/String;

    goto :goto_0

    :pswitch_6
    iget-object v0, p1, Lcom/vuitton/foundation/model/domain/model/profile/Address;->w:Ljava/lang/String;

    goto :goto_0

    :pswitch_7
    iget-object v0, p1, Lcom/vuitton/foundation/model/domain/model/profile/Address;->H:Ljava/lang/String;

    goto :goto_0

    :pswitch_8
    iget-object v0, p1, Lcom/vuitton/foundation/model/domain/model/profile/Address;->C:Ljava/lang/String;

    goto :goto_0

    :pswitch_9
    iget-object v0, p1, Lcom/vuitton/foundation/model/domain/model/profile/Address;->x:Ljava/lang/String;

    goto :goto_0

    :pswitch_a
    iget-object v0, p1, Lcom/vuitton/foundation/model/domain/model/profile/Address;->I:Ljava/lang/String;

    goto :goto_0

    :pswitch_b
    iget-object v0, p1, Lcom/vuitton/foundation/model/domain/model/profile/Address;->D:Ljava/lang/String;

    goto :goto_0

    :pswitch_c
    iget-object v0, p1, Lcom/vuitton/foundation/model/domain/model/profile/Address;->y:Ljava/lang/String;

    goto :goto_0

    :pswitch_d
    iget-object v0, p1, Lcom/vuitton/foundation/model/domain/model/profile/Address;->h:Ljava/lang/String;

    goto :goto_0

    :pswitch_e
    iget-object v0, p1, Lcom/vuitton/foundation/model/domain/model/profile/Address;->f:Ljava/lang/String;

    goto :goto_0

    :pswitch_f
    iget-object v0, p1, Lcom/vuitton/foundation/model/domain/model/profile/Address;->g:Ljava/lang/String;

    goto :goto_0

    :pswitch_10
    iget-object v0, p1, Lcom/vuitton/foundation/model/domain/model/profile/Address;->e:Ljava/lang/String;

    goto :goto_0

    :pswitch_11
    iget-object v0, p1, Lcom/vuitton/foundation/model/domain/model/profile/Address;->c:Ljava/lang/String;

    goto :goto_0

    :pswitch_12
    iget-object v0, p1, Lcom/vuitton/foundation/model/domain/model/profile/Address;->n:Ljava/lang/String;

    goto :goto_0

    :pswitch_13
    new-instance v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;

    iget-object p0, p1, Lcom/vuitton/foundation/model/domain/model/profile/Address;->t:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/profile/Address;->s:Ljava/lang/String;

    invoke-static {p0}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    move-object p0, p1

    :cond_1
    invoke-direct {v0, p0, p1}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_14
    iget-object p0, p1, Lcom/vuitton/foundation/model/domain/model/profile/Address;->d:Ljava/lang/String;

    invoke-static {p0, p2}, Lcom/vuitton/android/presentation/screen/account/addresseditor/mappers/AddressFormMapperKt;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_15
    iget-object v0, p1, Lcom/vuitton/foundation/model/domain/model/profile/Address;->o:Ljava/lang/String;

    goto :goto_0

    :pswitch_16
    iget-object v0, p1, Lcom/vuitton/foundation/model/domain/model/profile/Address;->k:Ljava/lang/String;

    goto :goto_0

    :pswitch_17
    iget-object v0, p1, Lcom/vuitton/foundation/model/domain/model/profile/Address;->j:Ljava/lang/String;

    goto :goto_0

    :pswitch_18
    iget-object v0, p1, Lcom/vuitton/foundation/model/domain/model/profile/Address;->i:Ljava/lang/String;

    :cond_2
    :goto_0
    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/dynamicform/model/ext/FormFieldTypeUiModelExtKt;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
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
