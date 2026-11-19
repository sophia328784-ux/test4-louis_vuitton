.class public final synthetic Lyb0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/maintenance/MaintenanceActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/maintenance/MaintenanceActivity;I)V
    .locals 0

    iput p2, p0, Lyb0;->b:I

    iput-object p1, p0, Lyb0;->c:Lcom/vuitton/android/presentation/screen/maintenance/MaintenanceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lyb0;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    iget-object p0, p0, Lyb0;->c:Lcom/vuitton/android/presentation/screen/maintenance/MaintenanceActivity;

    const/4 v3, 0x0

    const/4 v4, 0x1

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/maintenance/MaintenanceActivity;->q:Lcom/vuitton/android/presentation/screen/maintenance/MaintenanceActivity$Companion;

    and-int/lit8 v0, p2, 0x3

    if-eq v0, v2, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    and-int/2addr p2, v4

    invoke-interface {p1, p2, v0}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_5

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p2

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez p2, :cond_1

    if-ne v0, v2, :cond_2

    :cond_1
    new-instance v0, Lzb0;

    invoke-direct {v0, p0, v3}, Lzb0;-><init>(Lcom/vuitton/android/presentation/screen/maintenance/MaintenanceActivity;I)V

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p2

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez p2, :cond_3

    if-ne v5, v2, :cond_4

    :cond_3
    new-instance v5, Lzb0;

    invoke-direct {v5, p0, v4}, Lzb0;-><init>(Lcom/vuitton/android/presentation/screen/maintenance/MaintenanceActivity;I)V

    invoke-interface {p1, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v0, v5, p1, v3}, Lcom/vuitton/android/presentation/screen/maintenance/MaintenanceComposableKt;->c(Lcom/vuitton/android/presentation/screen/maintenance/MaintenanceViewModelImpl;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1

    :cond_5
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/maintenance/MaintenanceActivity;->q:Lcom/vuitton/android/presentation/screen/maintenance/MaintenanceActivity$Companion;

    and-int/lit8 v0, p2, 0x3

    if-eq v0, v2, :cond_6

    move v3, v4

    :cond_6
    and-int/2addr p2, v4

    invoke-interface {p1, p2, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_7

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance p2, Lyb0;

    invoke-direct {p2, p0, v4}, Lyb0;-><init>(Lcom/vuitton/android/presentation/screen/maintenance/MaintenanceActivity;I)V

    const p0, -0x1e3daf5c

    invoke-static {p0, p2, p1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object p0

    const/16 p2, 0x30

    invoke-static {v1, p0, p1, p2}, Lcom/vuitton/android/designkit/ui/theme/ThemeKt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_2

    :cond_7
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
