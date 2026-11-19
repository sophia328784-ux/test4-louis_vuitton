.class final Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$loadCareServiceForm$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffViewModelImpl"
    f = "DistantRepairFormBffViewModelImpl.kt"
    l = {
        0xd0,
        0xd6
    }
    m = "loadCareServiceForm"
    v = 0x2
.end annotation


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;

.field public d:I


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$loadCareServiceForm$1;->c:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$loadCareServiceForm$1;->b:Ljava/lang/Object;

    iget p1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$loadCareServiceForm$1;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$loadCareServiceForm$1;->d:I

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$loadCareServiceForm$1;->c:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;

    invoke-static {p1, p0}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->zc(Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
