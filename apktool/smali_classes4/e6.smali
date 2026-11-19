.class public final synthetic Le6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Z

.field public final synthetic e:Lkotlin/jvm/functions/Function0;

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;IZLkotlin/jvm/functions/Function0;I)V
    .locals 0

    const/4 p5, 0x2

    iput p5, p0, Le6;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le6;->c:Landroidx/compose/ui/Modifier;

    iput p2, p0, Le6;->f:I

    iput-boolean p3, p0, Le6;->d:Z

    iput-object p4, p0, Le6;->e:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;ZI)V
    .locals 1

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Le6;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le6;->c:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Le6;->e:Lkotlin/jvm/functions/Function0;

    iput-boolean p3, p0, Le6;->d:Z

    iput p4, p0, Le6;->f:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;ZILkotlin/jvm/functions/Function0;I)V
    .locals 0

    .line 16
    const/4 p5, 0x3

    iput p5, p0, Le6;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le6;->c:Landroidx/compose/ui/Modifier;

    iput-boolean p2, p0, Le6;->d:Z

    iput p3, p0, Le6;->f:I

    iput-object p4, p0, Le6;->e:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function0;I)V
    .locals 1

    .line 17
    const/4 v0, 0x1

    iput v0, p0, Le6;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le6;->c:Landroidx/compose/ui/Modifier;

    iput-boolean p2, p0, Le6;->d:Z

    iput-object p3, p0, Le6;->e:Lkotlin/jvm/functions/Function0;

    iput p4, p0, Le6;->f:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Le6;->b:I

    packed-switch v0, :pswitch_data_0

    move-object v3, p1

    check-cast v3, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v2

    iget v1, p0, Le6;->f:I

    iget-object v4, p0, Le6;->c:Landroidx/compose/ui/Modifier;

    iget-object v5, p0, Le6;->e:Lkotlin/jvm/functions/Function0;

    iget-boolean v6, p0, Le6;->d:Z

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpWishListTopBarButtonKt;->a(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    move-object v2, p1

    check-cast v2, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v1

    iget v0, p0, Le6;->f:I

    iget-object v3, p0, Le6;->c:Landroidx/compose/ui/Modifier;

    iget-object v4, p0, Le6;->e:Lkotlin/jvm/functions/Function0;

    iget-boolean v5, p0, Le6;->d:Z

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/main/components/MainNavBarKt;->b(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p2, p0, Le6;->f:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    iget-object v0, p0, Le6;->c:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Le6;->e:Lkotlin/jvm/functions/Function0;

    iget-boolean p0, p0, Le6;->d:Z

    invoke-static {p2, p1, v0, v1, p0}, Lcom/vuitton/android/presentation/compose/LVPlayPauseButtonKt;->a(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p2, p0, Le6;->f:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    iget-object v0, p0, Le6;->c:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Le6;->e:Lkotlin/jvm/functions/Function0;

    iget-boolean p0, p0, Le6;->d:Z

    invoke-static {p2, p1, v0, v1, p0}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt;->c(ILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
