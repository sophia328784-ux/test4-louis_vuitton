.class public final Lcom/google/android/gms/internal/fido/zzbi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/google/android/gms/internal/fido/zzbg;

.field public c:Lcom/google/android/gms/internal/fido/zzbg;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/fido/zzbg;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/fido/zzbi;->b:Lcom/google/android/gms/internal/fido/zzbg;

    iput-object v0, p0, Lcom/google/android/gms/internal/fido/zzbi;->c:Lcom/google/android/gms/internal/fido/zzbg;

    iput-object p1, p0, Lcom/google/android/gms/internal/fido/zzbi;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/fido/zzbf;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzbi;->c:Lcom/google/android/gms/internal/fido/zzbg;

    iput-object v0, v1, Lcom/google/android/gms/internal/fido/zzbg;->c:Lcom/google/android/gms/internal/fido/zzbg;

    iput-object v0, p0, Lcom/google/android/gms/internal/fido/zzbi;->c:Lcom/google/android/gms/internal/fido/zzbg;

    iput-object p1, v0, Lcom/google/android/gms/internal/fido/zzbg;->b:Ljava/lang/Object;

    const-string p0, "errorCode"

    iput-object p0, v0, Lcom/google/android/gms/internal/fido/zzbg;->a:Ljava/lang/String;

    return-void
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/fido/zzbg;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzbi;->c:Lcom/google/android/gms/internal/fido/zzbg;

    iput-object v0, v1, Lcom/google/android/gms/internal/fido/zzbg;->c:Lcom/google/android/gms/internal/fido/zzbg;

    iput-object v0, p0, Lcom/google/android/gms/internal/fido/zzbi;->c:Lcom/google/android/gms/internal/fido/zzbg;

    iput-object p1, v0, Lcom/google/android/gms/internal/fido/zzbg;->b:Ljava/lang/Object;

    iput-object p2, v0, Lcom/google/android/gms/internal/fido/zzbg;->a:Ljava/lang/String;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzbi;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzbi;->b:Lcom/google/android/gms/internal/fido/zzbg;

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzbg;->c:Lcom/google/android/gms/internal/fido/zzbg;

    const-string v1, ""

    :goto_0
    if-eqz p0, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/fido/zzbg;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzbg;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1
    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzbg;->c:Lcom/google/android/gms/internal/fido/zzbg;

    const-string v1, ", "

    goto :goto_0

    :cond_2
    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
