.class public abstract Lcom/google/android/gms/common/internal/IAccountAccessor$Stub;
.super Lcom/google/android/gms/internal/common/zzb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/IAccountAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/IAccountAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# static fields
.field public static final synthetic a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.common.internal.IAccountAccessor"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/common/zzb;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final E2(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const/4 p2, 0x2

    const/4 v0, 0x0

    if-ne p1, p2, :cond_1

    invoke-interface {p0}, Lcom/google/android/gms/common/internal/IAccountAccessor;->e0()Landroid/accounts/Account;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    sget p1, Lcom/google/android/gms/internal/common/zzc;->a:I

    const/4 p1, 0x1

    if-nez p0, :cond_0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return p1

    :cond_0
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p0, p3, p1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    return p1

    :cond_1
    return v0
.end method
