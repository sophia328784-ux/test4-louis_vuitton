.class Lcom/bumptech/glide/util/pool/StateVerifier$DefaultStateVerifier;
.super Lcom/bumptech/glide/util/pool/StateVerifier;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/util/pool/StateVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultStateVerifier"
.end annotation


# instance fields
.field public volatile a:Z


# virtual methods
.method public final b()V
    .locals 0

    iget-boolean p0, p0, Lcom/bumptech/glide/util/pool/StateVerifier$DefaultStateVerifier;->a:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "Already released"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void
.end method
