.class public final synthetic Lcom/perfectcorp/perfectlib/b2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;I)V
    .locals 0

    iput p2, p0, Lcom/perfectcorp/perfectlib/b2;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/b2;->c:Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/perfectcorp/perfectlib/b2;->b:I

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/b2;->c:Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-interface {p0, v1}, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;->onSuccess(Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_0
    sget-object v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-interface {p0, v1}, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;->onSuccess(Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_1
    sget-object v0, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-interface {p0, v1}, Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;->onSuccess(Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
