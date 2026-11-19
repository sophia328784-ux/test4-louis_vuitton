.class public Lcom/google/android/filament/Box;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[F

.field public final b:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 50
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/android/filament/Box;->a:[F

    .line 51
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/filament/Box;->b:[F

    return-void
.end method

.method public constructor <init>(FFFFFF)V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 41
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/android/filament/Box;->a:[F

    .line 42
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/filament/Box;->b:[F

    const/4 p0, 0x0

    .line 43
    aput p1, v1, p0

    const/4 p1, 0x1

    .line 44
    aput p2, v1, p1

    const/4 p2, 0x2

    .line 45
    aput p3, v1, p2

    .line 46
    aput p4, v0, p0

    .line 47
    aput p5, v0, p1

    .line 48
    aput p6, v0, p2

    return-void
.end method

.method public constructor <init>([F[F)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/android/filament/Box;->a:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/filament/Box;->b:[F

    const/4 p0, 0x0

    aget v2, p1, p0

    aput v2, v1, p0

    const/4 v2, 0x1

    aget v3, p1, v2

    aput v3, v1, v2

    const/4 v3, 0x2

    aget p1, p1, v3

    aput p1, v1, v3

    aget p1, p2, p0

    aput p1, v0, p0

    aget p0, p2, v2

    aput p0, v0, v2

    aget p0, p2, v3

    aput p0, v0, v3

    return-void
.end method
