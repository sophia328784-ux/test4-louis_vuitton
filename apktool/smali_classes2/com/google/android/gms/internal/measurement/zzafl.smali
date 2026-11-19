.class final Lcom/google/android/gms/internal/measurement/zzafl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/google/android/gms/internal/measurement/zzafl;


# instance fields
.field public final a:Lcom/google/android/gms/internal/measurement/zzaet;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzafl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzafl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzafl;->c:Lcom/google/android/gms/internal/measurement/zzafl;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzafl;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzaet;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzaet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzafl;->a:Lcom/google/android/gms/internal/measurement/zzaet;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzafp;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzafl;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzafl;->a:Lcom/google/android/gms/internal/measurement/zzaet;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzafq;->a:Lcom/google/android/gms/internal/measurement/zzagb;

    const-class v1, Lcom/google/android/gms/internal/measurement/zzadu;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Lcom/google/android/gms/internal/measurement/zzacf;->a:I

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/measurement/zzaet;->a:Lcom/google/android/gms/internal/measurement/zzaes;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzaes;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/measurement/zzaez;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzaez;->d0()Z

    move-result v1

    if-nez v1, :cond_2

    sget v1, Lcom/google/android/gms/internal/measurement/zzacf;->a:I

    sget v1, Lcom/google/android/gms/internal/measurement/zzafi;->a:I

    sget v1, Lcom/google/android/gms/internal/measurement/zzaep;->a:I

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzafq;->a:Lcom/google/android/gms/internal/measurement/zzagb;

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzaez;->f0()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzadi;->a:Lcom/google/android/gms/internal/measurement/zzadh;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    sget v3, Lcom/google/android/gms/internal/measurement/zzaey;->a:I

    invoke-static {p0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzaff;->z(Lcom/google/android/gms/internal/measurement/zzaez;Lcom/google/android/gms/internal/measurement/zzafz;Lcom/google/android/gms/internal/measurement/zzadh;)Lcom/google/android/gms/internal/measurement/zzaff;

    move-result-object p0

    goto :goto_1

    :cond_2
    sget v1, Lcom/google/android/gms/internal/measurement/zzacf;->a:I

    sget-object v1, Lcom/google/android/gms/internal/measurement/zzafq;->a:Lcom/google/android/gms/internal/measurement/zzagb;

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzadi;->a:Lcom/google/android/gms/internal/measurement/zzadh;

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzaez;->e0()Lcom/google/android/gms/internal/measurement/zzafc;

    move-result-object p0

    new-instance v2, Lcom/google/android/gms/internal/measurement/zzafg;

    invoke-direct {v2, v1, p0}, Lcom/google/android/gms/internal/measurement/zzafg;-><init>(Lcom/google/android/gms/internal/measurement/zzafz;Lcom/google/android/gms/internal/measurement/zzafc;)V

    move-object p0, v2

    :goto_1
    invoke-virtual {v0, p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzafp;

    if-eqz p1, :cond_3

    return-object p1

    :cond_3
    return-object p0

    :cond_4
    check-cast v1, Lcom/google/android/gms/internal/measurement/zzafp;

    return-object v1
.end method
