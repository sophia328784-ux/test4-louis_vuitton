.class public final synthetic Lhs0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:F


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;FII)V
    .locals 0

    iput p4, p0, Lhs0;->b:I

    iput-object p1, p0, Lhs0;->c:Ljava/lang/String;

    iput p2, p0, Lhs0;->d:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lhs0;->b:I

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch v0, :pswitch_data_0

    const/4 p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    iget v0, p0, Lhs0;->d:F

    iget-object p0, p0, Lhs0;->c:Ljava/lang/String;

    invoke-static {v0, p2, p1, p0}, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailFollowUpKt;->b(FILandroidx/compose/runtime/Composer;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    const/4 p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    iget v0, p0, Lhs0;->d:F

    iget-object p0, p0, Lhs0;->c:Ljava/lang/String;

    invoke-static {v0, p2, p1, p0}, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailFollowUpKt;->c(FILandroidx/compose/runtime/Composer;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    const/4 p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    iget v0, p0, Lhs0;->d:F

    iget-object p0, p0, Lhs0;->c:Ljava/lang/String;

    invoke-static {v0, p2, p1, p0}, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailFollowUpKt;->a(FILandroidx/compose/runtime/Composer;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    const/4 p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    iget v0, p0, Lhs0;->d:F

    iget-object p0, p0, Lhs0;->c:Ljava/lang/String;

    invoke-static {v0, p2, p1, p0}, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailFollowUpBffKt;->c(FILandroidx/compose/runtime/Composer;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    const/4 p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    iget v0, p0, Lhs0;->d:F

    iget-object p0, p0, Lhs0;->c:Ljava/lang/String;

    invoke-static {v0, p2, p1, p0}, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailFollowUpBffKt;->b(FILandroidx/compose/runtime/Composer;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    const/4 p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    iget v0, p0, Lhs0;->d:F

    iget-object p0, p0, Lhs0;->c:Ljava/lang/String;

    invoke-static {v0, p2, p1, p0}, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailFollowUpBffKt;->a(FILandroidx/compose/runtime/Composer;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
