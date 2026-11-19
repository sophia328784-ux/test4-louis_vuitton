.class final Lcom/google/android/gms/internal/location/zzdm;
.super Lcom/google/android/gms/internal/location/zzp;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/location/zzdm;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0}, Lcom/google/android/gms/internal/location/zzp;-><init>()V

    return-void
.end method


# virtual methods
.method public final M(Lcom/google/android/gms/internal/location/zzk;)V
    .locals 1

    iget-object p1, p1, Lcom/google/android/gms/internal/location/zzk;->b:Lcom/google/android/gms/common/api/Status;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/google/android/gms/internal/location/zzdm;->a:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {p1, v0, p0}, Lcom/google/android/gms/common/api/internal/TaskUtil;->a(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method

.method public final h0()V
    .locals 0

    return-void
.end method
