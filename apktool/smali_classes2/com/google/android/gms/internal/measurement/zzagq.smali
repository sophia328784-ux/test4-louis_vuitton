.class final synthetic Lcom/google/android/gms/internal/measurement/zzagq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Function;


# static fields
.field public static final synthetic b:Lcom/google/android/gms/internal/measurement/zzagq;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzagq;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzagq;->b:Lcom/google/android/gms/internal/measurement/zzagq;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/content/Context;

    sget-object p0, Lcom/google/android/gms/internal/measurement/zzagr;->c:Ljava/lang/String;

    if-nez p0, :cond_1

    const-class v0, Lcom/google/android/gms/internal/measurement/zzagr;

    monitor-enter v0

    :try_start_0
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzagr;->c:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, "com.google.android.gms.measurement"

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/measurement/zzlg;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/internal/measurement/zzagr;->c:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-object p0
.end method
