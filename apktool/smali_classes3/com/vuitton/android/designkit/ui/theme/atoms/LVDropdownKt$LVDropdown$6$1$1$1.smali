.class final Lcom/vuitton/android/designkit/ui/theme/atoms/LVDropdownKt$LVDropdown$6$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Lcom/vuitton/android/designkit/ui/theme/atoms/DropdownState;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/designkit/ui/theme/atoms/DropdownState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/LVDropdownKt$LVDropdown$6$1$1$1;->b:Lcom/vuitton/android/designkit/ui/theme/atoms/DropdownState;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/foundation/interaction/Interaction;

    instance-of p1, p1, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/LVDropdownKt$LVDropdown$6$1$1$1;->b:Lcom/vuitton/android/designkit/ui/theme/atoms/DropdownState;

    invoke-virtual {p0}, Lcom/vuitton/android/designkit/ui/theme/atoms/DropdownState;->a()Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/DropdownState;->b:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/DropdownState;->c:Landroidx/compose/runtime/MutableState;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
