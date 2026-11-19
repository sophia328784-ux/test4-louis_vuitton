.class public final synthetic Lcom/vuitton/android/presentation/screen/repairs/detail/components/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;

.field public final synthetic c:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;

.field public final synthetic e:Lkotlin/jvm/functions/Function1;

.field public final synthetic f:Lkotlin/jvm/functions/Function1;

.field public final synthetic g:Lkotlin/jvm/functions/Function1;

.field public final synthetic h:Lkotlin/jvm/functions/Function0;

.field public final synthetic i:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/components/a;->b:Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/components/a;->c:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/components/a;->d:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/components/a;->e:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/components/a;->f:Lkotlin/jvm/functions/Function1;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/components/a;->g:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/components/a;->h:Lkotlin/jvm/functions/Function0;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/components/a;->i:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    and-int/lit8 p2, p1, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v0, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    and-int/2addr p1, v1

    invoke-interface {v9, p1, p2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_8

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/components/a;->b:Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;

    iget-object p1, v1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;->h:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;

    if-eqz p1, :cond_7

    const p1, 0x66b3f64d

    const-string p2, "RepairsDetailBffScreen$lambda$8"

    invoke-static {p1, v9, p2}, Lpq0;->j(ILandroidx/compose/runtime/Composer;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object p1

    invoke-static {v9}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object p2

    iget-object p2, p2, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v2, p2, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->a:J

    sget-object p2, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {p1, v2, v3, p2}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/components/a;->c:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    invoke-interface {v9, v4}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p1

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p2

    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez p1, :cond_1

    if-ne p2, v10, :cond_2

    :cond_1
    new-instance v2, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailBffScreenKt$RepairsDetailBffScreen$4$1$1;

    const-string v7, "show()V"

    const/4 v8, 0x0

    const/4 v3, 0x0

    const-class v5, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    const-string v6, "show"

    invoke-direct/range {v2 .. v8}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object p2, v2

    :cond_2
    check-cast p2, Lkotlin/reflect/KFunction;

    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/components/a;->d:Lkotlin/jvm/functions/Function0;

    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr p1, v3

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/components/a;->e:Lkotlin/jvm/functions/Function1;

    invoke-interface {v9, v3}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr p1, v4

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez p1, :cond_3

    if-ne v4, v10, :cond_4

    :cond_3
    new-instance v4, Lsm0;

    const/16 p1, 0xa

    invoke-direct {v4, v1, v2, v3, p1}, Lsm0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v9, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    move-object v2, v4

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-interface {v9, v3}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p1

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez p1, :cond_5

    if-ne v4, v10, :cond_6

    :cond_5
    new-instance v4, Ltf0;

    const/16 p1, 0xd

    invoke-direct {v4, v3, p1}, Ltf0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v9, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    move-object v3, v4

    check-cast v3, Lkotlin/jvm/functions/Function0;

    move-object v7, p2

    check-cast v7, Lkotlin/jvm/functions/Function0;

    const/4 v10, 0x0

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/components/a;->f:Lkotlin/jvm/functions/Function1;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/components/a;->g:Lkotlin/jvm/functions/Function1;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/components/a;->h:Lkotlin/jvm/functions/Function0;

    iget-object v8, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/components/a;->i:Lkotlin/jvm/functions/Function1;

    invoke-static/range {v0 .. v10}, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailBffScreenKt;->h(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_1

    :cond_7
    const p0, 0x66c3651b

    invoke-interface {v9, p0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_1

    :cond_8
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
