.class final Lcom/google/android/gms/internal/vision/zzhs;
.super Lcom/google/android/gms/internal/vision/zzhu;
.source "SourceFile"


# instance fields
.field public b:I

.field public final c:I

.field public final synthetic d:Lcom/google/android/gms/internal/vision/zzht;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/vision/zzht;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzhs;->d:Lcom/google/android/gms/internal/vision/zzht;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/vision/zzhs;->b:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzht;->f()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/vision/zzhs;->c:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/vision/zzhs;->b:I

    iget p0, p0, Lcom/google/android/gms/internal/vision/zzhs;->c:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
