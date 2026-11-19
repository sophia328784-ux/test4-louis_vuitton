.class Lcom/caverock/androidsvg/IntegerParser;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:J


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/caverock/androidsvg/IntegerParser;->b:J

    iput p3, p0, Lcom/caverock/androidsvg/IntegerParser;->a:I

    return-void
.end method

.method public static a(IILjava/lang/String;)Lcom/caverock/androidsvg/IntegerParser;
    .locals 6

    if-lt p0, p1, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    move v2, p0

    :goto_0
    if-ge v2, p1, :cond_2

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_2

    const/16 v4, 0x39

    if-gt v3, v4, :cond_2

    const-wide/16 v4, 0xa

    mul-long/2addr v0, v4

    add-int/lit8 v3, v3, -0x30

    int-to-long v3, v3

    add-long/2addr v0, v3

    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v0, v3

    if-lez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-ne v2, p0, :cond_3

    :goto_1
    const/4 p0, 0x0

    return-object p0

    :cond_3
    new-instance p0, Lcom/caverock/androidsvg/IntegerParser;

    invoke-direct {p0, v0, v1, v2}, Lcom/caverock/androidsvg/IntegerParser;-><init>(JI)V

    return-object p0
.end method
