.class public abstract Lcom/google/android/gms/internal/vision/zzjb$zzb;
.super Lcom/google/android/gms/internal/vision/zzhe;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/vision/zzjb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/vision/zzjb<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/vision/zzjb$zzb<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/vision/zzhe<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field public final b:Lcom/google/android/gms/internal/vision/zzjb;

.field public c:Lcom/google/android/gms/internal/vision/zzjb;

.field public d:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/vision/zzjb;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzhe;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzjb$zzb;->b:Lcom/google/android/gms/internal/vision/zzjb;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vision/zzjb;->j(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/vision/zzjb;

    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzjb$zzb;->c:Lcom/google/android/gms/internal/vision/zzjb;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/vision/zzjb$zzb;->d:Z

    return-void
.end method

.method public static h(Lcom/google/android/gms/internal/vision/zzjb;Lcom/google/android/gms/internal/vision/zzjb;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/vision/zzky;->c:Lcom/google/android/gms/internal/vision/zzky;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/vision/zzky;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/vision/zzlc;->f(Lcom/google/android/gms/internal/vision/zzjb;Lcom/google/android/gms/internal/vision/zzjb;)V

    return-void
.end method


# virtual methods
.method public final I()Lcom/google/android/gms/internal/vision/zzjb;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzjb$zzb;->j()Lcom/google/android/gms/internal/vision/zzjb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzjb;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/vision/zzlv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/vision/zzlv;-><init>(Lcom/google/android/gms/internal/vision/zzkk;)V

    throw v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzjb$zzb;->b:Lcom/google/android/gms/internal/vision/zzjb;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/vision/zzjb;->j(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/zzjb$zzb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzjb$zzb;->j()Lcom/google/android/gms/internal/vision/zzjb;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/vision/zzjb$zzb;->g(Lcom/google/android/gms/internal/vision/zzjb;)V

    return-object v0
.end method

.method public final synthetic e()Lcom/google/android/gms/internal/vision/zzjb$zzb;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzjb$zzb;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/vision/zzjb$zzb;

    return-object p0
.end method

.method public final f([BILcom/google/android/gms/internal/vision/zzio;)Lcom/google/android/gms/internal/vision/zzjb$zzb;
    .locals 8

    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzjb$zzb;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzjb$zzb;->i()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzjb$zzb;->d:Z

    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/vision/zzky;->c:Lcom/google/android/gms/internal/vision/zzky;

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzjb$zzb;->c:Lcom/google/android/gms/internal/vision/zzjb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/vision/zzky;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/vision/zzjb$zzb;->c:Lcom/google/android/gms/internal/vision/zzjb;

    new-instance v7, Lcom/google/android/gms/internal/vision/zzhn;

    invoke-direct {v7, p3}, Lcom/google/android/gms/internal/vision/zzhn;-><init>(Lcom/google/android/gms/internal/vision/zzio;)V

    const/4 v5, 0x0

    move-object v4, p1

    move v6, p2

    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/internal/vision/zzlc;->h(Ljava/lang/Object;[BIILcom/google/android/gms/internal/vision/zzhn;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/vision/zzjk; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string p1, "Reading from byte array should not throw IOException."

    invoke-static {p1, p0}, Lr81;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0

    :catch_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjk;->a()Lcom/google/android/gms/internal/vision/zzjk;

    move-result-object p0

    throw p0

    :catch_2
    move-exception v0

    move-object p0, v0

    throw p0
.end method

.method public final g(Lcom/google/android/gms/internal/vision/zzjb;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzjb$zzb;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzjb$zzb;->i()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzjb$zzb;->d:Z

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zzjb$zzb;->c:Lcom/google/android/gms/internal/vision/zzjb;

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/vision/zzjb$zzb;->h(Lcom/google/android/gms/internal/vision/zzjb;Lcom/google/android/gms/internal/vision/zzjb;)V

    return-void
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzjb$zzb;->c:Lcom/google/android/gms/internal/vision/zzjb;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/vision/zzjb;->j(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/zzjb;

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzjb$zzb;->c:Lcom/google/android/gms/internal/vision/zzjb;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/vision/zzjb$zzb;->h(Lcom/google/android/gms/internal/vision/zzjb;Lcom/google/android/gms/internal/vision/zzjb;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzjb$zzb;->c:Lcom/google/android/gms/internal/vision/zzjb;

    return-void
.end method

.method public final j()Lcom/google/android/gms/internal/vision/zzjb;
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzjb$zzb;->d:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzjb$zzb;->c:Lcom/google/android/gms/internal/vision/zzjb;

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/vision/zzky;->c:Lcom/google/android/gms/internal/vision/zzky;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/vision/zzky;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/zzlc;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/vision/zzlc;->a(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/vision/zzjb$zzb;->d:Z

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zzjb$zzb;->c:Lcom/google/android/gms/internal/vision/zzjb;

    return-object p0
.end method
