.class public final synthetic Ldp0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/pager/PagerState;

.field public final synthetic c:I

.field public final synthetic d:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic e:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic f:F

.field public final synthetic g:Lcom/vuitton/android/presentation/screen/portal/models/PortalUiModel$SlideUiModel;

.field public final synthetic h:Lkotlin/jvm/functions/Function1;

.field public final synthetic i:Landroidx/compose/runtime/snapshots/SnapshotStateMap;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/pager/PagerState;ILkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;FLcom/vuitton/android/presentation/screen/portal/models/PortalUiModel$SlideUiModel;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/snapshots/SnapshotStateMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldp0;->b:Landroidx/compose/foundation/pager/PagerState;

    iput p2, p0, Ldp0;->c:I

    iput-object p3, p0, Ldp0;->d:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p4, p0, Ldp0;->e:Lkotlin/jvm/internal/Ref$IntRef;

    iput p5, p0, Ldp0;->f:F

    iput-object p6, p0, Ldp0;->g:Lcom/vuitton/android/presentation/screen/portal/models/PortalUiModel$SlideUiModel;

    iput-object p7, p0, Ldp0;->h:Lkotlin/jvm/functions/Function1;

    iput-object p8, p0, Ldp0;->i:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v0, p1

    check-cast v0, Landroidx/compose/foundation/layout/ColumnScope;

    move-object v9, p2

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 p2, p1, 0x6

    if-nez p2, :cond_1

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    :goto_0
    or-int/2addr p1, p2

    :cond_1
    and-int/lit8 p2, p1, 0x13

    const/16 p3, 0x12

    const/4 v1, 0x1

    if-eq p2, p3, :cond_2

    move p2, v1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    and-int/lit8 p3, p1, 0x1

    invoke-interface {v9, p3, p2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_5

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object p2, p0, Ldp0;->d:Lkotlin/jvm/internal/Ref$IntRef;

    iget v3, p2, Lkotlin/jvm/internal/Ref$IntRef;->b:I

    iget-object p2, p0, Ldp0;->e:Lkotlin/jvm/internal/Ref$IntRef;

    iget v4, p2, Lkotlin/jvm/internal/Ref$IntRef;->b:I

    iget-object p2, p0, Ldp0;->g:Lcom/vuitton/android/presentation/screen/portal/models/PortalUiModel$SlideUiModel;

    iget-object p2, p2, Lcom/vuitton/android/presentation/screen/portal/models/PortalUiModel$SlideUiModel;->c:Lcom/vuitton/android/presentation/screen/portal/models/PortalDataUiModel;

    iget-object v6, p2, Lcom/vuitton/android/presentation/screen/portal/models/PortalDataUiModel;->f:Lcom/vuitton/android/presentation/screen/portal/models/PortalTeaserUiModel;

    iget v2, p0, Ldp0;->c:I

    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result p2

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p3

    if-nez p2, :cond_3

    sget-object p2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne p3, p2, :cond_4

    :cond_3
    new-instance p3, Lj70;

    iget-object p2, p0, Ldp0;->i:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    invoke-direct {p3, p2, v2, v1}, Lj70;-><init>(Ljava/lang/Object;II)V

    invoke-interface {v9, p3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    move-object v8, p3

    check-cast v8, Lkotlin/jvm/functions/Function0;

    and-int/lit8 v10, p1, 0xe

    iget-object v1, p0, Ldp0;->b:Landroidx/compose/foundation/pager/PagerState;

    iget v5, p0, Ldp0;->f:F

    iget-object v7, p0, Ldp0;->h:Lkotlin/jvm/functions/Function1;

    invoke-static/range {v0 .. v10}, Lcom/vuitton/android/presentation/screen/portal/components/ContentSlideWithCountdownKt;->a(Landroidx/compose/foundation/layout/ColumnScope;Landroidx/compose/foundation/pager/PagerState;IIIFLcom/vuitton/android/presentation/screen/portal/models/PortalTeaserUiModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_2

    :cond_5
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->D()V

    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
