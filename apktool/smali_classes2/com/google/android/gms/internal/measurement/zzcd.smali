.class public abstract Lcom/google/android/gms/internal/measurement/zzcd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzcc;-><init>()V

    const-string v1, ""

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/zzbw;->a:Ljava/lang/String;

    const/4 v2, 0x1

    iput-byte v2, v0, Lcom/google/android/gms/internal/measurement/zzbw;->b:B

    iput v2, v0, Lcom/google/android/gms/internal/measurement/zzbw;->c:I

    iput v2, v0, Lcom/google/android/gms/internal/measurement/zzbw;->d:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbw;->a()Lcom/google/android/gms/internal/measurement/zzcd;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzcc;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/zzbw;->a:Ljava/lang/String;

    iput-byte v2, v0, Lcom/google/android/gms/internal/measurement/zzbw;->b:B

    const/4 v3, 0x4

    iput v3, v0, Lcom/google/android/gms/internal/measurement/zzbw;->c:I

    iput v2, v0, Lcom/google/android/gms/internal/measurement/zzbw;->d:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbw;->a()Lcom/google/android/gms/internal/measurement/zzcd;

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzbw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzcc;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/measurement/zzbw;->a:Ljava/lang/String;

    iput-byte v2, v0, Lcom/google/android/gms/internal/measurement/zzbw;->b:B

    const/4 v1, 0x2

    iput v1, v0, Lcom/google/android/gms/internal/measurement/zzbw;->c:I

    iput v2, v0, Lcom/google/android/gms/internal/measurement/zzbw;->d:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzbw;->a()Lcom/google/android/gms/internal/measurement/zzcd;

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
