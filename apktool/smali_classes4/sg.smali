.class public final synthetic Lsg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lkotlin/jvm/functions/Function1;

.field public final synthetic d:Lkotlin/jvm/functions/Function1;

.field public final synthetic e:Lkotlin/jvm/functions/Function2;

.field public final synthetic f:Lkotlin/jvm/functions/Function0;

.field public final synthetic g:I

.field public final synthetic h:I

.field public final synthetic i:Ljava/lang/Object;

.field public final synthetic j:Ljava/lang/Object;

.field public final synthetic k:Ljava/lang/Object;

.field public final synthetic l:Ljava/lang/Object;

.field public final synthetic m:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;II)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lsg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsg;->i:Ljava/lang/Object;

    iput-object p2, p0, Lsg;->j:Ljava/lang/Object;

    iput-object p3, p0, Lsg;->f:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lsg;->k:Ljava/lang/Object;

    iput-object p5, p0, Lsg;->e:Lkotlin/jvm/functions/Function2;

    iput-object p6, p0, Lsg;->m:Ljava/lang/Object;

    iput-object p7, p0, Lsg;->c:Lkotlin/jvm/functions/Function1;

    iput-object p8, p0, Lsg;->l:Ljava/lang/Object;

    iput-object p9, p0, Lsg;->d:Lkotlin/jvm/functions/Function1;

    iput p10, p0, Lsg;->g:I

    iput p11, p0, Lsg;->h:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/ArrayList;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;II)V
    .locals 1

    .line 29
    const/4 v0, 0x1

    iput v0, p0, Lsg;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsg;->i:Ljava/lang/Object;

    iput-object p2, p0, Lsg;->j:Ljava/lang/Object;

    iput-object p3, p0, Lsg;->k:Ljava/lang/Object;

    iput-object p4, p0, Lsg;->l:Ljava/lang/Object;

    iput-object p5, p0, Lsg;->m:Ljava/lang/Object;

    iput-object p6, p0, Lsg;->c:Lkotlin/jvm/functions/Function1;

    iput-object p7, p0, Lsg;->d:Lkotlin/jvm/functions/Function1;

    iput-object p8, p0, Lsg;->e:Lkotlin/jvm/functions/Function2;

    iput-object p9, p0, Lsg;->f:Lkotlin/jvm/functions/Function0;

    iput p10, p0, Lsg;->g:I

    iput p11, p0, Lsg;->h:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    iget v1, v0, Lsg;->b:I

    iget v2, v0, Lsg;->g:I

    iget-object v3, v0, Lsg;->m:Ljava/lang/Object;

    iget-object v4, v0, Lsg;->l:Ljava/lang/Object;

    iget-object v5, v0, Lsg;->k:Ljava/lang/Object;

    iget-object v6, v0, Lsg;->j:Ljava/lang/Object;

    iget-object v7, v0, Lsg;->i:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    move-object v8, v7

    check-cast v8, Ljava/util/ArrayList;

    move-object v9, v6

    check-cast v9, Landroidx/compose/ui/Modifier;

    move-object v10, v5

    check-cast v10, Landroidx/compose/ui/Alignment;

    move-object v11, v4

    check-cast v11, Ljava/util/List;

    move-object v12, v3

    check-cast v12, Ljava/util/List;

    move-object/from16 v17, p1

    check-cast v17, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 v1, v2, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v18

    iget v1, v0, Lsg;->h:I

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v19

    iget-object v13, v0, Lsg;->c:Lkotlin/jvm/functions/Function1;

    iget-object v14, v0, Lsg;->d:Lkotlin/jvm/functions/Function1;

    iget-object v15, v0, Lsg;->e:Lkotlin/jvm/functions/Function2;

    iget-object v0, v0, Lsg;->f:Lkotlin/jvm/functions/Function0;

    move-object/from16 v16, v0

    invoke-static/range {v8 .. v19}, Landroidx/navigation3/ui/NavDisplayKt;->b(Ljava/util/ArrayList;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    move-object v1, v7

    check-cast v1, Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState;

    check-cast v6, Landroidx/compose/material3/SnackbarHostState;

    check-cast v5, Lkotlin/jvm/functions/Function0;

    check-cast v3, Lkotlin/jvm/functions/Function2;

    move-object v8, v4

    check-cast v8, Lkotlin/jvm/functions/Function0;

    move-object/from16 v10, p1

    check-cast v10, Landroidx/compose/runtime/Composer;

    move-object/from16 v4, p2

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v11

    move-object v2, v6

    move-object v6, v3

    iget-object v3, v0, Lsg;->f:Lkotlin/jvm/functions/Function0;

    move-object v4, v5

    iget-object v5, v0, Lsg;->e:Lkotlin/jvm/functions/Function2;

    iget-object v7, v0, Lsg;->c:Lkotlin/jvm/functions/Function1;

    iget-object v9, v0, Lsg;->d:Lkotlin/jvm/functions/Function1;

    iget v12, v0, Lsg;->h:I

    invoke-static/range {v1 .. v12}, Lcom/vuitton/android/presentation/screen/booking/summary/components/BookingSummaryScreenKt;->a(Lcom/vuitton/android/presentation/screen/booking/summary/models/PreBookViewState;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
