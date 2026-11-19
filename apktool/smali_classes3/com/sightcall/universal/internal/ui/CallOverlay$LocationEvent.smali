.class Lcom/sightcall/universal/internal/ui/CallOverlay$LocationEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/ui/CallOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocationEvent"
.end annotation


# instance fields
.field private final x:F

.field private final y:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sightcall/universal/internal/ui/CallOverlay$LocationEvent;->x:F

    iput p2, p0, Lcom/sightcall/universal/internal/ui/CallOverlay$LocationEvent;->y:F

    return-void
.end method

.method public static bridge synthetic a(Lcom/sightcall/universal/internal/ui/CallOverlay$LocationEvent;)F
    .locals 0

    iget p0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay$LocationEvent;->x:F

    return p0
.end method

.method public static bridge synthetic b(Lcom/sightcall/universal/internal/ui/CallOverlay$LocationEvent;)F
    .locals 0

    iget p0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay$LocationEvent;->y:F

    return p0
.end method
