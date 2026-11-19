.class public final synthetic Lgo0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/perfectcorp/perfectlib/PhotoMakeup$OnLiplinerChangedCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/PhotoMakeup$OnLiplinerChangedCallback;I)V
    .locals 0

    iput p2, p0, Lgo0;->a:I

    iput-object p1, p0, Lgo0;->b:Lcom/perfectcorp/perfectlib/PhotoMakeup$OnLiplinerChangedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lgo0;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "PhotoMakeup"

    const-string v1, "[enableLiplinerOnTop] failed"

    invoke-static {v0, v1, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lgo0;->b:Lcom/perfectcorp/perfectlib/PhotoMakeup$OnLiplinerChangedCallback;

    invoke-interface {p0, p1}, Lcom/perfectcorp/perfectlib/PhotoMakeup$OnLiplinerChangedCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_0
    check-cast p1, Landroid/graphics/Bitmap;

    const-string v0, "[enableLiplinerOnTop] complete"

    const/4 v1, 0x3

    const-string v2, "PhotoMakeup"

    invoke-static {v1, v2, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lgo0;->b:Lcom/perfectcorp/perfectlib/PhotoMakeup$OnLiplinerChangedCallback;

    invoke-interface {p0, p1}, Lcom/perfectcorp/perfectlib/PhotoMakeup$OnLiplinerChangedCallback;->onLiplinerChanged(Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
