.class public abstract Lcom/vuitton/android/presentation/screen/dynamicform/model/ext/FormFieldTypeUiModelExtKt;
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
.method public static final a(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel;)Z
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel$EnumBasedFormField;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    check-cast p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel$EnumBasedFormField;

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel$EnumBasedFormField;->e()Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;

    move-result-object p0

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModelKt;->b(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;

    move-result-object p0

    if-eqz p0, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldFreeformUiModel;

    if-eqz v0, :cond_2

    check-cast p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldFreeformUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldFreeformUiModel;->b:Ljava/lang/String;

    invoke-static {p0}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldReadOnlyUiModel;

    if-eqz v0, :cond_4

    check-cast p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldReadOnlyUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldReadOnlyUiModel;->a:Ljava/lang/String;

    invoke-static {p0}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    :goto_0
    return v2

    :cond_3
    return v1

    :cond_4
    instance-of p0, p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldBooleanUiModel;

    if-eqz p0, :cond_5

    return v2

    :cond_5
    invoke-static {}, Lv40;->g()V

    return v1
.end method

.method public static final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    check-cast p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;->a:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    :cond_2
    return-object p0

    :cond_3
    return-object v1
.end method
