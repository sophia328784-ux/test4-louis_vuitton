.class public final synthetic Lcom/vuitton/android/designkit/ui/theme/atoms/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:J

.field public final synthetic d:J

.field public final synthetic e:Landroidx/compose/animation/core/FiniteAnimationSpec;

.field public final synthetic f:Lcom/vuitton/android/designkit/ui/theme/atoms/StepState;

.field public final synthetic g:Lkotlin/jvm/functions/Function0;

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;JJLandroidx/compose/animation/core/FiniteAnimationSpec;Lcom/vuitton/android/designkit/ui/theme/atoms/StepState;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/b;->b:Landroidx/compose/ui/Modifier;

    iput-wide p2, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/b;->c:J

    iput-wide p4, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/b;->d:J

    iput-object p6, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/b;->e:Landroidx/compose/animation/core/FiniteAnimationSpec;

    iput-object p7, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/b;->f:Lcom/vuitton/android/designkit/ui/theme/atoms/StepState;

    iput-object p8, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/b;->g:Lkotlin/jvm/functions/Function0;

    iput p9, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/b;->h:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/b;->h:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v9

    iget-object v0, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/b;->b:Landroidx/compose/ui/Modifier;

    iget-wide v1, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/b;->c:J

    iget-wide v3, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/b;->d:J

    iget-object v5, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/b;->e:Landroidx/compose/animation/core/FiniteAnimationSpec;

    iget-object v6, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/b;->f:Lcom/vuitton/android/designkit/ui/theme/atoms/StepState;

    iget-object v7, p0, Lcom/vuitton/android/designkit/ui/theme/atoms/b;->g:Lkotlin/jvm/functions/Function0;

    invoke-static/range {v0 .. v9}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVProgressIndicatorKt;->c(Landroidx/compose/ui/Modifier;JJLandroidx/compose/animation/core/FiniteAnimationSpec;Lcom/vuitton/android/designkit/ui/theme/atoms/StepState;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
