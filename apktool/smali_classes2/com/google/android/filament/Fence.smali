.class public Lcom/google/android/filament/Fence;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/Fence$Mode;
    }
.end annotation


# instance fields
.field public a:J


# direct methods
.method private static native nWait(JIJ)I
.end method


# virtual methods
.method public final a(Lcom/google/android/filament/Fence$Mode;)V
    .locals 4

    iget-wide v0, p0, Lcom/google/android/filament/Fence;->a:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const-wide/16 v2, -0x1

    invoke-static {v0, v1, p0, v2, v3}, Lcom/google/android/filament/Fence;->nWait(JIJ)I

    return-void

    :cond_0
    const-string p0, "Calling method on destroyed Fence"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void
.end method
