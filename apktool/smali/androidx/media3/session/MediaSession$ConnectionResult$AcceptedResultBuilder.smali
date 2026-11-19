.class public Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaSession$ConnectionResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AcceptedResultBuilder"
.end annotation


# instance fields
.field public a:Landroidx/media3/session/SessionCommands;

.field public b:Landroidx/media3/common/Player$Commands;

.field public c:Lcom/google/common/collect/ImmutableList;

.field public d:Lcom/google/common/collect/ImmutableList;


# direct methods
.method public constructor <init>(Landroidx/media3/session/MediaSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Landroidx/media3/session/MediaSession$ConnectionResult;->f:Landroidx/media3/common/Player$Commands;

    iput-object p1, p0, Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;->b:Landroidx/media3/common/Player$Commands;

    sget-object p1, Landroidx/media3/session/MediaSession$ConnectionResult;->e:Landroidx/media3/session/SessionCommands;

    iput-object p1, p0, Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;->a:Landroidx/media3/session/SessionCommands;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/media3/session/MediaSession$ConnectionResult;
    .locals 4

    new-instance v0, Landroidx/media3/session/MediaSession$ConnectionResult;

    iget-object v1, p0, Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;->a:Landroidx/media3/session/SessionCommands;

    iget-object v2, p0, Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;->b:Landroidx/media3/common/Player$Commands;

    iget-object v3, p0, Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;->c:Lcom/google/common/collect/ImmutableList;

    iget-object p0, p0, Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;->d:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v0, v1, v2, v3, p0}, Landroidx/media3/session/MediaSession$ConnectionResult;-><init>(Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;)V

    return-object v0
.end method
