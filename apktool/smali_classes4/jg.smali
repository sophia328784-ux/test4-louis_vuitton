.class public final synthetic Ljg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState;

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;

.field public final synthetic f:Landroidx/compose/material3/SnackbarHostState;

.field public final synthetic g:Lkotlin/jvm/functions/Function1;

.field public final synthetic h:Lkotlin/jvm/functions/Function2;

.field public final synthetic i:Lkotlin/jvm/functions/Function1;

.field public final synthetic j:Lkotlin/jvm/functions/Function3;

.field public final synthetic k:Lkotlin/jvm/functions/Function0;

.field public final synthetic l:Lkotlin/jvm/functions/Function0;

.field public final synthetic m:Lkotlin/jvm/functions/Function2;

.field public final synthetic n:Lkotlin/jvm/functions/Function0;

.field public final synthetic o:Lkotlin/jvm/functions/Function1;

.field public final synthetic p:Lkotlin/jvm/functions/Function1;

.field public final synthetic q:Lkotlin/jvm/functions/Function0;

.field public final synthetic r:I

.field public final synthetic s:I


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState;ZZLcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljg;->b:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState;

    iput-boolean p2, p0, Ljg;->c:Z

    iput-boolean p3, p0, Ljg;->d:Z

    iput-object p4, p0, Ljg;->e:Lcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;

    iput-object p5, p0, Ljg;->f:Landroidx/compose/material3/SnackbarHostState;

    iput-object p6, p0, Ljg;->g:Lkotlin/jvm/functions/Function1;

    iput-object p7, p0, Ljg;->h:Lkotlin/jvm/functions/Function2;

    iput-object p8, p0, Ljg;->i:Lkotlin/jvm/functions/Function1;

    iput-object p9, p0, Ljg;->j:Lkotlin/jvm/functions/Function3;

    iput-object p10, p0, Ljg;->k:Lkotlin/jvm/functions/Function0;

    iput-object p11, p0, Ljg;->l:Lkotlin/jvm/functions/Function0;

    iput-object p12, p0, Ljg;->m:Lkotlin/jvm/functions/Function2;

    iput-object p13, p0, Ljg;->n:Lkotlin/jvm/functions/Function0;

    iput-object p14, p0, Ljg;->o:Lkotlin/jvm/functions/Function1;

    iput-object p15, p0, Ljg;->p:Lkotlin/jvm/functions/Function1;

    move-object/from16 p1, p16

    iput-object p1, p0, Ljg;->q:Lkotlin/jvm/functions/Function0;

    move/from16 p1, p17

    iput p1, p0, Ljg;->r:I

    move/from16 p1, p18

    iput p1, p0, Ljg;->s:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v16, p1

    check-cast v16, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    iget v1, v0, Ljg;->r:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v17

    iget v1, v0, Ljg;->s:I

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v18

    iget-object v1, v0, Ljg;->b:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState;

    move-object v2, v1

    iget-boolean v1, v0, Ljg;->c:Z

    move-object v3, v2

    iget-boolean v2, v0, Ljg;->d:Z

    move-object v4, v3

    iget-object v3, v0, Ljg;->e:Lcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;

    move-object v5, v4

    iget-object v4, v0, Ljg;->f:Landroidx/compose/material3/SnackbarHostState;

    move-object v6, v5

    iget-object v5, v0, Ljg;->g:Lkotlin/jvm/functions/Function1;

    move-object v7, v6

    iget-object v6, v0, Ljg;->h:Lkotlin/jvm/functions/Function2;

    move-object v8, v7

    iget-object v7, v0, Ljg;->i:Lkotlin/jvm/functions/Function1;

    move-object v9, v8

    iget-object v8, v0, Ljg;->j:Lkotlin/jvm/functions/Function3;

    move-object v10, v9

    iget-object v9, v0, Ljg;->k:Lkotlin/jvm/functions/Function0;

    move-object v11, v10

    iget-object v10, v0, Ljg;->l:Lkotlin/jvm/functions/Function0;

    move-object v12, v11

    iget-object v11, v0, Ljg;->m:Lkotlin/jvm/functions/Function2;

    move-object v13, v12

    iget-object v12, v0, Ljg;->n:Lkotlin/jvm/functions/Function0;

    move-object v14, v13

    iget-object v13, v0, Ljg;->o:Lkotlin/jvm/functions/Function1;

    move-object v15, v14

    iget-object v14, v0, Ljg;->p:Lkotlin/jvm/functions/Function1;

    iget-object v0, v0, Ljg;->q:Lkotlin/jvm/functions/Function0;

    move-object/from16 v19, v15

    move-object v15, v0

    move-object/from16 v0, v19

    invoke-static/range {v0 .. v18}, Lcom/vuitton/android/presentation/screen/booking/form/components/BookingReservationScreenKt;->a(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState;ZZLcom/vuitton/android/presentation/screen/booking/common/models/BookingCTAState;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
