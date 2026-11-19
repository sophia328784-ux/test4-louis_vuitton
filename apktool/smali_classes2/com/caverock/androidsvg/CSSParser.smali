.class Lcom/caverock/androidsvg/CSSParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caverock/androidsvg/CSSParser$PseudoClassNotSupported;,
        Lcom/caverock/androidsvg/CSSParser$PseudoClassTarget;,
        Lcom/caverock/androidsvg/CSSParser$PseudoClassNot;,
        Lcom/caverock/androidsvg/CSSParser$PseudoClassEmpty;,
        Lcom/caverock/androidsvg/CSSParser$PseudoClassRoot;,
        Lcom/caverock/androidsvg/CSSParser$PseudoClassOnlyChild;,
        Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;,
        Lcom/caverock/androidsvg/CSSParser$PseudoClass;,
        Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;,
        Lcom/caverock/androidsvg/CSSParser$Selector;,
        Lcom/caverock/androidsvg/CSSParser$Rule;,
        Lcom/caverock/androidsvg/CSSParser$Source;,
        Lcom/caverock/androidsvg/CSSParser$Ruleset;,
        Lcom/caverock/androidsvg/CSSParser$SimpleSelector;,
        Lcom/caverock/androidsvg/CSSParser$Attrib;,
        Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;,
        Lcom/caverock/androidsvg/CSSParser$AttribOp;,
        Lcom/caverock/androidsvg/CSSParser$Combinator;,
        Lcom/caverock/androidsvg/CSSParser$MediaType;
    }
.end annotation


# instance fields
.field public a:Lcom/caverock/androidsvg/CSSParser$MediaType;

.field public b:Lcom/caverock/androidsvg/CSSParser$Source;

.field public c:Z


# direct methods
.method public static a(Ljava/util/ArrayList;ILcom/caverock/androidsvg/SVG$SvgElementBase;)I
    .locals 1

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    iget-object p1, p2, Lcom/caverock/androidsvg/SVG$SvgObject;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    if-eq p0, p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->getChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/caverock/androidsvg/SVG$SvgObject;

    if-ne p1, p2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const/4 p0, -0x1

    return p0
.end method

