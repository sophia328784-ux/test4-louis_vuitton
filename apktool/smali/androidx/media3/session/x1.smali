.class public final synthetic Landroidx/media3/session/x1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/Consumer;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/session/x1;->b:I

    iput p2, p0, Landroidx/media3/session/x1;->c:I

    iput p3, p0, Landroidx/media3/session/x1;->d:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Landroidx/media3/session/PlayerWrapper;

    sget v0, Landroidx/media3/session/MediaSessionStub;->p:I

    iget v0, p0, Landroidx/media3/session/x1;->b:I

    iget v1, p0, Landroidx/media3/session/x1;->c:I

    iget p0, p0, Landroidx/media3/session/x1;->d:I

    invoke-virtual {p1, v0, v1, p0}, Landroidx/media3/session/PlayerWrapper;->I0(III)V

    return-void
.end method
