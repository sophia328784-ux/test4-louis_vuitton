.class public final synthetic Lb1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/foundation/lazy/LazyItemScope;

.field public final synthetic c:F

.field public final synthetic d:Landroidx/compose/ui/graphics/Color;

.field public final synthetic e:Landroidx/compose/ui/graphics/Color;

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/foundation/lazy/LazyItemScope;FLandroidx/compose/ui/graphics/Color;Landroidx/compose/ui/graphics/Color;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb1;->b:Landroidx/compose/foundation/lazy/LazyItemScope;

    iput p2, p0, Lb1;->c:F

    iput-object p3, p0, Lb1;->d:Landroidx/compose/ui/graphics/Color;

    iput-object p4, p0, Lb1;->e:Landroidx/compose/ui/graphics/Color;

    iput p5, p0, Lb1;->f:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lb1;->f:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v5

    iget-object v0, p0, Lb1;->b:Landroidx/compose/foundation/lazy/LazyItemScope;

    iget v1, p0, Lb1;->c:F

    iget-object v2, p0, Lb1;->d:Landroidx/compose/ui/graphics/Color;

    iget-object v3, p0, Lb1;->e:Landroidx/compose/ui/graphics/Color;

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/aicompanion/components/onboarding/AICompanionOnboardingScreenKt;->b(Landroidx/compose/foundation/lazy/LazyItemScope;FLandroidx/compose/ui/graphics/Color;Landroidx/compose/ui/graphics/Color;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
