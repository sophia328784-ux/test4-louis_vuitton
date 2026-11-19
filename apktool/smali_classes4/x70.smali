.class public final synthetic Lx70;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Ljava/util/List;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lx70;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx70;->c:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lx70;->d:Ljava/util/List;

    iput p3, p0, Lx70;->e:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Ljava/util/List;II)V
    .locals 0

    .line 13
    const/4 p4, 0x1

    iput p4, p0, Lx70;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx70;->c:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lx70;->d:Ljava/util/List;

    iput p3, p0, Lx70;->e:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lx70;->b:I

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch v0, :pswitch_data_0

    const/4 p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    iget-object v0, p0, Lx70;->c:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Lx70;->d:Ljava/util/List;

    iget p0, p0, Lx70;->e:I

    invoke-static {v0, v1, p0, p1, p2}, Lcom/vuitton/android/presentation/screen/authentication/common/components/NativeAuthenticationTitleKt;->a(Landroidx/compose/ui/Modifier;Ljava/util/List;ILandroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget p2, p0, Lx70;->e:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    iget-object v0, p0, Lx70;->c:Landroidx/compose/ui/Modifier;

    iget-object p0, p0, Lx70;->d:Ljava/util/List;

    invoke-static {v0, p0, p1, p2}, Lcom/vuitton/android/designkit/components/components/LVSwipeToRevealKt;->b(Landroidx/compose/ui/Modifier;Ljava/util/List;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
