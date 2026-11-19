.class public abstract Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static a(Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;[Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 5

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    invoke-interface {p0}, Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;->h()Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;

    move-result-object v4

    invoke-interface {v3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4}, Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;->a()Lkotlinx/datetime/internal/format/AppendableFormatStructure;

    move-result-object v3

    new-instance v4, Lkotlinx/datetime/internal/format/ConcatenatedFormatStructure;

    iget-object v3, v3, Lkotlinx/datetime/internal/format/AppendableFormatStructure;->a:Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Lkotlinx/datetime/internal/format/ConcatenatedFormatStructure;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;->h()Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;

    move-result-object p1

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;->a()Lkotlinx/datetime/internal/format/AppendableFormatStructure;

    move-result-object p1

    new-instance p2, Lkotlinx/datetime/internal/format/ConcatenatedFormatStructure;

    iget-object p1, p1, Lkotlinx/datetime/internal/format/AppendableFormatStructure;->a:Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Lkotlinx/datetime/internal/format/ConcatenatedFormatStructure;-><init>(Ljava/util/List;)V

    invoke-interface {p0}, Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;->a()Lkotlinx/datetime/internal/format/AppendableFormatStructure;

    move-result-object p0

    new-instance p1, Lkotlinx/datetime/internal/format/AlternativesParsingFormatStructure;

    invoke-direct {p1, p2, v0}, Lkotlinx/datetime/internal/format/AlternativesParsingFormatStructure;-><init>(Lkotlinx/datetime/internal/format/FormatStructure;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lkotlinx/datetime/internal/format/AppendableFormatStructure;->a(Lkotlinx/datetime/internal/format/FormatStructure;)V

    return-void
.end method

.method public static b(Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;->a()Lkotlinx/datetime/internal/format/AppendableFormatStructure;

    move-result-object v0

    invoke-interface {p0}, Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;->h()Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;

    move-result-object p0

    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;->a()Lkotlinx/datetime/internal/format/AppendableFormatStructure;

    move-result-object p0

    new-instance p2, Lkotlinx/datetime/internal/format/ConcatenatedFormatStructure;

    iget-object p0, p0, Lkotlinx/datetime/internal/format/AppendableFormatStructure;->a:Ljava/util/ArrayList;

    invoke-direct {p2, p0}, Lkotlinx/datetime/internal/format/ConcatenatedFormatStructure;-><init>(Ljava/util/List;)V

    new-instance p0, Lkotlinx/datetime/internal/format/OptionalFormatStructure;

    invoke-direct {p0, p1, p2}, Lkotlinx/datetime/internal/format/OptionalFormatStructure;-><init>(Ljava/lang/String;Lkotlinx/datetime/internal/format/FormatStructure;)V

    invoke-virtual {v0, p0}, Lkotlinx/datetime/internal/format/AppendableFormatStructure;->a(Lkotlinx/datetime/internal/format/FormatStructure;)V

    return-void
.end method

.method public static c(Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;)Lkotlinx/datetime/internal/format/CachedFormatStructure;
    .locals 2

    new-instance v0, Lkotlinx/datetime/internal/format/CachedFormatStructure;

    invoke-interface {p0}, Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;->a()Lkotlinx/datetime/internal/format/AppendableFormatStructure;

    move-result-object p0

    new-instance v1, Lkotlinx/datetime/internal/format/ConcatenatedFormatStructure;

    iget-object p0, p0, Lkotlinx/datetime/internal/format/AppendableFormatStructure;->a:Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Lkotlinx/datetime/internal/format/ConcatenatedFormatStructure;-><init>(Ljava/util/List;)V

    iget-object p0, v1, Lkotlinx/datetime/internal/format/ConcatenatedFormatStructure;->a:Ljava/util/List;

    invoke-direct {v0, p0}, Lkotlinx/datetime/internal/format/CachedFormatStructure;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static d(Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Lkotlinx/datetime/format/AbstractDateTimeFormatBuilder;->a()Lkotlinx/datetime/internal/format/AppendableFormatStructure;

    move-result-object p0

    new-instance v0, Lkotlinx/datetime/internal/format/ConstantFormatStructure;

    invoke-direct {v0, p1}, Lkotlinx/datetime/internal/format/ConstantFormatStructure;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lkotlinx/datetime/internal/format/AppendableFormatStructure;->a(Lkotlinx/datetime/internal/format/FormatStructure;)V

    return-void
.end method
