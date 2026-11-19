.class public final Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$$inlined$ConstraintLayout$4;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0004\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
        "",
        "invoke",
        "(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
.end annotation


# instance fields
.field public final synthetic c:Landroidx/constraintlayout/compose/Measurer2;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/compose/Measurer2;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$$inlined$ConstraintLayout$4;->c:Landroidx/constraintlayout/compose/Measurer2;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    iget-object p0, p0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$lambda$10$$inlined$ConstraintLayout$4;->c:Landroidx/constraintlayout/compose/Measurer2;

    invoke-static {p1, p0}, Landroidx/constraintlayout/compose/ToolingUtilsKt;->a(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/constraintlayout/compose/DesignInfoProvider;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
