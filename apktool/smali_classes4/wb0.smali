.class public final synthetic Lwb0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    iput p3, p0, Lwb0;->b:I

    iput-object p1, p0, Lwb0;->c:Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    iput-object p2, p0, Lwb0;->d:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lwb0;->b:I

    iget-object v1, p0, Lwb0;->c:Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;

    check-cast p1, Landroidx/compose/animation/AnimatedVisibilityScope;

    move-object v4, p2

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;->d()I

    move-result v2

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;->f()Z

    move-result v7

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lwb0;->d:Lkotlin/jvm/functions/Function0;

    invoke-static/range {v2 .. v7}, Lcom/vuitton/android/presentation/screen/main/components/MainNavBarKt;->b(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;->g()I

    move-result v2

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/main/models/MainTopLevelDestination;->f()Z

    move-result v7

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lwb0;->d:Lkotlin/jvm/functions/Function0;

    invoke-static/range {v2 .. v7}, Lcom/vuitton/android/presentation/screen/main/components/MainNavBarKt;->b(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
