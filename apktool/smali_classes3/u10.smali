.class public final synthetic Lu10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Landroidx/compose/foundation/pager/PagerState;

.field public final synthetic d:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

.field public final synthetic e:Z

.field public final synthetic f:J

.field public final synthetic g:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Landroidx/compose/foundation/pager/PagerState;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZJLkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu10;->b:Ljava/util/List;

    iput-object p2, p0, Lu10;->c:Landroidx/compose/foundation/pager/PagerState;

    iput-object p3, p0, Lu10;->d:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iput-boolean p4, p0, Lu10;->e:Z

    iput-wide p5, p0, Lu10;->f:J

    iput-object p7, p0, Lu10;->g:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    check-cast p1, Landroidx/compose/foundation/pager/PagerScope;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    move-object v7, p3

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    add-int/lit8 p1, p2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p3, p0, Lu10;->b:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p1, p4}, [Ljava/lang/Object;

    move-result-object p1

    const p4, 0x7f140376

    invoke-static {p4, p1, v7}, Landroidx/compose/ui/res/StringResources_androidKt;->b(I[Ljava/lang/Object;Landroidx/compose/runtime/Composer;)Ljava/lang/String;

    move-result-object p1

    iget-object p4, p0, Lu10;->c:Landroidx/compose/foundation/pager/PagerState;

    invoke-virtual {p4}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result p4

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const-string v1, "HotContentCarousel$lambda$1$0"

    if-ne p2, p4, :cond_2

    const p4, -0x46b819fe

    invoke-static {p4, v7, v1}, Lpq0;->j(ILandroidx/compose/runtime/Composer;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object p4

    invoke-interface {v7, p1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_0

    if-ne v2, v0, :cond_1

    :cond_0
    new-instance v2, Llt;

    const/4 v0, 0x6

    invoke-direct {v2, p1, v0}, Llt;-><init>(Ljava/lang/String;I)V

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    check-cast v2, Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    invoke-static {p4, p1, v2}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->F()V

    :goto_0
    move-object v0, p1

    goto :goto_1

    :cond_2
    const p1, -0x46b4e440

    invoke-static {p1, v7, v1}, Lpq0;->j(ILandroidx/compose/runtime/Composer;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object p1

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v0, :cond_3

    new-instance p4, Ldy;

    const/16 v0, 0x16

    invoke-direct {p4, v0}, Ldy;-><init>(I)V

    invoke-interface {v7, p4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3
    check-cast p4, Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x0

    invoke-static {p1, v0, p4}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_0

    :goto_1
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel;

    const/4 v8, 0x0

    iget-object v2, p0, Lu10;->d:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iget-boolean v3, p0, Lu10;->e:Z

    iget-wide v4, p0, Lu10;->f:J

    iget-object v6, p0, Lu10;->g:Lkotlin/jvm/functions/Function1;

    invoke-static/range {v0 .. v8}, Lcom/vuitton/android/presentation/common/hotcontent/components/HotContentWidgetKt;->b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZJLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
