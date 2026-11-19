.class final Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$2$1$1;
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
.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$2$1$1;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/vuitton/android/presentation/screen/wishlist/model/ShareUiModel;

    iget-object p2, p1, Lcom/vuitton/android/presentation/screen/wishlist/model/ShareUiModel;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/wishlist/model/ShareUiModel;->a:Ljava/lang/String;

    const/16 v0, 0x18

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$2$1$1;->b:Landroid/content/Context;

    invoke-static {p0, p2, p1, v0}, Lcom/vuitton/android/presentation/utils/ShareUtilsKt;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
