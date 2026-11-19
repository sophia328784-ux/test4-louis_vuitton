.class final Lcom/linkplay/lpmdpkit/utils/VersionComparator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;
    }
.end annotation


# static fields
.field private static final ALPHA_STRING:Ljava/lang/String; = "alpha"

.field private static final BETA_STRING:Ljava/lang/String; = "beta"

.field private static final PRE_STRING:Ljava/lang/String; = "pre"

.field private static final RC_STRING:Ljava/lang/String; = "rc"

.field private static final SNAPSHOT_STRING:Ljava/lang/String; = "snapshot"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareSubversionNumbers(Ljava/util/List;Ljava/util/List;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_6

    const-wide/16 v5, 0x0

    if-ge v4, v0, :cond_0

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto :goto_1

    :cond_0
    move-wide v7, v5

    :goto_1
    if-ge v4, v1, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    goto :goto_2

    :cond_1
    move-wide v9, v5

    :goto_2
    cmp-long v7, v7, v9

    if-lez v7, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    if-ge v4, v0, :cond_3

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto :goto_3

    :cond_3
    move-wide v7, v5

    :goto_3
    if-ge v4, v1, :cond_4

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    :cond_4
    cmp-long v5, v7, v5

    if-gez v5, :cond_5

    const/4 p0, -0x1

    return p0

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    return v3
.end method

.method private static containsNumeric(Ljava/lang/CharSequence;)Z
    .locals 4

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static indexOfQualifier(Ljava/lang/String;Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;)I
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v1, 0x3

    const/4 v2, 0x4

    if-eq p1, v1, :cond_1

    if-eq p1, v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string p1, "rc"

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    add-int/2addr p0, v0

    return p0

    :cond_1
    const-string p1, "beta"

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    add-int/2addr p0, v2

    return p0

    :cond_2
    const-string p1, "alpha"

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    add-int/lit8 p0, p0, 0x5

    return p0
.end method

.method public static isNumeric(Ljava/lang/CharSequence;)Z
    .locals 4

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public static preReleaseVersion(Ljava/lang/String;Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;)J
    .locals 4

    sget-object v0, Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;->STABLE:Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;

    const-wide/16 v1, 0x0

    if-eq p1, v0, :cond_4

    sget-object v0, Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;->SNAPSHOT:Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;

    if-ne p1, v0, :cond_0

    goto :goto_3

    :cond_0
    invoke-static {p0, p1}, Lcom/linkplay/lpmdpkit/utils/VersionComparator;->indexOfQualifier(Ljava/lang/String;Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;)I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_4

    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/linkplay/lpmdpkit/utils/VersionComparator;->containsNumeric(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move v1, p1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    if-eq v1, p1, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/linkplay/lpmdpkit/utils/VersionComparator;->safeParseLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0

    :cond_4
    :goto_3
    return-wide v1
.end method

.method public static qualifierToReleaseType(Ljava/lang/String;)Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "rc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;->RC:Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;

    return-object p0

    :cond_0
    const-string v0, "beta"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;->BETA:Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;

    return-object p0

    :cond_1
    const-string v0, "alpha"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "pre"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;->PRE_ALPHA:Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;

    return-object p0

    :cond_2
    sget-object p0, Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;->ALPHA:Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;

    return-object p0

    :cond_3
    const-string v0, "snapshot"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;->SNAPSHOT:Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;

    return-object p0

    :cond_4
    sget-object p0, Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;->STABLE:Lcom/linkplay/lpmdpkit/utils/VersionComparator$ReleaseType;

    return-object p0
.end method

.method public static safeParseLong(Ljava/lang/String;)J
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x13

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static startsNumeric(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method
