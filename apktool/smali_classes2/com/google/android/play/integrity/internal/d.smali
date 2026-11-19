.class public abstract Lcom/google/android/play/integrity/internal/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/util/ArrayList;)V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Lcom/google/android/play/integrity/internal/e;

    invoke-direct {v2, v0, v1}, Lcom/google/android/play/integrity/internal/e;-><init>(J)V

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
