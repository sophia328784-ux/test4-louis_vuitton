.class public final synthetic Ly31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/OverlayConstants;

.field public final synthetic c:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

.field public final synthetic d:Lkotlin/jvm/functions/Function2;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;

.field public final synthetic f:Z

.field public final synthetic g:Ljava/util/Map;

.field public final synthetic h:I

.field public final synthetic i:Landroidx/compose/foundation/ScrollState;

.field public final synthetic j:Lkotlinx/coroutines/CoroutineScope;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/OverlayConstants;Landroidx/compose/ui/hapticfeedback/HapticFeedback;Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;ZLjava/util/Map;ILandroidx/compose/foundation/ScrollState;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly31;->b:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/OverlayConstants;

    iput-object p2, p0, Ly31;->c:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    iput-object p3, p0, Ly31;->d:Lkotlin/jvm/functions/Function2;

    iput-object p4, p0, Ly31;->e:Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;

    iput-boolean p5, p0, Ly31;->f:Z

    iput-object p6, p0, Ly31;->g:Ljava/util/Map;

    iput p7, p0, Ly31;->h:I

    iput-object p8, p0, Ly31;->i:Landroidx/compose/foundation/ScrollState;

    iput-object p9, p0, Ly31;->j:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Ly31;->b:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/OverlayConstants;

    if-nez v0, :cond_0

    sget-object v0, Landroidx/compose/ui/hapticfeedback/HapticFeedbackType;->b:Landroidx/compose/ui/hapticfeedback/HapticFeedbackType$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/ui/hapticfeedback/PlatformHapticFeedbackType;->a:I

    const/4 v0, 0x0

    iget-object v1, p0, Ly31;->c:Landroidx/compose/ui/hapticfeedback/HapticFeedback;

    invoke-interface {v1, v0}, Landroidx/compose/ui/hapticfeedback/HapticFeedback;->a(I)V

    iget-boolean v0, p0, Ly31;->f:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Ly31;->d:Lkotlin/jvm/functions/Function2;

    iget-object v2, p0, Ly31;->e:Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;

    invoke-interface {v1, v2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v2, Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;->b:Ljava/lang/String;

    iget-object v1, p0, Ly31;->g:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/designkit/ui/common/RowItemCenterPosition;

    iget v1, p0, Ly31;->h:I

    iget-object v2, p0, Ly31;->i:Landroidx/compose/foundation/ScrollState;

    iget-object p0, p0, Ly31;->j:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v0, v1, v2, p0}, Lcom/vuitton/android/designkit/ui/common/ItemUtilsKt;->a(Lcom/vuitton/android/designkit/ui/common/RowItemCenterPosition;ILandroidx/compose/foundation/ScrollState;Lkotlinx/coroutines/CoroutineScope;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
