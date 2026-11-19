.class public final Lcom/vuitton/android/designkit/components/components/LVSwipeToRevealKt$SwipeToRevealContent$lambda$6$0$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/vuitton/android/designkit/components/components/LVSwipeToRevealKt$SwipeToRevealContent$lambda$6$0$$inlined$onDispose$1",
        "Landroidx/compose/runtime/DisposableEffectResult;",
        "runtime"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(ZLkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-boolean p1, p0, Lcom/vuitton/android/designkit/components/components/LVSwipeToRevealKt$SwipeToRevealContent$lambda$6$0$$inlined$onDispose$1;->a:Z

    iput-object p2, p0, Lcom/vuitton/android/designkit/components/components/LVSwipeToRevealKt$SwipeToRevealContent$lambda$6$0$$inlined$onDispose$1;->b:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    iget-boolean v0, p0, Lcom/vuitton/android/designkit/components/components/LVSwipeToRevealKt$SwipeToRevealContent$lambda$6$0$$inlined$onDispose$1;->a:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/designkit/components/components/LVSwipeToRevealKt$SwipeToRevealContent$lambda$6$0$$inlined$onDispose$1;->b:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method
