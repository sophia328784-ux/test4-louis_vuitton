.class public final synthetic Lg80;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Z

.field public final synthetic g:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;Ljava/lang/String;ZZI)V
    .locals 0

    .line 17
    iput p6, p0, Lg80;->b:I

    iput-object p1, p0, Lg80;->c:Ljava/lang/Object;

    iput-object p2, p0, Lg80;->d:Ljava/lang/Object;

    iput-object p3, p0, Lg80;->e:Ljava/lang/Object;

    iput-boolean p4, p0, Lg80;->f:Z

    iput-boolean p5, p0, Lg80;->g:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;ZLkotlin/jvm/functions/Function2;ZLandroidx/compose/runtime/MutableState;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lg80;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg80;->c:Ljava/lang/Object;

    iput-boolean p2, p0, Lg80;->f:Z

    iput-object p3, p0, Lg80;->d:Ljava/lang/Object;

    iput-boolean p4, p0, Lg80;->g:Z

    iput-object p5, p0, Lg80;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget v0, p0, Lg80;->b:I

    iget-object v1, p0, Lg80;->e:Ljava/lang/Object;

    iget-object v2, p0, Lg80;->d:Ljava/lang/Object;

    iget-object v3, p0, Lg80;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    move-object v5, v3

    check-cast v5, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;

    move-object v8, v2

    check-cast v8, Lkotlin/jvm/functions/Function2;

    check-cast v1, Landroidx/compose/runtime/MutableState;

    move-object v4, p1

    check-cast v4, Landroidx/compose/foundation/layout/PaddingValues;

    move-object v11, p2

    check-cast v11, Landroidx/compose/runtime/Composer;

    move-object/from16 p1, p3

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v0, p1, 0x6

    if-nez v0, :cond_1

    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr p1, v0

    :cond_1
    and-int/lit8 v0, p1, 0x13

    const/16 v2, 0x12

    if-eq v0, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    and-int/lit8 v2, p1, 0x1

    invoke-interface {v11, v2, v0}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, v2, :cond_3

    new-instance v0, Lj6;

    const/16 v2, 0x1a

    invoke-direct {v0, v2, v1}, Lj6;-><init>(ILandroidx/compose/runtime/MutableState;)V

    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3
    move-object v9, v0

    check-cast v9, Lkotlin/jvm/functions/Function1;

    and-int/lit8 p1, p1, 0xe

    const/high16 v0, 0x30000

    or-int v12, p1, v0

    iget-boolean v6, p0, Lg80;->f:Z

    iget-boolean v10, p0, Lg80;->g:Z

    invoke-static/range {v4 .. v12}, Lcom/vuitton/android/presentation/screen/account/myinformation/components/edition/EditMyInfoScreenKt;->a(Landroidx/compose/foundation/layout/PaddingValues;Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;ZZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ZLandroidx/compose/runtime/Composer;I)V

    goto :goto_2

    :cond_4
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->D()V

    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast v3, Landroidx/compose/ui/Modifier;

    move-object v8, v2

    check-cast v8, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;

    move-object v9, v1

    check-cast v9, Ljava/lang/String;

    check-cast p1, Landroidx/compose/animation/AnimatedVisibilityScope;

    move-object v6, p2

    check-cast v6, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal;->a:Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal;

    if-eqz v3, :cond_5

    const-string v0, "DecorationBox$lambda$3$0$0$1$0"

    invoke-static {v3, v0}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    :cond_5
    move-object v7, v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v4, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal;->a:Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal;

    const/high16 v5, 0x30000

    iget-boolean v10, p0, Lg80;->f:Z

    iget-boolean v11, p0, Lg80;->g:Z

    invoke-virtual/range {v4 .. v11}, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal;->d(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;Ljava/lang/String;ZZ)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast v3, Landroidx/compose/ui/Modifier;

    move-object v8, v2

    check-cast v8, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;

    move-object v9, v1

    check-cast v9, Ljava/lang/String;

    check-cast p1, Landroidx/compose/animation/AnimatedVisibilityScope;

    move-object v6, p2

    check-cast v6, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal;->a:Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal;

    if-eqz v3, :cond_6

    const-string v0, "DecorationBox$lambda$3$0$0$0"

    invoke-static {v3, v0}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    :cond_6
    move-object v7, v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v4, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal;->a:Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal;

    const/high16 v5, 0x30000

    iget-boolean v10, p0, Lg80;->f:Z

    iget-boolean v11, p0, Lg80;->g:Z

    invoke-virtual/range {v4 .. v11}, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternal;->c(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;Ljava/lang/String;ZZ)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
