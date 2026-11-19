.class final Lcom/google/android/gms/internal/location/zzdc;
.super Lcom/google/android/gms/internal/location/zzp;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field public final synthetic b:Lcom/google/android/gms/location/zzv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/location/zzv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/location/zzdc;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput-object p2, p0, Lcom/google/android/gms/internal/location/zzdc;->b:Lcom/google/android/gms/location/zzv;

    invoke-direct {p0}, Lcom/google/android/gms/internal/location/zzp;-><init>()V

    return-void
.end method


# virtual methods
.method public final M(Lcom/google/android/gms/internal/location/zzk;)V
    .locals 1

    iget-object p1, p1, Lcom/google/android/gms/internal/location/zzk;->b:Lcom/google/android/gms/common/api/Status;

    iget-object p0, p0, Lcom/google/android/gms/internal/location/zzdc;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lcom/google/android/gms/common/api/internal/TaskUtil;->a(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method

.method public final h0()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/location/zzdc;->b:Lcom/google/android/gms/location/zzv;

    check-cast p0, Lcom/google/android/gms/internal/location/zzdu;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/location/zzdu;->I()V

    return-void
.end method
