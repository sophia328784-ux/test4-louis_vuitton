.class public final Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/Metadata$Entry;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;
    }
.end annotation


# instance fields
.field public final a:F

.field public final b:Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;

.field public final c:Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;


# direct methods
.method public constructor <init>(FLandroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;->a:F

    iput-object p2, p0, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;->b:Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;

    iput-object p3, p0, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;->c:Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;

    iget v0, p0, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;->a:F

    iget v2, p1, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;->a:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;->b:Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;

    iget-object v2, p1, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;->b:Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;->c:Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;

    iget-object p1, p1, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;->c:Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;->a:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;->b:Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;->c:Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ReplayGain Xing/Info: peak="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", field 1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;->b:Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", field 2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/media3/extractor/mp3/Mp3InfoReplayGain;->c:Landroidx/media3/extractor/mp3/Mp3InfoReplayGain$GainField;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
