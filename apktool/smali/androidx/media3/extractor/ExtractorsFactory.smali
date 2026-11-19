.class public interface abstract Landroidx/media3/extractor/ExtractorsFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public a(Landroidx/media3/extractor/text/SubtitleParser$Factory;)V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public e(Z)V
    .locals 0

    return-void
.end method

.method public f(Landroid/net/Uri;Ljava/util/Map;)[Landroidx/media3/extractor/Extractor;
    .locals 0

    invoke-interface {p0}, Landroidx/media3/extractor/ExtractorsFactory;->j()[Landroidx/media3/extractor/Extractor;

    move-result-object p0

    return-object p0
.end method

.method public abstract j()[Landroidx/media3/extractor/Extractor;
.end method
