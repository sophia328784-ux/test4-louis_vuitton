.class public interface abstract Landroidx/media3/extractor/Extractor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/Extractor$ReadResult;
    }
.end annotation


# virtual methods
.method public abstract a(JJ)V
.end method

.method public abstract b(Landroidx/media3/extractor/ExtractorOutput;)V
.end method

.method public c()Landroidx/media3/extractor/Extractor;
    .locals 0

    return-object p0
.end method

.method public abstract d(Landroidx/media3/extractor/ExtractorInput;)Z
.end method

.method public e()Ljava/util/List;
    .locals 0

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public abstract f(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
.end method

.method public abstract release()V
.end method
