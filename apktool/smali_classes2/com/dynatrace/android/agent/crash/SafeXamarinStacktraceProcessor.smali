.class Lcom/dynatrace/android/agent/crash/SafeXamarinStacktraceProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/android/agent/crash/StacktraceProcessor;


# instance fields
.field public final a:Ljava/lang/Throwable;

.field public final b:Ljava/lang/String;

.field public final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/android/agent/crash/SafeXamarinStacktraceProcessor;->a:Ljava/lang/Throwable;

    iput-object p2, p0, Lcom/dynatrace/android/agent/crash/SafeXamarinStacktraceProcessor;->b:Ljava/lang/String;

    iput p3, p0, Lcom/dynatrace/android/agent/crash/SafeXamarinStacktraceProcessor;->c:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/dynatrace/android/agent/crash/StacktraceData;
    .locals 3

    iget v0, p0, Lcom/dynatrace/android/agent/crash/SafeXamarinStacktraceProcessor;->c:I

    :try_start_0
    new-instance v1, Lcom/dynatrace/android/agent/crash/XamarinStacktraceProcessor;

    iget-object v2, p0, Lcom/dynatrace/android/agent/crash/SafeXamarinStacktraceProcessor;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/dynatrace/android/agent/crash/XamarinStacktraceProcessor;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Lcom/dynatrace/android/agent/crash/XamarinStacktraceProcessor;->a()Lcom/dynatrace/android/agent/crash/StacktraceData;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-boolean v1, Lcom/dynatrace/android/agent/Global;->a:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->g()Ljava/lang/String;

    :cond_0
    new-instance v1, Lcom/dynatrace/android/agent/crash/JavaStacktraceProcessor;

    iget-object p0, p0, Lcom/dynatrace/android/agent/crash/SafeXamarinStacktraceProcessor;->a:Ljava/lang/Throwable;

    invoke-direct {v1, p0, v0}, Lcom/dynatrace/android/agent/crash/JavaStacktraceProcessor;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {v1}, Lcom/dynatrace/android/agent/crash/JavaStacktraceProcessor;->a()Lcom/dynatrace/android/agent/crash/StacktraceData;

    move-result-object p0

    return-object p0
.end method
