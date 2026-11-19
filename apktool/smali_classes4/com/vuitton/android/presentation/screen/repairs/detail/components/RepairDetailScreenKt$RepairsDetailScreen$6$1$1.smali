.class final Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailScreenKt$RepairsDetailScreen$6$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel;",
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
.field public final synthetic b:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

.field public final synthetic c:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailScreenKt$RepairsDetailScreen$6$1$1;->b:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailScreenKt$RepairsDetailScreen$6$1$1;->c:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceTransactionIdUiModel;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailScreenKt$RepairsDetailScreen$6$1$1;->b:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;->a:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailScreenKt$RepairsDetailScreen$6$1$1;->c:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    invoke-virtual {p0}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e()V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
