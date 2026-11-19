.class final Landroidx/compose/foundation/text/HeightInLinesNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;
.implements Landroidx/compose/ui/node/LayoutModifierNode;
.implements Landroidx/compose/ui/node/ObserverModifierNode;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u001f\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Landroidx/compose/foundation/text/HeightInLinesNode;",
        "Landroidx/compose/ui/Modifier$Node;",
        "Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;",
        "Landroidx/compose/ui/node/LayoutModifierNode;",
        "Landroidx/compose/ui/node/ObserverModifierNode;",
        "Landroidx/compose/ui/text/TextStyle;",
        "textStyle",
        "",
        "minLines",
        "maxLines",
        "<init>",
        "(Landroidx/compose/ui/text/TextStyle;II)V",
        "foundation"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public p:Landroidx/compose/ui/text/TextStyle;

.field public q:I

.field public r:I

.field public s:Z

.field public t:I

.field public u:I

.field public v:Landroidx/compose/ui/text/TextStyle;

.field public w:Landroidx/compose/runtime/State;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/TextStyle;II)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->p:Landroidx/compose/ui/text/TextStyle;

    iput p2, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->q:I

    iput p3, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->r:I

    const/4 p1, -0x1

    iput p1, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->t:I

    iput p1, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->u:I

    return-void
.end method


