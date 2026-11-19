.class public Lcom/google/android/filament/Scene;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/Scene$EntityProcessor;
    }
.end annotation


# instance fields
.field public a:J

.field public b:Lcom/google/android/filament/IndirectLight;


# direct methods
.method private static native nAddEntities(J[I)V
.end method

.method private static native nAddEntity(JI)V
.end method

.method private static native nRemove(JI)V
.end method

.method private static native nRemoveEntities(J[I)V
.end method

.method private static native nSetIndirectLight(JJ)V
.end method

.method private static native nSetSkybox(JJ)V
.end method


# virtual methods
.method public final a([I)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Scene;->c()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Scene;->nAddEntities(J[I)V

    return-void
.end method

.method public final b(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Scene;->c()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Scene;->nAddEntity(JI)V

    return-void
.end method

.method public final c()J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/filament/Scene;->a:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    return-wide v0

    :cond_0
    const-string p0, "Calling method on destroyed Scene"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final d([I)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Scene;->c()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Scene;->nRemoveEntities(J[I)V

    return-void
.end method

.method public final e(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/filament/Scene;->c()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/filament/Scene;->nRemove(JI)V

    return-void
.end method

.method public final f(Lcom/google/android/filament/IndirectLight;)V
    .locals 4

    iput-object p1, p0, Lcom/google/android/filament/Scene;->b:Lcom/google/android/filament/IndirectLight;

    invoke-virtual {p0}, Lcom/google/android/filament/Scene;->c()J

    move-result-wide v0

    iget-object p0, p0, Lcom/google/android/filament/Scene;->b:Lcom/google/android/filament/IndirectLight;

    const-wide/16 v2, 0x0

    if-eqz p0, :cond_1

    iget-wide p0, p0, Lcom/google/android/filament/IndirectLight;->a:J

    cmp-long v2, p0, v2

    if-eqz v2, :cond_0

    move-wide v2, p0

    goto :goto_0

    :cond_0
    const-string p0, "Calling method on destroyed IndirectLight"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/filament/Scene;->nSetIndirectLight(JJ)V

    return-void
.end method

.method public final g()V
    .locals 4

    const-wide/16 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/filament/Scene;->c()J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Lcom/google/android/filament/Scene;->nSetSkybox(JJ)V

    return-void
.end method
