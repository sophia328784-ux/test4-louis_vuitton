.class final Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$2$2$3$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/constraintlayout/compose/ConstrainScope;",
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


# static fields
.field public static final b:Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$2$2$3$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$2$2$3$1$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$2$2$3$1$1;->b:Lcom/vuitton/android/presentation/loading/LvLoadingKt$LvLoading$2$2$3$1$1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v0, p1

    check-cast v0, Landroidx/constraintlayout/compose/ConstrainScope;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, v0, Landroidx/constraintlayout/compose/ConstrainScope;->c:Landroidx/constraintlayout/compose/ConstrainedLayoutReference;

    iget-object v1, p0, Landroidx/constraintlayout/compose/ConstrainedLayoutReference;->c:Landroidx/constraintlayout/compose/ConstraintLayoutBaseScope$VerticalAnchor;

    iget-object v2, p0, Landroidx/constraintlayout/compose/ConstrainedLayoutReference;->e:Landroidx/constraintlayout/compose/ConstraintLayoutBaseScope$VerticalAnchor;

    const/4 v4, 0x0

    const/16 v5, 0x7c

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Landroidx/constraintlayout/compose/ConstrainScope;->a(Landroidx/constraintlayout/compose/ConstrainScope;Landroidx/constraintlayout/compose/ConstraintLayoutBaseScope$VerticalAnchor;Landroidx/constraintlayout/compose/ConstraintLayoutBaseScope$VerticalAnchor;FFI)V

    iget-object p1, p0, Landroidx/constraintlayout/compose/ConstrainedLayoutReference;->f:Landroidx/constraintlayout/compose/ConstraintLayoutBaseScope$HorizontalAnchor;

    iget-object p0, p0, Landroidx/constraintlayout/compose/ConstrainedLayoutReference;->d:Landroidx/constraintlayout/compose/ConstraintLayoutBaseScope$HorizontalAnchor;

    sget-object v1, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    iget-object v1, v0, Landroidx/constraintlayout/compose/ConstrainScope;->e:Landroidx/constraintlayout/compose/HorizontalAnchorable;

    check-cast v1, Landroidx/constraintlayout/compose/BaseHorizontalAnchorable;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroidx/constraintlayout/compose/BaseHorizontalAnchorable;->b(Landroidx/constraintlayout/compose/ConstraintLayoutBaseScope$HorizontalAnchor;F)V

    iget-object p0, v0, Landroidx/constraintlayout/compose/ConstrainScope;->g:Landroidx/constraintlayout/compose/HorizontalAnchorable;

    check-cast p0, Landroidx/constraintlayout/compose/BaseHorizontalAnchorable;

    invoke-virtual {p0, p1, v2}, Landroidx/constraintlayout/compose/BaseHorizontalAnchorable;->b(Landroidx/constraintlayout/compose/ConstraintLayoutBaseScope$HorizontalAnchor;F)V

    iget-object p0, v0, Landroidx/constraintlayout/compose/ConstrainScope;->b:Landroidx/constraintlayout/core/parser/CLObject;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroidx/constraintlayout/core/parser/CLNumber;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-direct {p1, v0}, Landroidx/constraintlayout/core/parser/CLNumber;-><init>(F)V

    const-string v0, "vBias"

    invoke-virtual {p0, v0, p1}, Landroidx/constraintlayout/core/parser/CLContainer;->R(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
