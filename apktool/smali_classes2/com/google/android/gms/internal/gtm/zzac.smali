.class final Lcom/google/android/gms/internal/gtm/zzac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/gtm/zzak;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzak;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzac;->zza:Lcom/google/android/gms/internal/gtm/zzak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzac;->zza:Lcom/google/android/gms/internal/gtm/zzak;

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzak;->m:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzak;->l:Lcom/google/android/gms/internal/gtm/zzbt;

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzbt;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/google/android/gms/internal/gtm/zzap;->b(Landroid/content/Context;)Lcom/google/android/gms/internal/gtm/zzap;

    sget-object p0, Lcom/google/android/gms/internal/gtm/zzce;->m:Lcom/google/android/gms/internal/gtm/zzce;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/gtm/zzce;

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzce;-><init>()V

    sput-object p0, Lcom/google/android/gms/internal/gtm/zzce;->m:Lcom/google/android/gms/internal/gtm/zzce;

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzce;->m:Lcom/google/android/gms/internal/gtm/zzce;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzce;->a()V

    :cond_1
    return-void
.end method
