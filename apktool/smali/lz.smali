.class public final synthetic Llz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lkotlin/jvm/functions/Function0;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Landroidx/compose/ui/graphics/Shape;

.field public final synthetic e:J

.field public final synthetic f:J

.field public final synthetic g:Landroidx/compose/material3/FloatingActionButtonElevation;

.field public final synthetic h:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic i:I

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llz;->b:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Llz;->c:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Llz;->d:Landroidx/compose/ui/graphics/Shape;

    iput-wide p4, p0, Llz;->e:J

    iput-wide p6, p0, Llz;->f:J

    iput-object p8, p0, Llz;->g:Landroidx/compose/material3/FloatingActionButtonElevation;

    iput-object p9, p0, Llz;->h:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iput p10, p0, Llz;->i:I

    iput p11, p0, Llz;->j:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Llz;->i:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v10

    iget-object v0, p0, Llz;->b:Lkotlin/jvm/functions/Function0;

    iget-object v1, p0, Llz;->c:Landroidx/compose/ui/Modifier;

    iget-object v2, p0, Llz;->d:Landroidx/compose/ui/graphics/Shape;

    iget-wide v3, p0, Llz;->e:J

    iget-wide v5, p0, Llz;->f:J

    iget-object v7, p0, Llz;->g:Landroidx/compose/material3/FloatingActionButtonElevation;

    iget-object v8, p0, Llz;->h:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iget v11, p0, Llz;->j:I

    invoke-static/range {v0 .. v11}, Landroidx/compose/material3/FloatingActionButtonKt;->b(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
