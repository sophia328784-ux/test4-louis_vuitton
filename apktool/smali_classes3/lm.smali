.class public final synthetic Llm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Z

.field public final synthetic e:J

.field public final synthetic f:I

.field public final synthetic g:I

.field public final synthetic h:Ljava/lang/Object;

.field public final synthetic i:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/orders/models/OrderStatusUiModel;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZJII)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Llm;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llm;->c:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Llm;->h:Ljava/lang/Object;

    iput-object p3, p0, Llm;->i:Ljava/lang/Object;

    iput-boolean p4, p0, Llm;->d:Z

    iput-wide p5, p0, Llm;->e:J

    iput p7, p0, Llm;->f:I

    iput p8, p0, Llm;->g:I

    return-void
.end method

.method public synthetic constructor <init>(ZLandroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/Modifier;JILkotlin/jvm/functions/Function0;II)V
    .locals 0

    .line 21
    const/4 p8, 0x0

    iput p8, p0, Llm;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Llm;->d:Z

    iput-object p2, p0, Llm;->h:Ljava/lang/Object;

    iput-object p3, p0, Llm;->c:Landroidx/compose/ui/Modifier;

    iput-wide p4, p0, Llm;->e:J

    iput p6, p0, Llm;->f:I

    iput-object p7, p0, Llm;->i:Ljava/lang/Object;

    iput p9, p0, Llm;->g:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    iget v0, p0, Llm;->b:I

    const/4 v1, 0x1

    iget-object v2, p0, Llm;->i:Ljava/lang/Object;

    iget-object v3, p0, Llm;->h:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    move-object v5, v3

    check-cast v5, Lcom/vuitton/android/presentation/screen/orders/models/OrderStatusUiModel;

    move-object v6, v2

    check-cast v6, Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    move-object v10, p1

    check-cast v10, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Llm;->f:I

    or-int/2addr p1, v1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v11

    iget-object v4, p0, Llm;->c:Landroidx/compose/ui/Modifier;

    iget-boolean v7, p0, Llm;->d:Z

    iget-wide v8, p0, Llm;->e:J

    iget v12, p0, Llm;->g:I

    invoke-static/range {v4 .. v12}, Lcom/vuitton/android/presentation/screen/orders/components/list/OrderShippingGroupStatusKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/orders/models/OrderStatusUiModel;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZJLandroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast v3, Landroidx/compose/ui/geometry/Rect;

    move-object v6, v2

    check-cast v6, Lkotlin/jvm/functions/Function0;

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v8

    iget-boolean v0, p0, Llm;->d:Z

    iget-object v2, p0, Llm;->c:Landroidx/compose/ui/Modifier;

    move-object v1, v3

    iget-wide v3, p0, Llm;->e:J

    iget v5, p0, Llm;->f:I

    iget v9, p0, Llm;->g:I

    invoke-static/range {v0 .. v9}, Lcom/vuitton/android/presentation/compose/components/CircularRevealOverlayKt;->a(ZLandroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/Modifier;JILkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
