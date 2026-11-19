.class public final Lcom/vuitton/android/presentation/screen/account/addresseditor/validation/PhoneValidationRules;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/account/addresseditor/validation/PhoneValidationRules$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\t\u0008\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/account/addresseditor/validation/PhoneValidationRules;",
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


# virtual methods
.method public final a(Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;)Lcom/vuitton/android/presentation/screen/dynamicform/model/field/customvalidation/FieldValidationRule;
    .locals 6

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/account/addresseditor/validation/PhoneValidationRules$WhenMappings;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    if-eq p2, v0, :cond_0

    const/4 p3, 0x3

    if-eq p2, p3, :cond_0

    const/4 p3, 0x4

    if-eq p2, p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/customvalidation/FieldValidationRule;

    new-instance v1, Lbo0;

    invoke-direct {v1, p1, p0}, Lbo0;-><init>(Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/account/addresseditor/validation/PhoneValidationRules;)V

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/customvalidation/FieldValidationRule;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :cond_1
    if-eqz p3, :cond_2

    new-instance p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/customvalidation/FieldValidationRule;

    new-instance p1, Lx00;

    invoke-direct {p1, p3, v1}, Lx00;-><init>(Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;I)V

    new-instance p2, Ly00;

    invoke-direct {p2, p3, v1}, Ly00;-><init>(Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;I)V

    new-instance v1, Ly00;

    invoke-direct {v1, p3, v0}, Ly00;-><init>(Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;I)V

    invoke-direct {p0, p1, p2, v1}, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/customvalidation/FieldValidationRule;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
