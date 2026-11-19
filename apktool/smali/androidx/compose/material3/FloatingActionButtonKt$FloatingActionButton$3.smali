.class final Landroidx/compose/material3/FloatingActionButtonKt$FloatingActionButton$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:J

.field public final synthetic c:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic d:F

.field public final synthetic e:F

.field public final synthetic f:Landroidx/compose/runtime/internal/ComposableLambdaImpl;


# direct methods
.method public constructor <init>(JLandroidx/compose/ui/text/TextStyle;FFLandroidx/compose/runtime/internal/ComposableLambdaImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/compose/material3/FloatingActionButtonKt$FloatingActionButton$3;->b:J

    iput-object p3, p0, Landroidx/compose/material3/FloatingActionButtonKt$FloatingActionButton$3;->c:Landroidx/compose/ui/text/TextStyle;

    iput p4, p0, Landroidx/compose/material3/FloatingActionButtonKt$FloatingActionButton$3;->d:F

    iput p5, p0, Landroidx/compose/material3/FloatingActionButtonKt$FloatingActionButton$3;->e:F

    iput-object p6, p0, Landroidx/compose/material3/FloatingActionButtonKt$FloatingActionButton$3;->f:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    and-int/lit8 p2, p1, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v0, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    and-int/2addr p1, v1

    invoke-interface {v4, p1, p2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance p1, Landroidx/compose/material3/FloatingActionButtonKt$FloatingActionButton$3$1;

    iget p2, p0, Landroidx/compose/material3/FloatingActionButtonKt$FloatingActionButton$3;->e:F

    iget-object v0, p0, Landroidx/compose/material3/FloatingActionButtonKt$FloatingActionButton$3;->f:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iget v1, p0, Landroidx/compose/material3/FloatingActionButtonKt$FloatingActionButton$3;->d:F

    invoke-direct {p1, v1, p2, v0}, Landroidx/compose/material3/FloatingActionButtonKt$FloatingActionButton$3$1;-><init>(FFLandroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    const p2, -0x6957d1e1

    invoke-static {p2, p1, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v3

    const/16 v5, 0x180

    iget-wide v0, p0, Landroidx/compose/material3/FloatingActionButtonKt$FloatingActionButton$3;->b:J

    iget-object v2, p0, Landroidx/compose/material3/FloatingActionButtonKt$FloatingActionButton$3;->c:Landroidx/compose/ui/text/TextStyle;

    invoke-static/range {v0 .. v5}, Landroidx/compose/material3/internal/ProvideContentColorTextStyleKt;->a(JLandroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1

    :cond_1
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
