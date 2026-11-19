.class public final synthetic Lv31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(IILkotlin/jvm/functions/Function1;I)V
    .locals 0

    iput p4, p0, Lv31;->b:I

    iput p1, p0, Lv31;->c:I

    iput p2, p0, Lv31;->d:I

    iput-object p3, p0, Lv31;->e:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget v0, p0, Lv31;->b:I

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    iget-object v2, p0, Lv31;->e:Lkotlin/jvm/functions/Function1;

    iget v3, p0, Lv31;->d:I

    iget p0, p0, Lv31;->c:I

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch v0, :pswitch_data_0

    const p2, -0x7bd3aeaf

    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v4, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string p2, "TheLookImmersiveArticleStepper_qM_MBqc$lambda$0$1$1"

    invoke-direct {v4, p2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result p2

    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v0

    or-int/2addr p2, v0

    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr p2, v0

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez p2, :cond_0

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v0, Ls01;

    const/4 p2, 0x2

    invoke-direct {v0, p0, v3, v2, p2}, Ls01;-><init>(IILkotlin/jvm/functions/Function1;I)V

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    move-object v8, v0

    check-cast v8, Lkotlin/jvm/functions/Function0;

    const/16 v9, 0xf

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Landroidx/compose/foundation/ClickableKt;->d(Landroidx/compose/ui/Modifier;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object p0

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->F()V

    return-object p0

    :pswitch_0
    const p2, 0x4f43e74d

    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v4, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string p2, "TheLookImmersiveArticleStepper_qM_MBqc$lambda$0$1$0"

    invoke-direct {v4, p2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result p2

    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v0

    or-int/2addr p2, v0

    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr p2, v0

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez p2, :cond_2

    if-ne v0, v1, :cond_3

    :cond_2
    new-instance v0, Ls01;

    const/4 p2, 0x1

    invoke-direct {v0, p0, v3, v2, p2}, Ls01;-><init>(IILkotlin/jvm/functions/Function1;I)V

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3
    move-object v8, v0

    check-cast v8, Lkotlin/jvm/functions/Function0;

    const/16 v9, 0xf

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Landroidx/compose/foundation/ClickableKt;->d(Landroidx/compose/ui/Modifier;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object p0

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->F()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
