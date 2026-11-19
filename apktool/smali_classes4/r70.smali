.class public final synthetic Lr70;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/runtime/State;

.field public final synthetic d:F

.field public final synthetic e:Z

.field public final synthetic f:Landroidx/compose/runtime/MutableState;

.field public final synthetic g:Landroidx/compose/runtime/MutableState;

.field public final synthetic h:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(ILandroidx/compose/runtime/State;FZLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lr70;->b:I

    iput-object p2, p0, Lr70;->c:Landroidx/compose/runtime/State;

    iput p3, p0, Lr70;->d:F

    iput-boolean p4, p0, Lr70;->e:Z

    iput-object p5, p0, Lr70;->f:Landroidx/compose/runtime/MutableState;

    iput-object p6, p0, Lr70;->g:Landroidx/compose/runtime/MutableState;

    iput-object p7, p0, Lr70;->h:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Landroidx/compose/ui/graphics/GraphicsLayerScope;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lr70;->c:Landroidx/compose/runtime/State;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lr70;->b:I

    iget v3, p0, Lr70;->d:F

    iget-boolean v4, p0, Lr70;->e:Z

    iget-object v5, p0, Lr70;->f:Landroidx/compose/runtime/MutableState;

    const/4 v6, 0x0

    if-ne v2, v1, :cond_3

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iget-object p0, p0, Lr70;->g:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    int-to-float v0, v0

    add-float/2addr p0, v0

    cmpg-float v1, p0, v6

    if-gtz v1, :cond_2

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    move v6, v0

    goto :goto_3

    :cond_1
    :goto_1
    sub-float v6, v0, p0

    goto :goto_3

    :cond_2
    if-eqz v4, :cond_0

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v2, v0, :cond_6

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iget-object p0, p0, Lr70;->h:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    int-to-float v0, v0

    add-float/2addr p0, v0

    cmpg-float v1, p0, v6

    if-gtz v1, :cond_5

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    :goto_2
    add-float v6, v0, p0

    goto :goto_3

    :cond_5
    if-eqz v4, :cond_0

    goto :goto_2

    :cond_6
    :goto_3
    invoke-interface {p1, v6}, Landroidx/compose/ui/graphics/GraphicsLayerScope;->D(F)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
