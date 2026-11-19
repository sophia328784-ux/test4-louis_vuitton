.class public interface abstract Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel$EnumBasedFormField;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EnumBasedFormField"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008v\u0018\u00002\u00020\u0001\u0082\u0001\u0004\u0002\u0003\u0004\u0005\u00a8\u0006\u0006\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel$EnumBasedFormField;",
        "Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel;",
        "Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldDependentEnumUiModel;",
        "Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldDependentRemoteEnumUiModel;",
        "Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldEnumUiModel;",
        "Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldReadOnlyEnumUiModel;",
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


# virtual methods
.method public abstract a()Ljava/util/List;
.end method

.method public b(Ljava/util/List;)Ljava/lang/Integer;
    .locals 3

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel$EnumBasedFormField;->e()Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;

    move-result-object p0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;

    invoke-static {v1, p0}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModelKt;->a(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    if-eq v0, v2, :cond_2

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract c()Ljava/lang/Integer;
.end method

.method public d()Ljava/util/ArrayList;
    .locals 6

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel$EnumBasedFormField;->a()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/vuitton/android/designkit/ui/theme/atoms/DropdownItem;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;->a:Ljava/lang/String;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v1, v5, v3, v4}, Lcom/vuitton/android/designkit/ui/theme/atoms/DropdownItem;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public abstract e()Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;
.end method

.method public abstract isEnabled()Z
.end method
