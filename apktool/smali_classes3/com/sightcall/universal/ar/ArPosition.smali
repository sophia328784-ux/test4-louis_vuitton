.class public final Lcom/sightcall/universal/ar/ArPosition;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final x:F
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "x"
    .end annotation
.end field

.field public final y:F
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "y"
    .end annotation
.end field

.field public final z:F
    .annotation runtime Lcom/squareup/moshi/Json;
        name = "z"
    .end annotation
.end field


# direct methods
.method public constructor <init>(FFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sightcall/universal/ar/ArPosition;->x:F

    iput p2, p0, Lcom/sightcall/universal/ar/ArPosition;->y:F

    iput p3, p0, Lcom/sightcall/universal/ar/ArPosition;->z:F

    return-void
.end method
