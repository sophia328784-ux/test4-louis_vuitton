.class Lcom/perfectcorp/perfectlib/MakeupCam$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/perfectcorp/perfectlib/makeupcam/video/e$a;


# instance fields
.field public synthetic b:Lcom/perfectcorp/perfectlib/MakeupCam$VideoCallback;


# virtual methods
.method public final a(J)V
    .locals 2

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCam$3;->b:Lcom/perfectcorp/perfectlib/MakeupCam$VideoCallback;

    new-instance v0, Lxb;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lxb;-><init>(Ljava/lang/Object;JI)V

    invoke-static {v0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 2

    .line 12
    iget-object p0, p0, Lcom/perfectcorp/perfectlib/MakeupCam$3;->b:Lcom/perfectcorp/perfectlib/MakeupCam$VideoCallback;

    new-instance v0, Laa0;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, v1}, Laa0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v0}, Lcom/perfectcorp/common/PfCommons;->c(Ljava/lang/Runnable;)V

    return-void
.end method
