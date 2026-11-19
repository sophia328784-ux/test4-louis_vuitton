.class public final Lcom/google/android/gms/internal/measurement/zzpj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/common/base/Function;

.field public final b:Lcom/google/common/collect/ImmutableSet;


# direct methods
.method public constructor <init>(Lcom/google/common/base/Function;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->v()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzpj;->b:Lcom/google/common/collect/ImmutableSet;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzpj;->a:Lcom/google/common/base/Function;

    return-void
.end method
