.class public final Landroidx/media3/session/CustomCommandPendingIntentBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/Class;

.field public final c:Landroidx/media3/session/SessionCommand;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;Landroidx/media3/session/SessionCommand;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/media3/session/MediaSessionService;",
            ">;",
            "Landroidx/media3/session/SessionCommand;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p3, Landroidx/media3/session/SessionCommand;->a:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->g(Z)V

    iput-object p1, p0, Landroidx/media3/session/CustomCommandPendingIntentBuilder;->a:Landroid/content/Context;

    iput-object p2, p0, Landroidx/media3/session/CustomCommandPendingIntentBuilder;->b:Ljava/lang/Class;

    iput-object p3, p0, Landroidx/media3/session/CustomCommandPendingIntentBuilder;->c:Landroidx/media3/session/SessionCommand;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/session/CustomCommandPendingIntentBuilder;->d:Ljava/lang/String;

    return-void
.end method
