.class public final synthetic Lw70;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/designkit/components/components/SwipeAction;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/designkit/components/components/SwipeAction;I)V
    .locals 0

    iput p2, p0, Lw70;->b:I

    iput-object p1, p0, Lw70;->c:Lcom/vuitton/android/designkit/components/components/SwipeAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lw70;->b:I

    iget-object p0, p0, Lw70;->c:Lcom/vuitton/android/designkit/components/components/SwipeAction;

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/vuitton/android/designkit/components/components/LVSwipeToRevealKt;->a:F

    iget-object p0, p0, Lcom/vuitton/android/designkit/components/components/SwipeAction;->d:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_0
    sget v0, Lcom/vuitton/android/designkit/components/components/LVSwipeToRevealKt;->a:F

    iget-object p0, p0, Lcom/vuitton/android/designkit/components/components/SwipeAction;->d:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
