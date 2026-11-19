.class final Lcom/google/android/gms/internal/gtm/zzax;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzav;


# static fields
.field private static zza:Lcom/google/android/gms/internal/gtm/zzax;


# instance fields
.field private final zzb:Ljava/util/concurrent/LinkedBlockingQueue;

.field private volatile zzc:Z

.field private volatile zzd:Z

.field private volatile zze:Lcom/google/android/gms/internal/gtm/zzay;

.field private final zzf:Landroid/content/Context;

.field private final zzg:Lcom/google/android/gms/common/util/Clock;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "GAThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzax;->zzb:Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzax;->zzc:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzax;->zzd:Z

    sget-object v0, Lcom/google/android/gms/common/util/DefaultClock;->a:Lcom/google/android/gms/common/util/DefaultClock;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzax;->zzg:Lcom/google/android/gms/common/util/Clock;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzax;->zzf:Landroid/content/Context;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzax;->zzf:Landroid/content/Context;

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static bridge synthetic zzc(Lcom/google/android/gms/internal/gtm/zzax;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzax;->zzf:Landroid/content/Context;

    return-object p0
.end method

.method public static zzd(Landroid/content/Context;)Lcom/google/android/gms/internal/gtm/zzax;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzax;->zza:Lcom/google/android/gms/internal/gtm/zzax;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzax;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gtm/zzax;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzax;->zza:Lcom/google/android/gms/internal/gtm/zzax;

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzax;->zza:Lcom/google/android/gms/internal/gtm/zzax;

    return-object p0
.end method

.method public static bridge synthetic zze(Lcom/google/android/gms/internal/gtm/zzax;)Lcom/google/android/gms/internal/gtm/zzay;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzax;->zze:Lcom/google/android/gms/internal/gtm/zzay;

    return-object p0
.end method

.method public static bridge synthetic zzf(Lcom/google/android/gms/internal/gtm/zzax;Lcom/google/android/gms/internal/gtm/zzay;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzax;->zze:Lcom/google/android/gms/internal/gtm/zzay;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzax;->zzb:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/gtm/zzax;->zzc:Z

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzao;->a(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :goto_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/PrintStream;

    invoke-direct {v2, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    invoke-virtual {v2}, Ljava/io/PrintStream;->flush()V

    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    const-string v1, "Error on Google TagManager Thread: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbg;->a()V

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbg;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzax;->zzc:Z

    goto :goto_0
.end method

.method public final zza(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzax;->zzb:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzax;->zzg:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v3

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzaw;

    move-object v2, p0

    move-object v1, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/gtm/zzaw;-><init>(Lcom/google/android/gms/internal/gtm/zzax;Lcom/google/android/gms/internal/gtm/zzav;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzax;->zzb:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
