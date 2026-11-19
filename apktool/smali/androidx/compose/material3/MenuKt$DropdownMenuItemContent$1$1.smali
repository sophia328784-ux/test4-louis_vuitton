.class final Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1;
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
.field public final synthetic b:Lkotlin/jvm/functions/Function2;

.field public final synthetic c:Landroidx/compose/material3/MenuItemColors;

.field public final synthetic d:Z

.field public final synthetic e:Lkotlin/jvm/functions/Function2;

.field public final synthetic f:Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/MenuItemColors;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1;->b:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1;->c:Landroidx/compose/material3/MenuItemColors;

    iput-boolean p3, p0, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1;->d:Z

    iput-object p4, p0, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1;->e:Lkotlin/jvm/functions/Function2;

    iput-object p5, p0, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1;->f:Lkotlin/jvm/functions/Function2;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/2addr p2, v2

    invoke-interface {p1, p2, v0}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_6

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const/16 p2, 0x38

    iget-boolean v0, p0, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1;->d:Z

    iget-object v1, p0, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1;->c:Landroidx/compose/material3/MenuItemColors;

    iget-object v2, p0, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1;->b:Lkotlin/jvm/functions/Function2;

    if-eqz v2, :cond_2

    const v3, -0x3388f364    # -6.476248E7f

    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object v3, Landroidx/compose/material3/ContentColorKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    if-eqz v0, :cond_1

    iget-wide v4, v1, Landroidx/compose/material3/MenuItemColors;->b:J

    goto :goto_1

    :cond_1
    iget-wide v4, v1, Landroidx/compose/material3/MenuItemColors;->e:J

    :goto_1
    invoke-static {v4, v5, v3}, La;->d(JLandroidx/compose/runtime/DynamicProvidableCompositionLocal;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v3

    new-instance v4, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1$1;

    invoke-direct {v4, v2}, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    const v5, 0x4a0413d4    # 2163957.0f

    invoke-static {v5, v4, p1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v4

    invoke-static {v3, v4, p1, p2}, Landroidx/compose/runtime/CompositionLocalKt;->a(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_2

    :cond_2
    const v3, -0x33841157    # -6.6042532E7f

    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->F()V

    :goto_2
    sget-object v3, Landroidx/compose/material3/ContentColorKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    if-eqz v0, :cond_3

    iget-wide v4, v1, Landroidx/compose/material3/MenuItemColors;->a:J

    goto :goto_3

    :cond_3
    iget-wide v4, v1, Landroidx/compose/material3/MenuItemColors;->d:J

    :goto_3
    invoke-static {v4, v5, v3}, La;->d(JLandroidx/compose/runtime/DynamicProvidableCompositionLocal;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v4

    new-instance v5, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1$2;

    iget-object v6, p0, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1;->f:Lkotlin/jvm/functions/Function2;

    iget-object p0, p0, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1;->e:Lkotlin/jvm/functions/Function2;

    invoke-direct {v5, v2, p0, v6}, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1$2;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    const v2, -0x3542ef07    # -6195324.5f

    invoke-static {v2, v5, p1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v2

    invoke-static {v4, v2, p1, p2}, Landroidx/compose/runtime/CompositionLocalKt;->a(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    if-eqz p0, :cond_5

    const v2, -0x33765c87    # -7.2162248E7f

    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->L(I)V

    if-eqz v0, :cond_4

    iget-wide v0, v1, Landroidx/compose/material3/MenuItemColors;->c:J

    goto :goto_4

    :cond_4
    iget-wide v0, v1, Landroidx/compose/material3/MenuItemColors;->f:J

    :goto_4
    invoke-static {v0, v1, v3}, La;->d(JLandroidx/compose/runtime/DynamicProvidableCompositionLocal;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    new-instance v1, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1$3;

    invoke-direct {v1, p0}, Landroidx/compose/material3/MenuKt$DropdownMenuItemContent$1$1$3;-><init>(Lkotlin/jvm/functions/Function2;)V

    const p0, -0x2ea31a35

    invoke-static {p0, v1, p1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object p0

    invoke-static {v0, p0, p1, p2}, Landroidx/compose/runtime/CompositionLocalKt;->a(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_5

    :cond_5
    const p0, -0x33716f37    # -7.4745416E7f

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_5

    :cond_6
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
