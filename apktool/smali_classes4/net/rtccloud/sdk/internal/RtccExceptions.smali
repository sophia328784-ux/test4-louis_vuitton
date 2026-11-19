.class public final Lnet/rtccloud/sdk/internal/RtccExceptions;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static hideInternal(Ljava/lang/RuntimeException;)V
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "net.rtccloud.sdk.internal"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StackTraceElement;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const-string v5, "****"

    invoke-direct {v2, v5, v5, v3, v4}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v2, v0, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method public static newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;
    .locals 1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lnet/rtccloud/sdk/internal/RtccExceptions;->hideInternal(Ljava/lang/RuntimeException;)V

    return-object v0
.end method

.method public static newIllegalStateException(Ljava/lang/String;)Ljava/lang/IllegalStateException;
    .locals 1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lnet/rtccloud/sdk/internal/RtccExceptions;->hideInternal(Ljava/lang/RuntimeException;)V

    return-object v0
.end method

.method public static newNullPointerException(Ljava/lang/String;)Ljava/lang/NullPointerException;
    .locals 1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lnet/rtccloud/sdk/internal/RtccExceptions;->hideInternal(Ljava/lang/RuntimeException;)V

    return-object v0
.end method

.method public static newRuntimeException(Ljava/lang/String;)Ljava/lang/RuntimeException;
    .locals 1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lnet/rtccloud/sdk/internal/RtccExceptions;->hideInternal(Ljava/lang/RuntimeException;)V

    return-object v0
.end method

.method public static newRuntimeException(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 1

    .line 9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 10
    invoke-static {v0}, Lnet/rtccloud/sdk/internal/RtccExceptions;->hideInternal(Ljava/lang/RuntimeException;)V

    return-object v0
.end method
