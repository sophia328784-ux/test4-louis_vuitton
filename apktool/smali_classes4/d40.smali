.class public final synthetic Ld40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:Lkotlin/jvm/functions/Function0;

.field public final synthetic c:Z

.field public final synthetic d:Lkotlin/jvm/functions/Function0;

.field public final synthetic e:Lkotlin/jvm/functions/Function0;

.field public final synthetic f:Z

.field public final synthetic g:Landroidx/compose/runtime/MutableState;

.field public final synthetic h:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public final synthetic i:Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;

.field public final synthetic j:Lkotlin/jvm/functions/Function1;

.field public final synthetic k:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/MutableState;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld40;->b:Lkotlin/jvm/functions/Function0;

    iput-boolean p2, p0, Ld40;->c:Z

    iput-object p3, p0, Ld40;->d:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Ld40;->e:Lkotlin/jvm/functions/Function0;

    iput-boolean p5, p0, Ld40;->f:Z

    iput-object p6, p0, Ld40;->g:Landroidx/compose/runtime/MutableState;

    iput-object p7, p0, Ld40;->h:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iput-object p8, p0, Ld40;->i:Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;

    iput-object p9, p0, Ld40;->j:Lkotlin/jvm/functions/Function1;

    iput-object p10, p0, Ld40;->k:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    check-cast p1, Landroidx/compose/animation/AnimatedVisibilityScope;

    move-object v4, p2

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object p1

    iget v6, p1, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->o1:I

    const p1, 0x7f140a70

    invoke-static {v4, p1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object p1

    iget-object p1, p1, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v8, p1, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->x:J

    iget-object p1, p0, Ld40;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {v4, p1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p2

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p3

    if-nez p2, :cond_0

    sget-object p2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne p3, p2, :cond_1

    :cond_0
    new-instance p3, Lna;

    const/4 p2, 0x7

    iget-object v0, p0, Ld40;->g:Landroidx/compose/runtime/MutableState;

    invoke-direct {p3, p1, v0, p2}, Lna;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;I)V

    invoke-interface {v4, p3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    move-object v10, p3

    check-cast v10, Lkotlin/jvm/functions/Function0;

    new-instance v5, Lcom/vuitton/android/designkit/components/components/SwipeAction;

    const/4 v11, 0x0

    invoke-direct/range {v5 .. v11}, Lcom/vuitton/android/designkit/components/components/SwipeAction;-><init>(ILjava/lang/String;JLkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v5, Lr;

    const/16 v10, 0xf

    iget-object v6, p0, Ld40;->h:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iget-object v7, p0, Ld40;->i:Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxNotificationUiModel;

    iget-object v8, p0, Ld40;->j:Lkotlin/jvm/functions/Function1;

    iget-object v9, p0, Ld40;->k:Lkotlin/jvm/functions/Function1;

    invoke-direct/range {v5 .. v10}, Lr;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const p1, 0x78ae17e2

    invoke-static {p1, v5, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v5

    const/high16 v7, 0x30000

    const/4 v8, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Ld40;->c:Z

    iget-object v3, p0, Ld40;->d:Lkotlin/jvm/functions/Function0;

    move-object v6, v4

    iget-object v4, p0, Ld40;->e:Lkotlin/jvm/functions/Function0;

    invoke-static/range {v0 .. v8}, Lcom/vuitton/android/designkit/components/components/LVSwipeToRevealKt;->a(Landroidx/compose/ui/Modifier;Ljava/util/List;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    iget-boolean p0, p0, Ld40;->f:Z

    if-eqz p0, :cond_2

    const-string p0, "NotificationItem$lambda$4"

    const/high16 p1, 0x3f800000    # 1.0f

    const p2, 0x3751f95b

    invoke-static {p1, p2, v6, p0}, Lpq0;->h(FILandroidx/compose/runtime/Composer;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->d(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVDimens;

    move-result-object p0

    iget v1, p0, Lcom/vuitton/android/designkit/ui/theme/LVDimens;->c:F

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object p0

    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v2, p0, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->q:J

    const/4 v5, 0x6

    move-object v4, v6

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroidx/compose/material3/DividerKt;->a(Landroidx/compose/ui/Modifier;FJLandroidx/compose/runtime/Composer;II)V

    move-object v6, v4

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_0

    :cond_2
    const p0, 0x3755c95f

    invoke-interface {v6, p0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->F()V

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
