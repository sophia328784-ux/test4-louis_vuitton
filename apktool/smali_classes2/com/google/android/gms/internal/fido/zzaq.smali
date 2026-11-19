.class public final Lcom/google/android/gms/internal/fido/zzaq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/fido/zzbp;


# static fields
.field public static final synthetic c:I


# instance fields
.field public final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/fido/zzaj;

    sget-object v1, Lcom/google/android/gms/internal/fido/zzap;->a:Lcom/google/android/gms/internal/fido/zzap;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/fido/zzaj;-><init>(Lcom/google/android/gms/internal/fido/zzap;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/fido/zzaq;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    sget p0, Lcom/google/android/gms/internal/fido/zzae;->a:I

    sget-object p0, Lcom/google/android/gms/internal/fido/zzah;->b:Lcom/google/android/gms/internal/fido/zzag;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/fido/zzag;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    sput-object p0, Lcom/google/android/gms/internal/fido/zzah;->b:Lcom/google/android/gms/internal/fido/zzag;

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/fido/zzah;->a:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Must call PhenotypeContext.setContext() first"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
