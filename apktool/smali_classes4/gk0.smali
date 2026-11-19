.class public final synthetic Lgk0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Lkotlin/jvm/functions/Function1;

.field public final synthetic f:Lkotlin/jvm/functions/Function1;

.field public final synthetic g:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;II)V
    .locals 0

    iput p7, p0, Lgk0;->b:I

    iput-object p1, p0, Lgk0;->c:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lgk0;->d:Ljava/util/List;

    iput-object p3, p0, Lgk0;->e:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lgk0;->f:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lgk0;->g:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lgk0;->b:I

    packed-switch v0, :pswitch_data_0

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v7

    iget-object v1, p0, Lgk0;->c:Landroidx/compose/ui/Modifier;

    iget-object v2, p0, Lgk0;->d:Ljava/util/List;

    iget-object v3, p0, Lgk0;->e:Lkotlin/jvm/functions/Function1;

    iget-object v4, p0, Lgk0;->f:Lkotlin/jvm/functions/Function1;

    iget-object v5, p0, Lgk0;->g:Lkotlin/jvm/functions/Function0;

    invoke-static/range {v1 .. v7}, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPDispatchFilterComposableKt;->b(Landroidx/compose/ui/Modifier;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v6

    iget-object v0, p0, Lgk0;->c:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Lgk0;->d:Ljava/util/List;

    iget-object v2, p0, Lgk0;->e:Lkotlin/jvm/functions/Function1;

    iget-object v3, p0, Lgk0;->f:Lkotlin/jvm/functions/Function1;

    iget-object v4, p0, Lgk0;->g:Lkotlin/jvm/functions/Function0;

    invoke-static/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPDispatchFilterComposableKt;->b(Landroidx/compose/ui/Modifier;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
