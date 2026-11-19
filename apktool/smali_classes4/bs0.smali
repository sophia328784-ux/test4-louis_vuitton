.class public final synthetic Lbs0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;

.field public final synthetic e:Lkotlin/jvm/functions/Function0;

.field public final synthetic f:Lkotlin/jvm/functions/Function0;

.field public final synthetic g:Lkotlin/jvm/functions/Function1;

.field public final synthetic h:Lkotlin/jvm/functions/Function1;

.field public final synthetic i:Lkotlin/jvm/functions/Function0;

.field public final synthetic j:Lkotlin/jvm/functions/Function0;

.field public final synthetic k:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;II)V
    .locals 0

    iput p11, p0, Lbs0;->b:I

    iput-object p1, p0, Lbs0;->c:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lbs0;->d:Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;

    iput-object p3, p0, Lbs0;->e:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lbs0;->f:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Lbs0;->g:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Lbs0;->h:Lkotlin/jvm/functions/Function1;

    iput-object p7, p0, Lbs0;->i:Lkotlin/jvm/functions/Function0;

    iput-object p8, p0, Lbs0;->j:Lkotlin/jvm/functions/Function0;

    iput-object p9, p0, Lbs0;->k:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget v0, p0, Lbs0;->b:I

    packed-switch v0, :pswitch_data_0

    move-object v10, p1

    check-cast v10, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v11

    iget-object v1, p0, Lbs0;->c:Landroidx/compose/ui/Modifier;

    iget-object v2, p0, Lbs0;->d:Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;

    iget-object v3, p0, Lbs0;->e:Lkotlin/jvm/functions/Function0;

    iget-object v4, p0, Lbs0;->f:Lkotlin/jvm/functions/Function0;

    iget-object v5, p0, Lbs0;->g:Lkotlin/jvm/functions/Function1;

    iget-object v6, p0, Lbs0;->h:Lkotlin/jvm/functions/Function1;

    iget-object v7, p0, Lbs0;->i:Lkotlin/jvm/functions/Function0;

    iget-object v8, p0, Lbs0;->j:Lkotlin/jvm/functions/Function0;

    iget-object v9, p0, Lbs0;->k:Lkotlin/jvm/functions/Function1;

    invoke-static/range {v1 .. v11}, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailBffScreenKt;->h(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v10

    iget-object v0, p0, Lbs0;->c:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Lbs0;->d:Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;

    iget-object v2, p0, Lbs0;->e:Lkotlin/jvm/functions/Function0;

    iget-object v3, p0, Lbs0;->f:Lkotlin/jvm/functions/Function0;

    iget-object v4, p0, Lbs0;->g:Lkotlin/jvm/functions/Function1;

    iget-object v5, p0, Lbs0;->h:Lkotlin/jvm/functions/Function1;

    iget-object v6, p0, Lbs0;->i:Lkotlin/jvm/functions/Function0;

    iget-object v7, p0, Lbs0;->j:Lkotlin/jvm/functions/Function0;

    iget-object v8, p0, Lbs0;->k:Lkotlin/jvm/functions/Function1;

    invoke-static/range {v0 .. v10}, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailBffScreenKt;->h(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
