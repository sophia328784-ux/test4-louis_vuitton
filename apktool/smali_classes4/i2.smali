.class public final synthetic Li2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Landroidx/compose/foundation/pager/PagerState;

.field public final synthetic d:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

.field public final synthetic e:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

.field public final synthetic f:Landroidx/compose/ui/Alignment$Vertical;

.field public final synthetic g:F

.field public final synthetic h:I

.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;FII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li2;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Li2;->c:Landroidx/compose/foundation/pager/PagerState;

    iput-object p3, p0, Li2;->d:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iput-object p4, p0, Li2;->e:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    iput-object p5, p0, Li2;->f:Landroidx/compose/ui/Alignment$Vertical;

    iput p6, p0, Li2;->g:F

    iput p7, p0, Li2;->h:I

    iput p8, p0, Li2;->i:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Li2;->h:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v7

    iget-object v0, p0, Li2;->b:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Li2;->c:Landroidx/compose/foundation/pager/PagerState;

    iget-object v2, p0, Li2;->d:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iget-object v3, p0, Li2;->e:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    iget-object v4, p0, Li2;->f:Landroidx/compose/ui/Alignment$Vertical;

    iget v5, p0, Li2;->g:F

    iget v8, p0, Li2;->i:I

    invoke-static/range {v0 .. v8}, Lcom/vuitton/android/presentation/compose/components/AccessibilityPagerButtonsKt;->b(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/pager/PagerState;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;FLandroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
