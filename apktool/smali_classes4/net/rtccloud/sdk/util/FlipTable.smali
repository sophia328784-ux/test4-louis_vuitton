.class public final Lnet/rtccloud/sdk/util/FlipTable;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EMPTY:Ljava/lang/String; = "(empty)"


# instance fields
.field private final columnWidths:[I

.field private final columns:I

.field private final data:[[Ljava/lang/String;

.field private final emptyWidth:I

.field private final headers:[Ljava/lang/String;


# direct methods
.method private constructor <init>([Ljava/lang/String;[[Ljava/lang/String;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/rtccloud/sdk/util/FlipTable;->headers:[Ljava/lang/String;

    iput-object p2, p0, Lnet/rtccloud/sdk/util/FlipTable;->data:[[Ljava/lang/String;

    array-length v0, p1

    iput v0, p0, Lnet/rtccloud/sdk/util/FlipTable;->columns:I

    new-array v0, v0, [I

    iput-object v0, p0, Lnet/rtccloud/sdk/util/FlipTable;->columnWidths:[I

    const/4 v0, -0x1

    move v1, v0

    :goto_0
    array-length v2, p2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_4

    if-ne v1, v0, :cond_0

    move-object v2, p1

    goto :goto_1

    :cond_0
    aget-object v2, p2, v1

    :goto_1
    array-length v4, v2

    iget v5, p0, Lnet/rtccloud/sdk/util/FlipTable;->columns:I

    if-ne v4, v5, :cond_3

    move v4, v3

    :goto_2
    iget v5, p0, Lnet/rtccloud/sdk/util/FlipTable;->columns:I

    if-ge v4, v5, :cond_2

    aget-object v5, v2, v4

    const-string v6, "\\n"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v7, v3

    :goto_3
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    iget-object v9, p0, Lnet/rtccloud/sdk/util/FlipTable;->columnWidths:[I

    aget v10, v9, v4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    aput v8, v9, v4

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    array-length p1, v2

    iget p0, p0, Lnet/rtccloud/sdk/util/FlipTable;->columns:I

    const-string p2, "\'s "

    const-string v0, " columns != "

    const-string v2, "Row "

    invoke-static {v1, p1, v2, p2, v0}, Lfc;->p(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " columns"

    invoke-static {p0, p2, p1}, La;->i(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_4
    iget p1, p0, Lnet/rtccloud/sdk/util/FlipTable;->columns:I

    add-int/lit8 p1, p1, -0x1

    mul-int/lit8 p1, p1, 0x3

    iget-object p2, p0, Lnet/rtccloud/sdk/util/FlipTable;->columnWidths:[I

    array-length v0, p2

    :goto_4
    if-ge v3, v0, :cond_5

    aget v1, p2, v3

    add-int/2addr p1, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    iput p1, p0, Lnet/rtccloud/sdk/util/FlipTable;->emptyWidth:I

    const/4 p2, 0x7

    if-ge p1, p2, :cond_6

    iget-object v0, p0, Lnet/rtccloud/sdk/util/FlipTable;->columnWidths:[I

    iget p0, p0, Lnet/rtccloud/sdk/util/FlipTable;->columns:I

    add-int/lit8 p0, p0, -0x1

    aget v1, v0, p0

    sub-int/2addr p2, p1

    add-int/2addr p2, v1

    aput p2, v0, p0

    :cond_6
    return-void
.end method

.method public static of([Ljava/lang/String;[[Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    array-length v1, p0

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    new-instance v0, Lnet/rtccloud/sdk/util/FlipTable;

    invoke-direct {v0, p0, p1}, Lnet/rtccloud/sdk/util/FlipTable;-><init>([Ljava/lang/String;[[Ljava/lang/String;)V

    invoke-virtual {v0}, Lnet/rtccloud/sdk/util/FlipTable;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "data == null"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    return-object v0

    :cond_1
    const-string p0, "Headers must not be empty."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v0

    :cond_2
    const-string p0, "headers == null"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    return-object v0
.end method

.method private static pad(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, " %1$-"

    const-string v1, "s "

    invoke-static {p0, v0, v1}, Ln00;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private printData(Ljava/lang/StringBuilder;[Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    move v3, v0

    :goto_1
    iget v4, p0, Lnet/rtccloud/sdk/util/FlipTable;->columns:I

    if-ge v3, v4, :cond_1

    const/16 v4, 0x7c

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v4, p2, v3

    const-string v5, "\\n"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    array-length v5, v4

    if-ge v2, v5, :cond_0

    aget-object v4, v4, v2

    goto :goto_2

    :cond_0
    const-string v4, ""

    :goto_2
    iget-object v5, p0, Lnet/rtccloud/sdk/util/FlipTable;->columnWidths:[I

    aget v5, v5, v3

    invoke-static {v5, v4}, Lnet/rtccloud/sdk/util/FlipTable;->pad(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const-string v3, "|\n"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private printDivider(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lnet/rtccloud/sdk/util/FlipTable;->columns:I

    if-ge v1, v2, :cond_1

    if-nez v1, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_1
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/rtccloud/sdk/util/FlipTable;->columnWidths:[I

    aget v2, v2, v1

    const-string v3, ""

    invoke-static {v2, v3}, Lnet/rtccloud/sdk/util/FlipTable;->pad(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x20

    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x4

    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0xa

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "|=|=|"

    invoke-direct {p0, v0, v1}, Lnet/rtccloud/sdk/util/FlipTable;->printDivider(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v2, p0, Lnet/rtccloud/sdk/util/FlipTable;->headers:[Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lnet/rtccloud/sdk/util/FlipTable;->printData(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    iget-object v2, p0, Lnet/rtccloud/sdk/util/FlipTable;->data:[[Ljava/lang/String;

    array-length v2, v2

    if-nez v2, :cond_0

    invoke-direct {p0, v0, v1}, Lnet/rtccloud/sdk/util/FlipTable;->printDivider(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/rtccloud/sdk/util/FlipTable;->emptyWidth:I

    const-string v2, "(empty)"

    invoke-static {v1, v2}, Lnet/rtccloud/sdk/util/FlipTable;->pad(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|===|"

    invoke-direct {p0, v0, v1}, Lnet/rtccloud/sdk/util/FlipTable;->printDivider(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lnet/rtccloud/sdk/util/FlipTable;->data:[[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    if-nez v2, :cond_1

    move-object v3, v1

    goto :goto_1

    :cond_1
    const-string v3, "|-|-|"

    :goto_1
    invoke-direct {p0, v0, v3}, Lnet/rtccloud/sdk/util/FlipTable;->printDivider(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v3, p0, Lnet/rtccloud/sdk/util/FlipTable;->data:[[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-direct {p0, v0, v3}, Lnet/rtccloud/sdk/util/FlipTable;->printData(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0, v1}, Lnet/rtccloud/sdk/util/FlipTable;->printDivider(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
