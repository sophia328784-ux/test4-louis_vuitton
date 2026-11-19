.class final Lcom/google/android/gms/internal/measurement/zzabv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzabu;


# virtual methods
.method public final g(I)[Ljava/lang/StackTraceElement;
    .locals 7

    const/4 p0, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    if-lez p1, :cond_1

    :cond_0
    move v2, p0

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    if-eqz v2, :cond_8

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const-class v3, Lcom/google/android/gms/internal/measurement/zzxz;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    move v5, v0

    :goto_1
    array-length v6, v2

    if-ge v4, v6, :cond_4

    aget-object v6, v2, v4

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v5, p0

    goto :goto_2

    :cond_2
    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    move v4, v1

    :goto_3
    if-ne v4, v1, :cond_5

    new-array p0, v0, [Ljava/lang/StackTraceElement;

    return-object p0

    :cond_5
    array-length p0, v2

    sub-int/2addr p0, v4

    if-lez p1, :cond_6

    if-lt p1, p0, :cond_7

    :cond_6
    move p1, p0

    :cond_7
    new-array p0, p1, [Ljava/lang/StackTraceElement;

    invoke-static {v2, v4, p0, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    :cond_8
    const-string p0, "maxDepth must be > 0 or -1"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
