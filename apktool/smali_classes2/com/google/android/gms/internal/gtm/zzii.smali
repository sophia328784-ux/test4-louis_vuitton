.class public final Lcom/google/android/gms/internal/gtm/zzii;
.super Lcom/google/android/gms/internal/gtm/zzim;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzim;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(DD)Z
    .locals 0

    cmpl-double p0, p1, p3

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
