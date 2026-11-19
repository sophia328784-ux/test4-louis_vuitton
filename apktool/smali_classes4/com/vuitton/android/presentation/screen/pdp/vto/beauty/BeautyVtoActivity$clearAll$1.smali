.class public final Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$clearAll$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$clearAll$1",
        "Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;

.field public final synthetic b:Lbe;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;Lbe;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$clearAll$1;->a:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$clearAll$1;->b:Lbe;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$clearAll$1;->a:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->L()Lcom/vuitton/foundation/logger/Logger;

    move-result-object p0

    const-string v0, "BeautyVtoActivity"

    const-string v1, "[clearAll] onFailure"

    invoke-interface {p0, v0, v1, p1}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onSuccess(Landroid/graphics/Bitmap;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$clearAll$1;->a:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;

    invoke-virtual {p1}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->L()Lcom/vuitton/foundation/logger/Logger;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$clearAll$1;->b:Lbe;

    invoke-virtual {p0}, Lbe;->invoke()Ljava/lang/Object;

    return-void
.end method
