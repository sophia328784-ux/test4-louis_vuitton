.class public final synthetic Lrx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/material3/SnackbarHostState;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;II)V
    .locals 0

    iput p4, p0, Lrx;->b:I

    iput-object p1, p0, Lrx;->c:Landroidx/compose/material3/SnackbarHostState;

    iput-object p2, p0, Lrx;->d:Lkotlin/jvm/functions/Function0;

    iput p3, p0, Lrx;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lrx;->b:I

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    packed-switch v0, :pswitch_data_0

    iget p2, p0, Lrx;->e:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    iget-object v0, p0, Lrx;->c:Landroidx/compose/material3/SnackbarHostState;

    iget-object p0, p0, Lrx;->d:Lkotlin/jvm/functions/Function0;

    invoke-static {v0, p0, p1, p2}, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailErrorScreenKt;->a(Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget p2, p0, Lrx;->e:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    iget-object v0, p0, Lrx;->c:Landroidx/compose/material3/SnackbarHostState;

    iget-object p0, p0, Lrx;->d:Lkotlin/jvm/functions/Function0;

    invoke-static {v0, p0, p1, p2}, Lcom/vuitton/android/presentation/screen/feed/components/FeedErrorScreenKt;->a(Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
