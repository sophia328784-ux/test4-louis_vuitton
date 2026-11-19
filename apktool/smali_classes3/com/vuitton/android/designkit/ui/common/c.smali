.class public final synthetic Lcom/vuitton/android/designkit/ui/common/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:Landroidx/compose/runtime/ProvidableCompositionLocal;

.field public final synthetic c:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic d:Z

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/ProvidableCompositionLocal;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/designkit/ui/common/c;->b:Landroidx/compose/runtime/ProvidableCompositionLocal;

    iput-object p2, p0, Lcom/vuitton/android/designkit/ui/common/c;->c:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-boolean p3, p0, Lcom/vuitton/android/designkit/ui/common/c;->d:Z

    iput-object p4, p0, Lcom/vuitton/android/designkit/ui/common/c;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/vuitton/android/designkit/ui/common/c;->f:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    check-cast p1, Landroidx/compose/ui/Modifier;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    const-string p3, "clickableOnce$lambda$1"

    invoke-static {p1, p3}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    :cond_0
    move-object v0, p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p1, -0x7e520cde

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p1

    sget-object p3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne p1, p3, :cond_1

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    check-cast p1, Landroidx/compose/runtime/MutableState;

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    const-wide/16 v2, 0x3e8

    invoke-interface {p2, v2, v3}, Landroidx/compose/runtime/Composer;->e(J)Z

    move-result v2

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v2, :cond_2

    if-ne v3, p3, :cond_3

    :cond_2
    new-instance v3, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt$clickableOnce$2$1$1;

    invoke-direct {v3, p1, v4}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt$clickableOnce$2$1$1;-><init>(Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    invoke-interface {p2, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3
    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static {p2, v1, v3}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v1, p0, Lcom/vuitton/android/designkit/ui/common/c;->b:Landroidx/compose/runtime/ProvidableCompositionLocal;

    if-nez v1, :cond_4

    const v1, -0xe423be8

    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    :goto_0
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->F()V

    move-object v2, v4

    goto :goto_1

    :cond_4
    const v2, -0x320222f7

    invoke-interface {p2, v2}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/compose/foundation/Indication;

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/vuitton/android/designkit/ui/common/c;->f:Lkotlin/jvm/functions/Function0;

    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_5

    if-ne v4, p3, :cond_6

    :cond_5
    new-instance v4, Lna;

    const/16 p3, 0x8

    invoke-direct {v4, v1, p1, p3}, Lna;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;I)V

    invoke-interface {p2, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    move-object v6, v4

    check-cast v6, Lkotlin/jvm/functions/Function0;

    const/16 v7, 0x10

    iget-object v1, p0, Lcom/vuitton/android/designkit/ui/common/c;->c:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-boolean v3, p0, Lcom/vuitton/android/designkit/ui/common/c;->d:Z

    iget-object v4, p0, Lcom/vuitton/android/designkit/ui/common/c;->e:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v7}, Landroidx/compose/foundation/ClickableKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function0;I)Landroidx/compose/ui/Modifier;

    move-result-object p0

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->F()V

    return-object p0
.end method
