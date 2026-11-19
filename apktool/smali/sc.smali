.class public final synthetic Lsc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/foundation/MarqueeSpacing;
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(FI)V
    .locals 0

    iput p2, p0, Lsc;->b:I

    iput p1, p0, Lsc;->c:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Landroidx/compose/ui/unit/Density;I)I
    .locals 0

    iget p0, p0, Lsc;->c:F

    invoke-interface {p1, p0}, Landroidx/compose/ui/unit/Density;->B0(F)I

    move-result p0

    return p0
.end method

.method public invoke(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lsc;->b:I

    iget p0, p0, Lsc;->c:F

    check-cast p1, Landroidx/media3/common/Player$Listener;

    packed-switch v0, :pswitch_data_0

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->h0(F)V

    return-void

    :pswitch_0
    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->h0(F)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
