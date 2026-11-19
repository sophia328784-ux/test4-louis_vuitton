.class public final synthetic Lds0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lkotlin/jvm/functions/Function0;

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(IILandroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput p2, p0, Lds0;->b:I

    iput-object p3, p0, Lds0;->c:Landroidx/compose/ui/Modifier;

    iput-object p4, p0, Lds0;->d:Ljava/lang/String;

    iput-object p5, p0, Lds0;->e:Lkotlin/jvm/functions/Function0;

    iput p1, p0, Lds0;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lds0;->b:I

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch v0, :pswitch_data_0

    iget p2, p0, Lds0;->f:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    iget-object v0, p0, Lds0;->c:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Lds0;->d:Ljava/lang/String;

    iget-object p0, p0, Lds0;->e:Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailScreenKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget p2, p0, Lds0;->f:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    iget-object v0, p0, Lds0;->c:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Lds0;->d:Ljava/lang/String;

    iget-object p0, p0, Lds0;->e:Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailBffScreenKt;->c(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
