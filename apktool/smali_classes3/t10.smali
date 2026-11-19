.class public final synthetic Lt10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

.field public final synthetic d:Z

.field public final synthetic e:J

.field public final synthetic f:Lkotlin/jvm/functions/Function1;

.field public final synthetic g:Z

.field public final synthetic h:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZJLkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt10;->b:Ljava/util/List;

    iput-object p2, p0, Lt10;->c:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iput-boolean p3, p0, Lt10;->d:Z

    iput-wide p4, p0, Lt10;->e:J

    iput-object p6, p0, Lt10;->f:Lkotlin/jvm/functions/Function1;

    iput-boolean p7, p0, Lt10;->g:Z

    iput-object p8, p0, Lt10;->h:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    check-cast p1, Landroidx/compose/animation/AnimatedVisibilityScope;

    move-object v7, p2

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v0, p0, Lt10;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x1

    iget-object v2, p0, Lt10;->c:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iget-boolean v1, p0, Lt10;->d:Z

    iget-wide v3, p0, Lt10;->e:J

    iget-object v6, p0, Lt10;->f:Lkotlin/jvm/functions/Function1;

    if-ne p1, p2, :cond_0

    const p0, 0x115e3f31

    const-string p1, "HotContentWidget$lambda$6"

    invoke-static {p0, v7, p1}, Lpq0;->j(ILandroidx/compose/runtime/Composer;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object p0

    invoke-static {v7}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object p1

    iget p1, p1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 p2, 0x0

    const/4 p3, 0x2

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object p0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel;

    const/4 v8, 0x0

    move-object v0, p0

    move-wide v4, v3

    move v3, v1

    move-object v1, p1

    invoke-static/range {v0 .. v8}, Lcom/vuitton/android/presentation/common/hotcontent/components/HotContentWidgetKt;->b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZJLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_0

    :cond_0
    const p1, 0x1955d78e

    invoke-interface {v7, p1}, Landroidx/compose/runtime/Composer;->L(I)V

    const/4 v9, 0x0

    move-object v5, v2

    iget-boolean v2, p0, Lt10;->g:Z

    iget-object p0, p0, Lt10;->h:Lkotlin/jvm/functions/Function0;

    move-object v8, v7

    move-object v7, p0

    invoke-static/range {v0 .. v9}, Lcom/vuitton/android/presentation/common/hotcontent/components/HotContentWidgetKt;->a(Ljava/util/List;ZZJLcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    move-object v7, v8

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->F()V

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
