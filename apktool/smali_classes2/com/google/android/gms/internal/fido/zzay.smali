.class public final Lcom/google/android/gms/internal/fido/zzay;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    sget p1, Lcom/google/android/gms/internal/fido/zzcf;->d:I

    sget-object p1, Lcom/google/android/gms/internal/fido/zzcu;->k:Lcom/google/android/gms/internal/fido/zzcu;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/fido/zzay;-><init>(Ljava/util/Set;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Z)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/fido/zzay;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 0

    new-instance p0, Lcom/google/android/gms/internal/fido/zzaq;

    new-instance p0, Lcom/google/android/gms/internal/fido/zzaw;

    const-class p1, Ljava/lang/Long;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/fido/zzaw;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    new-instance p0, Lcom/google/android/gms/internal/fido/zzaq;

    new-instance p0, Lcom/google/android/gms/internal/fido/zzau;

    const-class p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/fido/zzau;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public final c(Z)Lcom/google/android/gms/internal/fido/zzaq;
    .locals 2

    new-instance p0, Lcom/google/android/gms/internal/fido/zzaq;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/fido/zzas;

    const-class v1, Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/fido/zzas;-><init>(Ljava/lang/Class;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/fido/zzaq;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method
