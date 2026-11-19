.class public final synthetic Lh00;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lkotlin/jvm/functions/Function0;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;I)V
    .locals 0

    iput p3, p0, Lh00;->b:I

    iput-object p1, p0, Lh00;->c:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lh00;->d:Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lh00;->b:I

    const/4 v1, 0x1

    iget-object v2, p0, Lh00;->d:Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;

    iget-object p0, p0, Lh00;->c:Lkotlin/jvm/functions/Function0;

    check-cast p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    sget-object v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->b:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel$Companion;

    invoke-virtual {p0, p1, v1}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;->d(Ljava/lang/String;)V

    iget-object p0, v2, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;->b:Landroidx/compose/runtime/MutableState;

    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->g(Ljava/lang/String;)Z

    move-result p0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    sget-object v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->b:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel$Companion;

    invoke-virtual {p0, p1, v1}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;->d(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;->b()Z

    move-result p0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    sget-object v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->b:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel$Companion;

    invoke-virtual {p0, p1, v1}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->NEW_PASSWORD:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {p0, v0, v1}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;->d(Ljava/lang/String;)V

    iget-object p0, v2, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;->c:Landroidx/compose/runtime/MutableState;

    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;->a()V

    iget-object p0, v2, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;->d:Landroidx/compose/runtime/MutableState;

    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordValidationState;

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordValidationState;->a:Z

    xor-int/2addr p0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
