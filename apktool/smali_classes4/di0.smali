.class public final synthetic Ldi0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:F

.field public final synthetic e:Z

.field public final synthetic f:Lkotlin/jvm/functions/Function2;

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Lkotlin/Function;

.field public final synthetic i:Lkotlin/Function;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;FZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;I)V
    .locals 0

    const/4 p8, 0x1

    iput p8, p0, Ldi0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldi0;->c:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Ldi0;->g:Ljava/lang/Object;

    iput p3, p0, Ldi0;->d:F

    iput-boolean p4, p0, Ldi0;->e:Z

    iput-object p5, p0, Ldi0;->f:Lkotlin/jvm/functions/Function2;

    iput-object p6, p0, Ldi0;->h:Lkotlin/Function;

    iput-object p7, p0, Ldi0;->i:Lkotlin/Function;

    return-void
.end method

.method public synthetic constructor <init>(ZLandroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;FLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;I)V
    .locals 0

    .line 21
    const/4 p8, 0x0

    iput p8, p0, Ldi0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Ldi0;->e:Z

    iput-object p2, p0, Ldi0;->c:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Ldi0;->g:Ljava/lang/Object;

    iput p4, p0, Ldi0;->d:F

    iput-object p5, p0, Ldi0;->h:Lkotlin/Function;

    iput-object p6, p0, Ldi0;->f:Lkotlin/jvm/functions/Function2;

    iput-object p7, p0, Ldi0;->i:Lkotlin/Function;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget v0, p0, Ldi0;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ldi0;->g:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;

    iget-object v0, p0, Ldi0;->h:Lkotlin/Function;

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    iget-object v0, p0, Ldi0;->i:Lkotlin/Function;

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function2;

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v9

    iget-object v1, p0, Ldi0;->c:Landroidx/compose/ui/Modifier;

    iget v3, p0, Ldi0;->d:F

    iget-boolean v4, p0, Ldi0;->e:Z

    iget-object v5, p0, Ldi0;->f:Lkotlin/jvm/functions/Function2;

    invoke-static/range {v1 .. v9}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/StaggeredGridItemKt;->c(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;FZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Ldi0;->g:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;

    iget-object v0, p0, Ldi0;->h:Lkotlin/Function;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function0;

    iget-object v0, p0, Ldi0;->i:Lkotlin/Function;

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function3;

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v9

    iget-boolean v1, p0, Ldi0;->e:Z

    iget-object v2, p0, Ldi0;->c:Landroidx/compose/ui/Modifier;

    iget v4, p0, Ldi0;->d:F

    iget-object v6, p0, Ldi0;->f:Lkotlin/jvm/functions/Function2;

    invoke-static/range {v1 .. v9}, Lcom/vuitton/android/presentation/screen/orders/components/detail/OrderDetailScreenKt;->b(ZLandroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/orders/models/OrderViewState;FLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
