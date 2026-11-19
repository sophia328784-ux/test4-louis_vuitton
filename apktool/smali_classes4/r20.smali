.class public final synthetic Lr20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:I

.field public final synthetic d:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

.field public final synthetic e:Z

.field public final synthetic f:Lkotlin/jvm/functions/Function0;

.field public final synthetic g:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;ILcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr20;->b:Ljava/util/ArrayList;

    iput p2, p0, Lr20;->c:I

    iput-object p3, p0, Lr20;->d:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

    iput-boolean p4, p0, Lr20;->e:Z

    iput-object p5, p0, Lr20;->f:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Lr20;->g:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    check-cast p1, Landroidx/compose/foundation/layout/PaddingValues;

    move-object v6, p2

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 p1, p2, 0x11

    const/16 p3, 0x10

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, p3, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    and-int/2addr p2, v0

    invoke-interface {v6, p2, p1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance p1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string p2, "ImageViewerScreen$lambda$1"

    invoke-direct {p1, p2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object p2, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    invoke-static {p2, v1}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object p2

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result p3

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->n()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v2

    invoke-static {v6, p1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->j()Landroidx/compose/runtime/Applier;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->B()V

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->f()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    :cond_1
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->o()V

    :goto_1
    sget-object v3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v6, p2, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object p2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v2, p2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    sget-object p3, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v6, p2, p3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object p2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v6, p2}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object p2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v6, p1, p2}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move p1, v1

    iget-object v1, p0, Lr20;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    iget-object v2, p0, Lr20;->d:Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

    if-le p2, v0, :cond_2

    const p1, 0x526cc129

    invoke-interface {v6, p1}, Landroidx/compose/runtime/Composer;->L(I)V

    const/4 v7, 0x0

    iget v0, p0, Lr20;->c:I

    iget-boolean v3, p0, Lr20;->e:Z

    iget-object v4, p0, Lr20;->f:Lkotlin/jvm/functions/Function0;

    iget-object v5, p0, Lr20;->g:Lkotlin/jvm/functions/Function0;

    invoke-static/range {v0 .. v7}, Lcom/vuitton/android/presentation/screen/imageviewer/components/PagerImageViewerKt;->a(ILjava/util/ArrayList;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_3

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ne p0, v0, :cond_4

    const p0, 0x2bf33ebc

    invoke-interface {v6, p0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_3

    const p0, 0x527498c5

    invoke-interface {v6, p0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_2

    :cond_3
    const p2, 0x527498c6

    invoke-interface {v6, p2}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {p0, v2, v6, p1}, Lcom/vuitton/android/presentation/screen/imageviewer/components/SingleImageViewerKt;->a(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->F()V

    :goto_2
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_3

    :cond_4
    const p0, 0x5277ccd2

    invoke-interface {v6, p0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->F()V

    :goto_3
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->r()V

    goto :goto_4

    :cond_5
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 p0, 0x0

    throw p0

    :cond_6
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->D()V

    :goto_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
