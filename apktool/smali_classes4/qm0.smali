.class public final synthetic Lqm0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Z

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;ZZZI)V
    .locals 0

    const/4 p6, 0x0

    iput p6, p0, Lqm0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqm0;->f:Ljava/lang/Object;

    iput-object p2, p0, Lqm0;->g:Ljava/lang/Object;

    iput-boolean p3, p0, Lqm0;->c:Z

    iput-boolean p4, p0, Lqm0;->d:Z

    iput-boolean p5, p0, Lqm0;->e:Z

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/String;ZZLkotlin/jvm/functions/Function2;I)V
    .locals 0

    .line 17
    const/4 p6, 0x2

    iput p6, p0, Lqm0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lqm0;->c:Z

    iput-object p2, p0, Lqm0;->g:Ljava/lang/Object;

    iput-boolean p3, p0, Lqm0;->d:Z

    iput-boolean p4, p0, Lqm0;->e:Z

    iput-object p5, p0, Lqm0;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ZZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    .line 18
    const/4 p6, 0x1

    iput p6, p0, Lqm0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lqm0;->c:Z

    iput-boolean p2, p0, Lqm0;->d:Z

    iput-boolean p3, p0, Lqm0;->e:Z

    iput-object p4, p0, Lqm0;->f:Ljava/lang/Object;

    iput-object p5, p0, Lqm0;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lqm0;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lqm0;->g:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    iget-object v0, p0, Lqm0;->f:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v7

    iget-boolean v1, p0, Lqm0;->c:Z

    iget-boolean v3, p0, Lqm0;->d:Z

    iget-boolean v4, p0, Lqm0;->e:Z

    invoke-static/range {v1 .. v7}, Lcom/vuitton/android/presentation/screen/storemode/filters/components/TextFilterComponentKt;->a(ZLjava/lang/String;ZZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lqm0;->f:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function0;

    iget-object v0, p0, Lqm0;->g:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function0;

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v7

    iget-boolean v1, p0, Lqm0;->c:Z

    iget-boolean v2, p0, Lqm0;->d:Z

    iget-boolean v3, p0, Lqm0;->e:Z

    invoke-static/range {v1 .. v7}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/ShadeFinderResultScreenKt;->c(ZZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    iget-object v0, p0, Lqm0;->f:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/compose/ui/Modifier;

    iget-object v0, p0, Lqm0;->g:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p1, 0x181

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v7

    iget-boolean v3, p0, Lqm0;->c:Z

    iget-boolean v4, p0, Lqm0;->d:Z

    iget-boolean v5, p0, Lqm0;->e:Z

    invoke-static/range {v1 .. v7}, Lcom/vuitton/android/presentation/screen/pdp/components/subcomponents/PdpPriceKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;ZZZLandroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
