.class public final synthetic Landroidx/media3/extractor/text/cea/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroidx/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;

    check-cast p2, Landroidx/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;

    iget p0, p2, Landroidx/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;->b:I

    iget p1, p1, Landroidx/media3/extractor/text/cea/Cea708Decoder$Cea708CueInfo;->b:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method
