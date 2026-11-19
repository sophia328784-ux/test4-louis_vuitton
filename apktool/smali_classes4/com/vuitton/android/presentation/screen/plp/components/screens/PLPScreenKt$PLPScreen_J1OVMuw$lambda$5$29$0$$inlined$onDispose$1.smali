.class public final Lcom/vuitton/android/presentation/screen/plp/components/screens/PLPScreenKt$PLPScreen_J1OVMuw$lambda$5$29$0$$inlined$onDispose$1;
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
        "com/vuitton/android/presentation/screen/plp/components/screens/PLPScreenKt$PLPScreen_J1OVMuw$lambda$5$29$0$$inlined$onDispose$1",
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
.field public final synthetic a:Lkotlin/jvm/functions/Function1;

.field public final synthetic b:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/plp/components/screens/PLPScreenKt$PLPScreen_J1OVMuw$lambda$5$29$0$$inlined$onDispose$1;->a:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/plp/components/screens/PLPScreenKt$PLPScreen_J1OVMuw$lambda$5$29$0$$inlined$onDispose$1;->b:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/plp/components/screens/PLPScreenKt$PLPScreen_J1OVMuw$lambda$5$29$0$$inlined$onDispose$1;->a:Lkotlin/jvm/functions/Function1;

    sget-object v1, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FiltersButtonState;->Hidden:Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FiltersButtonState;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/components/screens/PLPScreenKt$PLPScreen_J1OVMuw$lambda$5$29$0$$inlined$onDispose$1;->b:Lkotlin/jvm/functions/Function1;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
