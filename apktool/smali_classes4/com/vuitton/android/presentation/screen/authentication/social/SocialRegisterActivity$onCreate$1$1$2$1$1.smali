.class final synthetic Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity$onCreate$1$1$2$1$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;",
        "Ljava/lang/Object;",
        "Lkotlin/Unit;",
        ">;"
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


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    check-cast p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->h:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->i:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    sget-object v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->ALL_MARKETING_COMMUNICATIONS_CONSENTS:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->o:Lkotlinx/coroutines/flow/MutableStateFlow;

    if-ne p1, v2, :cond_2

    new-instance p1, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterPrivacyCheckBoxEvent;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;

    iget-object p2, p2, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;->m:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;->n:Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;

    iget-boolean v2, v2, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;->g:Z

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;->o:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

    if-nez v4, :cond_0

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;->GOOGLE:Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;

    :cond_0
    invoke-direct {p1, p2, v0, v2, v4}, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel$OnSocialRegisterPrivacyCheckBoxEvent;-><init>(Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;ZLcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;->c:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-static {p1}, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModelKt;->b(Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    :cond_1
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;

    iget-boolean p1, v4, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;->g:Z

    xor-int/lit8 v10, p1, 0x1

    const/16 v11, 0x7fbf

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v11}, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;->a(Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;

    move-result-object p1

    invoke-interface {v3, p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->ALL_MARKETING_COMMUNICATIONS_CONSENTS:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;->g:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v1, p0, p1}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->c(Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;)V

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->i()V

    goto/16 :goto_1

    :cond_2
    new-instance p0, Lrq;

    const/16 v1, 0x9

    invoke-direct {p0, v1}, Lrq;-><init>(I)V

    invoke-interface {v0, p1, p2, p0}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->j(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    instance-of p0, p2, Ljava/lang/Boolean;

    if-eqz p0, :cond_a

    :cond_3
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;

    move-object p1, p2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    const/16 v11, 0x7fbf

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v11}, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;->a(Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;

    move-result-object p1

    invoke-interface {v3, p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto/16 :goto_0

    :pswitch_1
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;->i:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;->a()V

    :cond_4
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;

    move-object v8, p2

    check-cast v8, Ljava/lang/String;

    const/4 v10, 0x0

    const/16 v11, 0x7fef

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v11}, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;->a(Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;

    move-result-object p1

    invoke-interface {v3, p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto/16 :goto_0

    :pswitch_2
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;->i:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;->a()V

    :cond_5
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;

    move-object v6, p2

    check-cast v6, Ljava/lang/String;

    const/4 v10, 0x0

    const/16 v11, 0x7ffb

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v11}, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;->a(Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;

    move-result-object p1

    invoke-interface {v3, p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_0

    :pswitch_3
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;->h:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;->a()V

    :cond_6
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;

    move-object v7, p2

    check-cast v7, Ljava/lang/String;

    const/4 v10, 0x0

    const/16 v11, 0x7ff7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v11}, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;->a(Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;

    move-result-object p1

    invoke-interface {v3, p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_0

    :pswitch_4
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;->h:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;->a()V

    :cond_7
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;

    move-object v5, p2

    check-cast v5, Ljava/lang/String;

    const/4 v10, 0x0

    const/16 v11, 0x7ffd

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v11}, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;->a(Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;

    move-result-object p1

    invoke-interface {v3, p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_0

    :cond_8
    :pswitch_5
    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;

    move-object p1, p2

    check-cast p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/value/FormEnumValueUiModel;->b:Ljava/lang/String;

    if-nez p1, :cond_9

    const-string p1, ""

    :cond_9
    move-object v9, p1

    const/4 v10, 0x0

    const/16 v11, 0x7fdf

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v4 .. v11}, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;->a(Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;

    move-result-object p1

    invoke-interface {v3, p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    :cond_a
    :goto_0
    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->i()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
