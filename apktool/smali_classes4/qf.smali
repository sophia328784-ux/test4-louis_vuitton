.class public final synthetic Lqf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Z

.field public final synthetic g:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;II)V
    .locals 0

    iput p7, p0, Lqf;->b:I

    iput-object p1, p0, Lqf;->c:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lqf;->d:Ljava/lang/String;

    iput-object p3, p0, Lqf;->e:Ljava/lang/String;

    iput-boolean p4, p0, Lqf;->f:Z

    iput-object p5, p0, Lqf;->g:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lqf;->b:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v8

    iget-object v2, p0, Lqf;->c:Landroidx/compose/ui/Modifier;

    iget-object v3, p0, Lqf;->d:Ljava/lang/String;

    iget-object v4, p0, Lqf;->e:Ljava/lang/String;

    iget-boolean v5, p0, Lqf;->f:Z

    iget-object v6, p0, Lqf;->g:Lkotlin/jvm/functions/Function0;

    invoke-static/range {v2 .. v8}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpHeaderKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v6

    iget-object v0, p0, Lqf;->c:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Lqf;->d:Ljava/lang/String;

    iget-object v2, p0, Lqf;->e:Ljava/lang/String;

    iget-boolean v3, p0, Lqf;->f:Z

    iget-object v4, p0, Lqf;->g:Lkotlin/jvm/functions/Function0;

    invoke-static/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/plp/components/composables/PLPHeaderKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v6

    iget-object v0, p0, Lqf;->c:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Lqf;->d:Ljava/lang/String;

    iget-object v2, p0, Lqf;->e:Ljava/lang/String;

    iget-boolean v3, p0, Lqf;->f:Z

    iget-object v4, p0, Lqf;->g:Lkotlin/jvm/functions/Function0;

    invoke-static/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/booking/details/components/BookingInfoRowKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
