.class public final Lcom/google/android/gms/internal/fido/zzia;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/fido/zzbp;


# static fields
.field public static final c:Lcom/google/android/gms/internal/fido/zzia;


# instance fields
.field public final b:Lcom/google/android/gms/internal/fido/zzbp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/fido/zzia;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fido/zzia;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/fido/zzia;->c:Lcom/google/android/gms/internal/fido/zzia;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/fido/zzic;

    invoke-direct {v0}, Lcom/google/android/gms/internal/fido/zzic;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/fido/zzbs;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/fido/zzbs;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/fido/zzia;->b:Lcom/google/android/gms/internal/fido/zzbp;

    return-void
.end method

.method public static a()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/fido/zzia;->c:Lcom/google/android/gms/internal/fido/zzia;

    iget-object v0, v0, Lcom/google/android/gms/internal/fido/zzia;->b:Lcom/google/android/gms/internal/fido/zzbp;

    check-cast v0, Lcom/google/android/gms/internal/fido/zzbs;

    iget-object v0, v0, Lcom/google/android/gms/internal/fido/zzbs;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/fido/zzib;

    invoke-interface {v0}, Lcom/google/android/gms/internal/fido/zzib;->d0()Z

    const/4 v0, 0x0

    throw v0
.end method
