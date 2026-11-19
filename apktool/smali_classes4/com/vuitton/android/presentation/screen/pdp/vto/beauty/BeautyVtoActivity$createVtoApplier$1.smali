.class public final Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$createVtoApplier$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/perfectlib/VtoApplier$CreateCallback;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "com/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$createVtoApplier$1",
        "Lcom/perfectcorp/perfectlib/VtoApplier$CreateCallback;",
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

.field public final synthetic b:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$createVtoApplier$1;->a:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$createVtoApplier$1;->b:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Throwable;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$createVtoApplier$1;->a:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->L()Lcom/vuitton/foundation/logger/Logger;

    move-result-object v0

    const-string v1, "CreateVtoApplier"

    const-string v2, "[createVtoApplier] failed."

    invoke-interface {v0, v1, v2, p1}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$createVtoApplier$1;->b:Lkotlin/jvm/functions/Function1;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onSuccess(Lcom/perfectcorp/perfectlib/VtoApplier;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$createVtoApplier$1;->a:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->L()Lcom/vuitton/foundation/logger/Logger;

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->t:Lcom/perfectcorp/perfectlib/VtoApplier;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$createVtoApplier$1;->b:Lkotlin/jvm/functions/Function1;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
