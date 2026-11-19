.class final Lcom/google/android/gms/internal/measurement/zzzn;
.super Lcom/google/android/gms/internal/measurement/zzzq;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Ljava/util/HashMap;

.field public final c:Lcom/google/android/gms/internal/measurement/zzzp;

.field public final d:Lcom/google/android/gms/internal/measurement/zzzo;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzzm;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzzq;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzn;->a:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzn;->b:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/zzzm;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzzm;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/zzzm;->c:Lcom/google/android/gms/internal/measurement/zzzp;

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzn;->c:Lcom/google/android/gms/internal/measurement/zzzp;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zzzm;->d:Lcom/google/android/gms/internal/measurement/zzzo;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzzn;->d:Lcom/google/android/gms/internal/measurement/zzzo;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/measurement/zzyl;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzzc;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzn;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzzp;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzzp;->a(Lcom/google/android/gms/internal/measurement/zzyl;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzzc;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzzn;->c:Lcom/google/android/gms/internal/measurement/zzzp;

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzzr;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzzr;->a(Lcom/google/android/gms/internal/measurement/zzyl;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzzc;)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/measurement/zzyl;Ljava/util/Iterator;Lcom/google/android/gms/internal/measurement/zzzc;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzn;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzzo;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzzo;->a(Lcom/google/android/gms/internal/measurement/zzyl;Ljava/util/Iterator;Lcom/google/android/gms/internal/measurement/zzzc;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzzn;->d:Lcom/google/android/gms/internal/measurement/zzzo;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzzn;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzzs;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzzs;->a(Lcom/google/android/gms/internal/measurement/zzyl;Ljava/util/Iterator;Lcom/google/android/gms/internal/measurement/zzzc;)V

    return-void

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/google/android/gms/internal/measurement/zzzn;->a(Lcom/google/android/gms/internal/measurement/zzyl;Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/zzzc;)V

    goto :goto_0

    :cond_3
    return-void
.end method
