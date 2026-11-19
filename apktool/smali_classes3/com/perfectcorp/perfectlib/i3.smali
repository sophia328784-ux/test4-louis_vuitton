.class public final synthetic Lcom/perfectcorp/perfectlib/i3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;

.field public final synthetic c:Lcom/perfectcorp/perfectlib/NailVtoApplier$IntensitiesCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;Lcom/perfectcorp/perfectlib/NailVtoApplier$IntensitiesCallback;I)V
    .locals 0

    iput p3, p0, Lcom/perfectcorp/perfectlib/i3;->a:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/i3;->b:Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/i3;->c:Lcom/perfectcorp/perfectlib/NailVtoApplier$IntensitiesCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lcom/perfectcorp/perfectlib/i3;->a:I

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/i3;->c:Lcom/perfectcorp/perfectlib/NailVtoApplier$IntensitiesCallback;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/i3;->b:Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Throwable;

    instance-of v0, p1, Lcom/perfectcorp/perfectlib/internal/SkipCallbackException;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "[getIntensities] task canceled"

    invoke-static {p0, v0, p1}, Lcom/perfectcorp/common/utility/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const-string v0, "[getIntensities] failed"

    invoke-static {p0, v0, p1}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v1, p1}, Lcom/perfectcorp/perfectlib/NailVtoApplier$IntensitiesCallback;->onFailure(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :pswitch_0
    check-cast p1, Ljava/util/Map;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/NailVtoApplierImpl;->a:Ljava/lang/String;

    const-string v0, "[getIntensities] complete"

    const/4 v2, 0x3

    invoke-static {v2, p0, v0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1, p1}, Lcom/perfectcorp/perfectlib/NailVtoApplier$IntensitiesCallback;->onSuccess(Ljava/util/Map;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
