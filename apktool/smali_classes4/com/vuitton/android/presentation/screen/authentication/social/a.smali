.class public final synthetic Lcom/vuitton/android/presentation/screen/authentication/social/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity;I)V
    .locals 0

    iput p2, p0, Lcom/vuitton/android/presentation/screen/authentication/social/a;->b:I

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/social/a;->c:Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    iget v1, v0, Lcom/vuitton/android/presentation/screen/authentication/social/a;->b:I

    const/4 v2, 0x0

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/authentication/social/a;->c:Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity;

    const/4 v4, 0x2

    const/4 v5, 0x1

    packed-switch v1, :pswitch_data_0

    move-object/from16 v12, p1

    check-cast v12, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v6, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity;->s:Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity$Companion;

    and-int/lit8 v6, v1, 0x3

    if-eq v6, v4, :cond_0

    move v2, v5

    :cond_0
    and-int/2addr v1, v5

    invoke-interface {v12, v1, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity;->J()Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;

    move-result-object v6

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity;->J()Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;

    move-result-object v15

    invoke-interface {v12, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_1

    if-ne v2, v3, :cond_2

    :cond_1
    new-instance v13, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity$onCreate$1$1$2$1$1;

    const-string v18, "onFieldUpdated(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;)V"

    const/16 v19, 0x0

    const/4 v14, 0x2

    const-class v16, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;

    const-string v17, "onFieldUpdated"

    invoke-direct/range {v13 .. v19}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v12, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v2, v13

    :cond_2
    check-cast v2, Lkotlin/reflect/KFunction;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity;->J()Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;

    move-result-object v15

    invoke-interface {v12, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v1, :cond_3

    if-ne v5, v3, :cond_4

    :cond_3
    new-instance v13, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity$onCreate$1$1$2$2$1;

    const-string v18, "onConfirmClicked()V"

    const/16 v19, 0x0

    const/4 v14, 0x0

    const-class v16, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModelImpl;

    const-string v17, "onConfirmClicked"

    invoke-direct/range {v13 .. v19}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v12, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v5, v13

    :cond_4
    check-cast v5, Lkotlin/reflect/KFunction;

    move-object v8, v2

    check-cast v8, Lkotlin/jvm/functions/Function2;

    move-object v9, v5

    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_5

    if-ne v2, v3, :cond_6

    :cond_5
    new-instance v2, Ld01;

    invoke-direct {v2, v0, v4}, Ld01;-><init>(Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity;I)V

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    move-object v10, v2

    check-cast v10, Lkotlin/jvm/functions/Function0;

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_7

    if-ne v2, v3, :cond_8

    :cond_7
    new-instance v2, Ld01;

    const/4 v1, 0x3

    invoke-direct {v2, v0, v1}, Ld01;-><init>(Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity;I)V

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_8
    move-object v11, v2

    check-cast v11, Lkotlin/jvm/functions/Function0;

    const/16 v13, 0x30

    sget-object v7, Landroidx/compose/ui/Modifier$Companion;->b:Landroidx/compose/ui/Modifier$Companion;

    invoke-static/range {v6 .. v13}, Lcom/vuitton/android/presentation/screen/authentication/social/components/SocialRegisterLayoutKt;->a(Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterViewModel;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_0

    :cond_9
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->D()V

    :goto_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/Composer;

    move-object/from16 v6, p2

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v7, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity;->s:Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity$Companion;

    and-int/lit8 v7, v6, 0x3

    if-eq v7, v4, :cond_a

    move v2, v5

    :cond_a
    and-int/lit8 v4, v6, 0x1

    invoke-interface {v1, v4, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_d

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    if-nez v4, :cond_b

    if-ne v6, v3, :cond_c

    :cond_b
    new-instance v6, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity$onCreate$1$1$1$1;

    invoke-direct {v6, v0, v7}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity$onCreate$1$1$1$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_c
    check-cast v6, Lkotlin/jvm/functions/Function2;

    invoke-static {v1, v2, v6}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v2, Lcom/vuitton/android/presentation/screen/authentication/social/a;

    invoke-direct {v2, v0, v5}, Lcom/vuitton/android/presentation/screen/authentication/social/a;-><init>(Lcom/vuitton/android/presentation/screen/authentication/social/SocialRegisterActivity;I)V

    const v0, 0x5c227a66

    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    const/16 v2, 0x30

    invoke-static {v7, v0, v1, v2}, Lcom/vuitton/android/designkit/ui/theme/ThemeKt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1

    :cond_d
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
