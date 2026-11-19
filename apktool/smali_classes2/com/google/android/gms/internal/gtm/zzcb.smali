.class final Lcom/google/android/gms/internal/gtm/zzcb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/internal/gtm/zzcc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzcc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzcb;->b:Lcom/google/android/gms/internal/gtm/zzcc;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzce;->l:Ljava/lang/Object;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzcb;->b:Lcom/google/android/gms/internal/gtm/zzcc;

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzcc;->b:Lcom/google/android/gms/internal/gtm/zzce;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzce;->a()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzce;->c()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzcc;->a()V

    :cond_1
    :goto_0
    return v1
.end method
