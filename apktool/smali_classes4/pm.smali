.class public final synthetic Lpm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Z

.field public final synthetic f:Lkotlin/jvm/functions/Function0;

.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;II)V
    .locals 0

    .line 17
    iput p6, p0, Lpm;->b:I

    iput-object p1, p0, Lpm;->c:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lpm;->d:Ljava/lang/String;

    iput-boolean p3, p0, Lpm;->e:Z

    iput-object p4, p0, Lpm;->f:Lkotlin/jvm/functions/Function0;

    iput p5, p0, Lpm;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;ZILjava/lang/String;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    const/4 p6, 0x2

    iput p6, p0, Lpm;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpm;->c:Landroidx/compose/ui/Modifier;

    iput-boolean p2, p0, Lpm;->e:Z

    iput p3, p0, Lpm;->g:I

    iput-object p4, p0, Lpm;->d:Ljava/lang/String;

    iput-object p5, p0, Lpm;->f:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget v0, p0, Lpm;->b:I

    iget v1, p0, Lpm;->g:I

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v4

    iget v3, p0, Lpm;->g:I

    iget-object v6, p0, Lpm;->c:Landroidx/compose/ui/Modifier;

    iget-object v7, p0, Lpm;->d:Ljava/lang/String;

    iget-object v8, p0, Lpm;->f:Lkotlin/jvm/functions/Function0;

    iget-boolean v9, p0, Lpm;->e:Z

    invoke-static/range {v3 .. v9}, Lcom/vuitton/android/presentation/screen/booking/summary/components/SummaryStickyBottomViewKt;->a(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    or-int/lit8 p1, v1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v5

    iget-object v0, p0, Lpm;->c:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Lpm;->d:Ljava/lang/String;

    iget-boolean v2, p0, Lpm;->e:Z

    iget-object v3, p0, Lpm;->f:Lkotlin/jvm/functions/Function0;

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/portal/components/PortalSliderComponentKt;->d(Landroidx/compose/ui/Modifier;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p1, v1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v5

    iget-object v0, p0, Lpm;->c:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Lpm;->d:Ljava/lang/String;

    iget-boolean v2, p0, Lpm;->e:Z

    iget-object v3, p0, Lpm;->f:Lkotlin/jvm/functions/Function0;

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/compose/components/CollapsingDetailListKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
