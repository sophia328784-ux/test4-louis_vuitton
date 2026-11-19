.class public final synthetic Lyy0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/perfectcorp/perfectlib/SkuHandler$UpdateMappingFromServerCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/SkuHandler$UpdateMappingFromServerCallback;I)V
    .locals 0

    iput p2, p0, Lyy0;->a:I

    iput-object p1, p0, Lyy0;->b:Lcom/perfectcorp/perfectlib/SkuHandler$UpdateMappingFromServerCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lyy0;->a:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "product mapping updated."

    const/4 v1, 0x3

    const-string v2, "SkuHandler"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lyy0;->b:Lcom/perfectcorp/perfectlib/SkuHandler$UpdateMappingFromServerCallback;

    invoke-interface {p0}, Lcom/perfectcorp/perfectlib/SkuHandler$UpdateMappingFromServerCallback;->onSuccess()V

    return-void

    :pswitch_0
    const/4 v0, 0x5

    const-string v1, "SkuHandler"

    const-string v2, "previous product mapping updating task was cancelled by a new one"

    invoke-static {v0, v1, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lyy0;->b:Lcom/perfectcorp/perfectlib/SkuHandler$UpdateMappingFromServerCallback;

    invoke-interface {p0, v0}, Lcom/perfectcorp/perfectlib/SkuHandler$UpdateMappingFromServerCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
