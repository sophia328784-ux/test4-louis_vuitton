.class public final Landroidx/media3/session/MediaSession$ConnectionResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConnectionResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;
    }
.end annotation


# static fields
.field public static final e:Landroidx/media3/session/SessionCommands;

.field public static final f:Landroidx/media3/common/Player$Commands;


# instance fields
.field public final a:Landroidx/media3/session/SessionCommands;

.field public final b:Landroidx/media3/common/Player$Commands;

.field public final c:Lcom/google/common/collect/ImmutableList;

.field public final d:Lcom/google/common/collect/ImmutableList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/media3/session/SessionCommands$Builder;

    invoke-direct {v0}, Landroidx/media3/session/SessionCommands$Builder;-><init>()V

    sget-object v1, Landroidx/media3/session/SessionCommand;->d:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Landroidx/media3/session/SessionCommands$Builder;->a(Ljava/util/List;)V

    new-instance v2, Landroidx/media3/session/SessionCommands;

    iget-object v0, v0, Landroidx/media3/session/SessionCommands$Builder;->a:Ljava/util/HashSet;

    invoke-direct {v2, v0}, Landroidx/media3/session/SessionCommands;-><init>(Ljava/util/HashSet;)V

    sput-object v2, Landroidx/media3/session/MediaSession$ConnectionResult;->e:Landroidx/media3/session/SessionCommands;

    new-instance v0, Landroidx/media3/session/SessionCommands$Builder;

    invoke-direct {v0}, Landroidx/media3/session/SessionCommands$Builder;-><init>()V

    sget-object v2, Landroidx/media3/session/SessionCommand;->e:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v2}, Landroidx/media3/session/SessionCommands$Builder;->a(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroidx/media3/session/SessionCommands$Builder;->a(Ljava/util/List;)V

    new-instance v1, Landroidx/media3/session/SessionCommands;

    iget-object v0, v0, Landroidx/media3/session/SessionCommands$Builder;->a:Ljava/util/HashSet;

    invoke-direct {v1, v0}, Landroidx/media3/session/SessionCommands;-><init>(Ljava/util/HashSet;)V

    new-instance v0, Landroidx/media3/common/Player$Commands$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Player$Commands$Builder;-><init>()V

    iget-object v1, v0, Landroidx/media3/common/Player$Commands$Builder;->a:Landroidx/media3/common/FlagSet$Builder;

    sget-object v2, Landroidx/media3/common/Player$Commands$Builder;->b:[I

    invoke-virtual {v1, v2}, Landroidx/media3/common/FlagSet$Builder;->b([I)V

    invoke-virtual {v0}, Landroidx/media3/common/Player$Commands$Builder;->c()Landroidx/media3/common/Player$Commands;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/MediaSession$ConnectionResult;->f:Landroidx/media3/common/Player$Commands;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/MediaSession$ConnectionResult;->a:Landroidx/media3/session/SessionCommands;

    iput-object p2, p0, Landroidx/media3/session/MediaSession$ConnectionResult;->b:Landroidx/media3/common/Player$Commands;

    iput-object p3, p0, Landroidx/media3/session/MediaSession$ConnectionResult;->c:Lcom/google/common/collect/ImmutableList;

    iput-object p4, p0, Landroidx/media3/session/MediaSession$ConnectionResult;->d:Lcom/google/common/collect/ImmutableList;

    return-void
.end method
