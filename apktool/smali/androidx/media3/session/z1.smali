.class public final synthetic Landroidx/media3/session/z1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/Consumer;


# instance fields
.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/media3/session/z1;->b:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Landroidx/media3/session/PlayerWrapper;

    sget v0, Landroidx/media3/session/MediaSessionStub;->p:I

    iget-wide v0, p0, Landroidx/media3/session/z1;->b:J

    invoke-virtual {p1, v0, v1}, Landroidx/media3/session/PlayerWrapper;->seekTo(J)V

    return-void
.end method
