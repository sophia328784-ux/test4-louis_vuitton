.class final Lcom/google/android/gms/internal/gtm/zziy;
.super Lcom/google/android/gms/internal/gtm/zziw;
.source "SourceFile"


# instance fields
.field public final f:Lcom/google/android/gms/internal/gtm/zzix;

.field public final g:Ljava/util/List;

.field public final h:I

.field public final synthetic i:Lcom/google/android/gms/internal/gtm/zzja;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzja;ILcom/google/android/gms/internal/gtm/zzjf;Ljava/util/List;ILcom/google/android/gms/internal/gtm/zzix;Lcom/google/android/gms/internal/gtm/zzam;)V
    .locals 6

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zziy;->i:Lcom/google/android/gms/internal/gtm/zzja;

    sget-object v5, Lcom/google/android/gms/common/util/DefaultClock;->a:Lcom/google/android/gms/common/util/DefaultClock;

    sget-object v3, Lcom/google/android/gms/internal/gtm/zzje;->a:Lcom/google/android/gms/internal/gtm/zzjb;

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v4, p7

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/gtm/zziw;-><init>(ILcom/google/android/gms/internal/gtm/zzjf;Lcom/google/android/gms/internal/gtm/zzjb;Lcom/google/android/gms/internal/gtm/zzam;Lcom/google/android/gms/common/util/Clock;)V

    iput-object p6, v0, Lcom/google/android/gms/internal/gtm/zziy;->f:Lcom/google/android/gms/internal/gtm/zzix;

    iput-object p4, v0, Lcom/google/android/gms/internal/gtm/zziy;->g:Ljava/util/List;

    iput p5, v0, Lcom/google/android/gms/internal/gtm/zziy;->h:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/gtm/zzjh;)V
    .locals 12

    iget-object v0, p1, Lcom/google/android/gms/internal/gtm/zzjh;->b:Lcom/google/android/gms/common/api/Status;

    iget-object v1, p1, Lcom/google/android/gms/internal/gtm/zzjh;->d:Lcom/google/android/gms/internal/gtm/zzjg;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->f:Lcom/google/android/gms/common/api/Status;

    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zziy;->i:Lcom/google/android/gms/internal/gtm/zzja;

    const/4 v4, 0x2

    if-ne v0, v2, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzjh;->a()Ljava/lang/String;

    move-result-object v2

    const-string v5, "Container resource successfully loaded from "

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    iget v2, p1, Lcom/google/android/gms/internal/gtm/zzjh;->c:I

    if-nez v2, :cond_2

    iget-object v2, v1, Lcom/google/android/gms/internal/gtm/zzjg;->c:Lcom/google/android/gms/internal/gtm/zzit;

    iget-object v5, v1, Lcom/google/android/gms/internal/gtm/zzjg;->a:[B

    iget-boolean v6, v2, Lcom/google/android/gms/internal/gtm/zzit;->d:Z

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    iget-object v6, v3, Lcom/google/android/gms/internal/gtm/zzja;->c:Lcom/google/android/gms/common/util/DefaultClock;

    iget-object v2, v2, Lcom/google/android/gms/internal/gtm/zzit;->a:Ljava/lang/String;

    iget-object v7, v1, Lcom/google/android/gms/internal/gtm/zzjg;->d:Lcom/google/android/gms/internal/gtm/zzju;

    iget-object v8, v3, Lcom/google/android/gms/internal/gtm/zzja;->d:Ljava/util/HashMap;

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/gtm/zziz;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v2, Lcom/google/android/gms/internal/gtm/zziz;->a:J

    goto :goto_0

    :cond_1
    new-instance v9, Lcom/google/android/gms/internal/gtm/zziz;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v9, v0, v7, v10, v11}, Lcom/google/android/gms/internal/gtm/zziz;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;J)V

    invoke-virtual {v8, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    if-eqz v5, :cond_3

    array-length v2, v5

    if-lez v2, :cond_3

    iget-object v0, v3, Lcom/google/android/gms/internal/gtm/zzja;->b:Lcom/google/android/gms/internal/gtm/zzjm;

    iget-object v1, v1, Lcom/google/android/gms/internal/gtm/zzjg;->c:Lcom/google/android/gms/internal/gtm/zzit;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzit;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/google/android/gms/internal/gtm/zzjl;

    invoke-direct {v2, v0, v1, v5}, Lcom/google/android/gms/internal/gtm/zzjl;-><init>(Lcom/google/android/gms/internal/gtm/zzjm;Ljava/lang/String;[B)V

    iget-object v0, v0, Lcom/google/android/gms/internal/gtm/zzjm;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zziy;->f:Lcom/google/android/gms/internal/gtm/zzix;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/gtm/zzix;->zza(Lcom/google/android/gms/internal/gtm/zzjh;)V

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzjh;->a()Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->W1()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzjh;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Response source: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    iget-object p1, v1, Lcom/google/android/gms/internal/gtm/zzjg;->a:[B

    array-length p1, p1

    invoke-static {v4}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    :cond_4
    iget p1, p0, Lcom/google/android/gms/internal/gtm/zziy;->h:I

    add-int/lit8 v6, p1, 0x1

    iget-object v7, p0, Lcom/google/android/gms/internal/gtm/zziy;->f:Lcom/google/android/gms/internal/gtm/zzix;

    iget-object v8, p0, Lcom/google/android/gms/internal/gtm/zziw;->e:Lcom/google/android/gms/internal/gtm/zzam;

    iget-object v4, p0, Lcom/google/android/gms/internal/gtm/zziw;->b:Lcom/google/android/gms/internal/gtm/zzjf;

    iget-object v5, p0, Lcom/google/android/gms/internal/gtm/zziy;->g:Ljava/util/List;

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/gtm/zzja;->a(Lcom/google/android/gms/internal/gtm/zzjf;Ljava/util/List;ILcom/google/android/gms/internal/gtm/zzix;Lcom/google/android/gms/internal/gtm/zzam;)V

    return-void
.end method
