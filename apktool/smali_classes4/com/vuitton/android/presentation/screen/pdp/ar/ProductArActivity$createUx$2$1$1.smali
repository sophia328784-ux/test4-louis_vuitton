.class final Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$createUx$2$1$1;
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
.field public final synthetic b:Lcom/vuitton/android/presentation/ar/arcore/ArCore;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/ar/arcore/ArCore;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$createUx$2$1$1;->b:Lcom/vuitton/android/presentation/ar/arcore/ArCore;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/content/res/Configuration;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/ar/ProductArActivity$createUx$2$1$1;->b:Lcom/vuitton/android/presentation/ar/arcore/ArCore;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->a()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
