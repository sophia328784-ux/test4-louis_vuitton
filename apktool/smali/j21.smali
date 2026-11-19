.class public final synthetic Lj21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Landroidx/compose/animation/core/Animation;

.field public final synthetic e:Landroidx/compose/animation/core/AnimationVector;

.field public final synthetic f:Landroidx/compose/animation/core/AnimationState;

.field public final synthetic g:F

.field public final synthetic h:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/lang/Object;Landroidx/compose/animation/core/Animation;Landroidx/compose/animation/core/AnimationVector;Landroidx/compose/animation/core/AnimationState;FLkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj21;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lj21;->c:Ljava/lang/Object;

    iput-object p3, p0, Lj21;->d:Landroidx/compose/animation/core/Animation;

    iput-object p4, p0, Lj21;->e:Landroidx/compose/animation/core/AnimationVector;

    iput-object p5, p0, Lj21;->f:Landroidx/compose/animation/core/AnimationState;

    iput p6, p0, Lj21;->g:F

    iput-object p7, p0, Lj21;->h:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    new-instance v0, Landroidx/compose/animation/core/AnimationScope;

    iget-object p1, p0, Lj21;->d:Landroidx/compose/animation/core/Animation;

    move-wide v4, v1

    invoke-interface {p1}, Landroidx/compose/animation/core/Animation;->e()Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object v2

    invoke-interface {p1}, Landroidx/compose/animation/core/Animation;->g()Ljava/lang/Object;

    move-result-object v6

    new-instance v10, Lk21;

    const/4 v1, 0x1

    iget-object v11, p0, Lj21;->f:Landroidx/compose/animation/core/AnimationState;

    invoke-direct {v10, v1, v11}, Lk21;-><init>(ILandroidx/compose/animation/core/AnimationState;)V

    iget-object v1, p0, Lj21;->c:Ljava/lang/Object;

    iget-object v3, p0, Lj21;->e:Landroidx/compose/animation/core/AnimationVector;

    const/4 v9, 0x1

    move-wide v7, v4

    invoke-direct/range {v0 .. v10}, Landroidx/compose/animation/core/AnimationScope;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Landroidx/compose/animation/core/AnimationVector;JLjava/lang/Object;JZLkotlin/jvm/functions/Function0;)V

    iget v3, p0, Lj21;->g:F

    iget-object v6, p0, Lj21;->h:Lkotlin/jvm/functions/Function1;

    move-wide v1, v4

    move-object v5, v11

    move-object v4, p1

    invoke-static/range {v0 .. v6}, Landroidx/compose/animation/core/SuspendAnimationKt;->h(Landroidx/compose/animation/core/AnimationScope;JFLandroidx/compose/animation/core/Animation;Landroidx/compose/animation/core/AnimationState;Lkotlin/jvm/functions/Function1;)V

    iget-object p0, p0, Lj21;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
