.class public final synthetic Lfo0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/perfectcorp/perfectlib/PhotoMakeup;

.field public final synthetic c:Lcom/perfectcorp/perfectlib/PhotoMakeup$DetectFaceCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/PhotoMakeup;Lcom/perfectcorp/perfectlib/PhotoMakeup$DetectFaceCallback;I)V
    .locals 0

    iput p3, p0, Lfo0;->a:I

    iput-object p1, p0, Lfo0;->b:Lcom/perfectcorp/perfectlib/PhotoMakeup;

    iput-object p2, p0, Lfo0;->c:Lcom/perfectcorp/perfectlib/PhotoMakeup$DetectFaceCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    iget v0, p0, Lfo0;->a:I

    const/4 v1, 0x0

    const-string v2, "PhotoMakeup"

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lfo0;->b:Lcom/perfectcorp/perfectlib/PhotoMakeup;

    iget-object p0, p0, Lfo0;->c:Lcom/perfectcorp/perfectlib/PhotoMakeup$DetectFaceCallback;

    check-cast p1, Ljava/lang/Throwable;

    const-string v3, "[detectFace] failed"

    invoke-static {v2, v3, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-boolean v1, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->j:Z

    invoke-interface {p0, p1}, Lcom/perfectcorp/perfectlib/PhotoMakeup$DetectFaceCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lfo0;->b:Lcom/perfectcorp/perfectlib/PhotoMakeup;

    iget-object p0, p0, Lfo0;->c:Lcom/perfectcorp/perfectlib/PhotoMakeup$DetectFaceCallback;

    check-cast p1, Ljava/util/Collection;

    const-string v3, "[detectFace] success"

    const/4 v4, 0x3

    invoke-static {v4, v2, v3}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->l:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-boolean v1, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->j:Z

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->k:Z

    iget-object p1, v0, Lcom/perfectcorp/perfectlib/PhotoMakeup;->l:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/perfectcorp/perfectlib/PhotoMakeup$DetectFaceCallback;->onSuccess(Ljava/util/List;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
