.class public abstract Lcom/google/android/gms/internal/measurement/zzzt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/internal/measurement/zzzp;

.field public static final b:Lcom/google/android/gms/internal/measurement/zzzo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzzr;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzzt;->a:Lcom/google/android/gms/internal/measurement/zzzp;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzzs;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzzt;->b:Lcom/google/android/gms/internal/measurement/zzzo;

    return-void
.end method

.method public static a(Ljava/util/Set;)Lcom/google/android/gms/internal/measurement/zzzm;
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzzm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzzm;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzzt;->b:Lcom/google/android/gms/internal/measurement/zzzo;

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/zzzm;->d:Lcom/google/android/gms/internal/measurement/zzzo;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzyl;

    const-string v2, "key"

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/zzabr;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v2, v1, Lcom/google/android/gms/internal/measurement/zzyl;->c:Z

    iget-object v3, v0, Lcom/google/android/gms/internal/measurement/zzzm;->b:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/google/android/gms/internal/measurement/zzzm;->a:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    if-eqz v2, :cond_0

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzzm;->f:Lcom/google/android/gms/internal/measurement/zzzo;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p0, "key must be repeating"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzzm;->e:Lcom/google/android/gms/internal/measurement/zzzp;

    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0
.end method
