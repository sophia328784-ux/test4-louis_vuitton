.class public final synthetic Lqv0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/perfectcorp/perfectlib/ShadeFinder$CreateCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/ShadeFinder$CreateCallback;I)V
    .locals 0

    iput p2, p0, Lqv0;->a:I

    iput-object p1, p0, Lqv0;->b:Lcom/perfectcorp/perfectlib/ShadeFinder$CreateCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lqv0;->a:I

    iget-object p0, p0, Lqv0;->b:Lcom/perfectcorp/perfectlib/ShadeFinder$CreateCallback;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Throwable;

    invoke-interface {p0, p1}, Lcom/perfectcorp/perfectlib/ShadeFinder$CreateCallback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    :pswitch_0
    check-cast p1, Lcom/perfectcorp/perfectlib/ShadeFinder;

    invoke-interface {p0, p1}, Lcom/perfectcorp/perfectlib/ShadeFinder$CreateCallback;->onSuccess(Lcom/perfectcorp/perfectlib/ShadeFinder;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
