.class public final Lcom/google/android/gms/internal/gtm/zzbu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/google/android/gms/tagmanager/zzq;

.field public final d:Lcom/google/android/gms/tagmanager/zzh;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzq;Lcom/google/android/gms/tagmanager/zzh;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzbu;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzbu;->c:Lcom/google/android/gms/tagmanager/zzq;

    iput-object p3, p0, Lcom/google/android/gms/internal/gtm/zzbu;->d:Lcom/google/android/gms/tagmanager/zzh;

    iput-object p4, p0, Lcom/google/android/gms/internal/gtm/zzbu;->b:Ljava/lang/String;

    return-void
.end method
