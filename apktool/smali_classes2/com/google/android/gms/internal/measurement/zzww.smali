.class public abstract Lcom/google/android/gms/internal/measurement/zzww;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzvp;

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzvp;->a:Lcom/google/common/collect/ImmutableList;

    const-string v0, " -> "

    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