# virtual methods
.method public final C()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->s:Z

    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->f(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->X()V

    return-void
.end method

.method public final W1()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final Z1()V
    .locals 6

    sget-object v0, Landroidx/compose/ui/platform/CompositionLocalsKt;->k:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-static {p0, v0}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->a(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    iget-object v1, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->p:Landroidx/compose/ui/text/TextStyle;

    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->f(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    iget-object v2, v2, Landroidx/compose/ui/node/LayoutNode;->B:Landroidx/compose/ui/unit/LayoutDirection;

    invoke-static {v1, v2}, Landroidx/compose/ui/text/TextStyleKt;->a(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v1

    iput-object v1, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->v:Landroidx/compose/ui/text/TextStyle;

    invoke-virtual {p0}, Landroidx/compose/foundation/text/HeightInLinesNode;->h2()Landroidx/compose/ui/text/TextStyle;

    move-result-object v1

    iget-object v1, v1, Landroidx/compose/ui/text/TextStyle;->a:Landroidx/compose/ui/text/SpanStyle;

    iget-object v1, v1, Landroidx/compose/ui/text/SpanStyle;->f:Landroidx/compose/ui/text/font/FontFamily;

    invoke-virtual {p0}, Landroidx/compose/foundation/text/HeightInLinesNode;->h2()Landroidx/compose/ui/text/TextStyle;

    move-result-object v2

    iget-object v2, v2, Landroidx/compose/ui/text/TextStyle;->a:Landroidx/compose/ui/text/SpanStyle;

    iget-object v2, v2, Landroidx/compose/ui/text/SpanStyle;->c:Landroidx/compose/ui/text/font/FontWeight;

    if-nez v2, :cond_0

    sget-object v2, Landroidx/compose/ui/text/font/FontWeight;->c:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/ui/text/font/FontWeight;->h:Landroidx/compose/ui/text/font/FontWeight;

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/HeightInLinesNode;->h2()Landroidx/compose/ui/text/TextStyle;

    move-result-object v3

    iget-object v3, v3, Landroidx/compose/ui/text/TextStyle;->a:Landroidx/compose/ui/text/SpanStyle;

    iget-object v3, v3, Landroidx/compose/ui/text/SpanStyle;->d:Landroidx/compose/ui/text/font/FontStyle;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget v3, v3, Landroidx/compose/ui/text/font/FontStyle;->a:I

    goto :goto_0

    :cond_1
    sget-object v3, Landroidx/compose/ui/text/font/FontStyle;->b:Landroidx/compose/ui/text/font/FontStyle$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v3, v4

    :goto_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/HeightInLinesNode;->h2()Landroidx/compose/ui/text/TextStyle;

    move-result-object v5

    iget-object v5, v5, Landroidx/compose/ui/text/TextStyle;->a:Landroidx/compose/ui/text/SpanStyle;

    iget-object v5, v5, Landroidx/compose/ui/text/SpanStyle;->e:Landroidx/compose/ui/text/font/FontSynthesis;

    if-eqz v5, :cond_2

    iget v5, v5, Landroidx/compose/ui/text/font/FontSynthesis;->a:I

    goto :goto_1

    :cond_2
    sget-object v5, Landroidx/compose/ui/text/font/FontSynthesis;->b:Landroidx/compose/ui/text/font/FontSynthesis$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v5, Landroidx/compose/ui/text/font/FontSynthesis;->e:I

    :goto_1
    invoke-interface {v0, v1, v2, v3, v5}, Landroidx/compose/ui/text/font/FontFamily$Resolver;->a(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/font/FontWeight;II)Landroidx/compose/ui/text/font/TypefaceResult;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->w:Landroidx/compose/runtime/State;

    new-instance v0, Landroidx/compose/foundation/text/e;

    invoke-direct {v0, p0, v4}, Landroidx/compose/foundation/text/e;-><init>(Landroidx/compose/foundation/text/HeightInLinesNode;I)V

    invoke-static {p0, v0}, Landroidx/compose/ui/node/ObserverModifierNodeKt;->a(Landroidx/compose/ui/Modifier$Node;Lkotlin/jvm/functions/Function0;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->s:Z

    return-void
.end method

.method public final a2()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->v:Landroidx/compose/ui/text/TextStyle;

    iput-object v0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->w:Landroidx/compose/runtime/State;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->s:Z

    return-void
.end method

.method public final e(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 10

    iget-boolean v0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->s:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/compose/foundation/text/HeightInLinesNode;->h2()Landroidx/compose/ui/text/TextStyle;

    move-result-object v0

    sget-object v2, Landroidx/compose/ui/platform/CompositionLocalsKt;->k:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-static {p0, v2}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->a(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/text/font/FontFamily$Resolver;

    sget-object v3, Landroidx/compose/foundation/text/TextFieldDelegateKt;->a:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v0, p1, v2, v3, v4}, Landroidx/compose/foundation/text/TextFieldDelegateKt;->a(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/lang/String;I)J

    move-result-wide v5

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    long-to-int v5, v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0xa

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    invoke-static {v0, p1, v2, v3, v6}, Landroidx/compose/foundation/text/TextFieldDelegateKt;->a(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/lang/String;I)J

    move-result-wide v2

    and-long/2addr v2, v7

    long-to-int v0, v2

    sub-int/2addr v0, v5

    iget v2, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->q:I

    if-ne v2, v4, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    sub-int/2addr v2, v4

    mul-int/2addr v2, v0

    add-int/2addr v2, v5

    :goto_0
    iput v2, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->t:I

    iget v2, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->r:I

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    sub-int/2addr v2, v4

    mul-int/2addr v2, v0

    add-int/2addr v2, v5

    :goto_1
    iput v2, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->u:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->s:Z

    :cond_2
    iget v0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->t:I

    if-eq v0, v1, :cond_3

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->i(J)I

    move-result v2

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    move-result v3

    invoke-static {v0, v2, v3}, Lkotlin/ranges/RangesKt;->d(III)I

    move-result v0

    :goto_2
    move v6, v0

    goto :goto_3

    :cond_3
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->i(J)I

    move-result v0

    goto :goto_2

    :goto_3
    iget p0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->u:I

    if-eq p0, v1, :cond_4

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->i(J)I

    move-result v0

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    move-result v1

    invoke-static {p0, v0, v1}, Lkotlin/ranges/RangesKt;->d(III)I

    move-result p0

    :goto_4
    move v7, p0

    goto :goto_5

    :cond_4
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->g(J)I

    move-result p0

    goto :goto_4

    :goto_5
    const/4 v5, 0x0

    const/4 v8, 0x3

    const/4 v4, 0x0

    move-wide v2, p3

    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/unit/Constraints;->a(JIIIII)J

    move-result-wide p3

    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/Measurable;->T(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p0

    iget p2, p0, Landroidx/compose/ui/layout/Placeable;->b:I

    iget p3, p0, Landroidx/compose/ui/layout/Placeable;->c:I

    new-instance p4, La2;

    const/4 v0, 0x6

    invoke-direct {p4, p0, v0}, La2;-><init>(Landroidx/compose/ui/layout/Placeable;I)V

    invoke-static {p1, p2, p3, p4}, Landroidx/compose/ui/layout/MeasureScope;->t1(Landroidx/compose/ui/layout/MeasureScope;IILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method

.method public final h2()Landroidx/compose/ui/text/TextStyle;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->v:Landroidx/compose/ui/text/TextStyle;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "Resolved style is not set."

    invoke-static {p0}, Lo60;->u(Ljava/lang/String;)Lkotlin/KotlinNothingValueException;

    move-result-object p0

    throw p0
.end method

.method public final p0()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->p:Landroidx/compose/ui/text/TextStyle;

    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->f(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    iget-object v1, v1, Landroidx/compose/ui/node/LayoutNode;->B:Landroidx/compose/ui/unit/LayoutDirection;

    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextStyleKt;->a(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/TextStyle;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->v:Landroidx/compose/ui/text/TextStyle;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->s:Z

    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->f(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->X()V

    return-void
.end method

.method public final y0()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->w:Landroidx/compose/runtime/State;

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/compose/foundation/text/e;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/compose/foundation/text/e;-><init>(Landroidx/compose/foundation/text/HeightInLinesNode;I)V

    invoke-static {p0, v0}, Landroidx/compose/ui/node/ObserverModifierNodeKt;->a(Landroidx/compose/ui/Modifier$Node;Lkotlin/jvm/functions/Function0;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/foundation/text/HeightInLinesNode;->s:Z

    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->f(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->X()V

    return-void
.end method
