.class public final synthetic Lxf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:Ljava/util/List;

.field public final synthetic h:Lkotlin/Function;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lkotlinx/collections/immutable/ImmutableList;ILkotlin/jvm/functions/Function1;II)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lxf;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxf;->c:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lxf;->g:Ljava/util/List;

    iput p3, p0, Lxf;->d:I

    iput-object p4, p0, Lxf;->h:Lkotlin/Function;

    iput p5, p0, Lxf;->e:I

    iput p6, p0, Lxf;->f:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Landroidx/compose/ui/Modifier;ILkotlin/jvm/functions/Function3;II)V
    .locals 1

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lxf;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxf;->g:Ljava/util/List;

    iput-object p2, p0, Lxf;->c:Landroidx/compose/ui/Modifier;

    iput p3, p0, Lxf;->d:I

    iput-object p4, p0, Lxf;->h:Lkotlin/Function;

    iput p5, p0, Lxf;->e:I

    iput p6, p0, Lxf;->f:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lxf;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lxf;->g:Ljava/util/List;

    move-object v2, v0

    check-cast v2, Lkotlinx/collections/immutable/ImmutableList;

    iget-object v0, p0, Lxf;->h:Lkotlin/Function;

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lxf;->e:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v6

    iget-object v1, p0, Lxf;->c:Landroidx/compose/ui/Modifier;

    iget v3, p0, Lxf;->d:I

    iget v7, p0, Lxf;->f:I

    invoke-static/range {v1 .. v7}, Lcom/vuitton/android/presentation/screen/reinsurance/components/ReinsuranceListKt;->b(Landroidx/compose/ui/Modifier;Lkotlinx/collections/immutable/ImmutableList;ILkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lxf;->h:Lkotlin/Function;

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function3;

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lxf;->e:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v6

    iget-object v1, p0, Lxf;->g:Ljava/util/List;

    iget-object v2, p0, Lxf;->c:Landroidx/compose/ui/Modifier;

    iget v3, p0, Lxf;->d:I

    iget v7, p0, Lxf;->f:I

    invoke-static/range {v1 .. v7}, Lcom/vuitton/android/presentation/screen/booking/form/components/module/BookingModuleGridKt;->a(Ljava/util/List;Landroidx/compose/ui/Modifier;ILkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
