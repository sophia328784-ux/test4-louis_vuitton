.class public final synthetic Lu21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/perfectcorp/perfectlib/TagHandler$ListTagsCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/TagHandler$ListTagsCallback;I)V
    .locals 0

    iput p2, p0, Lu21;->a:I

    iput-object p1, p0, Lu21;->b:Lcom/perfectcorp/perfectlib/TagHandler$ListTagsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lu21;->a:I

    const/4 v1, 0x3

    const-string v2, "TagHandler"

    iget-object p0, p0, Lu21;->b:Lcom/perfectcorp/perfectlib/TagHandler$ListTagsCallback;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "[listTags] failed"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0, p1}, Lcom/perfectcorp/perfectlib/TagHandler$ListTagsCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_0
    check-cast p1, Ljava/util/List;

    const-string v0, "[listTags] succeeded"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0, p1}, Lcom/perfectcorp/perfectlib/TagHandler$ListTagsCallback;->onSuccess(Ljava/util/List;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
