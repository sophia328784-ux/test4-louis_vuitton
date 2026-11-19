.class public final Lkotlinx/datetime/internal/format/CachedFormatStructure;
.super Lkotlinx/datetime/internal/format/ConcatenatedFormatStructure;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/datetime/internal/format/ConcatenatedFormatStructure<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0002B\u001b\u0012\u0012\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00040\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lkotlinx/datetime/internal/format/CachedFormatStructure;",
        "T",
        "Lkotlinx/datetime/internal/format/ConcatenatedFormatStructure;",
        "",
        "Lkotlinx/datetime/internal/format/NonConcatenatedFormatStructure;",
        "formats",
        "<init>",
        "(Ljava/util/List;)V",
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
.field public final b:Lkotlinx/datetime/internal/format/formatter/FormatterStructure;

.field public final c:Lkotlinx/datetime/internal/format/parser/ParserStructure;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlinx/datetime/internal/format/NonConcatenatedFormatStructure<",
            "-TT;>;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Lkotlinx/datetime/internal/format/ConcatenatedFormatStructure;-><init>(Ljava/util/List;)V

    invoke-super {p0}, Lkotlinx/datetime/internal/format/ConcatenatedFormatStructure;->a()Lkotlinx/datetime/internal/format/formatter/FormatterStructure;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/datetime/internal/format/CachedFormatStructure;->b:Lkotlinx/datetime/internal/format/formatter/FormatterStructure;

    invoke-super {p0}, Lkotlinx/datetime/internal/format/ConcatenatedFormatStructure;->b()Lkotlinx/datetime/internal/format/parser/ParserStructure;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/datetime/internal/format/CachedFormatStructure;->c:Lkotlinx/datetime/internal/format/parser/ParserStructure;

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/datetime/internal/format/formatter/FormatterStructure;
    .locals 0

    iget-object p0, p0, Lkotlinx/datetime/internal/format/CachedFormatStructure;->b:Lkotlinx/datetime/internal/format/formatter/FormatterStructure;

    return-object p0
.end method

.method public final b()Lkotlinx/datetime/internal/format/parser/ParserStructure;
    .locals 0

    iget-object p0, p0, Lkotlinx/datetime/internal/format/CachedFormatStructure;->c:Lkotlinx/datetime/internal/format/parser/ParserStructure;

    return-object p0
.end method
