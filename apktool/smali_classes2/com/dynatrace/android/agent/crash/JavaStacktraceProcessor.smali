.class public Lcom/dynatrace/android/agent/crash/JavaStacktraceProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/android/agent/crash/StacktraceProcessor;


# instance fields
.field public final a:Ljava/lang/Throwable;

.field public final b:I


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/android/agent/crash/JavaStacktraceProcessor;->a:Ljava/lang/Throwable;

    iput p2, p0, Lcom/dynatrace/android/agent/crash/JavaStacktraceProcessor;->b:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/dynatrace/android/agent/crash/StacktraceData;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dynatrace/android/agent/crash/JavaStacktraceProcessor;->a:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xfa

    invoke-static {v3, v2}, Lcom/dynatrace/android/agent/util/Utility;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3e8

    invoke-static {v4, v3}, Lcom/dynatrace/android/agent/util/Utility;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    move v9, v8

    :goto_0
    const v10, 0x1f400

    if-eqz v1, :cond_9

    iget v11, v0, Lcom/dynatrace/android/agent/crash/JavaStacktraceProcessor;->b:I

    if-ge v7, v11, :cond_9

    if-gt v8, v10, :cond_9

    if-lez v7, :cond_0

    const-string v12, "\nCaused by: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0xc

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    if-lez v7, :cond_1

    const/4 v13, 0x1

    goto :goto_1

    :cond_1
    move v13, v6

    :goto_1
    if-nez v12, :cond_2

    const-string v12, ""

    goto :goto_3

    :cond_2
    sub-int v14, v10, v9

    if-eqz v13, :cond_3

    const/16 v13, 0xc

    goto :goto_2

    :cond_3
    move v13, v6

    :goto_2
    sub-int/2addr v14, v13

    invoke-static {v6, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    invoke-static {v13, v4}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    if-le v14, v13, :cond_4

    invoke-virtual {v12, v6, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    :cond_4
    :goto_3
    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    array-length v15, v14

    sub-int v4, v11, v7

    if-le v15, v4, :cond_6

    move v0, v6

    :goto_4
    if-ge v7, v11, :cond_9

    if-lez v0, :cond_5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    aget-object v1, v14, v0

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    array-length v8, v14

    add-int/2addr v7, v8

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v9

    if-eqz v9, :cond_8

    array-length v12, v9

    sub-int/2addr v11, v7

    invoke-static {v12, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    move v12, v7

    move v7, v4

    move v4, v8

    move v8, v12

    move v12, v6

    :goto_5
    if-ge v12, v11, :cond_7

    if-ge v4, v10, :cond_7

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\tat "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v9, v12

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v12, v12, 0x1

    move/from16 v16, v7

    move v7, v4

    move/from16 v4, v16

    goto :goto_5

    :cond_7
    move v9, v7

    move v7, v8

    move v8, v4

    goto :goto_6

    :cond_8
    move v9, v4

    :goto_6
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    const/16 v4, 0x3e8

    goto/16 :goto_0

    :cond_9
    if-le v8, v10, :cond_a

    invoke-virtual {v5, v6, v9}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_7
    new-instance v1, Lcom/dynatrace/android/agent/crash/StacktraceData;

    sget-object v4, Lcom/dynatrace/android/agent/crash/PlatformType;->JAVA:Lcom/dynatrace/android/agent/crash/PlatformType;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/dynatrace/android/agent/crash/StacktraceData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dynatrace/android/agent/crash/PlatformType;)V

    return-object v1
.end method
