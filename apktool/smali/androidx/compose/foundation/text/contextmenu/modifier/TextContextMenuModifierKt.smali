.class public abstract Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuModifierKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "foundation"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;
    .locals 13

    new-instance v2, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;

    invoke-direct {v2}, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;-><init>()V

    new-instance v0, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuModifierKt$collectTextContextMenuData$1$1;

    const-string v5, "addFilter$foundation(Lkotlin/jvm/functions/Function1;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-class v3, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;

    const-string v4, "addFilter"

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v1, Lp11;

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lp11;-><init>(Ljava/lang/Object;I)V

    new-instance v3, Landroidx/compose/foundation/text/contextmenu/modifier/b;

    invoke-direct {v3, v1, v0}, Landroidx/compose/foundation/text/contextmenu/modifier/b;-><init>(Lp11;Lkotlin/jvm/functions/Function1;)V

    sget-object v0, Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuDataTraverseKey;->a:Landroidx/compose/foundation/text/contextmenu/modifier/TextContextMenuDataTraverseKey;

    invoke-static {p0, v0, v3}, Landroidx/compose/ui/node/TraversableNodeKt;->c(Landroidx/compose/ui/node/DelegatableNode;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    new-instance p0, Landroidx/collection/MutableObjectList;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3}, Landroidx/collection/MutableObjectList;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v4, v2, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;->a:Landroidx/collection/MutableObjectList;

    iget-object v5, v4, Landroidx/collection/ObjectList;->a:[Ljava/lang/Object;

    iget v4, v4, Landroidx/collection/ObjectList;->b:I

    move v6, v0

    move v7, v1

    move-object v8, v3

    :goto_0
    if-ge v6, v4, :cond_6

    aget-object v9, v5, v6

    check-cast v9, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuComponent;

    if-eqz v7, :cond_0

    sget-object v10, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSeparator;->b:Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSeparator;

    if-eq v9, v10, :cond_5

    :cond_0
    sget-object v7, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSeparator;->b:Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSeparator;

    if-ne v9, v7, :cond_1

    if-ne v8, v7, :cond_1

    goto :goto_2

    :cond_1
    if-ne v9, v7, :cond_2

    goto :goto_3

    :cond_2
    iget-object v7, v2, Landroidx/compose/foundation/text/contextmenu/builder/TextContextMenuBuilderScope;->b:Landroidx/collection/MutableObjectList;

    iget-object v10, v7, Landroidx/collection/ObjectList;->a:[Ljava/lang/Object;

    iget v7, v7, Landroidx/collection/ObjectList;->b:I

    move v11, v0

    :goto_1
    if-ge v11, v7, :cond_4

    aget-object v12, v10, v11

    check-cast v12, Lkotlin/jvm/functions/Function1;

    invoke-interface {v12, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-nez v12, :cond_3

    :goto_2
    move v7, v0

    goto :goto_4

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    invoke-virtual {p0, v9}, Landroidx/collection/MutableObjectList;->g(Ljava/lang/Object;)V

    move v7, v0

    move-object v8, v9

    :cond_5
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Landroidx/collection/ObjectList;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_5

    :cond_7
    iget-object v0, p0, Landroidx/collection/ObjectList;->a:[Ljava/lang/Object;

    iget v2, p0, Landroidx/collection/ObjectList;->b:I

    sub-int/2addr v2, v1

    aget-object v3, v0, v2

    :goto_5
    check-cast v3, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuComponent;

    sget-object v0, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSeparator;->b:Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSeparator;

    if-ne v3, v0, :cond_8

    iget v0, p0, Landroidx/collection/ObjectList;->b:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroidx/collection/MutableObjectList;->m(I)Ljava/lang/Object;

    :cond_8
    new-instance v0, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;

    invoke-virtual {p0}, Landroidx/collection/MutableObjectList;->j()Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuData;-><init>(Ljava/util/List;)V

    return-object v0
.end method
