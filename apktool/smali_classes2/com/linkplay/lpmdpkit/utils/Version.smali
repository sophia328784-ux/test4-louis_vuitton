.class public Lcom/linkplay/lpmdpkit/utils/Version;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/linkplay/lpmdpkit/utils/Version;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final originalString:Ljava/lang/String;

.field private final preReleaseVersion:J

.field private final releaseType:Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;

.field private final subversionNumbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final suffix:Ljava/lang/String;

.field private final trimmedSubversionNumbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 238
    invoke-direct {p0, p1, v0}, Lcom/linkplay/lpmdpkit/utils/Version;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 11

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/linkplay/lpmdpkit/utils/Version;->subversionNumbers:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/linkplay/lpmdpkit/utils/Version;->trimmedSubversionNumbers:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/linkplay/lpmdpkit/utils/VersionComparator;->startsNumeric(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Argument versionString is no valid version"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string p0, "Argument versionString is null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/linkplay/lpmdpkit/utils/Version;->originalString:Ljava/lang/String;

    const-string p2, ""

    if-eqz p1, :cond_a

    invoke-static {p1}, Lcom/linkplay/lpmdpkit/utils/VersionComparator;->startsNumeric(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "\\s"

    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "\\."

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_1
    const/4 v6, 0x1

    if-ge v4, v2, :cond_8

    aget-object v7, p1, v4

    if-eqz v5, :cond_3

    const-string v6, "."

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_3
    invoke-static {v7}, Lcom/linkplay/lpmdpkit/utils/VersionComparator;->isNumeric(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v6, p0, Lcom/linkplay/lpmdpkit/utils/Version;->subversionNumbers:Ljava/util/List;

    invoke-static {v7}, Lcom/linkplay/lpmdpkit/utils/VersionComparator;->safeParseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    move v8, v3

    :goto_2
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_7

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-nez v9, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v8, :cond_5

    iget-object v5, p0, Lcom/linkplay/lpmdpkit/utils/Version;->subversionNumbers:Ljava/util/List;

    invoke-virtual {v7, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/linkplay/lpmdpkit/utils/VersionComparator;->safeParseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    move v5, v6

    goto :goto_4

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_7
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_9
    iput-object p2, p0, Lcom/linkplay/lpmdpkit/utils/Version;->suffix:Ljava/lang/String;

    iget-object p1, p0, Lcom/linkplay/lpmdpkit/utils/Version;->trimmedSubversionNumbers:Ljava/util/List;

    iget-object p2, p0, Lcom/linkplay/lpmdpkit/utils/Version;->subversionNumbers:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_5
    iget-object p1, p0, Lcom/linkplay/lpmdpkit/utils/Version;->trimmedSubversionNumbers:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/linkplay/lpmdpkit/utils/Version;->trimmedSubversionNumbers:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    iget-object p2, p0, Lcom/linkplay/lpmdpkit/utils/Version;->trimmedSubversionNumbers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v6

    if-ne p1, p2, :cond_b

    iget-object p1, p0, Lcom/linkplay/lpmdpkit/utils/Version;->trimmedSubversionNumbers:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p2

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_5

    :cond_a
    iput-object p2, p0, Lcom/linkplay/lpmdpkit/utils/Version;->suffix:Ljava/lang/String;

    :cond_b
    iget-object p1, p0, Lcom/linkplay/lpmdpkit/utils/Version;->suffix:Ljava/lang/String;

    invoke-static {p1}, Lcom/linkplay/lpmdpkit/utils/VersionComparator;->qualifierToReleaseType(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;

    move-result-object p1

    iput-object p1, p0, Lcom/linkplay/lpmdpkit/utils/Version;->releaseType:Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;

    iget-object p2, p0, Lcom/linkplay/lpmdpkit/utils/Version;->suffix:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/linkplay/lpmdpkit/utils/VersionComparator;->preReleaseVersion(Ljava/lang/String;Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/linkplay/lpmdpkit/utils/Version;->preReleaseVersion:J

    return-void
.end method

.method private compareTo(Lcom/linkplay/lpmdpkit/utils/Version;Z)I
    .locals 2

    iget-object v0, p0, Lcom/linkplay/lpmdpkit/utils/Version;->trimmedSubversionNumbers:Ljava/util/List;

    iget-object v1, p1, Lcom/linkplay/lpmdpkit/utils/Version;->trimmedSubversionNumbers:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/linkplay/lpmdpkit/utils/VersionComparator;->compareSubversionNumbers(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/linkplay/lpmdpkit/utils/Version;->releaseType:Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;

    iget-object v0, p1, Lcom/linkplay/lpmdpkit/utils/Version;->releaseType:Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;

    invoke-virtual {p2, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p2

    if-eqz p2, :cond_1

    return p2

    :cond_1
    iget-wide v0, p0, Lcom/linkplay/lpmdpkit/utils/Version;->preReleaseVersion:J

    iget-wide p0, p1, Lcom/linkplay/lpmdpkit/utils/Version;->preReleaseVersion:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public final compareTo(Lcom/linkplay/lpmdpkit/utils/Version;)I
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/linkplay/lpmdpkit/utils/Version;->compareTo(Lcom/linkplay/lpmdpkit/utils/Version;Z)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 35
    check-cast p1, Lcom/linkplay/lpmdpkit/utils/Version;

    invoke-virtual {p0, p1}, Lcom/linkplay/lpmdpkit/utils/Version;->compareTo(Lcom/linkplay/lpmdpkit/utils/Version;)I

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/linkplay/lpmdpkit/utils/Version;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/linkplay/lpmdpkit/utils/Version;

    invoke-virtual {p0, v0}, Lcom/linkplay/lpmdpkit/utils/Version;->isEqual(Lcom/linkplay/lpmdpkit/utils/Version;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-eq p0, p1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v1
.end method

.method public getMajor()J
    .locals 2

    iget-object v0, p0, Lcom/linkplay/lpmdpkit/utils/Version;->trimmedSubversionNumbers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/utils/Version;->trimmedSubversionNumbers:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMinor()J
    .locals 2

    iget-object v0, p0, Lcom/linkplay/lpmdpkit/utils/Version;->trimmedSubversionNumbers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/utils/Version;->trimmedSubversionNumbers:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getOriginalString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/utils/Version;->originalString:Ljava/lang/String;

    return-object p0
.end method

.method public getPatch()J
    .locals 2

    iget-object v0, p0, Lcom/linkplay/lpmdpkit/utils/Version;->trimmedSubversionNumbers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/utils/Version;->trimmedSubversionNumbers:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSubversionNumbers()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/utils/Version;->subversionNumbers:Ljava/util/List;

    return-object p0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/utils/Version;->suffix:Ljava/lang/String;

    return-object p0
.end method

.method public final hashCode()I
    .locals 6

    iget-object v0, p0, Lcom/linkplay/lpmdpkit/utils/Version;->trimmedSubversionNumbers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/linkplay/lpmdpkit/utils/Version;->releaseType:Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/linkplay/lpmdpkit/utils/Version;->preReleaseVersion:J

    const/16 p0, 0x20

    ushr-long v4, v2, p0

    xor-long/2addr v2, v4

    long-to-int p0, v2

    add-int/2addr v1, p0

    return v1
.end method

.method public isAtLeast(Lcom/linkplay/lpmdpkit/utils/Version;)Z
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/linkplay/lpmdpkit/utils/Version;->compareTo(Lcom/linkplay/lpmdpkit/utils/Version;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isAtLeast(Lcom/linkplay/lpmdpkit/utils/Version;Z)Z
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/linkplay/lpmdpkit/utils/Version;->compareTo(Lcom/linkplay/lpmdpkit/utils/Version;Z)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isAtLeast(Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Lcom/linkplay/lpmdpkit/utils/Version;

    invoke-direct {v0, p1}, Lcom/linkplay/lpmdpkit/utils/Version;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/linkplay/lpmdpkit/utils/Version;->isAtLeast(Lcom/linkplay/lpmdpkit/utils/Version;)Z

    move-result p0

    return p0
.end method

.method public isAtLeast(Ljava/lang/String;Z)Z
    .locals 1

    .line 11
    new-instance v0, Lcom/linkplay/lpmdpkit/utils/Version;

    invoke-direct {v0, p1}, Lcom/linkplay/lpmdpkit/utils/Version;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/linkplay/lpmdpkit/utils/Version;->isAtLeast(Lcom/linkplay/lpmdpkit/utils/Version;Z)Z

    move-result p0

    return p0
.end method

.method public isEqual(Lcom/linkplay/lpmdpkit/utils/Version;)Z
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/linkplay/lpmdpkit/utils/Version;->compareTo(Lcom/linkplay/lpmdpkit/utils/Version;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isEqual(Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Lcom/linkplay/lpmdpkit/utils/Version;

    invoke-direct {v0, p1}, Lcom/linkplay/lpmdpkit/utils/Version;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/linkplay/lpmdpkit/utils/Version;->isEqual(Lcom/linkplay/lpmdpkit/utils/Version;)Z

    move-result p0

    return p0
.end method

.method public isHigherThan(Lcom/linkplay/lpmdpkit/utils/Version;)Z
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/linkplay/lpmdpkit/utils/Version;->compareTo(Lcom/linkplay/lpmdpkit/utils/Version;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isHigherThan(Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Lcom/linkplay/lpmdpkit/utils/Version;

    invoke-direct {v0, p1}, Lcom/linkplay/lpmdpkit/utils/Version;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/linkplay/lpmdpkit/utils/Version;->isHigherThan(Lcom/linkplay/lpmdpkit/utils/Version;)Z

    move-result p0

    return p0
.end method

.method public isLowerThan(Lcom/linkplay/lpmdpkit/utils/Version;)Z
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/linkplay/lpmdpkit/utils/Version;->compareTo(Lcom/linkplay/lpmdpkit/utils/Version;)I

    move-result p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isLowerThan(Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Lcom/linkplay/lpmdpkit/utils/Version;

    invoke-direct {v0, p1}, Lcom/linkplay/lpmdpkit/utils/Version;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/linkplay/lpmdpkit/utils/Version;->isLowerThan(Lcom/linkplay/lpmdpkit/utils/Version;)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/linkplay/lpmdpkit/utils/Version;->originalString:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
