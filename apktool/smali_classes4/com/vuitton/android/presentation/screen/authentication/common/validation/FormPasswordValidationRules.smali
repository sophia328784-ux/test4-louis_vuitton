.class public final Lcom/vuitton/android/presentation/screen/authentication/common/validation/FormPasswordValidationRules;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/authentication/common/validation/FormPasswordValidationRules$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\t\u0008\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/authentication/common/validation/FormPasswordValidationRules;",
        "",
        "<init>",
        "()V",
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
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/customvalidation/FieldValidationRule;
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FormPasswordValidationRules$WhenMappings;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/customvalidation/FieldValidationRule;

    move p2, v1

    new-instance v1, Lh00;

    invoke-direct {v1, p0, p1, v2}, Lh00;-><init>(Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;I)V

    new-instance v2, Li00;

    invoke-direct {v2, p1, p2}, Li00;-><init>(Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;I)V

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/customvalidation/FieldValidationRule;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :cond_1
    move p2, v1

    new-instance v1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/customvalidation/FieldValidationRule;

    new-instance v2, Lh00;

    invoke-direct {v2, p0, p1, p2}, Lh00;-><init>(Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;I)V

    new-instance v3, Li00;

    invoke-direct {v3, p1, v0}, Li00;-><init>(Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;I)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/customvalidation/FieldValidationRule;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_2
    new-instance v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/customvalidation/FieldValidationRule;

    new-instance v3, Lh00;

    invoke-direct {v3, p0, p1, v0}, Lh00;-><init>(Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;I)V

    new-instance v4, Ltx;

    const/16 p0, 0x13

    invoke-direct {v4, p0}, Ltx;-><init>(I)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/customvalidation/FieldValidationRule;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2
.end method
