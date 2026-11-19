.class public Lcom/perfectcorp/perfectlib/makeupcam/video/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/perfectlib/makeupcam/video/a$f;
.implements Lcom/perfectcorp/perfectlib/makeupcam/video/a$g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/makeupcam/video/e$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/perfectlib/makeupcam/video/d;

.field public volatile b:Z

.field public volatile c:Lcom/perfectcorp/perfectlib/makeupcam/video/e$a;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/perfectcorp/perfectlib/makeupcam/video/e$a;->a:Lcom/perfectcorp/perfectlib/makeupcam/video/e$a;

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/e;->c:Lcom/perfectcorp/perfectlib/makeupcam/video/e$a;

    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/video/d;

    invoke-direct {v0, p1}, Lcom/perfectcorp/perfectlib/makeupcam/video/d;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/e;->a:Lcom/perfectcorp/perfectlib/makeupcam/video/d;

    iget-object p1, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/d;->a:Lcom/perfectcorp/perfectlib/makeupcam/video/a;

    iput-object p0, p1, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->D:Lcom/perfectcorp/perfectlib/makeupcam/video/e;

    iput-object p0, p1, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->E:Lcom/perfectcorp/perfectlib/makeupcam/video/e;

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/e;->c:Lcom/perfectcorp/perfectlib/makeupcam/video/e$a;

    invoke-interface {p0, p1, p2}, Lcom/perfectcorp/perfectlib/makeupcam/video/e$a;->a(J)V

    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "VideoCtrl"

    const-string v1, "cannotCreateMuxer"

    invoke-static {v0, v1, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/e;->c:Lcom/perfectcorp/perfectlib/makeupcam/video/e$a;

    invoke-interface {p0, p1}, Lcom/perfectcorp/perfectlib/makeupcam/video/e$a;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public final b(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "VideoCtrl"

    const-string v1, "audioIsNotInitialized"

    invoke-static {v0, v1, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/e;->c:Lcom/perfectcorp/perfectlib/makeupcam/video/e$a;

    invoke-interface {v0, p1}, Lcom/perfectcorp/perfectlib/makeupcam/video/e$a;->a(Ljava/lang/Exception;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/e;->b:Z

    return-void
.end method

.method public final c(Ljava/lang/IllegalStateException;)V
    .locals 2

    const-string v0, "VideoCtrl"

    const-string v1, "cannotGetVideoOutputBuffer"

    invoke-static {v0, v1, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/e;->c:Lcom/perfectcorp/perfectlib/makeupcam/video/e$a;

    invoke-interface {p0, p1}, Lcom/perfectcorp/perfectlib/makeupcam/video/e$a;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public final d(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "VideoCtrl"

    const-string v1, "cannotConfigureVideoEncoder"

    invoke-static {v0, v1, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/e;->c:Lcom/perfectcorp/perfectlib/makeupcam/video/e$a;

    invoke-interface {p0, p1}, Lcom/perfectcorp/perfectlib/makeupcam/video/e$a;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public final e(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "VideoCtrl"

    const-string v1, "cannotConfigureAudioEncoder"

    invoke-static {v0, v1, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/e;->c:Lcom/perfectcorp/perfectlib/makeupcam/video/e$a;

    invoke-interface {p0, p1}, Lcom/perfectcorp/perfectlib/makeupcam/video/e$a;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public final f(Ljava/lang/String;IIII)V
    .locals 1

    new-instance v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$e;

    invoke-direct {v0}, Lcom/perfectcorp/perfectlib/makeupcam/video/a$e;-><init>()V

    iput-object p1, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$e;->a:Ljava/lang/String;

    iput p2, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$e;->d:I

    iput p3, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$e;->e:I

    iput p4, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$e;->b:I

    iput p5, v0, Lcom/perfectcorp/perfectlib/makeupcam/video/a$e;->c:I

    new-instance p1, Lcom/perfectcorp/perfectlib/makeupcam/video/a$d;

    invoke-direct {p1, v0}, Lcom/perfectcorp/perfectlib/makeupcam/video/a$d;-><init>(Lcom/perfectcorp/perfectlib/makeupcam/video/a$e;)V

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/e;->a:Lcom/perfectcorp/perfectlib/makeupcam/video/d;

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/d;->c:Lcom/perfectcorp/perfectlib/makeupcam/video/a$d;

    return-void
.end method

.method public final g()Z
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/e;->a:Lcom/perfectcorp/perfectlib/makeupcam/video/d;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/d;->a:Lcom/perfectcorp/perfectlib/makeupcam/video/a;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/makeupcam/video/a;->q:Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/makeupcam/video/a$a;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
