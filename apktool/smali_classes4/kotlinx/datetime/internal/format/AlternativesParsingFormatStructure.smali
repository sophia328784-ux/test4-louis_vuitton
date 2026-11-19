.class public final Lkotlinx/datetime/internal/format/AlternativesParsingFormatStructure;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/datetime/internal/format/NonConcatenatedFormatStructure;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/datetime/internal/format/NonConcatenatedFormatStructure<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0004\u0008\u0000\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0002B)\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003\u0012\u0012\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00030\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lkotlinx/datetime/internal/format/AlternativesParsingFormatStructure;",
        "T",
        "Lkotlinx/datetime/internal/format/NonConcatenatedFormatStructure;",
        "Lkotlinx/datetime/internal/format/FormatStructure;",
        "mainFormat",
        "",
        "formats",
        "<init>",
        "(Lkotlinx/datetime/internal/format/FormatStructure;Ljava/util/List;)V",
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


# instance fields
.field public final a:Lkotlinx/datetime/internal/format/FormatStructure;

.field public final b:Ljava/util/List;


# direct methods
.method public constructor <init>(Lkotlinx/datetime/internal/format/FormatStructure;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/datetime/internal/format/FormatStructure<",
            "-TT;>;",
            "Ljava/util/List<",
            "+",
            "Lkotlinx/datetime/internal/format/FormatStructure<",
            "-TT;>;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/datetime/internal/format/AlternativesParsingFormatStructure;->a:Lkotlinx/datetime/internal/format/FormatStructure;

    iput-object p2, p0, Lkotlinx/datetime/internal/format/AlternativesParsingFormatStructure;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/datetime/internal/format/formatter/FormatterStructure;
    .locals 0

    iget-object p0, p0, Lkotlinx/datetime/internal/format/AlternativesParsingFormatStructure;->a:Lkotlinx/datetime/internal/format/FormatStructure;

    invoke-interface {p0}, Lkotlinx/datetime/internal/format/FormatStructure;->a()Lkotlinx/datetime/internal/format/formatter/FormatterStructure;

    move-result-object p0

    return-object p0
.end method

.method public final b()Lkotlinx/datetime/internal/format/parser/ParserStructure;
    .locals 3

    sget-object v0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->v()Lkotlin/collections/builders/ListBuilder;

    move-result-object v1

    iget-object v2, p0, Lkotlinx/datetime/internal/format/AlternativesParsingFormatStructure;->a:Lkotlinx/datetime/internal/format/FormatStructure;

    invoke-interface {v2}, Lkotlinx/datetime/internal/format/FormatStructure;->b()Lkotlinx/datetime/internal/format/parser/ParserStructure;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lkotlinx/datetime/internal/format/AlternativesParsingFormatStructure;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/datetime/internal/format/FormatStructure;

    invoke-interface {v2}, Lkotlinx/datetime/internal/format/FormatStructure;->b()Lkotlinx/datetime/internal/format/parser/ParserStructure;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->r(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    move-result-object p0

    new-instance v1, Lkotlinx/datetime/internal/format/parser/ParserStructure;

    invoke-direct {v1, v0, p0}, Lkotlinx/datetime/internal/format/parser/ParserStructure;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lkotlinx/datetime/internal/format/AlternativesParsingFormatStructure;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlinx/datetime/internal/format/AlternativesParsingFormatStructure;

    iget-object v0, p1, Lkotlinx/datetime/internal/format/AlternativesParsingFormatStructure;->a:Lkotlinx/datetime/internal/format/FormatStructure;

    iget-object v1, p0, Lkotlinx/datetime/internal/format/AlternativesParsingFormatStructure;->a:Lkotlinx/datetime/internal/format/FormatStructure;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lkotlinx/datetime/internal/format/AlternativesParsingFormatStructure;->b:Ljava/util/List;

    iget-object p1, p1, Lkotlinx/datetime/internal/format/AlternativesParsingFormatStructure;->b:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lkotlinx/datetime/internal/format/AlternativesParsingFormatStructure;->a:Lkotlinx/datetime/internal/format/FormatStructure;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lkotlinx/datetime/internal/format/AlternativesParsingFormatStructure;->b:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AlternativesParsing("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lkotlinx/datetime/internal/format/AlternativesParsingFormatStructure;->b:Ljava/util/List;

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Ltr;->m(Ljava/lang/StringBuilder;Ljava/util/List;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
