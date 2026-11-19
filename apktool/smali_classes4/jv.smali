.class public final synthetic Ljv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;I)V
    .locals 0

    iput p2, p0, Ljv;->b:I

    iput-object p1, p0, Ljv;->c:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget v0, p0, Ljv;->b:I

    const/4 v1, 0x1

    iget-object p0, p0, Ljv;->c:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    sget v0, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;->d:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->h(Z)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    move-result-object v2

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->d:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModelKt$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->k(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v11, 0x0

    const/16 v12, 0x37f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static/range {v2 .. v12}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->c(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;ZLcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$WithoutTrailingAsterisk;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/customvalidation/FieldValidationRule;Ljava/lang/String;ZZI)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    move-result-object v2

    :cond_1
    :goto_0
    return-object v2

    :pswitch_0
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/compose/ui/semantics/CollectionInfo;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-direct {v0, p0, v1}, Landroidx/compose/ui/semantics/CollectionInfo;-><init>(II)V

    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->f(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/semantics/CollectionInfo;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
