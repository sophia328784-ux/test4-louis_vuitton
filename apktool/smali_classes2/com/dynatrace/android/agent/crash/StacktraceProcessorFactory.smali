.class public Lcom/dynatrace/android/agent/crash/StacktraceProcessorFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Throwable;Lcom/dynatrace/agent/common/InstrumentationFlavor;)Lcom/dynatrace/android/agent/crash/StacktraceProcessor;
    .locals 7

    sget-object v0, Lcom/dynatrace/agent/common/InstrumentationFlavor;->XAMARIN:Lcom/dynatrace/agent/common/InstrumentationFlavor;

    const v1, 0x7fffffff

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/dynatrace/agent/common/InstrumentationFlavor;->MAUI:Lcom/dynatrace/agent/common/InstrumentationFlavor;

    if-ne p1, v0, :cond_4

    :cond_0
    move-object p1, p0

    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    const-string v6, "  at "

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_4

    new-instance p1, Lcom/dynatrace/android/agent/crash/SafeXamarinStacktraceProcessor;

    invoke-direct {p1, p0, v0, v1}, Lcom/dynatrace/android/agent/crash/SafeXamarinStacktraceProcessor;-><init>(Ljava/lang/Throwable;Ljava/lang/String;I)V

    return-object p1

    :cond_4
    new-instance p1, Lcom/dynatrace/android/agent/crash/JavaStacktraceProcessor;

    invoke-direct {p1, p0, v1}, Lcom/dynatrace/android/agent/crash/JavaStacktraceProcessor;-><init>(Ljava/lang/Throwable;I)V

    return-object p1
.end method
