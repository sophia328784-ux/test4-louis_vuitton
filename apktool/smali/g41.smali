.class public final synthetic Lg41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/material3/TooltipScope;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:F

.field public final synthetic e:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic f:J

.field public final synthetic g:J

.field public final synthetic h:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/TooltipScope;Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg41;->b:Landroidx/compose/material3/TooltipScope;

    iput-object p2, p0, Lg41;->c:Landroidx/compose/ui/Modifier;

    iput p3, p0, Lg41;->d:F

    iput-object p4, p0, Lg41;->e:Landroidx/compose/ui/graphics/Shape;

    iput-wide p5, p0, Lg41;->f:J

    iput-wide p7, p0, Lg41;->g:J

    iput-object p9, p0, Lg41;->h:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iput p10, p0, Lg41;->i:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lg41;->i:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v10

    iget-object v0, p0, Lg41;->b:Landroidx/compose/material3/TooltipScope;

    iget-object v1, p0, Lg41;->c:Landroidx/compose/ui/Modifier;

    iget v2, p0, Lg41;->d:F

    iget-object v3, p0, Lg41;->e:Landroidx/compose/ui/graphics/Shape;

    iget-wide v4, p0, Lg41;->f:J

    iget-wide v6, p0, Lg41;->g:J

    iget-object v8, p0, Lg41;->h:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-static/range {v0 .. v10}, Landroidx/compose/material3/TooltipKt;->a(Landroidx/compose/material3/TooltipScope;Landroidx/compose/ui/Modifier;FLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
