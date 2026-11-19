.class public final synthetic Lgd0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:F

.field public final synthetic c:J

.field public final synthetic d:F

.field public final synthetic e:F


# direct methods
.method public synthetic constructor <init>(JFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lgd0;->b:F

    iput-wide p1, p0, Lgd0;->c:J

    iput p4, p0, Lgd0;->d:F

    iput p5, p0, Lgd0;->e:F

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    check-cast p1, Landroidx/compose/ui/Modifier;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    const-string p3, "shadowCustom_QgBizOU$lambda$0"

    invoke-static {p1, p3}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p3, -0x5842e7b7

    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object p3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p3

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne p3, v0, :cond_1

    new-instance p3, Landroidx/compose/ui/graphics/AndroidPaint;

    invoke-direct {p3}, Landroidx/compose/ui/graphics/AndroidPaint;-><init>()V

    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    move-object v2, p3

    check-cast v2, Landroidx/compose/ui/graphics/Paint;

    sget-object p3, Landroidx/compose/ui/platform/CompositionLocalsKt;->h:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/compose/ui/unit/Density;

    iget v3, p0, Lgd0;->b:F

    invoke-interface {p3, v3}, Landroidx/compose/ui/unit/Density;->u1(F)F

    move-result p3

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    new-instance v1, Landroid/graphics/BlurMaskFilter;

    sget-object v4, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, p3, v4}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    move-object v4, v1

    check-cast v4, Landroid/graphics/BlurMaskFilter;

    invoke-interface {p2, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p3

    invoke-interface {p2, v3}, Landroidx/compose/runtime/Composer;->c(F)Z

    move-result v1

    or-int/2addr p3, v1

    invoke-interface {p2, v4}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr p3, v1

    iget-wide v5, p0, Lgd0;->c:J

    invoke-interface {p2, v5, v6}, Landroidx/compose/runtime/Composer;->e(J)Z

    move-result v1

    or-int/2addr p3, v1

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->c(F)Z

    move-result v1

    or-int/2addr p3, v1

    iget v7, p0, Lgd0;->d:F

    invoke-interface {p2, v7}, Landroidx/compose/runtime/Composer;->c(F)Z

    move-result v1

    or-int/2addr p3, v1

    iget v8, p0, Lgd0;->e:F

    invoke-interface {p2, v8}, Landroidx/compose/runtime/Composer;->c(F)Z

    move-result p0

    or-int/2addr p0, p3

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p3

    if-nez p0, :cond_3

    if-ne p3, v0, :cond_4

    :cond_3
    new-instance v1, Lfd0;

    invoke-direct/range {v1 .. v8}, Lfd0;-><init>(Landroidx/compose/ui/graphics/Paint;FLandroid/graphics/BlurMaskFilter;JFF)V

    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object p3, v1

    :cond_4
    check-cast p3, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, p3}, Landroidx/compose/ui/draw/DrawModifierKt;->b(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->F()V

    return-object p0
.end method
