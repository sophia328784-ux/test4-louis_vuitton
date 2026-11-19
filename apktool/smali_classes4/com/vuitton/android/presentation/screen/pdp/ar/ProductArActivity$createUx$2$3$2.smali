.class final Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$createUx$2$3$2;
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
.field public final synthetic b:Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$createUx$2$3$2;->b:Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer$ModelEvent$Update;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$createUx$2$3$2;->b:Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;

    iget-object p0, p0, Lcom/vuitton/android/presentation/ar/renderer/ModelRenderer;->f:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->a(Ljava/lang/Object;)Z

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
