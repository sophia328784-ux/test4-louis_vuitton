.class public final Lcom/google/android/gms/internal/clearcut/zzao;
.super Ljava/lang/Object;


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1

    .line 10
    const-string v0, ""

    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/gms/internal/clearcut/zzao;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/zzao;->a:Landroid/net/Uri;

    iput-object p2, p0, Lcom/google/android/gms/internal/clearcut/zzao;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/clearcut/zzao;->c:Ljava/lang/String;

    return-void
.end method
