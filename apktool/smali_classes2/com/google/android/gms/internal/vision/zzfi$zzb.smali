.class public final Lcom/google/android/gms/internal/vision/zzfi$zzb;
.super Lcom/google/android/gms/internal/vision/zzjb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/vision/zzkm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/vision/zzfi$zzb$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/vision/zzjb<",
        "Lcom/google/android/gms/internal/vision/zzfi$zzb;",
        "Lcom/google/android/gms/internal/vision/zzfi$zzb$zza;",
        ">;",
        "Lcom/google/android/gms/internal/vision/zzkm;"
    }
.end annotation


# static fields
.field private static final zzd:Lcom/google/android/gms/internal/vision/zzji;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/zzji<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/internal/vision/zzgz;",
            ">;"
        }
    .end annotation
.end field

.field private static final zze:Lcom/google/android/gms/internal/vision/zzfi$zzb;

.field private static volatile zzf:Lcom/google/android/gms/internal/vision/zzkx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/vision/zzkx<",
            "Lcom/google/android/gms/internal/vision/zzfi$zzb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzc:Lcom/google/android/gms/internal/vision/zzjj;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/vision/zzfl;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzfi$zzb;->zzd:Lcom/google/android/gms/internal/vision/zzji;

    new-instance v0, Lcom/google/android/gms/internal/vision/zzfi$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzfi$zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzfi$zzb;->zze:Lcom/google/android/gms/internal/vision/zzfi$zzb;

    const-class v1, Lcom/google/android/gms/internal/vision/zzfi$zzb;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/vision/zzjb;->l(Ljava/lang/Class;Lcom/google/android/gms/internal/vision/zzjb;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzjb;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/vision/zzjb;->m()Lcom/google/android/gms/internal/vision/zzjj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/zzfi$zzb;->zzc:Lcom/google/android/gms/internal/vision/zzjj;

    return-void
.end method

.method public static synthetic n()Lcom/google/android/gms/internal/vision/zzfi$zzb;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/vision/zzfi$zzb;->zze:Lcom/google/android/gms/internal/vision/zzfi$zzb;

    return-object v0
.end method


# virtual methods
.method public final j(I)Ljava/lang/Object;
    .locals 2

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
    sget-object p0, Lcom/google/android/gms/internal/vision/zzfi$zzb;->zzf:Lcom/google/android/gms/internal/vision/zzkx;

    if-nez p0, :cond_1

    const-class p1, Lcom/google/android/gms/internal/vision/zzfi$zzb;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/google/android/gms/internal/vision/zzfi$zzb;->zzf:Lcom/google/android/gms/internal/vision/zzkx;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/vision/zzjb$zza;

    sget-object v0, Lcom/google/android/gms/internal/vision/zzfi$zzb;->zze:Lcom/google/android/gms/internal/vision/zzfi$zzb;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzjb$zza;-><init>(Lcom/google/android/gms/internal/vision/zzjb;)V

    sput-object p0, Lcom/google/android/gms/internal/vision/zzfi$zzb;->zzf:Lcom/google/android/gms/internal/vision/zzkx;

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
    sget-object p0, Lcom/google/android/gms/internal/vision/zzfi$zzb;->zze:Lcom/google/android/gms/internal/vision/zzfi$zzb;

    return-object p0

    :pswitch_4
    const-string p0, "zzc"

    sget-object p1, Lcom/google/android/gms/internal/vision/zzhb;->a:Lcom/google/android/gms/internal/vision/zzjg;

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001e"

    sget-object v0, Lcom/google/android/gms/internal/vision/zzfi$zzb;->zze:Lcom/google/android/gms/internal/vision/zzfi$zzb;

    new-instance v1, Lcom/google/android/gms/internal/vision/zzla;

    invoke-direct {v1, v0, p1, p0}, Lcom/google/android/gms/internal/vision/zzla;-><init>(Lcom/google/android/gms/internal/vision/zzkk;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :pswitch_5
    new-instance p0, Lcom/google/android/gms/internal/vision/zzfi$zzb$zza;

    invoke-static {}, Lcom/google/android/gms/internal/vision/zzfi$zzb;->n()Lcom/google/android/gms/internal/vision/zzfi$zzb;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/vision/zzjb$zzb;-><init>(Lcom/google/android/gms/internal/vision/zzjb;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/google/android/gms/internal/vision/zzfi$zzb;

    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzfi$zzb;-><init>()V

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