.method public static c(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Ljava/util/ArrayList;
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->f()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->f()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x7a

    const/16 v6, 0x61

    const/16 v7, 0x5a

    const/16 v8, 0x41

    if-lt v4, v8, :cond_2

    if-le v4, v7, :cond_3

    :cond_2
    if-lt v4, v6, :cond_7

    if-gt v4, v5, :cond_7

    :cond_3
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->a()I

    move-result v3

    :goto_0
    if-lt v3, v8, :cond_4

    if-le v3, v7, :cond_5

    :cond_4
    if-lt v3, v6, :cond_6

    if-gt v3, v5, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->a()I

    move-result v3

    goto :goto_0

    :cond_6
    iget v3, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_7
    iput v2, p0, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    :goto_1
    if-nez v3, :cond_8

    goto :goto_2

    :cond_8
    :try_start_0
    invoke-static {v3}, Lcom/caverock/androidsvg/CSSParser$MediaType;->valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/CSSParser$MediaType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {p0}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->p()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_9
    :goto_2
    return-object v0
.end method

.method public static f(Lcom/caverock/androidsvg/CSSParser$Selector;ILjava/util/ArrayList;ILcom/caverock/androidsvg/SVG$SvgElementBase;)Z
    .locals 3

    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Selector;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    invoke-static {v0, p4}, Lcom/caverock/androidsvg/CSSParser;->i(Lcom/caverock/androidsvg/CSSParser$SimpleSelector;Lcom/caverock/androidsvg/SVG$SvgElementBase;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, v0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->a:Lcom/caverock/androidsvg/CSSParser$Combinator;

    sget-object v1, Lcom/caverock/androidsvg/CSSParser$Combinator;->DESCENDANT:Lcom/caverock/androidsvg/CSSParser$Combinator;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_3

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    if-ltz p3, :cond_5

    add-int/lit8 p4, p1, -0x1

    invoke-static {p0, p4, p2, p3}, Lcom/caverock/androidsvg/CSSParser;->h(Lcom/caverock/androidsvg/CSSParser$Selector;ILjava/util/ArrayList;I)Z

    move-result p4

    if-eqz p4, :cond_2

    :goto_1
    return v2

    :cond_2
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/caverock/androidsvg/CSSParser$Combinator;->CHILD:Lcom/caverock/androidsvg/CSSParser$Combinator;

    if-ne v0, v1, :cond_4

    sub-int/2addr p1, v2

    invoke-static {p0, p1, p2, p3}, Lcom/caverock/androidsvg/CSSParser;->h(Lcom/caverock/androidsvg/CSSParser$Selector;ILjava/util/ArrayList;I)Z

    move-result p0

    return p0

    :cond_4
    invoke-static {p2, p3, p4}, Lcom/caverock/androidsvg/CSSParser;->a(Ljava/util/ArrayList;ILcom/caverock/androidsvg/SVG$SvgElementBase;)I

    move-result v0

    if-gtz v0, :cond_6

    :cond_5
    :goto_2
    const/4 p0, 0x0

    return p0

    :cond_6
    iget-object p4, p4, Lcom/caverock/androidsvg/SVG$SvgObject;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {p4}, Lcom/caverock/androidsvg/SVG$SvgContainer;->getChildren()Ljava/util/List;

    move-result-object p4

    sub-int/2addr v0, v2

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    sub-int/2addr p1, v2

    invoke-static {p0, p1, p2, p3, p4}, Lcom/caverock/androidsvg/CSSParser;->f(Lcom/caverock/androidsvg/CSSParser$Selector;ILjava/util/ArrayList;ILcom/caverock/androidsvg/SVG$SvgElementBase;)Z

    move-result p0

    return p0
.end method

.method public static g(Lcom/caverock/androidsvg/CSSParser$Selector;Lcom/caverock/androidsvg/SVG$SvgElementBase;)Z
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p1, Lcom/caverock/androidsvg/SVG$SvgObject;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    check-cast v1, Lcom/caverock/androidsvg/SVG$SvgObject;

    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    iget-object v4, p0, Lcom/caverock/androidsvg/CSSParser$Selector;->a:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_1
    iget-object v5, p0, Lcom/caverock/androidsvg/CSSParser$Selector;->a:Ljava/util/ArrayList;

    if-ne v4, v3, :cond_2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    invoke-static {p0, p1}, Lcom/caverock/androidsvg/CSSParser;->i(Lcom/caverock/androidsvg/CSSParser$SimpleSelector;Lcom/caverock/androidsvg/SVG$SvgElementBase;)Z

    move-result p0

    return p0

    :cond_2
    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_2
    sub-int/2addr v2, v3

    invoke-static {p0, v2, v0, v1, p1}, Lcom/caverock/androidsvg/CSSParser;->f(Lcom/caverock/androidsvg/CSSParser$Selector;ILjava/util/ArrayList;ILcom/caverock/androidsvg/SVG$SvgElementBase;)Z

    move-result p0

    return p0
.end method

.method public static h(Lcom/caverock/androidsvg/CSSParser$Selector;ILjava/util/ArrayList;I)Z
    .locals 4

    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Selector;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    invoke-static {v0, v1}, Lcom/caverock/androidsvg/CSSParser;->i(Lcom/caverock/androidsvg/CSSParser$SimpleSelector;Lcom/caverock/androidsvg/SVG$SvgElementBase;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, v0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->a:Lcom/caverock/androidsvg/CSSParser$Combinator;

    sget-object v2, Lcom/caverock/androidsvg/CSSParser$Combinator;->DESCENDANT:Lcom/caverock/androidsvg/CSSParser$Combinator;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    if-lez p3, :cond_4

    add-int/lit8 v0, p1, -0x1

    add-int/lit8 p3, p3, -0x1

    invoke-static {p0, v0, p2, p3}, Lcom/caverock/androidsvg/CSSParser;->h(Lcom/caverock/androidsvg/CSSParser$Selector;ILjava/util/ArrayList;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return v3

    :cond_2
    sget-object v2, Lcom/caverock/androidsvg/CSSParser$Combinator;->CHILD:Lcom/caverock/androidsvg/CSSParser$Combinator;

    if-ne v0, v2, :cond_3

    sub-int/2addr p1, v3

    sub-int/2addr p3, v3

    invoke-static {p0, p1, p2, p3}, Lcom/caverock/androidsvg/CSSParser;->h(Lcom/caverock/androidsvg/CSSParser$Selector;ILjava/util/ArrayList;I)Z

    move-result p0

    return p0

    :cond_3
    invoke-static {p2, p3, v1}, Lcom/caverock/androidsvg/CSSParser;->a(Ljava/util/ArrayList;ILcom/caverock/androidsvg/SVG$SvgElementBase;)I

    move-result v0

    if-gtz v0, :cond_5

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return p0

    :cond_5
    iget-object v1, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->b:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->getChildren()Ljava/util/List;

    move-result-object v1

    sub-int/2addr v0, v3

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    sub-int/2addr p1, v3

    invoke-static {p0, p1, p2, p3, v0}, Lcom/caverock/androidsvg/CSSParser;->f(Lcom/caverock/androidsvg/CSSParser$Selector;ILjava/util/ArrayList;ILcom/caverock/androidsvg/SVG$SvgElementBase;)Z

    move-result p0

    return p0
.end method

.method public static i(Lcom/caverock/androidsvg/CSSParser$SimpleSelector;Lcom/caverock/androidsvg/SVG$SvgElementBase;)Z
    .locals 4

    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVG$SvgObject;->n()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/CSSParser$Attrib;

    iget-object v2, v1, Lcom/caverock/androidsvg/CSSParser$Attrib;->a:Ljava/lang/String;

    iget-object v1, v1, Lcom/caverock/androidsvg/CSSParser$Attrib;->c:Ljava/lang/String;

    const-string v3, "id"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "class"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;->g:Ljava/util/ArrayList;

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_4
    iget-object v2, p1, Lcom/caverock/androidsvg/SVG$SvgElementBase;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->d:Ljava/util/ArrayList;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/CSSParser$PseudoClass;

    invoke-interface {v0, p1}, Lcom/caverock/androidsvg/CSSParser$PseudoClass;->a(Lcom/caverock/androidsvg/SVG$SvgElementBase;)Z

    move-result v0

    if-nez v0, :cond_6

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_7
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final b(Lcom/caverock/androidsvg/CSSParser$Ruleset;Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)V
    .locals 10

    invoke-virtual {p2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    if-eqz v0, :cond_1d

    iget-boolean v1, p0, Lcom/caverock/androidsvg/CSSParser;->c:Z

    const-string v2, "Invalid @media rule: expected \'}\' at end of rule set"

    const/16 v3, 0x7d

    const/4 v4, 0x0

    const/16 v5, 0x7b

    const/4 v6, 0x1

    if-nez v1, :cond_5

    const-string v1, "media"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {p2}, Lcom/caverock/androidsvg/CSSParser;->c(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2, v5}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    iget-object v1, p0, Lcom/caverock/androidsvg/CSSParser;->a:Lcom/caverock/androidsvg/CSSParser$MediaType;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/caverock/androidsvg/CSSParser$MediaType;

    sget-object v7, Lcom/caverock/androidsvg/CSSParser$MediaType;->all:Lcom/caverock/androidsvg/CSSParser$MediaType;

    if-eq v5, v7, :cond_1

    if-ne v5, v1, :cond_0

    :cond_1
    iput-boolean v6, p0, Lcom/caverock/androidsvg/CSSParser;->c:Z

    invoke-virtual {p0, p2}, Lcom/caverock/androidsvg/CSSParser;->e(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Lcom/caverock/androidsvg/CSSParser$Ruleset;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/caverock/androidsvg/CSSParser$Ruleset;->b(Lcom/caverock/androidsvg/CSSParser$Ruleset;)V

    iput-boolean v4, p0, Lcom/caverock/androidsvg/CSSParser;->c:Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2}, Lcom/caverock/androidsvg/CSSParser;->e(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Lcom/caverock/androidsvg/CSSParser$Ruleset;

    :goto_0
    invoke-virtual {p2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->f()Z

    move-result p0

    if-nez p0, :cond_1c

    invoke-virtual {p2, v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    move-result p0

    if-eqz p0, :cond_3

    goto/16 :goto_9

    :cond_3
    new-instance p0, Lcom/caverock/androidsvg/CSSParseException;

    invoke-direct {p0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Lcom/caverock/androidsvg/CSSParseException;

    const-string p1, "Invalid @media rule: missing rule set"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    iget-boolean p0, p0, Lcom/caverock/androidsvg/CSSParser;->c:Z

    const/16 p1, 0x3b

    if-nez p0, :cond_19

    const-string p0, "import"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    invoke-virtual {p2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->f()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    goto/16 :goto_7

    :cond_6
    iget p0, p2, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    const-string v1, "url("

    invoke-virtual {p2, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_7

    :cond_7
    invoke-virtual {p2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    invoke-virtual {p2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->s()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_12

    iget-object v1, p2, Lcom/caverock/androidsvg/SVGParser$TextScanner;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :cond_8
    :goto_1
    invoke-virtual {p2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->f()Z

    move-result v4

    if-nez v4, :cond_10

    iget v4, p2, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x27

    if-eq v4, v5, :cond_10

    const/16 v5, 0x22

    if-eq v4, v5, :cond_10

    const/16 v5, 0x28

    if-eq v4, v5, :cond_10

    const/16 v5, 0x29

    if-eq v4, v5, :cond_10

    invoke-static {v4}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->g(I)Z

    move-result v5

    if-nez v5, :cond_10

    invoke-static {v4}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_4

    :cond_9
    iget v5, p2, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    add-int/2addr v5, v6

    iput v5, p2, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_f

    invoke-virtual {p2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->f()Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_1

    :cond_a
    iget v4, p2, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p2, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_8

    const/16 v5, 0xd

    if-eq v4, v5, :cond_8

    const/16 v5, 0xc

    if-ne v4, v5, :cond_b

    goto :goto_1

    :cond_b
    invoke-static {v4}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->r(I)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_f

    move v4, v6

    :goto_2
    const/4 v8, 0x5

    if-gt v4, v8, :cond_e

    invoke-virtual {p2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->f()Z

    move-result v8

    if-eqz v8, :cond_c

    goto :goto_3

    :cond_c
    iget v8, p2, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->r(I)I

    move-result v8

    if-ne v8, v7, :cond_d

    goto :goto_3

    :cond_d
    iget v9, p2, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    add-int/2addr v9, v6

    iput v9, p2, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    mul-int/lit8 v5, v5, 0x10

    add-int/2addr v5, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_e
    :goto_3
    int-to-char v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_f
    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_10
    :goto_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_11

    move-object v1, v0

    goto :goto_5

    :cond_11
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_12
    :goto_5
    if-nez v1, :cond_13

    iput p0, p2, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    goto :goto_7

    :cond_13
    invoke-virtual {p2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    invoke-virtual {p2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->f()Z

    move-result v3

    if-nez v3, :cond_15

    const-string v3, ")"

    invoke-virtual {p2, v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    goto :goto_6

    :cond_14
    iput p0, p2, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    goto :goto_7

    :cond_15
    :goto_6
    move-object v0, v1

    :goto_7
    if-nez v0, :cond_16

    invoke-virtual {p2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->s()Ljava/lang/String;

    move-result-object v0

    :cond_16
    if-eqz v0, :cond_18

    invoke-virtual {p2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    invoke-static {p2}, Lcom/caverock/androidsvg/CSSParser;->c(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->f()Z

    move-result p0

    if-nez p0, :cond_1c

    invoke-virtual {p2, p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    move-result p0

    if-eqz p0, :cond_17

    goto :goto_9

    :cond_17
    new-instance p0, Lcom/caverock/androidsvg/CSSParseException;

    invoke-direct {p0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_18
    new-instance p0, Lcom/caverock/androidsvg/CSSParseException;

    const-string p1, "Invalid @import rule: expected string or url()"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    :goto_8
    invoke-virtual {p2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->f()Z

    move-result p0

    if-nez p0, :cond_1c

    invoke-virtual {p2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->h()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, p1, :cond_1a

    if-nez v4, :cond_1a

    goto :goto_9

    :cond_1a
    if-ne p0, v5, :cond_1b

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_1b
    if-ne p0, v3, :cond_19

    if-lez v4, :cond_19

    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_19

    :cond_1c
    :goto_9
    invoke-virtual {p2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    return-void

    :cond_1d
    new-instance p0, Lcom/caverock/androidsvg/CSSParseException;

    const-string p1, "Invalid \'@\' rule"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d(Lcom/caverock/androidsvg/CSSParser$Ruleset;Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Z
    .locals 13

    invoke-virtual {p2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->u()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    const/16 v1, 0x7b

    invoke-virtual {p2, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    new-instance v1, Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {v1}, Lcom/caverock/androidsvg/SVG$Style;-><init>()V

    :cond_0
    invoke-virtual {p2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    const/16 v3, 0x3a

    invoke-virtual {p2, v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {p2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    iget-object v3, p2, Lcom/caverock/androidsvg/SVGParser$TextScanner;->a:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->f()Z

    move-result v4

    const/4 v5, 0x1

    const/16 v6, 0x21

    const/16 v7, 0x7d

    const/16 v8, 0x3b

    const/4 v9, 0x0

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    iget v4, p2, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v10

    move v11, v4

    :goto_0
    const/4 v12, -0x1

    if-eq v10, v12, :cond_4

    if-eq v10, v8, :cond_4

    if-eq v10, v7, :cond_4

    if-eq v10, v6, :cond_4

    const/16 v12, 0xa

    if-eq v10, v12, :cond_4

    const/16 v12, 0xd

    if-ne v10, v12, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v10}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->g(I)Z

    move-result v10

    if-nez v10, :cond_3

    iget v10, p2, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    add-int/lit8 v11, v10, 0x1

    :cond_3
    invoke-virtual {p2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->a()I

    move-result v10

    goto :goto_0

    :cond_4
    :goto_1
    iget v10, p2, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    if-le v10, v4, :cond_5

    invoke-virtual {v3, v4, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_5
    iput v4, p2, Lcom/caverock/androidsvg/SVGParser$TextScanner;->b:I

    :goto_2
    if-eqz v9, :cond_a

    invoke-virtual {p2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    invoke-virtual {p2, v6}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    const-string v3, "important"

    invoke-virtual {p2, v3}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    goto :goto_3

    :cond_6
    new-instance p0, Lcom/caverock/androidsvg/CSSParseException;

    const-string p1, "Malformed rule set: found unexpected \'!\'"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_3
    invoke-virtual {p2, v8}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    invoke-static {v1, v2, v9}, Lcom/caverock/androidsvg/SVGParser;->C(Lcom/caverock/androidsvg/SVG$Style;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    invoke-virtual {p2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->f()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {p2, v7}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_8
    invoke-virtual {p2}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->q()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/CSSParser$Selector;

    new-instance v2, Lcom/caverock/androidsvg/CSSParser$Rule;

    iget-object v3, p0, Lcom/caverock/androidsvg/CSSParser;->b:Lcom/caverock/androidsvg/CSSParser$Source;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v0, v2, Lcom/caverock/androidsvg/CSSParser$Rule;->a:Lcom/caverock/androidsvg/CSSParser$Selector;

    iput-object v1, v2, Lcom/caverock/androidsvg/CSSParser$Rule;->b:Lcom/caverock/androidsvg/SVG$Style;

    iput-object v3, v2, Lcom/caverock/androidsvg/CSSParser$Rule;->c:Lcom/caverock/androidsvg/CSSParser$Source;

    invoke-virtual {p1, v2}, Lcom/caverock/androidsvg/CSSParser$Ruleset;->a(Lcom/caverock/androidsvg/CSSParser$Rule;)V

    goto :goto_4

    :cond_9
    return v5

    :cond_a
    new-instance p0, Lcom/caverock/androidsvg/CSSParseException;

    const-string p1, "Expected property value"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Lcom/caverock/androidsvg/CSSParseException;

    const-string p1, "Expected \':\'"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    new-instance p0, Lcom/caverock/androidsvg/CSSParseException;

    const-string p1, "Malformed rule block: expected \'{\'"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public final e(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Lcom/caverock/androidsvg/CSSParser$Ruleset;
    .locals 2

    new-instance v0, Lcom/caverock/androidsvg/CSSParser$Ruleset;

    invoke-direct {v0}, Lcom/caverock/androidsvg/CSSParser$Ruleset;-><init>()V

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->f()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "<!--"

    invoke-virtual {p1, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "-->"

    invoke-virtual {p1, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x40

    invoke-virtual {p1, v1}, Lcom/caverock/androidsvg/SVGParser$TextScanner;->d(C)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0, p1}, Lcom/caverock/androidsvg/CSSParser;->b(Lcom/caverock/androidsvg/CSSParser$Ruleset;Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0, p1}, Lcom/caverock/androidsvg/CSSParser;->d(Lcom/caverock/androidsvg/CSSParser$Ruleset;Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Z

    move-result v1
    :try_end_0
    .catch Lcom/caverock/androidsvg/CSSParseException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    return-object v0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-object v0
.end method
