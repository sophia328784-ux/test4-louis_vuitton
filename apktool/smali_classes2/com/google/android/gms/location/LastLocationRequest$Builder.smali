.class public final Lcom/google/android/gms/location/LastLocationRequest$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/LastLocationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final a:J

.field public final b:I

.field public final c:Z

.field public final d:Lcom/google/android/gms/internal/location/zzd;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/android/gms/location/LastLocationRequest$Builder;->a:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/location/LastLocationRequest$Builder;->b:I

    iput-boolean v0, p0, Lcom/google/android/gms/location/LastLocationRequest$Builder;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/location/LastLocationRequest$Builder;->d:Lcom/google/android/gms/internal/location/zzd;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/location/LastLocationRequest;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Lcom/google/android/gms/location/LastLocationRequest;->b:J

    iput-wide v0, p0, Lcom/google/android/gms/location/LastLocationRequest$Builder;->a:J

    iget v0, p1, Lcom/google/android/gms/location/LastLocationRequest;->c:I

    iput v0, p0, Lcom/google/android/gms/location/LastLocationRequest$Builder;->b:I

    iget-boolean v0, p1, Lcom/google/android/gms/location/LastLocationRequest;->d:Z

    iput-boolean v0, p0, Lcom/google/android/gms/location/LastLocationRequest$Builder;->c:Z

    iget-object p1, p1, Lcom/google/android/gms/location/LastLocationRequest;->e:Lcom/google/android/gms/internal/location/zzd;

    iput-object p1, p0, Lcom/google/android/gms/location/LastLocationRequest$Builder;->d:Lcom/google/android/gms/internal/location/zzd;

    return-void
.end method
