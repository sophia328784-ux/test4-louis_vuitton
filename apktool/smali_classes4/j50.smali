.class public final synthetic Lj50;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lkotlin/Function;

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ZLjava/lang/Object;Ljava/lang/Object;Lkotlin/Function;Ljava/lang/Object;I)V
    .locals 0

    iput p7, p0, Lj50;->b:I

    iput-object p1, p0, Lj50;->d:Ljava/lang/Object;

    iput-boolean p2, p0, Lj50;->c:Z

    iput-object p3, p0, Lj50;->e:Ljava/lang/Object;

    iput-object p4, p0, Lj50;->f:Ljava/lang/Object;

    iput-object p5, p0, Lj50;->g:Lkotlin/Function;

    iput-object p6, p0, Lj50;->h:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Lj50;->b:I

    const/16 v2, 0xe

    const/4 v3, 0x1

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    iget-object v5, v0, Lj50;->h:Ljava/lang/Object;

    iget-object v6, v0, Lj50;->g:Lkotlin/Function;

    iget-object v7, v0, Lj50;->f:Ljava/lang/Object;

    iget-object v8, v0, Lj50;->e:Ljava/lang/Object;

    iget-object v9, v0, Lj50;->d:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    move-object v10, v9

    check-cast v10, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModelImpl;

    check-cast v8, Landroidx/navigation/NavHostController;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    move-object v13, v6

    check-cast v13, Lkotlin/jvm/functions/Function0;

    move-object v15, v5

    check-cast v15, Lkotlin/jvm/functions/Function0;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedContentScope;

    move-object/from16 v5, p2

    check-cast v5, Landroidx/navigation/NavBackStackEntry;

    move-object/from16 v6, p3

    check-cast v6, Landroidx/compose/runtime/Composer;

    move-object/from16 v9, p4

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {v6, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v6, v7}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v1, v5

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v1, :cond_0

    if-ne v5, v4, :cond_1

    :cond_0
    new-instance v5, Lnp0;

    invoke-direct {v5, v8, v7, v3}, Lnp0;-><init>(Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function0;I)V

    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    move-object v12, v5

    check-cast v12, Lkotlin/jvm/functions/Function0;

    invoke-interface {v6, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_2

    if-ne v3, v4, :cond_3

    :cond_2
    new-instance v3, Lyj;

    invoke-direct {v3, v8, v2}, Lyj;-><init>(Landroidx/navigation/NavHostController;I)V

    invoke-interface {v6, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3
    move-object v14, v3

    check-cast v14, Lkotlin/jvm/functions/Function0;

    const/16 v17, 0x0

    iget-boolean v11, v0, Lj50;->c:Z

    move-object/from16 v16, v6

    invoke-static/range {v10 .. v17}, Lcom/vuitton/android/presentation/screen/privacy/components/precompliance/PrivacyPreComplianceComposableKt;->a(Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModel;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    check-cast v9, Ljava/time/LocalDate;

    check-cast v8, Ljava/util/List;

    move-object v1, v7

    check-cast v1, Ljava/util/Locale;

    move-object v7, v6

    check-cast v7, Lkotlin/jvm/functions/Function1;

    check-cast v5, Landroidx/compose/runtime/MutableState;

    move-object/from16 v6, p1

    check-cast v6, Landroidx/compose/foundation/layout/BoxScope;

    move-object/from16 v10, p2

    check-cast v10, Lcom/kizitonwose/calendar/core/CalendarDay;

    move-object/from16 v11, p3

    check-cast v11, Landroidx/compose/runtime/Composer;

    move-object/from16 v12, p4

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    sget v13, Lcom/vuitton/android/presentation/compose/components/LVCalendarKt;->a:F

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v6, v12, 0x30

    if-nez v6, :cond_5

    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x20

    goto :goto_0

    :cond_4
    const/16 v6, 0x10

    :goto_0
    or-int/2addr v12, v6

    :cond_5
    and-int/lit16 v6, v12, 0x91

    const/16 v13, 0x90

    if-eq v6, v13, :cond_6

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    :goto_1
    and-int/lit8 v6, v12, 0x1

    invoke-interface {v11, v6, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_b

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v3, v10, Lcom/kizitonwose/calendar/core/CalendarDay;->c:Lcom/kizitonwose/calendar/core/DayPosition;

    sget-object v6, Lcom/kizitonwose/calendar/core/DayPosition;->MonthDate:Lcom/kizitonwose/calendar/core/DayPosition;

    if-ne v3, v6, :cond_a

    const v3, -0x6448f8a3

    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/time/LocalDate;

    if-nez v3, :cond_7

    iget-boolean v0, v0, Lj50;->c:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    if-eqz v8, :cond_7

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/time/LocalDate;

    :cond_7
    move-object v0, v3

    invoke-interface {v11, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v3, v6

    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v3, v6

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v3, :cond_9

    if-ne v6, v4, :cond_8

    goto :goto_2

    :cond_8
    move-object v3, v6

    move-object v6, v8

    move-object v5, v9

    goto :goto_3

    :cond_9
    :goto_2
    new-instance v3, Lk3;

    const/16 v4, 0x11

    move-object v6, v8

    move-object v8, v5

    move-object v5, v9

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lk3;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :goto_3
    check-cast v3, Lkotlin/jvm/functions/Function1;

    shr-int/lit8 v4, v12, 0x3

    and-int/lit8 v8, v4, 0xe

    move-object v2, v5

    move-object v4, v6

    move-object v7, v11

    move-object v5, v1

    move-object v6, v3

    move-object v1, v10

    move-object v3, v0

    invoke-static/range {v1 .. v8}, Lcom/vuitton/android/presentation/compose/components/LVCalendarKt;->c(Lcom/kizitonwose/calendar/core/CalendarDay;Ljava/time/LocalDate;Ljava/time/LocalDate;Ljava/util/List;Ljava/util/Locale;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_4

    :cond_a
    move-object v7, v11

    const v0, -0x643d5409

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_4

    :cond_b
    move-object v7, v11

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->D()V

    :goto_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
