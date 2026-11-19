.class public final synthetic Lw80;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:Lkotlin/jvm/functions/Function1;

.field public final synthetic f:Z

.field public final synthetic g:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic h:I

.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;FFLkotlin/jvm/functions/Function1;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw80;->b:Landroidx/compose/ui/Modifier;

    iput p2, p0, Lw80;->c:F

    iput p3, p0, Lw80;->d:F

    iput-object p4, p0, Lw80;->e:Lkotlin/jvm/functions/Function1;

    iput-boolean p5, p0, Lw80;->f:Z

    iput-object p6, p0, Lw80;->g:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iput p7, p0, Lw80;->h:I

    iput p8, p0, Lw80;->i:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lw80;->h:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v7

    iget-object v0, p0, Lw80;->b:Landroidx/compose/ui/Modifier;

    iget v1, p0, Lw80;->c:F

    iget v2, p0, Lw80;->d:F

    iget-object v3, p0, Lw80;->e:Lkotlin/jvm/functions/Function1;

    iget-boolean v4, p0, Lw80;->f:Z

    iget-object v5, p0, Lw80;->g:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iget v8, p0, Lw80;->i:I

    invoke-static/range {v0 .. v8}, Lcom/vuitton/android/designkit/components/components/LVZoomableContentComponentKt;->a(Landroidx/compose/ui/Modifier;FFLkotlin/jvm/functions/Function1;ZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
