.class public Lcom/sightcall/universal/internal/ui/CallOverlay$Coordinates;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/internal/ui/CallOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Coordinates"
.end annotation


# instance fields
.field private final margin:Z

.field private final percentX:F

.field private final percentY:F

.field final synthetic this$0:Lcom/sightcall/universal/internal/ui/CallOverlay;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/internal/ui/CallOverlay;FFZ)V
    .locals 0

    iput-object p1, p0, Lcom/sightcall/universal/internal/ui/CallOverlay$Coordinates;->this$0:Lcom/sightcall/universal/internal/ui/CallOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/sightcall/universal/internal/ui/CallOverlay$Coordinates;->percentX:F

    iput p3, p0, Lcom/sightcall/universal/internal/ui/CallOverlay$Coordinates;->percentY:F

    iput-boolean p4, p0, Lcom/sightcall/universal/internal/ui/CallOverlay$Coordinates;->margin:Z

    return-void
.end method

.method public static bridge synthetic a(Lcom/sightcall/universal/internal/ui/CallOverlay$Coordinates;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay$Coordinates;->margin:Z

    return p0
.end method

.method public static bridge synthetic b(Lcom/sightcall/universal/internal/ui/CallOverlay$Coordinates;)F
    .locals 0

    iget p0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay$Coordinates;->percentX:F

    return p0
.end method

.method public static bridge synthetic c(Lcom/sightcall/universal/internal/ui/CallOverlay$Coordinates;)F
    .locals 0

    iget p0, p0, Lcom/sightcall/universal/internal/ui/CallOverlay$Coordinates;->percentY:F

    return p0
.end method
