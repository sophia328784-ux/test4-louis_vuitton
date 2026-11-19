.class final Lcom/vuitton/android/presentation/screen/personalselections/list/components/PersonalSelectionsListScreenKt$PersonalSelectionsList$2$1$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/String;",
        "Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionTypeUiModel;",
        "Lkotlin/Unit;",
        ">;"
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
.field public final synthetic b:Lkotlin/jvm/functions/Function1;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:I

.field public final synthetic e:Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Ljava/lang/String;ILkotlin/jvm/functions/Function2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/components/PersonalSelectionsListScreenKt$PersonalSelectionsList$2$1$2$1$1;->b:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/components/PersonalSelectionsListScreenKt$PersonalSelectionsList$2$1$2$1$1;->c:Ljava/lang/String;

    iput p3, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/components/PersonalSelectionsListScreenKt$PersonalSelectionsList$2$1$2$1$1;->d:I

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/components/PersonalSelectionsListScreenKt$PersonalSelectionsList$2$1$2$1$1;->e:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionTypeUiModel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListTrackingUiModel$DiscoverSelectionEvent;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/components/PersonalSelectionsListScreenKt$PersonalSelectionsList$2$1$2$1$1;->c:Ljava/lang/String;

    iget v2, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/components/PersonalSelectionsListScreenKt$PersonalSelectionsList$2$1$2$1$1;->d:I

    invoke-direct {v0, v1, v2}, Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSelectionsListTrackingUiModel$DiscoverSelectionEvent;-><init>(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/components/PersonalSelectionsListScreenKt$PersonalSelectionsList$2$1$2$1$1;->b:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/list/components/PersonalSelectionsListScreenKt$PersonalSelectionsList$2$1$2$1$1;->e:Lkotlin/jvm/functions/Function2;

    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
