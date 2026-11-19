.class public final synthetic Lnv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lkotlin/jvm/functions/Function1;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;I)V
    .locals 0

    iput p3, p0, Lnv;->b:I

    iput-object p1, p0, Lnv;->c:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lnv;->d:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget v0, p0, Lnv;->b:I

    iget-object v1, p0, Lnv;->d:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;

    iget-object p0, p0, Lnv;->c:Lkotlin/jvm/functions/Function1;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    sget v0, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;->d:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->e:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel;

    instance-of v0, v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldEnumUiModel;

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    invoke-virtual {v1, p0}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;->m(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    move-object v2, p1

    check-cast v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    sget p1, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;->d:I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->d:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v9, p0

    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_1

    const/4 v11, 0x0

    const/16 v12, 0x3bf

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-static/range {v2 .. v12}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->c(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;ZLcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldTypeUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$WithoutTrailingAsterisk;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/customvalidation/FieldValidationRule;Ljava/lang/String;ZZI)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisorImpl;->m(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;)V

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
