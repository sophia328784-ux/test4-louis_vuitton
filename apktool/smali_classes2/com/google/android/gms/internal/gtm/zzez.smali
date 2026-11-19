.class public final Lcom/google/android/gms/internal/gtm/zzez;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzdi;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs a(Lcom/google/android/gms/internal/gtm/zzbv;[Lcom/google/android/gms/internal/gtm/zzkk;)Lcom/google/android/gms/internal/gtm/zzkk;
    .locals 1

    const/4 p0, 0x0

    const/4 p1, 0x1

    if-eqz p2, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, p0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    array-length p2, p2

    if-nez p2, :cond_1

    move p0, p1

    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    sget-object p0, Lcom/google/android/gms/internal/gtm/zzko;->e:Lcom/google/android/gms/internal/gtm/zzko;

    return-object p0
.end method
