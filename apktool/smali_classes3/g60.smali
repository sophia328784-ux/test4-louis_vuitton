.class public final synthetic Lg60;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:F

.field public final synthetic f:F

.field public final synthetic g:Landroidx/compose/ui/graphics/Color;

.field public final synthetic h:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field public final synthetic i:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

.field public final synthetic j:Lkotlin/jvm/functions/Function1;

.field public final synthetic k:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

.field public final synthetic l:I

.field public final synthetic m:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;ZZFFLandroidx/compose/ui/graphics/Color;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg60;->b:Landroidx/compose/ui/Modifier;

    iput-boolean p2, p0, Lg60;->c:Z

    iput-boolean p3, p0, Lg60;->d:Z

    iput p4, p0, Lg60;->e:F

    iput p5, p0, Lg60;->f:F

    iput-object p6, p0, Lg60;->g:Landroidx/compose/ui/graphics/Color;

    iput-object p7, p0, Lg60;->h:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iput-object p8, p0, Lg60;->i:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iput-object p9, p0, Lg60;->j:Lkotlin/jvm/functions/Function1;

    iput-object p10, p0, Lg60;->k:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    iput p11, p0, Lg60;->l:I

    iput p12, p0, Lg60;->m:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    move-object v10, p1

    check-cast v10, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lg60;->l:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v11

    iget p1, p0, Lg60;->m:I

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v12

    iget-object v0, p0, Lg60;->b:Landroidx/compose/ui/Modifier;

    iget-boolean v1, p0, Lg60;->c:Z

    iget-boolean v2, p0, Lg60;->d:Z

    iget v3, p0, Lg60;->e:F

    iget v4, p0, Lg60;->f:F

    iget-object v5, p0, Lg60;->g:Landroidx/compose/ui/graphics/Color;

    iget-object v6, p0, Lg60;->h:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v7, p0, Lg60;->i:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iget-object v8, p0, Lg60;->j:Lkotlin/jvm/functions/Function1;

    iget-object v9, p0, Lg60;->k:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-static/range {v0 .. v12}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVImageChipKt;->a(Landroidx/compose/ui/Modifier;ZZFFLandroidx/compose/ui/graphics/Color;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
