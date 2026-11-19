.class public final Lcom/google/android/gms/internal/gtm/zzap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzau;


# static fields
.field public static c:Lcom/google/android/gms/internal/gtm/zzap;

.field public static final d:Ljava/lang/Object;

.field public static final e:Ljava/util/HashSet;


# instance fields
.field public final a:Lcom/google/android/gms/internal/gtm/zzax;

.field public final b:Lcom/google/android/gms/internal/gtm/zzbw;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzap;->d:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "POST"

    const-string v2, "PUT"

    const-string v3, "GET"

    const-string v4, "HEAD"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzap;->e:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzax;->zzd(Landroid/content/Context;)Lcom/google/android/gms/internal/gtm/zzax;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzbw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzbw;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzap;->a:Lcom/google/android/gms/internal/gtm/zzax;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzap;->b:Lcom/google/android/gms/internal/gtm/zzbw;

    return-void
.end method

.method public static b(Landroid/content/Context;)Lcom/google/android/gms/internal/gtm/zzap;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzap;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/gtm/zzap;->c:Lcom/google/android/gms/internal/gtm/zzap;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzap;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/gtm/zzap;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/gms/internal/gtm/zzap;->c:Lcom/google/android/gms/internal/gtm/zzap;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzap;->c:Lcom/google/android/gms/internal/gtm/zzap;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    const/4 v1, 0x0

    const/4 v3, 0x5

    if-eqz v2, :cond_1

    sget-object v4, Lcom/google/android/gms/internal/gtm/zzap;->e:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    return v1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbn;->a()Lcom/google/android/gms/internal/gtm/zzbn;

    move-result-object v4

    iget v4, v4, Lcom/google/android/gms/internal/gtm/zzbn;->c:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    goto :goto_2

    :cond_2
    iget-object v4, v0, Lcom/google/android/gms/internal/gtm/zzap;->b:Lcom/google/android/gms/internal/gtm/zzbw;

    iget-object v5, v4, Lcom/google/android/gms/internal/gtm/zzbw;->c:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, v4, Lcom/google/android/gms/internal/gtm/zzbw;->a:D

    const-wide/high16 v10, 0x404e000000000000L    # 60.0

    cmpg-double v12, v8, v10

    if-gez v12, :cond_3

    iget-wide v12, v4, Lcom/google/android/gms/internal/gtm/zzbw;->b:J

    sub-long v12, v6, v12

    long-to-double v12, v12

    const-wide v14, 0x409f400000000000L    # 2000.0

    div-double/2addr v12, v14

    const-wide/16 v14, 0x0

    cmpl-double v14, v12, v14

    if-lez v14, :cond_3

    add-double/2addr v8, v12

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    iput-wide v8, v4, Lcom/google/android/gms/internal/gtm/zzbw;->a:D

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_3
    :goto_1
    iput-wide v6, v4, Lcom/google/android/gms/internal/gtm/zzbw;->b:J

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v8, v6

    if-ltz v6, :cond_4

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    add-double/2addr v8, v6

    iput-wide v8, v4, Lcom/google/android/gms/internal/gtm/zzbw;->a:D

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    iget-object v0, v0, Lcom/google/android/gms/internal/gtm/zzap;->a:Lcom/google/android/gms/internal/gtm/zzax;

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/gtm/zzav;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_4
    :try_start_1
    invoke-static {v3}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v3}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    return v1

    :goto_3
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
