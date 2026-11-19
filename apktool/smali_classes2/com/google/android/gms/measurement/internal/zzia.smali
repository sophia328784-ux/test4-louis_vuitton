.class final Lcom/google/android/gms/measurement/internal/zzia;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/measurement/internal/zzjs;

.field final synthetic zzb:Lcom/google/android/gms/measurement/internal/zzic;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzic;Lcom/google/android/gms/measurement/internal/zzjs;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zzjs;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzia;->zzb:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzia;->zzb:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzia;->zza:Lcom/google/android/gms/measurement/internal/zzjs;

    iget-object v1, v2, Lcom/google/android/gms/measurement/internal/zzic;->g:Lcom/google/android/gms/measurement/internal/zzhz;

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzic;->f:Lcom/google/android/gms/measurement/internal/zzgu;

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzic;->e:Lcom/google/android/gms/measurement/internal/zzhh;

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzic;->i:Lcom/google/android/gms/measurement/internal/zzpp;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzhz;->g()V

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzic;->d:Lcom/google/android/gms/measurement/internal/zzal;

    iget-object v1, v11, Lcom/google/android/gms/measurement/internal/zzje;->a:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzbb;

    invoke-direct {v1, v2}, Lcom/google/android/gms/measurement/internal/zzjf;-><init>(Lcom/google/android/gms/measurement/internal/zzic;)V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzjf;->j()V

    iput-object v1, v2, Lcom/google/android/gms/measurement/internal/zzic;->s:Lcom/google/android/gms/measurement/internal/zzbb;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzjs;->d:Lcom/google/android/gms/internal/measurement/zzdb;

    const-wide/16 v12, 0x0

    if-nez v1, :cond_0

    move-wide v5, v12

    goto :goto_0

    :cond_0
    iget-wide v3, v1, Lcom/google/android/gms/internal/measurement/zzdb;->b:J

    move-wide v5, v3

    :goto_0
    const-string v14, ""

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/zzdb;->e:Landroid/os/Bundle;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "runtime_google_app_id"

    invoke-virtual {v1, v3, v14}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    goto :goto_2

    :cond_2
    :goto_1
    move-object v7, v14

    :goto_2
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzgi;

    iget-wide v3, v0, Lcom/google/android/gms/measurement/internal/zzjs;->c:J

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/measurement/internal/zzgi;-><init>(Lcom/google/android/gms/measurement/internal/zzic;JJLjava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->i()V

    iput-object v1, v2, Lcom/google/android/gms/measurement/internal/zzic;->t:Lcom/google/android/gms/measurement/internal/zzgi;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzgl;

    invoke-direct {v0, v2}, Lcom/google/android/gms/measurement/internal/zzgl;-><init>(Lcom/google/android/gms/measurement/internal/zzic;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->i()V

    iput-object v0, v2, Lcom/google/android/gms/measurement/internal/zzic;->q:Lcom/google/android/gms/measurement/internal/zzgl;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zznl;

    invoke-direct {v0, v2}, Lcom/google/android/gms/measurement/internal/zznl;-><init>(Lcom/google/android/gms/measurement/internal/zzic;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->i()V

    iput-object v0, v2, Lcom/google/android/gms/measurement/internal/zzic;->r:Lcom/google/android/gms/measurement/internal/zznl;

    iget-boolean v0, v10, Lcom/google/android/gms/measurement/internal/zzjf;->b:Z

    iget-object v3, v10, Lcom/google/android/gms/measurement/internal/zzje;->a:Lcom/google/android/gms/measurement/internal/zzic;

    const-string v4, "Can\'t initialize twice"

    if-nez v0, :cond_49

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzje;->g()V

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v5

    cmp-long v7, v5, v12

    if-nez v7, :cond_3

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v5

    cmp-long v0, v5, v12

    if-nez v0, :cond_3

    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzje;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzic;->f:Lcom/google/android/gms/measurement/internal/zzgu;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgu;->i:Lcom/google/android/gms/measurement/internal/zzgs;

    const-string v7, "Utils falling back to Random for random id"

    invoke-virtual {v0, v7}, Lcom/google/android/gms/measurement/internal/zzgs;->a(Ljava/lang/String;)V

    :cond_3
    iget-object v0, v10, Lcom/google/android/gms/measurement/internal/zzpp;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v0, v3, Lcom/google/android/gms/measurement/internal/zzic;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const/4 v5, 0x1

    iput-boolean v5, v10, Lcom/google/android/gms/measurement/internal/zzjf;->b:Z

    iget-boolean v0, v9, Lcom/google/android/gms/measurement/internal/zzjf;->b:Z

    if-nez v0, :cond_48

    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/zzje;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzic;->a:Landroid/content/Context;

    const-string v6, "com.google.android.gms.measurement.prefs"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gms/measurement/internal/zzhh;->c:Landroid/content/SharedPreferences;

    const-string v6, "has_been_opened"

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v9, Lcom/google/android/gms/measurement/internal/zzhh;->r:Z

    if-nez v0, :cond_4

    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/zzhh;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_4
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzhf;

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzfy;->d:Lcom/google/android/gms/measurement/internal/zzfx;

    const/4 v15, 0x0

    invoke-virtual {v6, v15}, Lcom/google/android/gms/measurement/internal/zzfx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    move-object/from16 p0, v8

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v12, v13, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-direct {v0, v9, v6, v7}, Lcom/google/android/gms/measurement/internal/zzhf;-><init>(Lcom/google/android/gms/measurement/internal/zzhh;J)V

    iput-object v0, v9, Lcom/google/android/gms/measurement/internal/zzhh;->e:Lcom/google/android/gms/measurement/internal/zzhf;

    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/zzje;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzic;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iput-boolean v5, v9, Lcom/google/android/gms/measurement/internal/zzjf;->b:Z

    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzic;->t:Lcom/google/android/gms/measurement/internal/zzgi;

    iget-boolean v0, v6, Lcom/google/android/gms/measurement/internal/zzg;->b:Z

    if-nez v0, :cond_47

    iget-object v7, v6, Lcom/google/android/gms/measurement/internal/zzje;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/zzic;->f:Lcom/google/android/gms/measurement/internal/zzgu;

    iget-object v8, v7, Lcom/google/android/gms/measurement/internal/zzic;->f:Lcom/google/android/gms/measurement/internal/zzgu;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgu;->n:Lcom/google/android/gms/measurement/internal/zzgs;

    iget-wide v12, v6, Lcom/google/android/gms/measurement/internal/zzgi;->j:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object v13, v3

    move-object/from16 v18, v4

    iget-wide v3, v6, Lcom/google/android/gms/measurement/internal/zzgi;->i:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "sdkVersion bundled with app, dynamiteVersion"

    invoke-virtual {v0, v4, v12, v3}, Lcom/google/android/gms/measurement/internal/zzgs;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, v7, Lcom/google/android/gms/measurement/internal/zzic;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const-string v19, "Unknown"

    const-string v20, "unknown"

    if-nez v12, :cond_6

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    iget-object v0, v8, Lcom/google/android/gms/measurement/internal/zzgu;->f:Lcom/google/android/gms/measurement/internal/zzgs;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzgu;->o(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    const-string v5, "PackageManager is null, app identity information might be inaccurate. appId"

    invoke-virtual {v0, v15, v5}, Lcom/google/android/gms/measurement/internal/zzgs;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    move-object/from16 v22, v1

    move-object/from16 v5, v19

    move-object v15, v5

    :goto_3
    move-object/from16 v1, v20

    const/high16 v0, -0x80000000

    goto/16 :goto_9

    :cond_6
    :try_start_0
    invoke-virtual {v12, v4}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    move-object/from16 v0, v20

    goto :goto_5

    :catch_0
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    iget-object v0, v8, Lcom/google/android/gms/measurement/internal/zzgu;->f:Lcom/google/android/gms/measurement/internal/zzgs;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzgu;->o(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v15, "Error retrieving app installer package name. appId"

    invoke-virtual {v0, v5, v15}, Lcom/google/android/gms/measurement/internal/zzgs;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :goto_5
    if-nez v0, :cond_8

    const-string v0, "manual_install"

    :cond_7
    move-object/from16 v20, v0

    goto :goto_6

    :cond_8
    const-string v5, "com.android.vending"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    move-object/from16 v20, v14

    :goto_6
    :try_start_1
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v12, v0, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v12, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_9

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_7

    :cond_9
    move-object/from16 v5, v19

    :goto_7
    :try_start_2
    iget-object v15, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v22, v1

    move-object/from16 v1, v20

    goto :goto_9

    :catch_1
    move-object/from16 v19, v15

    goto :goto_8

    :catch_2
    move-object/from16 v5, v19

    :catch_3
    :goto_8
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    iget-object v0, v8, Lcom/google/android/gms/measurement/internal/zzgu;->f:Lcom/google/android/gms/measurement/internal/zzgs;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzgu;->o(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v22, v1

    const-string v1, "Error retrieving package info. appId, appName"

    invoke-virtual {v0, v1, v15, v5}, Lcom/google/android/gms/measurement/internal/zzgs;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v15, v19

    goto :goto_3

    :goto_9
    iput-object v4, v6, Lcom/google/android/gms/measurement/internal/zzgi;->c:Ljava/lang/String;

    iput-object v1, v6, Lcom/google/android/gms/measurement/internal/zzgi;->f:Ljava/lang/String;

    iput-object v15, v6, Lcom/google/android/gms/measurement/internal/zzgi;->d:Ljava/lang/String;

    iput v0, v6, Lcom/google/android/gms/measurement/internal/zzgi;->e:I

    iput-object v5, v6, Lcom/google/android/gms/measurement/internal/zzgi;->g:Ljava/lang/String;

    move-object v1, v4

    const-wide/16 v4, 0x0

    iput-wide v4, v6, Lcom/google/android/gms/measurement/internal/zzgi;->h:J

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzic;->g()I

    move-result v0

    if-eqz v0, :cond_10

    const/4 v4, 0x1

    if-eq v0, v4, :cond_f

    const/4 v4, 0x3

    if-eq v0, v4, :cond_e

    const/4 v4, 0x4

    if-eq v0, v4, :cond_d

    const/4 v4, 0x6

    if-eq v0, v4, :cond_c

    const/4 v4, 0x7

    if-eq v0, v4, :cond_b

    const/16 v4, 0x8

    if-eq v0, v4, :cond_a

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    iget-object v4, v8, Lcom/google/android/gms/measurement/internal/zzgu;->l:Lcom/google/android/gms/measurement/internal/zzgs;

    const-string v5, "App measurement disabled"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzgs;->a(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    iget-object v4, v8, Lcom/google/android/gms/measurement/internal/zzgu;->g:Lcom/google/android/gms/measurement/internal/zzgs;

    const-string v5, "Invalid scion state in identity"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzgs;->a(Ljava/lang/String;)V

    goto :goto_a

    :cond_a
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    iget-object v4, v8, Lcom/google/android/gms/measurement/internal/zzgu;->l:Lcom/google/android/gms/measurement/internal/zzgs;

    const-string v5, "App measurement disabled due to denied storage consent"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzgs;->a(Ljava/lang/String;)V

    goto :goto_a

    :cond_b
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    iget-object v4, v8, Lcom/google/android/gms/measurement/internal/zzgu;->l:Lcom/google/android/gms/measurement/internal/zzgs;

    const-string v5, "App measurement disabled via the global data collection setting"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzgs;->a(Ljava/lang/String;)V

    goto :goto_a

    :cond_c
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    iget-object v4, v8, Lcom/google/android/gms/measurement/internal/zzgu;->k:Lcom/google/android/gms/measurement/internal/zzgs;

    const-string v5, "App measurement deactivated via resources. This method is being deprecated. Please refer to https://firebase.google.com/support/guides/disable-analytics"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzgs;->a(Ljava/lang/String;)V

    goto :goto_a

    :cond_d
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    iget-object v4, v8, Lcom/google/android/gms/measurement/internal/zzgu;->l:Lcom/google/android/gms/measurement/internal/zzgs;

    const-string v5, "App measurement disabled via the manifest"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzgs;->a(Ljava/lang/String;)V

    goto :goto_a

    :cond_e
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    iget-object v4, v8, Lcom/google/android/gms/measurement/internal/zzgu;->l:Lcom/google/android/gms/measurement/internal/zzgs;

    const-string v5, "App measurement disabled by setAnalyticsCollectionEnabled(false)"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzgs;->a(Ljava/lang/String;)V

    goto :goto_a

    :cond_f
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    iget-object v4, v8, Lcom/google/android/gms/measurement/internal/zzgu;->l:Lcom/google/android/gms/measurement/internal/zzgs;

    const-string v5, "App measurement deactivated via the manifest"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzgs;->a(Ljava/lang/String;)V

    goto :goto_a

    :cond_10
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    iget-object v4, v8, Lcom/google/android/gms/measurement/internal/zzgu;->n:Lcom/google/android/gms/measurement/internal/zzgs;

    const-string v5, "App measurement collection enabled"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzgs;->a(Ljava/lang/String;)V

    :goto_a
    iput-object v14, v6, Lcom/google/android/gms/measurement/internal/zzgi;->o:Ljava/lang/String;

    :try_start_4
    iget-object v4, v6, Lcom/google/android/gms/measurement/internal/zzgi;->m:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_11

    goto :goto_b

    :cond_11
    iget-object v4, v7, Lcom/google/android/gms/measurement/internal/zzic;->p:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/android/gms/measurement/internal/zzlt;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_b
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_12

    goto :goto_c

    :cond_12
    move-object v14, v4

    :goto_c
    iput-object v14, v6, Lcom/google/android/gms/measurement/internal/zzgi;->o:Ljava/lang/String;

    if-nez v0, :cond_13

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    iget-object v0, v8, Lcom/google/android/gms/measurement/internal/zzgu;->n:Lcom/google/android/gms/measurement/internal/zzgs;

    const-string v4, "App measurement enabled for app package, google app id"

    iget-object v5, v6, Lcom/google/android/gms/measurement/internal/zzgi;->c:Ljava/lang/String;

    iget-object v14, v6, Lcom/google/android/gms/measurement/internal/zzgi;->o:Ljava/lang/String;

    invoke-virtual {v0, v4, v5, v14}, Lcom/google/android/gms/measurement/internal/zzgs;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_13
    :goto_d
    const/4 v1, 0x0

    goto :goto_e

    :catch_4
    move-exception v0

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    iget-object v4, v8, Lcom/google/android/gms/measurement/internal/zzgu;->f:Lcom/google/android/gms/measurement/internal/zzgs;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzgu;->o(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v5, "Fetching Google App Id failed with exception. appId"

    invoke-virtual {v4, v5, v1, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_d

    :goto_e
    iput-object v1, v6, Lcom/google/android/gms/measurement/internal/zzgi;->k:Ljava/util/List;

    iget-object v0, v7, Lcom/google/android/gms/measurement/internal/zzic;->d:Lcom/google/android/gms/measurement/internal/zzal;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzje;->a:Lcom/google/android/gms/measurement/internal/zzic;

    const-string v4, "analytics.safelisted_events"

    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->e(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzal;->s()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_14

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzic;->f:Lcom/google/android/gms/measurement/internal/zzgu;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgu;->f:Lcom/google/android/gms/measurement/internal/zzgs;

    const-string v4, "Failed to load metadata: Metadata bundle is null"

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzgs;->a(Ljava/lang/String;)V

    :goto_f
    const/4 v0, 0x0

    goto :goto_10

    :cond_14
    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_15

    goto :goto_f

    :cond_15
    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_10
    if-eqz v0, :cond_16

    :try_start_5
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzic;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_17

    :cond_16
    :goto_11
    const/4 v0, 0x0

    goto :goto_12

    :cond_17
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_12

    :catch_5
    move-exception v0

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzic;->f:Lcom/google/android/gms/measurement/internal/zzgu;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgu;->f:Lcom/google/android/gms/measurement/internal/zzgs;

    const-string v4, "Failed to load string array from metadata: resource not found"

    invoke-virtual {v1, v0, v4}, Lcom/google/android/gms/measurement/internal/zzgs;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_11

    :goto_12
    if-nez v0, :cond_18

    goto :goto_13

    :cond_18
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    iget-object v0, v8, Lcom/google/android/gms/measurement/internal/zzgu;->k:Lcom/google/android/gms/measurement/internal/zzgs;

    const-string v1, "Safelisted event list is empty. Ignoring"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgs;->a(Ljava/lang/String;)V

    goto :goto_14

    :cond_19
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, v7, Lcom/google/android/gms/measurement/internal/zzic;->i:Lcom/google/android/gms/measurement/internal/zzpp;

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzic;->k(Lcom/google/android/gms/measurement/internal/zzje;)V

    const-string v8, "safelisted event"

    invoke-virtual {v5, v8, v4}, Lcom/google/android/gms/measurement/internal/zzpp;->k0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1a

    goto :goto_14

    :cond_1b
    :goto_13
    iput-object v0, v6, Lcom/google/android/gms/measurement/internal/zzgi;->k:Ljava/util/List;

    :goto_14
    if-eqz v12, :cond_1c

    invoke-static {v3}, Lcom/google/android/gms/common/wrappers/InstantApps;->a(Landroid/content/Context;)Z

    move-result v0

    iput v0, v6, Lcom/google/android/gms/measurement/internal/zzgi;->n:I

    goto :goto_15

    :cond_1c
    const/4 v5, 0x0

    iput v5, v6, Lcom/google/android/gms/measurement/internal/zzgi;->n:I

    :goto_15
    iget-object v0, v6, Lcom/google/android/gms/measurement/internal/zzje;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzic;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const/4 v4, 0x1

    iput-boolean v4, v6, Lcom/google/android/gms/measurement/internal/zzg;->b:Z

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzlq;

    invoke-direct {v0, v2}, Lcom/google/android/gms/measurement/internal/zzlq;-><init>(Lcom/google/android/gms/measurement/internal/zzic;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->i()V

    iput-object v0, v2, Lcom/google/android/gms/measurement/internal/zzic;->u:Lcom/google/android/gms/measurement/internal/zzlq;

    iget-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzg;->b:Z

    if-nez v1, :cond_46

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzje;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzic;->a:Landroid/content/Context;

    const-string v4, "jobscheduler"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/job/JobScheduler;

    iput-object v3, v0, Lcom/google/android/gms/measurement/internal/zzlq;->c:Landroid/app/job/JobScheduler;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzic;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/google/android/gms/measurement/internal/zzg;->b:Z

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzgu;->m:Lcom/google/android/gms/measurement/internal/zzgs;

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzgu;->l:Lcom/google/android/gms/measurement/internal/zzgs;

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzgu;->n:Lcom/google/android/gms/measurement/internal/zzgs;

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzgu;->f:Lcom/google/android/gms/measurement/internal/zzgs;

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzal;->m()V

    const-wide/32 v6, 0x274e8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "App measurement initialized, version"

    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/measurement/internal/zzgs;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    const-string v6, "To enable debug logging run: adb shell setprop log.tag.FA VERBOSE"

    invoke-virtual {v3, v6}, Lcom/google/android/gms/measurement/internal/zzgs;->a(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/measurement/internal/zzgi;->m()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v11, Lcom/google/android/gms/measurement/internal/zzal;->c:Ljava/lang/String;

    invoke-virtual {v10, v6, v7}, Lcom/google/android/gms/measurement/internal/zzpp;->L(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1d

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    const-string v6, "Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none."

    invoke-virtual {v3, v6}, Lcom/google/android/gms/measurement/internal/zzgs;->a(Ljava/lang/String;)V

    goto :goto_16

    :cond_1d
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app "

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/android/gms/measurement/internal/zzgs;->a(Ljava/lang/String;)V

    :goto_16
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    const-string v6, "Debug-level message logging enabled"

    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/zzgs;->a(Ljava/lang/String;)V

    iget v6, v2, Lcom/google/android/gms/measurement/internal/zzic;->A:I

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzic;->C:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    if-eq v6, v8, :cond_1e

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    iget v6, v2, Lcom/google/android/gms/measurement/internal/zzic;->A:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "Not all components initialized"

    invoke-virtual {v5, v8, v6, v7}, Lcom/google/android/gms/measurement/internal/zzgs;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    const/4 v6, 0x1

    iput-boolean v6, v2, Lcom/google/android/gms/measurement/internal/zzic;->v:Z

    iget-wide v6, v2, Lcom/google/android/gms/measurement/internal/zzic;->D:J

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzic;->m:Lcom/google/android/gms/measurement/internal/zzlj;

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzic;->g:Lcom/google/android/gms/measurement/internal/zzhz;

    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzhz;->g()V

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzic;->u:Lcom/google/android/gms/measurement/internal/zzlq;

    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/zzic;->j(Lcom/google/android/gms/measurement/internal/zzf;)V

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzic;->u:Lcom/google/android/gms/measurement/internal/zzlq;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzlq;->l()Lcom/google/android/gms/internal/measurement/zzin;

    move-result-object v12

    sget-object v14, Lcom/google/android/gms/internal/measurement/zzin;->zzb:Lcom/google/android/gms/internal/measurement/zzin;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzaif;->a()V

    sget-object v15, Lcom/google/android/gms/measurement/internal/zzfy;->P0:Lcom/google/android/gms/measurement/internal/zzfx;

    move-object/from16 p0, v13

    const/4 v13, 0x0

    invoke-virtual {v11, v13, v15}, Lcom/google/android/gms/measurement/internal/zzal;->r(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)Z

    move-result v15

    if-ne v12, v14, :cond_1f

    const/4 v12, 0x1

    goto :goto_17

    :cond_1f
    const/4 v12, 0x0

    :goto_17
    const-wide/16 v13, 0x1

    if-eqz v15, :cond_20

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzje;->g()V

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzpp;->D()J

    move-result-wide v18

    cmp-long v15, v18, v13

    if-nez v15, :cond_20

    goto :goto_18

    :cond_20
    if-eqz v12, :cond_21

    const/4 v12, 0x1

    :goto_18
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzje;->g()V

    new-instance v15, Landroid/content/IntentFilter;

    invoke-direct {v15}, Landroid/content/IntentFilter;-><init>()V

    move-wide/from16 v18, v13

    const-string v13, "com.google.android.gms.measurement.TRIGGERS_AVAILABLE"

    invoke-virtual {v15, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v13, "com.google.android.gms.measurement.BATCHES_AVAILABLE"

    invoke-virtual {v15, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v13, Lcom/google/android/gms/measurement/internal/zzw;

    move-object/from16 v14, p0

    invoke-direct {v13, v14}, Lcom/google/android/gms/measurement/internal/zzw;-><init>(Lcom/google/android/gms/measurement/internal/zzic;)V

    move/from16 p0, v12

    iget-object v12, v14, Lcom/google/android/gms/measurement/internal/zzic;->a:Landroid/content/Context;

    move-object/from16 v20, v1

    const/4 v1, 0x2

    invoke-static {v12, v13, v15, v1}, Landroidx/core/content/ContextCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    iget-object v1, v14, Lcom/google/android/gms/measurement/internal/zzic;->f:Lcom/google/android/gms/measurement/internal/zzgu;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzgu;->m:Lcom/google/android/gms/measurement/internal/zzgs;

    const-string v12, "Registered app receiver"

    invoke-virtual {v1, v12}, Lcom/google/android/gms/measurement/internal/zzgs;->a(Ljava/lang/String;)V

    if-eqz p0, :cond_22

    iget-object v1, v2, Lcom/google/android/gms/measurement/internal/zzic;->u:Lcom/google/android/gms/measurement/internal/zzlq;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzic;->j(Lcom/google/android/gms/measurement/internal/zzf;)V

    iget-object v1, v2, Lcom/google/android/gms/measurement/internal/zzic;->u:Lcom/google/android/gms/measurement/internal/zzlq;

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzfy;->C:Lcom/google/android/gms/measurement/internal/zzfx;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/google/android/gms/measurement/internal/zzfx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v1, v12, v13}, Lcom/google/android/gms/measurement/internal/zzlq;->k(J)V

    goto :goto_19

    :cond_21
    move-object/from16 v20, v1

    move-wide/from16 v18, v13

    move-object/from16 v14, p0

    :cond_22
    :goto_19
    iget-object v1, v9, Lcom/google/android/gms/measurement/internal/zzhh;->g:Lcom/google/android/gms/measurement/internal/zzhg;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzhh;->n()Lcom/google/android/gms/measurement/internal/zzjl;

    move-result-object v12

    iget v13, v12, Lcom/google/android/gms/measurement/internal/zzjl;->b:I

    const-string v15, "google_analytics_default_allow_ad_storage"

    move-object/from16 p0, v12

    const/4 v12, 0x0

    invoke-virtual {v11, v15, v12}, Lcom/google/android/gms/measurement/internal/zzal;->w(Ljava/lang/String;Z)Lcom/google/android/gms/measurement/internal/zzji;

    move-result-object v15

    move-object/from16 v21, v14

    const-string v14, "google_analytics_default_allow_analytics_storage"

    invoke-virtual {v11, v14, v12}, Lcom/google/android/gms/measurement/internal/zzal;->w(Ljava/lang/String;Z)Lcom/google/android/gms/measurement/internal/zzji;

    move-result-object v14

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzji;->zza:Lcom/google/android/gms/measurement/internal/zzji;

    move-object/from16 v22, v1

    const-class v1, Lcom/google/android/gms/measurement/internal/zzjk;

    move-object/from16 v23, v3

    if-ne v15, v12, :cond_24

    if-eq v14, v12, :cond_23

    goto :goto_1a

    :cond_23
    move-object/from16 v24, v2

    move-object/from16 v25, v5

    goto :goto_1c

    :cond_24
    :goto_1a
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzhh;->k()Landroid/content/SharedPreferences;

    move-result-object v3

    move-object/from16 v24, v2

    const-string v2, "consent_source"

    move-object/from16 v25, v5

    const/16 v5, 0x64

    invoke-interface {v3, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, -0xa

    invoke-static {v3, v2}, Lcom/google/android/gms/measurement/internal/zzjl;->l(II)Z

    move-result v2

    if-eqz v2, :cond_25

    new-instance v2, Ljava/util/EnumMap;

    invoke-direct {v2, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzjk;->zza:Lcom/google/android/gms/measurement/internal/zzjk;

    invoke-virtual {v2, v5, v15}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzjk;->zzb:Lcom/google/android/gms/measurement/internal/zzjk;

    invoke-virtual {v2, v5, v14}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzjl;

    invoke-direct {v5, v2, v3}, Lcom/google/android/gms/measurement/internal/zzjl;-><init>(Ljava/util/EnumMap;I)V

    move-object v2, v5

    :goto_1b
    const/4 v5, 0x0

    goto :goto_1f

    :cond_25
    :goto_1c
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gms/measurement/internal/zzic;->r()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->n()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_28

    if-eqz v13, :cond_27

    const/16 v2, 0x1e

    if-eq v13, v2, :cond_27

    const/16 v2, 0xa

    if-eq v13, v2, :cond_27

    const/16 v2, 0x28

    if-ne v13, v2, :cond_26

    goto :goto_1d

    :cond_26
    const/4 v2, 0x0

    goto :goto_1b

    :cond_27
    :goto_1d
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzic;->l(Lcom/google/android/gms/measurement/internal/zzg;)V

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzjl;

    const/16 v3, -0xa

    const/4 v13, 0x0

    invoke-direct {v2, v13, v13, v3}, Lcom/google/android/gms/measurement/internal/zzjl;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;I)V

    const/4 v5, 0x0

    invoke-virtual {v8, v2, v5}, Lcom/google/android/gms/measurement/internal/zzlj;->L(Lcom/google/android/gms/measurement/internal/zzjl;Z)V

    :goto_1e
    const/4 v2, 0x0

    goto :goto_1f

    :cond_28
    const/4 v5, 0x0

    goto :goto_1e

    :goto_1f
    if-eqz v2, :cond_29

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzic;->l(Lcom/google/android/gms/measurement/internal/zzg;)V

    const/4 v3, 0x1

    invoke-virtual {v8, v2, v3}, Lcom/google/android/gms/measurement/internal/zzlj;->L(Lcom/google/android/gms/measurement/internal/zzjl;Z)V

    goto :goto_20

    :cond_29
    move-object/from16 v2, p0

    :goto_20
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzic;->l(Lcom/google/android/gms/measurement/internal/zzg;)V

    iget-object v3, v8, Lcom/google/android/gms/measurement/internal/zzje;->a:Lcom/google/android/gms/measurement/internal/zzic;

    invoke-virtual {v8, v2}, Lcom/google/android/gms/measurement/internal/zzlj;->P(Lcom/google/android/gms/measurement/internal/zzjl;)V

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzje;->g()V

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzhh;->k()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v13, "dma_consent_settings"

    const/4 v14, 0x0

    invoke-interface {v2, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzba;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v2

    iget v2, v2, Lcom/google/android/gms/measurement/internal/zzba;->a:I

    const-string v13, "google_analytics_default_allow_ad_personalization_signals"

    const/4 v14, 0x1

    invoke-virtual {v11, v13, v14}, Lcom/google/android/gms/measurement/internal/zzal;->w(Ljava/lang/String;Z)Lcom/google/android/gms/measurement/internal/zzji;

    move-result-object v13

    if-eq v13, v12, :cond_2a

    invoke-static/range {v20 .. v20}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    const-string v15, "Default ad personalization consent from Manifest"

    invoke-virtual {v4, v13, v15}, Lcom/google/android/gms/measurement/internal/zzgs;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2a
    const-string v13, "google_analytics_default_allow_ad_user_data"

    invoke-virtual {v11, v13, v14}, Lcom/google/android/gms/measurement/internal/zzal;->w(Ljava/lang/String;Z)Lcom/google/android/gms/measurement/internal/zzji;

    move-result-object v13

    if-eq v13, v12, :cond_2b

    const/16 v12, -0xa

    invoke-static {v12, v2}, Lcom/google/android/gms/measurement/internal/zzjl;->l(II)Z

    move-result v15

    if-eqz v15, :cond_2b

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzic;->l(Lcom/google/android/gms/measurement/internal/zzg;)V

    new-instance v2, Ljava/util/EnumMap;

    invoke-direct {v2, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzjk;->zzc:Lcom/google/android/gms/measurement/internal/zzjk;

    invoke-virtual {v2, v1, v13}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzba;

    const/4 v13, 0x0

    invoke-direct {v1, v2, v12, v13, v13}, Lcom/google/android/gms/measurement/internal/zzba;-><init>(Ljava/util/EnumMap;ILjava/lang/Boolean;Ljava/lang/String;)V

    invoke-virtual {v8, v1, v14}, Lcom/google/android/gms/measurement/internal/zzlj;->K(Lcom/google/android/gms/measurement/internal/zzba;Z)V

    goto :goto_21

    :cond_2b
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gms/measurement/internal/zzic;->r()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2d

    if-eqz v2, :cond_2c

    const/16 v1, 0x1e

    if-ne v2, v1, :cond_2d

    :cond_2c
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzic;->l(Lcom/google/android/gms/measurement/internal/zzg;)V

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzba;

    const/16 v12, -0xa

    const/4 v13, 0x0

    invoke-direct {v1, v13, v12, v13, v13}, Lcom/google/android/gms/measurement/internal/zzba;-><init>(Ljava/lang/Boolean;ILjava/lang/Boolean;Ljava/lang/String;)V

    const/4 v14, 0x1

    invoke-virtual {v8, v1, v14}, Lcom/google/android/gms/measurement/internal/zzlj;->K(Lcom/google/android/gms/measurement/internal/zzba;Z)V

    :cond_2d
    :goto_21
    const-string v1, "google_analytics_tcf_data_enabled"

    invoke-virtual {v11, v1}, Lcom/google/android/gms/measurement/internal/zzal;->t(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_30

    :cond_2e
    invoke-static/range {v20 .. v20}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    const-string v1, "TCF client enabled."

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgs;->a(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzic;->l(Lcom/google/android/gms/measurement/internal/zzg;)V

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzf;->g()V

    iget-object v0, v3, Lcom/google/android/gms/measurement/internal/zzic;->f:Lcom/google/android/gms/measurement/internal/zzgu;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzgu;->m:Lcom/google/android/gms/measurement/internal/zzgs;

    const-string v1, "Register tcfPrefChangeListener."

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgs;->a(Ljava/lang/String;)V

    iget-object v0, v8, Lcom/google/android/gms/measurement/internal/zzlj;->t:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    if-nez v0, :cond_2f

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzkb;

    invoke-direct {v0, v8, v3}, Lcom/google/android/gms/measurement/internal/zzkb;-><init>(Lcom/google/android/gms/measurement/internal/zzlj;Lcom/google/android/gms/measurement/internal/zzjg;)V

    iput-object v0, v8, Lcom/google/android/gms/measurement/internal/zzlj;->u:Lcom/google/android/gms/measurement/internal/zzkb;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzle;

    invoke-direct {v0, v8}, Lcom/google/android/gms/measurement/internal/zzle;-><init>(Lcom/google/android/gms/measurement/internal/zzlj;)V

    iput-object v0, v8, Lcom/google/android/gms/measurement/internal/zzlj;->t:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    :cond_2f
    iget-object v0, v3, Lcom/google/android/gms/measurement/internal/zzic;->e:Lcom/google/android/gms/measurement/internal/zzhh;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->k(Lcom/google/android/gms/measurement/internal/zzje;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhh;->l()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, v8, Lcom/google/android/gms/measurement/internal/zzlj;->t:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzic;->l(Lcom/google/android/gms/measurement/internal/zzg;)V

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzlj;->m()V

    :cond_30
    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/zzhh;->f:Lcom/google/android/gms/measurement/internal/zzhe;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhe;->a()J

    move-result-wide v1

    const-wide/16 v16, 0x0

    cmp-long v1, v1, v16

    if-nez v1, :cond_31

    invoke-static/range {v20 .. v20}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    const-string v1, "Persisting first open"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2, v1}, Lcom/google/android/gms/measurement/internal/zzgs;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/measurement/internal/zzhe;->b(J)V

    :cond_31
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzic;->l(Lcom/google/android/gms/measurement/internal/zzg;)V

    iget-object v1, v8, Lcom/google/android/gms/measurement/internal/zzlj;->q:Lcom/google/android/gms/measurement/internal/zzx;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzx;->c()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzx;->b()Z

    move-result v2

    if-eqz v2, :cond_32

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzx;->a:Lcom/google/android/gms/measurement/internal/zzic;

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzic;->e:Lcom/google/android/gms/measurement/internal/zzhh;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzic;->k(Lcom/google/android/gms/measurement/internal/zzje;)V

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzhh;->w:Lcom/google/android/gms/measurement/internal/zzhg;

    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Lcom/google/android/gms/measurement/internal/zzhg;->b(Ljava/lang/String;)V

    :cond_32
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gms/measurement/internal/zzic;->h()Z

    move-result v1

    if-nez v1, :cond_38

    invoke-virtual/range {v24 .. v24}, Lcom/google/android/gms/measurement/internal/zzic;->f()Z

    move-result v0

    if-eqz v0, :cond_37

    const-string v0, "android.permission.INTERNET"

    invoke-virtual {v10, v0}, Lcom/google/android/gms/measurement/internal/zzpp;->J(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_33

    invoke-static/range {v20 .. v20}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    const-string v0, "App is missing INTERNET permission"

    move-object/from16 v1, v25

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->a(Ljava/lang/String;)V

    goto :goto_22

    :cond_33
    move-object/from16 v1, v25

    :goto_22
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v10, v0}, Lcom/google/android/gms/measurement/internal/zzpp;->J(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    invoke-static/range {v20 .. v20}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    const-string v0, "App is missing ACCESS_NETWORK_STATE permission"

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->a(Ljava/lang/String;)V

    :cond_34
    move-object/from16 v2, v24

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzic;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->a(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->c()Z

    move-result v5

    if-nez v5, :cond_36

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzal;->j()Z

    move-result v5

    if-nez v5, :cond_36

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzpp;->b0(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_35

    invoke-static/range {v20 .. v20}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    const-string v5, "AppMeasurementReceiver not registered/enabled"

    invoke-virtual {v1, v5}, Lcom/google/android/gms/measurement/internal/zzgs;->a(Ljava/lang/String;)V

    :cond_35
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzpp;->B(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_36

    invoke-static/range {v20 .. v20}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    const-string v0, "AppMeasurementService not registered/enabled"

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->a(Ljava/lang/String;)V

    :cond_36
    invoke-static/range {v20 .. v20}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    const-string v0, "Uploading is not possible. App measurement disabled"

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->a(Ljava/lang/String;)V

    :goto_23
    move-object/from16 v1, v20

    goto/16 :goto_29

    :cond_37
    move-object/from16 v2, v24

    goto :goto_23

    :cond_38
    move-object/from16 v2, v24

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzic;->r()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->n()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3c

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzic;->r()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzje;->g()V

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzhh;->k()Landroid/content/SharedPreferences;

    move-result-object v12

    const-string v13, "gmp_app_id"

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v14, :cond_3b

    if-nez v15, :cond_3b

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->h(Ljava/lang/Object;)V

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    invoke-static/range {v20 .. v20}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    const-string v1, "Rechecking which service to use due to a GMP App Id change"

    move-object/from16 v12, v23

    invoke-virtual {v12, v1}, Lcom/google/android/gms/measurement/internal/zzgs;->a(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzje;->g()V

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzje;->g()V

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzhh;->k()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v12, "measurement_enabled"

    invoke-interface {v1, v12}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzhh;->k()Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v14, 0x1

    invoke-interface {v1, v12, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_24

    :cond_39
    const/4 v1, 0x0

    :goto_24
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzhh;->k()Landroid/content/SharedPreferences;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz v1, :cond_3a

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzje;->g()V

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzhh;->k()Landroid/content/SharedPreferences;

    move-result-object v14

    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v14, v12, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3a
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzic;->o()Lcom/google/android/gms/measurement/internal/zzgl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgl;->k()V

    iget-object v1, v2, Lcom/google/android/gms/measurement/internal/zzic;->r:Lcom/google/android/gms/measurement/internal/zznl;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznl;->o()V

    iget-object v1, v2, Lcom/google/android/gms/measurement/internal/zzic;->r:Lcom/google/android/gms/measurement/internal/zznl;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zznl;->m()V

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/measurement/internal/zzhe;->b(J)V

    move-object/from16 v0, v22

    const/4 v14, 0x0

    invoke-virtual {v0, v14}, Lcom/google/android/gms/measurement/internal/zzhg;->b(Ljava/lang/String;)V

    goto :goto_25

    :cond_3b
    move-object/from16 v0, v22

    :goto_25
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzic;->r()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzje;->g()V

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzhh;->k()Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6, v13, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_26

    :cond_3c
    move-object/from16 v0, v22

    :goto_26
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzhh;->n()Lcom/google/android/gms/measurement/internal/zzjl;

    move-result-object v1

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzjk;->zzb:Lcom/google/android/gms/measurement/internal/zzjk;

    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/zzjl;->i(Lcom/google/android/gms/measurement/internal/zzjk;)Z

    move-result v1

    if-nez v1, :cond_3d

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Lcom/google/android/gms/measurement/internal/zzhg;->b(Ljava/lang/String;)V

    :cond_3d
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzic;->l(Lcom/google/android/gms/measurement/internal/zzg;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhg;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v8, Lcom/google/android/gms/measurement/internal/zzlj;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    move-object/from16 v13, v21

    :try_start_6
    iget-object v0, v13, Lcom/google/android/gms/measurement/internal/zzic;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.google.firebase.remoteconfig.FirebaseRemoteConfig"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_6

    :cond_3e
    move-object/from16 v1, v20

    goto :goto_27

    :catch_6
    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/zzhh;->v:Lcom/google/android/gms/measurement/internal/zzhg;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzhg;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3e

    invoke-static/range {v20 .. v20}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    move-object/from16 v1, v20

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzgu;->i:Lcom/google/android/gms/measurement/internal/zzgs;

    const-string v7, "Remote config removed with active feature rollouts"

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzgs;->a(Ljava/lang/String;)V

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Lcom/google/android/gms/measurement/internal/zzhg;->b(Ljava/lang/String;)V

    :goto_27
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzic;->r()Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->n()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_42

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzic;->f()Z

    move-result v0

    iget-object v6, v9, Lcom/google/android/gms/measurement/internal/zzhh;->c:Landroid/content/SharedPreferences;

    if-nez v6, :cond_3f

    move v7, v5

    goto :goto_28

    :cond_3f
    const-string v5, "deferred_analytics_collection"

    invoke-interface {v6, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    :goto_28
    if-nez v7, :cond_40

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzal;->u()Z

    move-result v5

    if-nez v5, :cond_40

    xor-int/lit8 v5, v0, 0x1

    invoke-virtual {v9, v5}, Lcom/google/android/gms/measurement/internal/zzhh;->o(Z)V

    :cond_40
    if-eqz v0, :cond_41

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzic;->l(Lcom/google/android/gms/measurement/internal/zzg;)V

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzlj;->u()V

    :cond_41
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzic;->h:Lcom/google/android/gms/measurement/internal/zzoc;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzic;->l(Lcom/google/android/gms/measurement/internal/zzg;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzoc;->e:Lcom/google/android/gms/measurement/internal/zzob;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzob;->a()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzic;->p()Lcom/google/android/gms/measurement/internal/zznl;

    move-result-object v0

    new-instance v5, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zznl;->k(Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzic;->p()Lcom/google/android/gms/measurement/internal/zznl;

    move-result-object v0

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/zzhh;->y:Lcom/google/android/gms/measurement/internal/zzhd;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzhd;->a()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/zznl;->l(Landroid/os/Bundle;)V

    :cond_42
    :goto_29
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzaif;->a()V

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzfy;->P0:Lcom/google/android/gms/measurement/internal/zzfx;

    const/4 v13, 0x0

    invoke-virtual {v11, v13, v0}, Lcom/google/android/gms/measurement/internal/zzal;->r(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzfx;)Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzje;->g()V

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzpp;->D()J

    move-result-wide v5

    cmp-long v0, v5, v18

    if-nez v0, :cond_45

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzfy;->w0:Lcom/google/android/gms/measurement/internal/zzfx;

    invoke-virtual {v0, v13}, Lcom/google/android/gms/measurement/internal/zzfx;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v5, v0

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v7, 0x1388

    invoke-virtual {v0, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const-wide/16 v10, 0x3e8

    mul-long/2addr v5, v10

    int-to-long v10, v0

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzic;->k:Lcom/google/android/gms/common/util/DefaultClock;

    add-long/2addr v5, v10

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long/2addr v5, v10

    const-wide/16 v10, 0x1f4

    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    cmp-long v0, v5, v10

    if-lez v0, :cond_43

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzic;->m(Lcom/google/android/gms/measurement/internal/zzjf;)V

    const-string v0, "Waiting to fetch trigger URIs until some time after boot. Delay in millis"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v1, v0}, Lcom/google/android/gms/measurement/internal/zzgs;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_43
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzic;->l(Lcom/google/android/gms/measurement/internal/zzg;)V

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzf;->g()V

    iget-object v0, v8, Lcom/google/android/gms/measurement/internal/zzlj;->l:Lcom/google/android/gms/measurement/internal/zzju;

    if-nez v0, :cond_44

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzju;

    invoke-direct {v0, v8, v3}, Lcom/google/android/gms/measurement/internal/zzju;-><init>(Lcom/google/android/gms/measurement/internal/zzlj;Lcom/google/android/gms/measurement/internal/zzjg;)V

    iput-object v0, v8, Lcom/google/android/gms/measurement/internal/zzlj;->l:Lcom/google/android/gms/measurement/internal/zzju;

    :cond_44
    iget-object v0, v8, Lcom/google/android/gms/measurement/internal/zzlj;->l:Lcom/google/android/gms/measurement/internal/zzju;

    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/measurement/internal/zzaz;->b(J)V

    :cond_45
    iget-object v0, v9, Lcom/google/android/gms/measurement/internal/zzhh;->o:Lcom/google/android/gms/measurement/internal/zzhc;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzhc;->b(Z)V

    return-void

    :cond_46
    invoke-static/range {v18 .. v18}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_47
    move-object/from16 v18, v4

    invoke-static/range {v18 .. v18}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_48
    move-object/from16 v18, v4

    invoke-static/range {v18 .. v18}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_49
    move-object/from16 v18, v4

    invoke-static/range {v18 .. v18}, Lmd;->k(Ljava/lang/String;)V

    return-void
.end method
