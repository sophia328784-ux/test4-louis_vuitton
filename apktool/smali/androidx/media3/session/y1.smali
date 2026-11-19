.class public final synthetic Landroidx/media3/session/y1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/Consumer;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/media3/session/y1;->b:Z

    iput p2, p0, Landroidx/media3/session/y1;->c:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Landroidx/media3/session/PlayerWrapper;

    sget v0, Landroidx/media3/session/MediaSessionStub;->p:I

    iget v0, p0, Landroidx/media3/session/y1;->c:I

    iget-boolean p0, p0, Landroidx/media3/session/y1;->b:Z

    invoke-virtual {p1, v0, p0}, Landroidx/media3/session/PlayerWrapper;->G(IZ)V

    return-void
.end method
