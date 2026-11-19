.class public final synthetic Lkg0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/navigation/NavHostController;

.field public final synthetic d:Landroidx/navigation/NavGraph;

.field public final synthetic e:Landroidx/compose/ui/Modifier;

.field public final synthetic f:Landroidx/compose/ui/Alignment;

.field public final synthetic g:Lkotlin/jvm/functions/Function1;

.field public final synthetic h:Lkotlin/jvm/functions/Function1;

.field public final synthetic i:Lkotlin/jvm/functions/Function1;

.field public final synthetic j:Lkotlin/jvm/functions/Function1;

.field public final synthetic k:Lkotlin/jvm/functions/Function1;

.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;II)V
    .locals 0

    iput p11, p0, Lkg0;->b:I

    iput-object p1, p0, Lkg0;->c:Landroidx/navigation/NavHostController;

    iput-object p2, p0, Lkg0;->d:Landroidx/navigation/NavGraph;

    iput-object p3, p0, Lkg0;->e:Landroidx/compose/ui/Modifier;

    iput-object p4, p0, Lkg0;->f:Landroidx/compose/ui/Alignment;

    iput-object p5, p0, Lkg0;->g:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Lkg0;->h:Lkotlin/jvm/functions/Function1;

    iput-object p7, p0, Lkg0;->i:Lkotlin/jvm/functions/Function1;

    iput-object p8, p0, Lkg0;->j:Lkotlin/jvm/functions/Function1;

    iput-object p9, p0, Lkg0;->k:Lkotlin/jvm/functions/Function1;

    iput p10, p0, Lkg0;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget v0, p0, Lkg0;->b:I

    packed-switch v0, :pswitch_data_0

    move-object v10, p1

    check-cast v10, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lkg0;->l:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v11

    iget-object v1, p0, Lkg0;->c:Landroidx/navigation/NavHostController;

    iget-object v2, p0, Lkg0;->d:Landroidx/navigation/NavGraph;

    iget-object v3, p0, Lkg0;->e:Landroidx/compose/ui/Modifier;

    iget-object v4, p0, Lkg0;->f:Landroidx/compose/ui/Alignment;

    iget-object v5, p0, Lkg0;->g:Lkotlin/jvm/functions/Function1;

    iget-object v6, p0, Lkg0;->h:Lkotlin/jvm/functions/Function1;

    iget-object v7, p0, Lkg0;->i:Lkotlin/jvm/functions/Function1;

    iget-object v8, p0, Lkg0;->j:Lkotlin/jvm/functions/Function1;

    iget-object v9, p0, Lkg0;->k:Lkotlin/jvm/functions/Function1;

    invoke-static/range {v1 .. v11}, Landroidx/navigation/compose/NavHostKt;->a(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lkg0;->l:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v10

    iget-object v0, p0, Lkg0;->c:Landroidx/navigation/NavHostController;

    iget-object v1, p0, Lkg0;->d:Landroidx/navigation/NavGraph;

    iget-object v2, p0, Lkg0;->e:Landroidx/compose/ui/Modifier;

    iget-object v3, p0, Lkg0;->f:Landroidx/compose/ui/Alignment;

    iget-object v4, p0, Lkg0;->g:Lkotlin/jvm/functions/Function1;

    iget-object v5, p0, Lkg0;->h:Lkotlin/jvm/functions/Function1;

    iget-object v6, p0, Lkg0;->i:Lkotlin/jvm/functions/Function1;

    iget-object v7, p0, Lkg0;->j:Lkotlin/jvm/functions/Function1;

    iget-object v8, p0, Lkg0;->k:Lkotlin/jvm/functions/Function1;

    invoke-static/range {v0 .. v10}, Landroidx/navigation/compose/NavHostKt;->a(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lkg0;->l:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v10

    iget-object v0, p0, Lkg0;->c:Landroidx/navigation/NavHostController;

    iget-object v1, p0, Lkg0;->d:Landroidx/navigation/NavGraph;

    iget-object v2, p0, Lkg0;->e:Landroidx/compose/ui/Modifier;

    iget-object v3, p0, Lkg0;->f:Landroidx/compose/ui/Alignment;

    iget-object v4, p0, Lkg0;->g:Lkotlin/jvm/functions/Function1;

    iget-object v5, p0, Lkg0;->h:Lkotlin/jvm/functions/Function1;

    iget-object v6, p0, Lkg0;->i:Lkotlin/jvm/functions/Function1;

    iget-object v7, p0, Lkg0;->j:Lkotlin/jvm/functions/Function1;

    iget-object v8, p0, Lkg0;->k:Lkotlin/jvm/functions/Function1;

    invoke-static/range {v0 .. v10}, Landroidx/navigation/compose/NavHostKt;->a(Landroidx/navigation/NavHostController;Landroidx/navigation/NavGraph;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
