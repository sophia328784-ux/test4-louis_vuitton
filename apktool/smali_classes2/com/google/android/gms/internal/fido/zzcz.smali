.class final Lcom/google/android/gms/internal/fido/zzcz;
.super Lcom/google/android/gms/internal/fido/zzcf;
.source "SourceFile"


# instance fields
.field public final transient e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/fido/zzcz;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a([Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzcz;->e:Ljava/lang/Object;

    aput-object p0, p1, v0

    const/4 p0, 0x1

    return p0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzcz;->e:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzcz;->e:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final i()Lcom/google/android/gms/internal/fido/zzdc;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/fido/zzcm;

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzcz;->e:Ljava/lang/Object;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/fido/zzcm;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/fido/zzcm;

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzcz;->e:Ljava/lang/Object;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/fido/zzcm;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final q()Lcom/google/android/gms/internal/fido/zzcc;
    .locals 2

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzcz;->e:Ljava/lang/Object;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/fido/zzcc;->c:Lcom/google/android/gms/internal/fido/zzdd;

    aget-object v1, p0, v0

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "at index "

    invoke-static {v0, p0}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-static {v1, p0}, Lcom/google/android/gms/internal/fido/zzcc;->p(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/fido/zzcc;

    move-result-object p0

    return-object p0
.end method

.method public final size()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzcz;->e:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "["

    const-string v1, "]"

    invoke-static {v0, p0, v1}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
