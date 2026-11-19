.class public final Lcom/google/android/gms/internal/vision/zzfi$zzi;
.super Lcom/google/android/gms/internal/vision/zzjb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/vision/zzkm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/vision/zzfi$zzi$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/vision/zzjb<",
        "Lcom/google/android/gms/internal/vision/zzfi$zzi;",
        "Lcom/google/android/gms/internal/vision/zzfi$zzi$zza;",
        ">;",
        "Lcom/google/android/gms/internal/vision/zzkm;"
    }
.end annotation


# static fields
.field private static final zzg:Lcom/google/android/gms/internal/vision/zzfi$zzi;

.field private static volatile zzh:Lcom/google/android/gms/internal/vision/zzkx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/zzkx<",
            "Lcom/google/android/gms/internal/vision/zzfi$zzi;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:I

.field private zzd:Lcom/google/android/gms/internal/vision/zzfi$zzj;

.field private zze:Lcom/google/android/gms/internal/vision/zzfi$zzl;

.field private zzf:Lcom/google/android/gms/internal/vision/zzjl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/zzjl<",
            "Lcom/google/android/gms/internal/vision/zzfi$zzf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/vision/zzfi$zzi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzfi$zzi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzfi$zzi;->zzg:Lcom/google/android/gms/internal/vision/zzfi$zzi;

    const-class v1, Lcom/google/android/gms/internal/vision/zzfi$zzi;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/vision/zzjb;->l(Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzjb;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzjb;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/vision/zzlb;->e:Lcom/google/android/gms/internal/vision/zzlb;

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzfi$zzi;->zzf:Lcom/google/android/gms/internal/vision/zzjl;

    return-void
.end method

.method public static n(Lcom/google/android/gms/internal/vision/zzfi$zzi;Lcom/google/android/gms/internal/vision/zzfi$zzj;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzfi$zzi;->zzd:Lcom/google/android/gms/internal/vision/zzfi$zzj;

    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfi$zzi;->zzc:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/vision/zzfi$zzi;->zzc:I

    return-void
.end method

.method public static o(Lcom/google/android/gms/internal/vision/zzfi$zzi;Ljava/util/ArrayList;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfi$zzi;->zzf:Lcom/google/android/gms/internal/vision/zzjl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/vision/zzjl;->d0()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    shl-int/lit8 v1, v1, 0x1

    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/vision/zzjl;->e(I)Lcom/google/android/gms/internal/vision/zzjl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzfi$zzi;->zzf:Lcom/google/android/gms/internal/vision/zzjl;

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/vision/zzfi$zzi;->zzf:Lcom/google/android/gms/internal/vision/zzjl;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/vision/zzhf;->e(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static p()Lcom/google/android/gms/internal/vision/zzfi$zzi$zza;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/vision/zzfi$zzi;->zzg:Lcom/google/android/gms/internal/vision/zzfi$zzi;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/vision/zzfi$zzi;->j(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/zzjb$zzb;

    check-cast v0, Lcom/google/android/gms/internal/vision/zzfi$zzi$zza;

    return-object v0
.end method

.method public static synthetic q()Lcom/google/android/gms/internal/vision/zzfi$zzi;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/vision/zzfi$zzi;->zzg:Lcom/google/android/gms/internal/vision/zzfi$zzi;

    return-object v0
.end method


# virtual methods
.method public final j(I)Ljava/lang/Object;
    .locals 3

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
    sget-object p0, Lcom/google/android/gms/internal/vision/zzfi$zzi;->zzh:Lcom/google/android/gms/internal/vision/zzkx;

    if-nez p0, :cond_1

    const-class p1, Lcom/google/android/gms/internal/vision/zzfi$zzi;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/google/android/gms/internal/vision/zzfi$zzi;->zzh:Lcom/google/android/gms/internal/vision/zzkx;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/vision/zzjb$zza;

    sget-object v0, Lcom/google/android/gms/internal/vision/zzfi$zzi;->zzg:Lcom/google/android/gms/internal/vision/zzfi$zzi;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzjb$zza;-><init>(Lcom/google/android/gms/internal/vision/zzjb;)V

    sput-object p0, Lcom/google/android/gms/internal/vision/zzfi$zzi;->zzh:Lcom/google/android/gms/internal/vision/zzkx;

    goto :goto_0

    :catchall_0
    move-exception p0

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
    sget-object p0, Lcom/google/android/gms/internal/vision/zzfi$zzi;->zzg:Lcom/google/android/gms/internal/vision/zzfi$zzi;

    return-object p0

    :pswitch_4
    const-string p0, "zzc"

    const-string p1, "zzd"

    const-string v0, "zze"

    const-string v1, "zzf"

    const-class v2, Lcom/google/android/gms/internal/vision/zzfi$zzf;

    filled-new-array {p0, p1, v0, v1, v2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u001b"

    sget-object v0, Lcom/google/android/gms/internal/vision/zzfi$zzi;->zzg:Lcom/google/android/gms/internal/vision/zzfi$zzi;

    new-instance v1, Lcom/google/android/gms/internal/vision/zzla;

    invoke-direct {v1, v0, p1, p0}, Lcom/google/android/gms/internal/vision/zzla;-><init>(Lcom/google/android/gms/internal/vision/zzkk;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :pswitch_5
    new-instance p0, Lcom/google/android/gms/internal/vision/zzfi$zzi$zza;

    invoke-static {}, Lcom/google/android/gms/internal/vision/zzfi$zzi;->q()Lcom/google/android/gms/internal/vision/zzfi$zzi;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/zzjb$zzb;-><init>(Lcom/google/android/gms/internal/vision/zzjb;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/google/android/gms/internal/vision/zzfi$zzi;

    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfi$zzi;-><init>()V

    return-object p0

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
