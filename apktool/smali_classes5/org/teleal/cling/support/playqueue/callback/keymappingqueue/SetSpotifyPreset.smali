.class public abstract Lorg/teleal/cling/support/playqueue/callback/keymappingqueue/SetSpotifyPreset;
.super Lorg/teleal/cling/controlpoint/ActionCallback;
.source "SourceFile"


# instance fields
.field public keyIndex:I


# direct methods
.method public constructor <init>(Lorg/teleal/cling/model/action/ActionInvocation;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lorg/teleal/cling/controlpoint/ActionCallback;-><init>(Lorg/teleal/cling/model/action/ActionInvocation;)V

    const/4 p1, 0x0

    .line 31
    iput p1, p0, Lorg/teleal/cling/support/playqueue/callback/keymappingqueue/SetSpotifyPreset;->keyIndex:I

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/controlpoint/ControlPoint;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lorg/teleal/cling/controlpoint/ActionCallback;-><init>(Lorg/teleal/cling/model/action/ActionInvocation;Lorg/teleal/cling/controlpoint/ControlPoint;)V

    const/4 p1, 0x0

    .line 33
    iput p1, p0, Lorg/teleal/cling/support/playqueue/callback/keymappingqueue/SetSpotifyPreset;->keyIndex:I

    return-void
.end method

.method public constructor <init>(Lorg/teleal/cling/model/meta/Service;I)V
    .locals 2

    new-instance v0, Lorg/teleal/cling/model/action/ActionInvocation;

    const-string v1, "SetSpotifyPreset"

    invoke-virtual {p1, v1}, Lorg/teleal/cling/model/meta/Service;->a(Ljava/lang/String;)Lorg/teleal/cling/model/meta/Action;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/teleal/cling/model/action/ActionInvocation;-><init>(Lorg/teleal/cling/model/meta/Action;)V

    invoke-direct {p0, v0}, Lorg/teleal/cling/support/playqueue/callback/keymappingqueue/SetSpotifyPreset;-><init>(Lorg/teleal/cling/model/action/ActionInvocation;)V

    invoke-virtual {p0}, Lorg/teleal/cling/controlpoint/ActionCallback;->getActionInvocation()Lorg/teleal/cling/model/action/ActionInvocation;

    move-result-object p0

    new-instance p1, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;

    int-to-long v0, p2

    invoke-direct {p1, v0, v1}, Lorg/teleal/cling/model/types/UnsignedIntegerFourBytes;-><init>(J)V

    const-string p2, "KeyIndex"

    invoke-virtual {p0, p1, p2}, Lorg/teleal/cling/model/action/ActionInvocation;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
