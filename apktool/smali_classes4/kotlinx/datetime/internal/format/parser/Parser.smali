.class public abstract Lkotlinx/datetime/internal/format/parser/Parser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/datetime/internal/format/parser/Parser$ParserState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Output::",
        "Lkotlinx/datetime/internal/format/parser/Copyable<",
        "TOutput;>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0081@\u0018\u0000*\u000e\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u00028\u00000\u00012\u00020\u0003:\u0001\u0004\u0088\u0001\u0005\u0092\u0001\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lkotlinx/datetime/internal/format/parser/Parser;",
        "Lkotlinx/datetime/internal/format/parser/Copyable;",
        "Output",
        "",
        "ParserState",
        "commands",
        "Lkotlinx/datetime/internal/format/parser/ParserStructure;",
        "kotlinx-datetime"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/jvm/JvmInline;
.end annotation


# direct methods
.method public static a(Lkotlinx/datetime/internal/format/parser/ParserStructure;Ljava/lang/String;Lkotlinx/datetime/internal/format/parser/Copyable;)Lkotlinx/datetime/internal/format/parser/Copyable;
    .locals 8

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lkotlinx/datetime/internal/format/parser/Parser$ParserState;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p0, v2}, Lkotlinx/datetime/internal/format/parser/Parser$ParserState;-><init>(Ljava/lang/Object;Lkotlinx/datetime/internal/format/parser/ParserStructure;I)V

    filled-new-array {v1}, [Lkotlinx/datetime/internal/format/parser/Parser$ParserState;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->U([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->d0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlinx/datetime/internal/format/parser/Parser$ParserState;

    if-nez p2, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 p1, 0x1

    if-le p0, p1, :cond_1

    new-instance p0, Lkotlinx/datetime/internal/format/parser/Parser$match-impl$$inlined$sortByDescending$1;

    invoke-direct {p0}, Lkotlinx/datetime/internal/format/parser/Parser$match-impl$$inlined$sortByDescending$1;-><init>()V

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->m0(Ljava/util/Comparator;Ljava/util/List;)V

    :cond_1
    new-instance p0, Lkotlinx/datetime/internal/format/parser/ParseException;

    invoke-direct {p0, v0}, Lkotlinx/datetime/internal/format/parser/ParseException;-><init>(Ljava/util/List;)V

    throw p0

    :cond_2
    iget-object v1, p2, Lkotlinx/datetime/internal/format/parser/Parser$ParserState;->a:Ljava/lang/Object;

    check-cast v1, Lkotlinx/datetime/internal/format/parser/Copyable;

    invoke-interface {v1}, Lkotlinx/datetime/internal/format/parser/Copyable;->copy()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/datetime/internal/format/parser/Copyable;

    iget v3, p2, Lkotlinx/datetime/internal/format/parser/Parser$ParserState;->c:I

    iget-object p2, p2, Lkotlinx/datetime/internal/format/parser/Parser$ParserState;->b:Lkotlinx/datetime/internal/format/parser/ParserStructure;

    iget-object v4, p2, Lkotlinx/datetime/internal/format/parser/ParserStructure;->a:Ljava/util/List;

    iget-object v5, p2, Lkotlinx/datetime/internal/format/parser/ParserStructure;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v6, v2

    :goto_1
    if-ge v6, v4, :cond_5

    iget-object v7, p2, Lkotlinx/datetime/internal/format/parser/ParserStructure;->a:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlinx/datetime/internal/format/parser/ParserOperation;

    invoke-interface {v7, v1, p1, v3}, Lkotlinx/datetime/internal/format/parser/ParserOperation;->a(Lkotlinx/datetime/internal/format/parser/Copyable;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v3

    instance-of v7, v3, Ljava/lang/Integer;

    if-eqz v7, :cond_3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    instance-of p2, v3, Lkotlinx/datetime/internal/format/parser/ParseError;

    if-eqz p2, :cond_4

    check-cast v3, Lkotlinx/datetime/internal/format/parser/ParseError;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const-string p0, "Unexpected parse result: "

    invoke-static {v3, p0}, Lmt;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_5
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-ne v3, p2, :cond_6

    return-object v1

    :cond_6
    new-instance p2, Lkotlinx/datetime/internal/format/parser/ParseError;

    sget-object v1, Lkotlinx/datetime/internal/format/parser/Parser$parse$1$3;->c:Lkotlinx/datetime/internal/format/parser/Parser$parse$1$3;

    invoke-direct {p2, v3, v1}, Lkotlinx/datetime/internal/format/parser/ParseError;-><init>(ILkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-ltz p2, :cond_0

    :goto_2
    add-int/lit8 v4, p2, -0x1

    new-instance v6, Lkotlinx/datetime/internal/format/parser/Parser$ParserState;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlinx/datetime/internal/format/parser/ParserStructure;

    invoke-direct {v6, v1, p2, v3}, Lkotlinx/datetime/internal/format/parser/Parser$ParserState;-><init>(Ljava/lang/Object;Lkotlinx/datetime/internal/format/parser/ParserStructure;I)V

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-gez v4, :cond_8

    goto/16 :goto_0

    :cond_8
    move p2, v4

    goto :goto_2
.end method
