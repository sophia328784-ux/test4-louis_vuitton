.class final Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVMediumTopBarKt$settleAppBar$1;
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
    c = "com.vuitton.android.designkit.ui.theme.molecules.topbar.LVMediumTopBarKt"
    f = "LVMediumTopBar.kt"
    l = {
        0x125,
        0x135
    }
    m = "settleAppBar"
    v = 0x2
.end annotation


# instance fields
.field public b:Landroidx/compose/material3/TopAppBarState;

.field public c:Landroidx/compose/animation/core/AnimationSpec;

.field public d:Lkotlin/jvm/internal/Ref$FloatRef;

.field public e:F

.field public synthetic f:Ljava/lang/Object;

.field public g:I


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVMediumTopBarKt$settleAppBar$1;->f:Ljava/lang/Object;

    iget p1, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVMediumTopBarKt$settleAppBar$1;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVMediumTopBarKt$settleAppBar$1;->g:I

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-static {p1, v0, p1, p1, p0}, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVMediumTopBarKt;->c(Landroidx/compose/material3/TopAppBarState;FLandroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
