.class public final Lcom/google/android/gms/internal/clearcut/zzp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/clearcut/ClearcutLogger$zza;


# static fields
.field public static final b:Ljava/nio/charset/Charset;

.field public static final c:Lcom/google/android/gms/internal/clearcut/zzao;

.field public static final d:Lcom/google/android/gms/internal/clearcut/zzao;

.field public static final e:Ljava/util/concurrent/ConcurrentHashMap;

.field public static final f:Ljava/util/HashMap;

.field public static g:Ljava/lang/Boolean;

.field public static h:Ljava/lang/Long;

.field public static final i:Lcom/google/android/gms/internal/clearcut/zzae;


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/clearcut/zzp;->b:Ljava/nio/charset/Charset;

    new-instance v0, Lcom/google/android/gms/internal/clearcut/zzao;

    const-string v1, "com.google.android.gms.clearcut.public"

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "content://com.google.android.gms.phenotype/"

    if-eqz v3, :cond_0

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/clearcut/zzao;-><init>(Landroid/net/Uri;)V

    new-instance v2, Lcom/google/android/gms/internal/clearcut/zzao;

    iget-object v0, v0, Lcom/google/android/gms/internal/clearcut/zzao;->a:Landroid/net/Uri;

    const-string v3, "gms:playlog:service:samplingrules_"

    const-string v5, "LogSamplingRules__"

    invoke-direct {v2, v0, v3, v5}, Lcom/google/android/gms/internal/clearcut/zzao;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/google/android/gms/internal/clearcut/zzp;->c:Lcom/google/android/gms/internal/clearcut/zzao;

    new-instance v0, Lcom/google/android/gms/internal/clearcut/zzao;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/clearcut/zzao;-><init>(Landroid/net/Uri;)V

    new-instance v1, Lcom/google/android/gms/internal/clearcut/zzao;

    iget-object v0, v0, Lcom/google/android/gms/internal/clearcut/zzao;->a:Landroid/net/Uri;

    const-string v3, "gms:playlog:service:sampling_"

    const-string v4, "LogSampling__"

    invoke-direct {v1, v0, v3, v4}, Lcom/google/android/gms/internal/clearcut/zzao;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/google/android/gms/internal/clearcut/zzp;->d:Lcom/google/android/gms/internal/clearcut/zzao;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/clearcut/zzp;->e:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/clearcut/zzp;->f:Ljava/util/HashMap;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/clearcut/zzp;->g:Ljava/lang/Boolean;

    sput-object v0, Lcom/google/android/gms/internal/clearcut/zzp;->h:Ljava/lang/Long;

    new-instance v0, Lcom/google/android/gms/internal/clearcut/zzaj;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v3, "enable_log_sampling_rules"

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/internal/clearcut/zzae;-><init>(Lcom/google/android/gms/internal/clearcut/zzao;Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/clearcut/zzp;->i:Lcom/google/android/gms/internal/clearcut/zzae;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/zzp;->a:Landroid/content/Context;

    if-eqz p1, :cond_3

    sget-object p0, Lcom/google/android/gms/internal/clearcut/zzae;->g:Landroid/content/Context;

    if-nez p0, :cond_3

    sget-object p0, Lcom/google/android/gms/internal/clearcut/zzae;->f:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->isDeviceProtectedStorage()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/clearcut/zzae;->g:Landroid/content/Context;

    if-eq v0, p1, :cond_2

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/clearcut/zzae;->h:Ljava/lang/Boolean;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_1
    sput-object p1, Lcom/google/android/gms/internal/clearcut/zzae;->g:Landroid/content/Context;

    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    return-void
.end method

.method public static a(JLjava/lang/String;)J
    .locals 2

    const/16 v0, 0x8

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/clearcut/zzp;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    array-length v1, p2

    add-int/2addr v1, v0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/zzk;->c([B)J

    move-result-wide p0

    return-wide p0

    :cond_1
    :goto_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/zzk;->c([B)J

    move-result-wide p0

    return-wide p0
.end method

.method public static c(JJJ)Z
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2

    cmp-long v2, p4, v0

    if-lez v2, :cond_2

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    :goto_0
    rem-long/2addr p0, p4

    goto :goto_1

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    rem-long v2, v0, p4

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    and-long/2addr p0, v0

    rem-long/2addr p0, p4

    add-long/2addr p0, v2

    goto :goto_0

    :goto_1
    cmp-long p0, p0, p2

    if-gez p0, :cond_1

    goto :goto_2

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_2
    const/4 p0, 0x1

    return p0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/clearcut/zzp;->g:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/google/android/gms/common/wrappers/Wrappers;->a(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object p0

    const-string v0, "com.google.android.providers.gsf.permission.READ_GSERVICES"

    iget-object p0, p0, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->a:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/internal/clearcut/zzp;->g:Ljava/lang/Boolean;

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/clearcut/zzp;->g:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static e(Landroid/content/Context;)J
    .locals 8

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/clearcut/zzp;->h:Ljava/lang/Long;

    if-nez v3, :cond_4

    if-eqz p0, :cond_3

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/zzp;->d(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v3, "android_id"

    sget-object v4, Lcom/google/android/gms/internal/clearcut/zzy;->a:Landroid/net/Uri;

    const-class v4, Lcom/google/android/gms/internal/clearcut/zzy;

    monitor-enter v4

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/zzy;->c(Landroid/content/ContentResolver;)V

    sget-object v5, Lcom/google/android/gms/internal/clearcut/zzy;->k:Ljava/lang/Object;

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v4, Lcom/google/android/gms/internal/clearcut/zzy;->i:Ljava/util/HashMap;

    invoke-static {v4, v3, v2}, Lcom/google/android/gms/internal/clearcut/zzy;->a(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_1

    :cond_0
    invoke-static {p0, v3}, Lcom/google/android/gms/internal/clearcut/zzy;->b(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-wide v0, v6

    :catch_0
    :goto_0
    invoke-static {v5, v4, v3, v2}, Lcom/google/android/gms/internal/clearcut/zzy;->d(Ljava/lang/Object;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/internal/clearcut/zzp;->h:Ljava/lang/Long;

    goto :goto_2

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_2
    sput-object v2, Lcom/google/android/gms/internal/clearcut/zzp;->h:Ljava/lang/Long;

    goto :goto_2

    :cond_3
    return-wide v0

    :cond_4
    :goto_2
    sget-object p0, Lcom/google/android/gms/internal/clearcut/zzp;->h:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/clearcut/zze;)Z
    .locals 13

    iget-object v0, p1, Lcom/google/android/gms/clearcut/zze;->b:Lcom/google/android/gms/internal/clearcut/zzr;

    iget-object v1, v0, Lcom/google/android/gms/internal/clearcut/zzr;->h:Ljava/lang/String;

    iget v0, v0, Lcom/google/android/gms/internal/clearcut/zzr;->d:I

    iget-object p1, p1, Lcom/google/android/gms/clearcut/zze;->j:Lcom/google/android/gms/internal/clearcut/zzha;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget p1, p1, Lcom/google/android/gms/internal/clearcut/zzha;->f:I

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    sget-object v3, Lcom/google/android/gms/internal/clearcut/zzp;->i:Lcom/google/android/gms/internal/clearcut/zzae;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/clearcut/zzae;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x1

    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/zzp;->a:Landroid/content/Context;

    const/4 v5, 0x0

    if-nez v3, :cond_e

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    if-ltz v0, :cond_2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v5

    :goto_1
    if-eqz v1, :cond_16

    if-eqz p0, :cond_5

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/zzp;->d(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/clearcut/zzp;->f:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/clearcut/zzae;

    if-nez v0, :cond_4

    sget-object v0, Lcom/google/android/gms/internal/clearcut/zzp;->d:Lcom/google/android/gms/internal/clearcut/zzao;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/google/android/gms/internal/clearcut/zzak;

    invoke-direct {v3, v0, v1, v5}, Lcom/google/android/gms/internal/clearcut/zzae;-><init>(Lcom/google/android/gms/internal/clearcut/zzao;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v3

    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/zzae;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_3

    :cond_5
    :goto_2
    move-object p1, v5

    :goto_3
    if-nez p1, :cond_6

    goto/16 :goto_6

    :cond_6
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_7

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/2addr v0, v4

    goto :goto_4

    :cond_7
    const-string v1, ""

    move v0, v2

    :goto_4
    const/16 v3, 0x2f

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-gtz v3, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "Failed to parse the rule: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_6

    :cond_8
    :try_start_0
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    add-int/2addr v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v10, 0x0

    cmp-long p1, v6, v10

    if-ltz p1, :cond_d

    cmp-long p1, v8, v10

    if-gez p1, :cond_9

    goto :goto_6

    :cond_9
    invoke-static {}, Lcom/google/android/gms/internal/clearcut/zzgw$zza$zzb;->r()Lcom/google/android/gms/internal/clearcut/zzgw$zza$zzb$zza;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/zzcg$zza;->g()V

    iget-object v0, p1, Lcom/google/android/gms/internal/clearcut/zzcg$zza;->c:Lcom/google/android/gms/internal/clearcut/zzcg;

    check-cast v0, Lcom/google/android/gms/internal/clearcut/zzgw$zza$zzb;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/clearcut/zzgw$zza$zzb;->k(Lcom/google/android/gms/internal/clearcut/zzgw$zza$zzb;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/zzcg$zza;->g()V

    iget-object v0, p1, Lcom/google/android/gms/internal/clearcut/zzcg$zza;->c:Lcom/google/android/gms/internal/clearcut/zzcg;

    check-cast v0, Lcom/google/android/gms/internal/clearcut/zzgw$zza$zzb;

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/internal/clearcut/zzgw$zza$zzb;->j(Lcom/google/android/gms/internal/clearcut/zzgw$zza$zzb;J)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/zzcg$zza;->g()V

    iget-object v0, p1, Lcom/google/android/gms/internal/clearcut/zzcg$zza;->c:Lcom/google/android/gms/internal/clearcut/zzcg;

    check-cast v0, Lcom/google/android/gms/internal/clearcut/zzgw$zza$zzb;

    invoke-static {v0, v8, v9}, Lcom/google/android/gms/internal/clearcut/zzgw$zza$zzb;->l(Lcom/google/android/gms/internal/clearcut/zzgw$zza$zzb;J)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/clearcut/zzcg$zza;->h()Lcom/google/android/gms/internal/clearcut/zzcg;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/clearcut/zzcg;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    if-ne v0, v4, :cond_a

    move v2, v4

    goto :goto_5

    :cond_a
    if-nez v0, :cond_b

    goto :goto_5

    :cond_b
    sget-object v0, Lcom/google/android/gms/internal/clearcut/zzea;->c:Lcom/google/android/gms/internal/clearcut/zzea;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/clearcut/zzea;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/clearcut/zzef;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/clearcut/zzef;->e(Ljava/lang/Object;)Z

    move-result v2

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/clearcut/zzcg;->e(I)Ljava/lang/Object;

    :goto_5
    if-eqz v2, :cond_c

    move-object v5, p1

    check-cast v5, Lcom/google/android/gms/internal/clearcut/zzgw$zza$zzb;

    goto :goto_6

    :cond_c
    new-instance p0, Lcom/google/android/gms/internal/clearcut/zzew;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/clearcut/zzew;-><init>(Lcom/google/android/gms/internal/clearcut/zzdo;)V

    throw p0

    :catch_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "parseLong() failed while parsing: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    :cond_d
    :goto_6
    if-eqz v5, :cond_16

    invoke-virtual {v5}, Lcom/google/android/gms/internal/clearcut/zzgw$zza$zzb;->o()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/zzp;->e(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/clearcut/zzp;->a(JLjava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v5}, Lcom/google/android/gms/internal/clearcut/zzgw$zza$zzb;->p()J

    move-result-wide v8

    invoke-virtual {v5}, Lcom/google/android/gms/internal/clearcut/zzgw$zza$zzb;->q()J

    move-result-wide v10

    invoke-static/range {v6 .. v11}, Lcom/google/android/gms/internal/clearcut/zzp;->c(JJJ)Z

    move-result p0

    return p0

    :cond_e
    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f

    goto :goto_7

    :cond_f
    if-ltz v0, :cond_10

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_10
    move-object v1, v5

    :goto_7
    if-eqz v1, :cond_16

    if-nez p0, :cond_11

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_9

    :cond_11
    sget-object v0, Lcom/google/android/gms/internal/clearcut/zzp;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/clearcut/zzae;

    if-nez v3, :cond_13

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/zzgw$zza;->j()Lcom/google/android/gms/internal/clearcut/zzgw$zza;

    move-result-object v3

    sget-object v5, Lcom/google/android/gms/internal/clearcut/zzp;->c:Lcom/google/android/gms/internal/clearcut/zzao;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lcom/google/android/gms/internal/clearcut/zzal;

    invoke-direct {v6, v5, v1, v3}, Lcom/google/android/gms/internal/clearcut/zzal;-><init>(Lcom/google/android/gms/internal/clearcut/zzao;Ljava/lang/String;Lcom/google/android/gms/internal/clearcut/zzgw$zza;)V

    invoke-virtual {v0, v1, v6}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/clearcut/zzae;

    if-eqz v3, :cond_12

    goto :goto_8

    :cond_12
    move-object v3, v6

    :cond_13
    :goto_8
    invoke-virtual {v3}, Lcom/google/android/gms/internal/clearcut/zzae;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/clearcut/zzgw$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/clearcut/zzgw$zza;->i()Lcom/google/android/gms/internal/clearcut/zzcn;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/clearcut/zzgw$zza$zzb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/zzgw$zza$zzb;->n()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/zzgw$zza$zzb;->i()I

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/zzgw$zza$zzb;->i()I

    move-result v3

    if-ne v3, p1, :cond_14

    :cond_15
    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/zzgw$zza$zzb;->o()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/google/android/gms/internal/clearcut/zzp;->e(Landroid/content/Context;)J

    move-result-wide v5

    invoke-static {v5, v6, v3}, Lcom/google/android/gms/internal/clearcut/zzp;->a(JLjava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/zzgw$zza$zzb;->p()J

    move-result-wide v9

    invoke-virtual {v1}, Lcom/google/android/gms/internal/clearcut/zzgw$zza$zzb;->q()J

    move-result-wide v11

    invoke-static/range {v7 .. v12}, Lcom/google/android/gms/internal/clearcut/zzp;->c(JJJ)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_16
    return v4
.end method
