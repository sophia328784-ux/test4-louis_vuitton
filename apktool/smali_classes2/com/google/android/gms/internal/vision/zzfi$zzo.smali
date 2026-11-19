.class public final Lcom/google/android/gms/internal/vision/zzfi$zzo;
.super Lcom/google/android/gms/internal/vision/zzjb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/vision/zzkm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/vision/zzfi$zzo$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/vision/zzjb<",
        "Lcom/google/android/gms/internal/vision/zzfi$zzo;",
        "Lcom/google/android/gms/internal/vision/zzfi$zzo$zza;",
        ">;",
        "Lcom/google/android/gms/internal/vision/zzkm;"
    }
.end annotation


# static fields
.field private static final zzi:Lcom/google/android/gms/internal/vision/zzfi$zzo;

.field private static volatile zzj:Lcom/google/android/gms/internal/vision/zzkx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/zzkx<",
            "Lcom/google/android/gms/internal/vision/zzfi$zzo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:Lcom/google/android/gms/internal/vision/zzfi$zze;

.field private zze:Lcom/google/android/gms/internal/vision/zzfi$zzk;

.field private zzf:Lcom/google/android/gms/internal/vision/zzfi$zzi;

.field private zzg:I

.field private zzh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/vision/zzfi$zzo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzjb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzfi$zzo;->zzi:Lcom/google/android/gms/internal/vision/zzfi$zzo;

    const-class v1, Lcom/google/android/gms/internal/vision/zzfi$zzo;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/vision/zzjb;->l(Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzjb;)V

    return-void
.end method

.method public static n(Lcom/google/android/gms/internal/vision/zzfi$zzo;Lcom/google/android/gms/internal/vision/zzfi$zzi;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzfi$zzo;->zzf:Lcom/google/android/gms/internal/vision/zzfi$zzi;

    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfi$zzo;->zzc:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/vision/zzfi$zzo;->zzc:I

    return-void
.end method

.method public static o()Lcom/google/android/gms/internal/vision/zzfi$zzo$zza;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/vision/zzfi$zzo;->zzi:Lcom/google/android/gms/internal/vision/zzfi$zzo;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/vision/zzfi$zzo;->j(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/zzjb$zzb;

    check-cast v0, Lcom/google/android/gms/internal/vision/zzfi$zzo$zza;

    return-object v0
.end method

.method public static synthetic p()Lcom/google/android/gms/internal/vision/zzfi$zzo;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/vision/zzfi$zzo;->zzi:Lcom/google/android/gms/internal/vision/zzfi$zzo;

    return-object v0
.end method


# virtual methods
.method public final j(I)Ljava/lang/Object;
    .locals 6

    sget-object p0, Lcom/google/android/gms/internal/vision/zzfk;->a:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lx1;->i()V

    :pswitch_0
    return-object p1

    :pswitch_1
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/vision/zzfi$zzo;->zzj:Lcom/google/android/gms/internal/vision/zzkx;

    if-nez p0, :cond_1

    const-class p1, Lcom/google/android/gms/internal/vision/zzfi$zzo;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/google/android/gms/internal/vision/zzfi$zzo;->zzj:Lcom/google/android/gms/internal/vision/zzkx;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/vision/zzjb$zza;

    sget-object v0, Lcom/google/android/gms/internal/vision/zzfi$zzo;->zzi:Lcom/google/android/gms/internal/vision/zzfi$zzo;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzjb$zza;-><init>(Lcom/google/android/gms/internal/vision/zzjb;)V

    sput-object p0, Lcom/google/android/gms/internal/vision/zzfi$zzo;->zzj:Lcom/google/android/gms/internal/vision/zzkx;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    return-object p0

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-object p0

    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/vision/zzfi$zzo;->zzi:Lcom/google/android/gms/internal/vision/zzfi$zzo;

    return-object p0

    :pswitch_4
    const-string v0, "zzc"

    const-string v1, "zzd"

    const-string v2, "zze"

    const-string v3, "zzf"

    const-string v4, "zzg"

    const-string v5, "zzh"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u1009\u0002\u0004\u1004\u0003\u0005\u1007\u0004"

    sget-object v0, Lcom/google/android/gms/internal/vision/zzfi$zzo;->zzi:Lcom/google/android/gms/internal/vision/zzfi$zzo;

    new-instance v1, Lcom/google/android/gms/internal/vision/zzla;

    invoke-direct {v1, v0, p1, p0}, Lcom/google/android/gms/internal/vision/zzla;-><init>(Lcom/google/android/gms/internal/vision/zzkk;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :pswitch_5
    new-instance p0, Lcom/google/android/gms/internal/vision/zzfi$zzo$zza;

    invoke-static {}, Lcom/google/android/gms/internal/vision/zzfi$zzo;->p()Lcom/google/android/gms/internal/vision/zzfi$zzo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/zzjb$zzb;-><init>(Lcom/google/android/gms/internal/vision/zzjb;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/google/android/gms/internal/vision/zzfi$zzo;

    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzjb;-><init>()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
