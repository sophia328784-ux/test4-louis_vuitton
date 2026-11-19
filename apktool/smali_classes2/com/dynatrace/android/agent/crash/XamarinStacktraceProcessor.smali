.class public Lcom/dynatrace/android/agent/crash/XamarinStacktraceProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/android/agent/crash/StacktraceProcessor;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/android/agent/crash/XamarinStacktraceProcessor;->a:Ljava/lang/String;

    iput p2, p0, Lcom/dynatrace/android/agent/crash/XamarinStacktraceProcessor;->b:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/dynatrace/android/agent/crash/StacktraceData;
    .locals 12

    iget-object v0, p0, Lcom/dynatrace/android/agent/crash/XamarinStacktraceProcessor;->a:Ljava/lang/String;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lt v3, v5, :cond_c

    const/4 v3, 0x0

    aget-object v6, v2, v3

    const-string v7, "  at "

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    aget-object v6, v2, v3

    const-string v8, ":"

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_a

    aget-object v4, v2, v3

    invoke-virtual {v4, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0xfa

    invoke-static {v6, v4}, Lcom/dynatrace/android/agent/util/Utility;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v2, v3

    const-string v9, " ---> "

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/16 v10, 0x3e8

    if-ltz v8, :cond_0

    aget-object v7, v2, v3

    invoke-virtual {v7, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    aget-object v8, v2, v3

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v8, v5

    :goto_0
    array-length v11, v2

    if-ge v8, v11, :cond_3

    aget-object v11, v2, v8

    invoke-virtual {v11, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lt v11, v10, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v2, v8

    invoke-virtual {v11, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-gez v11, :cond_2

    aget-object v11, v2, v8

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    aget-object v7, v2, v8

    invoke-virtual {v7, v3, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-le v7, v10, :cond_4

    invoke-virtual {v6, v3, v10}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_2
    array-length v7, v2

    const v8, 0x1f400

    iget p0, p0, Lcom/dynatrace/android/agent/crash/XamarinStacktraceProcessor;->b:I

    if-gt v7, p0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v7, v8, :cond_5

    goto :goto_6

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move v7, v3

    move v9, v7

    :goto_3
    array-length v10, v2

    invoke-static {v10, p0}, Ljava/lang/Math;->min(II)I

    move-result v10

    if-ge v7, v10, :cond_9

    if-nez v7, :cond_6

    move v10, v3

    goto :goto_4

    :cond_6
    move v10, v5

    :goto_4
    aget-object v11, v2, v7

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v9

    add-int/2addr v11, v10

    if-le v11, v8, :cond_7

    goto :goto_5

    :cond_7
    if-lez v10, :cond_8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    aget-object v11, v2, v7

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v2, v7

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v10

    add-int/2addr v9, v11

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_9
    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    new-instance p0, Lcom/dynatrace/android/agent/crash/StacktraceData;

    sget-object v1, Lcom/dynatrace/android/agent/crash/PlatformType;->XAMARIN:Lcom/dynatrace/android/agent/crash/PlatformType;

    invoke-direct {p0, v4, v6, v0, v1}, Lcom/dynatrace/android/agent/crash/StacktraceData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dynatrace/android/agent/crash/PlatformType;)V

    return-object p0

    :cond_a
    const-string p0, "no exception name available"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v4

    :cond_b
    const-string p0, "no reason message available"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v4

    :cond_c
    const-string p0, "no lines"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v4
.end method
