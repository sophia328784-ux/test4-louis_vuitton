.class public final Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$1;->invoke(Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "",
        "invoke",
        "()V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $channel:Lkotlinx/coroutines/channels/Channel;

.field final synthetic $end:Landroidx/compose/runtime/MutableState;

.field final synthetic $scope:Landroidx/constraintlayout/compose/ConstraintLayoutScope;

.field final synthetic $start:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/compose/ConstraintLayoutScope;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Lkotlinx/coroutines/channels/Channel;)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$1$1;->$scope:Landroidx/constraintlayout/compose/ConstraintLayoutScope;

    iput-object p2, p0, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$1$1;->$start:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$1$1;->$end:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$1$1;->$channel:Lkotlinx/coroutines/channels/Channel;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 53
    invoke-virtual {p0}, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$1$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 2

    new-instance v0, Landroidx/constraintlayout/compose/RawConstraintSet;

    iget-object v1, p0, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$1$1;->$scope:Landroidx/constraintlayout/compose/ConstraintLayoutScope;

    iget-object v1, v1, Landroidx/constraintlayout/compose/ConstraintLayoutBaseScope;->a:Landroidx/constraintlayout/core/parser/CLObject;

    invoke-virtual {v1}, Landroidx/constraintlayout/core/parser/CLObject;->S()Landroidx/constraintlayout/core/parser/CLObject;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/constraintlayout/compose/RawConstraintSet;-><init>(Landroidx/constraintlayout/core/parser/CLObject;)V

    iget-object v1, p0, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$1$1;->$start:Landroidx/compose/runtime/MutableState;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$1$1;->$end:Landroidx/compose/runtime/MutableState;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$1$1;->$channel:Lkotlinx/coroutines/channels/Channel;

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/SendChannel;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$1$1;->$start:Landroidx/compose/runtime/MutableState;

    invoke-interface {v1, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$1$1;->$end:Landroidx/compose/runtime/MutableState;

    iget-object p0, p0, Lcom/sightcall/core/consent/compose/ConsentViewKt$ConsentView$lambda$0$$inlined$ConstraintLayout$1$1;->$start:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method
