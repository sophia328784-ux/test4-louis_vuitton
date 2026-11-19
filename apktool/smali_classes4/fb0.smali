.class public final synthetic Lfb0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Z

.field public final synthetic e:Z

.field public final synthetic f:I

.field public final synthetic g:I

.field public final synthetic h:Ljava/lang/Object;

.field public final synthetic i:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;IILjava/lang/String;ZZLkotlin/jvm/functions/Function0;I)V
    .locals 0

    const/4 p8, 0x0

    iput p8, p0, Lfb0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfb0;->c:Landroidx/compose/ui/Modifier;

    iput p2, p0, Lfb0;->f:I

    iput p3, p0, Lfb0;->g:I

    iput-object p4, p0, Lfb0;->h:Ljava/lang/Object;

    iput-boolean p5, p0, Lfb0;->d:Z

    iput-boolean p6, p0, Lfb0;->e:Z

    iput-object p7, p0, Lfb0;->i:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/orders/models/OrderPageUiModel;ZZLkotlin/jvm/functions/Function3;II)V
    .locals 1

    .line 21
    const/4 v0, 0x1

    iput v0, p0, Lfb0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfb0;->c:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lfb0;->h:Ljava/lang/Object;

    iput-boolean p3, p0, Lfb0;->d:Z

    iput-boolean p4, p0, Lfb0;->e:Z

    iput-object p5, p0, Lfb0;->i:Ljava/lang/Object;

    iput p6, p0, Lfb0;->f:I

    iput p7, p0, Lfb0;->g:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;ZZII)V
    .locals 1

    .line 22
    const/4 v0, 0x3

    iput v0, p0, Lfb0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfb0;->c:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lfb0;->h:Ljava/lang/Object;

    iput-object p3, p0, Lfb0;->i:Ljava/lang/Object;

    iput-boolean p4, p0, Lfb0;->d:Z

    iput-boolean p5, p0, Lfb0;->e:Z

    iput p6, p0, Lfb0;->f:I

    iput p7, p0, Lfb0;->g:I

    return-void
.end method

.method public synthetic constructor <init>(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SwitchColors;II)V
    .locals 1

    .line 23
    const/4 v0, 0x2

    iput v0, p0, Lfb0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lfb0;->d:Z

    iput-object p2, p0, Lfb0;->h:Ljava/lang/Object;

    iput-object p3, p0, Lfb0;->c:Landroidx/compose/ui/Modifier;

    iput-boolean p4, p0, Lfb0;->e:Z

    iput-object p5, p0, Lfb0;->i:Ljava/lang/Object;

    iput p6, p0, Lfb0;->f:I

    iput p7, p0, Lfb0;->g:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget v0, p0, Lfb0;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lfb0;->h:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    iget-object v0, p0, Lfb0;->i:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lfb0;->f:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v7

    iget-object v1, p0, Lfb0;->c:Landroidx/compose/ui/Modifier;

    iget-boolean v4, p0, Lfb0;->d:Z

    iget-boolean v5, p0, Lfb0;->e:Z

    iget v8, p0, Lfb0;->g:I

    invoke-static/range {v1 .. v8}, Lcom/vuitton/android/presentation/screen/thankyou/components/ThankYouScreenKt;->h(Landroidx/compose/ui/Modifier;Ljava/lang/String;Ljava/lang/String;ZZLandroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lfb0;->h:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lkotlin/jvm/functions/Function1;

    iget-object v0, p0, Lfb0;->i:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroidx/compose/material3/SwitchColors;

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lfb0;->f:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v7

    iget-boolean v1, p0, Lfb0;->d:Z

    iget-object v3, p0, Lfb0;->c:Landroidx/compose/ui/Modifier;

    iget-boolean v4, p0, Lfb0;->e:Z

    iget v8, p0, Lfb0;->g:I

    invoke-static/range {v1 .. v8}, Landroidx/compose/material3/SwitchKt;->a(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/SwitchColors;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    iget-object v0, p0, Lfb0;->h:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/vuitton/android/presentation/screen/orders/models/OrderPageUiModel;

    iget-object v0, p0, Lfb0;->i:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function3;

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lfb0;->f:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v7

    iget-object v1, p0, Lfb0;->c:Landroidx/compose/ui/Modifier;

    iget-boolean v3, p0, Lfb0;->d:Z

    iget-boolean v4, p0, Lfb0;->e:Z

    iget v8, p0, Lfb0;->g:I

    invoke-static/range {v1 .. v8}, Lcom/vuitton/android/presentation/screen/orders/components/list/OrderListScreenKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/orders/models/OrderPageUiModel;ZZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    iget-object v0, p0, Lfb0;->h:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    iget-object v0, p0, Lfb0;->i:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lkotlin/jvm/functions/Function0;

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p1, 0x1b6007

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v9

    iget-object v1, p0, Lfb0;->c:Landroidx/compose/ui/Modifier;

    iget v2, p0, Lfb0;->f:I

    iget v3, p0, Lfb0;->g:I

    iget-boolean v5, p0, Lfb0;->d:Z

    iget-boolean v6, p0, Lfb0;->e:Z

    invoke-static/range {v1 .. v9}, Lcom/vuitton/android/presentation/compose/LvVideoPlayerKt;->a(Landroidx/compose/ui/Modifier;IILjava/lang/String;ZZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
