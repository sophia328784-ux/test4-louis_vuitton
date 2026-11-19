.class public abstract Lcom/google/android/gms/common/internal/zaj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Landroid/content/Intent;Lcom/google/android/gms/common/api/GoogleApiActivity;)Lcom/google/android/gms/common/internal/zaj;
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/zag;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/internal/zag;-><init>(Landroid/content/Intent;Lcom/google/android/gms/common/api/GoogleApiActivity;)V

    return-object v0
.end method

.method public static c(Landroid/content/Intent;Lcom/google/android/gms/common/api/internal/LifecycleFragment;)Lcom/google/android/gms/common/internal/zaj;
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/zai;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/internal/zai;-><init>(Landroid/content/Intent;Lcom/google/android/gms/common/api/internal/LifecycleFragment;)V

    return-object v0
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zaj;->a()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    :try_start_1
    sget-object p0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string p2, "generic"

    invoke-virtual {p0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :goto_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    throw p0
.end method
