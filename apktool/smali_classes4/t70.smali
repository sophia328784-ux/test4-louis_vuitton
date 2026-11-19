.class public final synthetic Lt70;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/pager/PagerState;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Z

.field public final synthetic e:Lcom/vuitton/android/presentation/compose/components/PagerParallaxFactor;

.field public final synthetic f:Z

.field public final synthetic g:Z

.field public final synthetic h:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic i:I

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/Modifier;ZLcom/vuitton/android/presentation/compose/components/PagerParallaxFactor;ZZLandroidx/compose/runtime/internal/ComposableLambdaImpl;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt70;->b:Landroidx/compose/foundation/pager/PagerState;

    iput-object p2, p0, Lt70;->c:Landroidx/compose/ui/Modifier;

    iput-boolean p3, p0, Lt70;->d:Z

    iput-object p4, p0, Lt70;->e:Lcom/vuitton/android/presentation/compose/components/PagerParallaxFactor;

    iput-boolean p5, p0, Lt70;->f:Z

    iput-boolean p6, p0, Lt70;->g:Z

    iput-object p7, p0, Lt70;->h:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iput p8, p0, Lt70;->i:I

    iput p9, p0, Lt70;->j:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lt70;->i:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v8

    iget-object v0, p0, Lt70;->b:Landroidx/compose/foundation/pager/PagerState;

    iget-object v1, p0, Lt70;->c:Landroidx/compose/ui/Modifier;

    iget-boolean v2, p0, Lt70;->d:Z

    iget-object v3, p0, Lt70;->e:Lcom/vuitton/android/presentation/compose/components/PagerParallaxFactor;

    iget-boolean v4, p0, Lt70;->f:Z

    iget-boolean v5, p0, Lt70;->g:Z

    iget-object v6, p0, Lt70;->h:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iget v9, p0, Lt70;->j:I

    invoke-static/range {v0 .. v9}, Lcom/vuitton/android/presentation/compose/components/LVSlideShowKt;->a(Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/ui/Modifier;ZLcom/vuitton/android/presentation/compose/components/PagerParallaxFactor;ZZLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
