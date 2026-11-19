.class public abstract Lcom/google/android/gms/internal/gtm/zziw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Lcom/google/android/gms/internal/gtm/zzjf;

.field public final c:Lcom/google/android/gms/internal/gtm/zzjb;

.field public final d:Lcom/google/android/gms/common/util/Clock;

.field public final e:Lcom/google/android/gms/internal/gtm/zzam;


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/gtm/zzjf;Lcom/google/android/gms/internal/gtm/zzjb;Lcom/google/android/gms/internal/gtm/zzam;Lcom/google/android/gms/common/util/Clock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->h(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zziw;->b:Lcom/google/android/gms/internal/gtm/zzjf;

    iget-object p2, p2, Lcom/google/android/gms/internal/gtm/zzjf;->a:Lcom/google/android/gms/internal/gtm/zzit;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->h(Ljava/lang/Object;)V

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zziw;->a:I

    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->h(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/gtm/zziw;->c:Lcom/google/android/gms/internal/gtm/zzjb;

    invoke-static {p5}, Lcom/google/android/gms/common/internal/Preconditions;->h(Ljava/lang/Object;)V

    iput-object p5, p0, Lcom/google/android/gms/internal/gtm/zziw;->d:Lcom/google/android/gms/common/util/Clock;

    iput-object p4, p0, Lcom/google/android/gms/internal/gtm/zziw;->e:Lcom/google/android/gms/internal/gtm/zzam;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/google/android/gms/internal/gtm/zzjh;)V
.end method

.method public final b(II)V
    .locals 13

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zziw;->e:Lcom/google/android/gms/internal/gtm/zzam;

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzam;->b()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "FORBIDDEN_COUNT"

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v5, "SUCCESSFUL_COUNT"

    invoke-interface {p1, v5, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    cmp-long v8, v3, v1

    const-wide/16 v9, 0xa

    if-nez v8, :cond_0

    const-wide/16 v3, 0x3

    goto :goto_0

    :cond_0
    const-wide/16 v11, 0x1

    add-long/2addr v3, v11

    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :goto_0
    sub-long/2addr v9, v3

    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-interface {p1, v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1, v5, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zziw;->b:Lcom/google/android/gms/internal/gtm/zzjf;

    iget-object p1, p1, Lcom/google/android/gms/internal/gtm/zzjf;->a:Lcom/google/android/gms/internal/gtm/zzit;

    iget-object p1, p1, Lcom/google/android/gms/internal/gtm/zzit;->a:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    new-instance p1, Lcom/google/android/gms/internal/gtm/zzjh;

    sget-object v0, Lcom/google/android/gms/common/api/Status;->h:Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x0

    invoke-direct {p1, v0, p2, v1, v1}, Lcom/google/android/gms/internal/gtm/zzjh;-><init>(Lcom/google/android/gms/common/api/Status;ILcom/google/android/gms/internal/gtm/zzjg;Lcom/google/android/gms/internal/gtm/zzkd;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gtm/zziw;->a(Lcom/google/android/gms/internal/gtm/zzjh;)V

    return-void
.end method

.method public final c([B)V
    .locals 14

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zziw;->c:Lcom/google/android/gms/internal/gtm/zzjb;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/gtm/zzjb;->a([B)Lcom/google/android/gms/internal/gtm/zzjh;

    move-result-object v1
    :try_end_0
    .catch Lcom/google/android/gms/internal/gtm/zziu; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V

    move-object v1, v0

    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/gtm/zziw;->a:I

    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zziw;->e:Lcom/google/android/gms/internal/gtm/zzam;

    if-eqz v3, :cond_0

    if-nez v2, :cond_0

    invoke-virtual {v3}, Lcom/google/android/gms/internal/gtm/zzam;->b()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "SUCCESSFUL_COUNT"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    const-string v9, "FORBIDDEN_COUNT"

    invoke-interface {v3, v9, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    const-wide/16 v12, 0x1

    add-long/2addr v7, v12

    const-wide/16 v12, 0xa

    invoke-static {v12, v13, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    sub-long/2addr v12, v7

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3, v9, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    if-eqz v1, :cond_1

    iget-object v3, v1, Lcom/google/android/gms/internal/gtm/zzjh;->b:Lcom/google/android/gms/common/api/Status;

    sget-object v4, Lcom/google/android/gms/common/api/Status;->f:Lcom/google/android/gms/common/api/Status;

    if-ne v3, v4, :cond_1

    iget-object v0, v1, Lcom/google/android/gms/internal/gtm/zzjh;->d:Lcom/google/android/gms/internal/gtm/zzjg;

    iget-object v8, v0, Lcom/google/android/gms/internal/gtm/zzjg;->d:Lcom/google/android/gms/internal/gtm/zzju;

    new-instance v5, Lcom/google/android/gms/internal/gtm/zzjg;

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zziw;->b:Lcom/google/android/gms/internal/gtm/zzjf;

    iget-object v6, v0, Lcom/google/android/gms/internal/gtm/zzjf;->a:Lcom/google/android/gms/internal/gtm/zzit;

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zziw;->d:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v9

    move-object v7, p1

    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/internal/gtm/zzjg;-><init>(Lcom/google/android/gms/internal/gtm/zzit;[BLcom/google/android/gms/internal/gtm/zzju;J)V

    iget-object p1, v1, Lcom/google/android/gms/internal/gtm/zzjh;->e:Lcom/google/android/gms/internal/gtm/zzkd;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzjh;

    invoke-direct {v0, v4, v2, v5, p1}, Lcom/google/android/gms/internal/gtm/zzjh;-><init>(Lcom/google/android/gms/common/api/Status;ILcom/google/android/gms/internal/gtm/zzjg;Lcom/google/android/gms/internal/gtm/zzkd;)V

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzjh;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->h:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p1, v1, v2, v0, v0}, Lcom/google/android/gms/internal/gtm/zzjh;-><init>(Lcom/google/android/gms/common/api/Status;ILcom/google/android/gms/internal/gtm/zzjg;Lcom/google/android/gms/internal/gtm/zzkd;)V

    move-object v0, p1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zziw;->a(Lcom/google/android/gms/internal/gtm/zzjh;)V

    return-void
.end method
