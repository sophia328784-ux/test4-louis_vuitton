.class final synthetic Lcom/google/android/gms/internal/measurement/zzmy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Supplier;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/internal/measurement/zzmz;

.field public final synthetic c:Lcom/google/android/gms/internal/measurement/zzacr;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzmz;Lcom/google/android/gms/internal/measurement/zzacr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzmy;->b:Lcom/google/android/gms/internal/measurement/zzmz;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzmy;->c:Lcom/google/android/gms/internal/measurement/zzacr;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzmy;->b:Lcom/google/android/gms/internal/measurement/zzmz;

    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/zzmz;->a:Lcom/google/common/io/BaseEncoding;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzmy;->c:Lcom/google/android/gms/internal/measurement/zzacr;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzacr;->q()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/common/io/BaseEncoding;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
