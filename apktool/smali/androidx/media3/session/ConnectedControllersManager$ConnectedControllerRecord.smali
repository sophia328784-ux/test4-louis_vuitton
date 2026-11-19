.class final Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/ConnectedControllersManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConnectedControllerRecord"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Landroidx/media3/session/SequencedFutureManager;

.field public final c:Ljava/util/ArrayDeque;

.field public d:Landroidx/media3/session/SessionCommands;

.field public e:Landroidx/media3/common/Player$Commands;

.field public f:Z

.field public g:Landroidx/media3/common/Player$Commands;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroidx/media3/session/SequencedFutureManager;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroidx/media3/session/SequencedFutureManager;",
            "Landroidx/media3/session/SessionCommands;",
            "Landroidx/media3/common/Player$Commands;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->a:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->b:Landroidx/media3/session/SequencedFutureManager;

    iput-object p3, p0, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->d:Landroidx/media3/session/SessionCommands;

    iput-object p4, p0, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->e:Landroidx/media3/common/Player$Commands;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->c:Ljava/util/ArrayDeque;

    sget-object p1, Landroidx/media3/common/Player$Commands;->b:Landroidx/media3/common/Player$Commands;

    iput-object p1, p0, Landroidx/media3/session/ConnectedControllersManager$ConnectedControllerRecord;->g:Landroidx/media3/common/Player$Commands;

    return-void
.end method
