.class public final synthetic Loh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Z

.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZII)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Loh;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loh;->c:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Loh;->g:Ljava/lang/Object;

    iput-object p3, p0, Loh;->h:Ljava/lang/Object;

    iput-boolean p4, p0, Loh;->d:Z

    iput p5, p0, Loh;->e:I

    iput p6, p0, Loh;->f:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Ljava/lang/Object;ZLkotlin/Function;III)V
    .locals 0

    .line 19
    iput p7, p0, Loh;->b:I

    iput-object p1, p0, Loh;->c:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Loh;->g:Ljava/lang/Object;

    iput-boolean p3, p0, Loh;->d:Z

    iput-object p4, p0, Loh;->h:Ljava/lang/Object;

    iput p5, p0, Loh;->e:I

    iput p6, p0, Loh;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;ZLjava/lang/Object;Lkotlin/Function;III)V
    .locals 0

    .line 20
    iput p7, p0, Loh;->b:I

    iput-object p1, p0, Loh;->c:Landroidx/compose/ui/Modifier;

    iput-boolean p2, p0, Loh;->d:Z

    iput-object p3, p0, Loh;->g:Ljava/lang/Object;

    iput-object p4, p0, Loh;->h:Ljava/lang/Object;

    iput p5, p0, Loh;->e:I

    iput p6, p0, Loh;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget v0, p0, Loh;->b:I

    iget v1, p0, Loh;->e:I

    iget-object v2, p0, Loh;->h:Ljava/lang/Object;

    iget-object v3, p0, Loh;->g:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    move-object v8, v3

    check-cast v8, Ljava/lang/String;

    move-object v9, v2

    check-cast v9, Lkotlin/jvm/functions/Function0;

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p1, v1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v4

    iget v5, p0, Loh;->f:I

    iget-object v7, p0, Loh;->c:Landroidx/compose/ui/Modifier;

    iget-boolean v10, p0, Loh;->d:Z

    invoke-static/range {v4 .. v10}, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/SearchBottomBarKt;->a(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast v3, Lcom/vuitton/android/designkit/ui/theme/atoms/LVSwitchLegalState;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p1, v1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v5

    iget-object v0, p0, Loh;->c:Landroidx/compose/ui/Modifier;

    move-object v1, v3

    move-object v3, v2

    iget-boolean v2, p0, Loh;->d:Z

    iget v6, p0, Loh;->f:I

    invoke-static/range {v0 .. v6}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVSwitchKt;->c(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/LVSwitchLegalState;ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast v3, Lkotlin/jvm/functions/Function0;

    check-cast v2, Lkotlin/jvm/functions/Function3;

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p1, v1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v5

    iget-object v0, p0, Loh;->c:Landroidx/compose/ui/Modifier;

    iget-boolean v1, p0, Loh;->d:Z

    iget v6, p0, Loh;->f:I

    move-object v11, v3

    move-object v3, v2

    move-object v2, v11

    invoke-static/range {v0 .. v6}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVPushCardKt;->a(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    check-cast v3, Landroidx/compose/foundation/pager/PagerState;

    check-cast v2, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p1, v1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v5

    iget-object v0, p0, Loh;->c:Landroidx/compose/ui/Modifier;

    move-object v1, v3

    iget-boolean v3, p0, Loh;->d:Z

    iget v6, p0, Loh;->f:I

    invoke-static/range {v0 .. v6}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVCapsulePageControlKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLandroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    check-cast v3, Landroidx/compose/ui/Alignment;

    check-cast v2, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p1, v1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v5

    iget-object v0, p0, Loh;->c:Landroidx/compose/ui/Modifier;

    move-object v1, v3

    move-object v3, v2

    iget-boolean v2, p0, Loh;->d:Z

    iget v6, p0, Loh;->f:I

    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/layout/BoxWithConstraintsKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
