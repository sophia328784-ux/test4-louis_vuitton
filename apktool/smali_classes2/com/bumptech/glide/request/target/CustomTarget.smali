.class public abstract Lcom/bumptech/glide/request/target/CustomTarget;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/request/target/Target;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/target/Target<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:I

.field public final c:I

.field public d:Lcom/bumptech/glide/request/Request;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/high16 v0, -0x80000000

    .line 27
    invoke-direct {p0, v0, v0}, Lcom/bumptech/glide/request/target/CustomTarget;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lcom/bumptech/glide/util/Util;->i(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/bumptech/glide/request/target/CustomTarget;->b:I

    iput p2, p0, Lcom/bumptech/glide/request/target/CustomTarget;->c:I

    return-void

    :cond_0
    const-string p0, "Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: "

    const-string v0, " and height: "

    invoke-static {p1, p2, p0, v0}, Lo60;->h(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final a()Lcom/bumptech/glide/request/Request;
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/request/target/CustomTarget;->d:Lcom/bumptech/glide/request/Request;

    return-object p0
.end method

.method public final b(Lcom/bumptech/glide/request/SingleRequest;)V
    .locals 0

    return-void
.end method

.method public final c(Lcom/bumptech/glide/request/SingleRequest;)V
    .locals 1

    iget v0, p0, Lcom/bumptech/glide/request/target/CustomTarget;->b:I

    iget p0, p0, Lcom/bumptech/glide/request/target/CustomTarget;->c:I

    invoke-virtual {p1, v0, p0}, Lcom/bumptech/glide/request/SingleRequest;->e(II)V

    return-void
.end method

.method public final d(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public final g(Lcom/bumptech/glide/request/Request;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/request/target/CustomTarget;->d:Lcom/bumptech/glide/request/Request;

    return-void
.end method

.method public final h(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public final onDestroy()V
    .locals 0

    return-void
.end method

.method public final onStart()V
    .locals 0

    return-void
.end method

.method public final onStop()V
    .locals 0

    return-void
.end method
