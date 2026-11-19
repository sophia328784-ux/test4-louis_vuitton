.class final Lcom/google/android/gms/internal/measurement/zzeq;
.super Lcom/google/android/gms/internal/measurement/zzcx;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/measurement/internal/zzjq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzjq;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzcx;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzeq;->a:Lcom/google/android/gms/measurement/internal/zzjq;

    return-void
.end method


# virtual methods
.method public final I()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzeq;->a:Lcom/google/android/gms/measurement/internal/zzjq;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzeq;->a:Lcom/google/android/gms/measurement/internal/zzjq;

    invoke-interface/range {p0 .. p5}, Lcom/google/android/gms/measurement/internal/zzjq;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    return-void
.end method
