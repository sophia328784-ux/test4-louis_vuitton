.class public final Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterRegistrationAddressComposableKt$buildAddressManualForm$$inlined$compareBy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterRegistrationAddressComposableKt$buildAddressManualForm$$inlined$compareBy$1;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    const v0, 0x7fffffff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldGenericUiModel;

    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterRegistrationAddressComposableKt$buildAddressManualForm$$inlined$compareBy$1;->b:Ljava/util/Map;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->d:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    if-eqz p1, :cond_1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    check-cast p2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldGenericUiModel;

    instance-of v1, p2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    if-eqz v1, :cond_2

    move-object v2, p2

    check-cast v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    :cond_2
    if-eqz v2, :cond_3

    iget-object p2, v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->d:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    if-eqz p2, :cond_3

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_3

    move-object v0, p0

    :cond_3
    invoke-interface {p1, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
