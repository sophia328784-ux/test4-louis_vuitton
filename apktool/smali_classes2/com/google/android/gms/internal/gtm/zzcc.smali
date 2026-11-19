.class final Lcom/google/android/gms/internal/gtm/zzcc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzca;


# instance fields
.field public final a:Lcom/google/android/gms/internal/gtm/zzw;

.field public final synthetic b:Lcom/google/android/gms/internal/gtm/zzce;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/gtm/zzce;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzcc;->b:Lcom/google/android/gms/internal/gtm/zzce;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzw;

    iget-object p1, p1, Lcom/google/android/gms/internal/gtm/zzce;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzcb;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/gtm/zzcb;-><init>(Lcom/google/android/gms/internal/gtm/zzcc;)V

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/gtm/zzw;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcc;->a:Lcom/google/android/gms/internal/gtm/zzw;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzcc;->a:Lcom/google/android/gms/internal/gtm/zzw;

    const/4 v0, 0x1

    sget-object v1, Lcom/google/android/gms/internal/gtm/zzce;->l:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v1, 0x1b7740

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
