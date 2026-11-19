.class public abstract Lcom/google/android/gms/internal/gtm/zzp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzo;-><init>()V

    const-string v1, ""

    iput-object v1, v0, Lcom/google/android/gms/internal/gtm/zzh;->a:Ljava/lang/String;

    const/4 v2, 0x1

    iput-byte v2, v0, Lcom/google/android/gms/internal/gtm/zzh;->b:B

    iput v2, v0, Lcom/google/android/gms/internal/gtm/zzh;->c:I

    iput v2, v0, Lcom/google/android/gms/internal/gtm/zzh;->d:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzh;->a()Lcom/google/android/gms/internal/gtm/zzp;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzo;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/gtm/zzh;->a:Ljava/lang/String;

    iput-byte v2, v0, Lcom/google/android/gms/internal/gtm/zzh;->b:B

    const/4 v3, 0x4

    iput v3, v0, Lcom/google/android/gms/internal/gtm/zzh;->c:I

    iput v2, v0, Lcom/google/android/gms/internal/gtm/zzh;->d:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzh;->a()Lcom/google/android/gms/internal/gtm/zzp;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzo;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/gtm/zzh;->a:Ljava/lang/String;

    iput-byte v2, v0, Lcom/google/android/gms/internal/gtm/zzh;->b:B

    const/4 v1, 0x2

    iput v1, v0, Lcom/google/android/gms/internal/gtm/zzh;->c:I

    iput v2, v0, Lcom/google/android/gms/internal/gtm/zzh;->d:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzh;->a()Lcom/google/android/gms/internal/gtm/zzp;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()I
.end method

.method public abstract c()I
.end method
