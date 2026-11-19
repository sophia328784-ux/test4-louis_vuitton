.class public final synthetic Lb20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Lkotlin/jvm/functions/Function1;

.field public final synthetic e:Landroidx/compose/ui/Modifier;

.field public final synthetic f:Z

.field public final synthetic g:Landroidx/compose/material3/IconToggleButtonColors;

.field public final synthetic h:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic i:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconToggleButtonColors;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V
    .locals 0

    iput p9, p0, Lb20;->b:I

    iput-boolean p1, p0, Lb20;->c:Z

    iput-object p2, p0, Lb20;->d:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lb20;->e:Landroidx/compose/ui/Modifier;

    iput-boolean p4, p0, Lb20;->f:Z

    iput-object p5, p0, Lb20;->g:Landroidx/compose/material3/IconToggleButtonColors;

    iput-object p6, p0, Lb20;->h:Landroidx/compose/ui/graphics/Shape;

    iput-object p7, p0, Lb20;->i:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iput p8, p0, Lb20;->j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget v0, p0, Lb20;->b:I

    iget v1, p0, Lb20;->j:I

    packed-switch v0, :pswitch_data_0

    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p1, v1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v10

    iget-boolean v2, p0, Lb20;->c:Z

    iget-object v3, p0, Lb20;->d:Lkotlin/jvm/functions/Function1;

    iget-object v4, p0, Lb20;->e:Landroidx/compose/ui/Modifier;

    iget-boolean v5, p0, Lb20;->f:Z

    iget-object v6, p0, Lb20;->g:Landroidx/compose/material3/IconToggleButtonColors;

    iget-object v7, p0, Lb20;->h:Landroidx/compose/ui/graphics/Shape;

    iget-object v8, p0, Lb20;->i:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-static/range {v2 .. v10}, Landroidx/compose/material3/IconButtonKt;->c(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconToggleButtonColors;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 p1, v1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v8

    iget-boolean v0, p0, Lb20;->c:Z

    iget-object v1, p0, Lb20;->d:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Lb20;->e:Landroidx/compose/ui/Modifier;

    iget-boolean v3, p0, Lb20;->f:Z

    iget-object v4, p0, Lb20;->g:Landroidx/compose/material3/IconToggleButtonColors;

    iget-object v5, p0, Lb20;->h:Landroidx/compose/ui/graphics/Shape;

    iget-object v6, p0, Lb20;->i:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-static/range {v0 .. v8}, Landroidx/compose/material3/IconButtonKt;->d(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconToggleButtonColors;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
