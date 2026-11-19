.class final Lcom/sightcall/core/experiences/DeeplinkActivity$showConsentDialog$2$dialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sightcall/core/experiences/DeeplinkActivity;->showConsentDialog(Landroid/net/Uri;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $continuation:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Landroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sightcall/core/experiences/DeeplinkActivity$showConsentDialog$2$dialog$1;->$continuation:Lkotlin/coroutines/Continuation;

    iput-object p2, p0, Lcom/sightcall/core/experiences/DeeplinkActivity$showConsentDialog$2$dialog$1;->$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-virtual {p0}, Lcom/sightcall/core/experiences/DeeplinkActivity$showConsentDialog$2$dialog$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 3

    iget-object v0, p0, Lcom/sightcall/core/experiences/DeeplinkActivity$showConsentDialog$2$dialog$1;->$continuation:Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    sget-object v0, Lcom/sightcall/core/experiences/SightCall;->INSTANCE:Lcom/sightcall/core/experiences/SightCall;

    iget-object p0, p0, Lcom/sightcall/core/experiences/DeeplinkActivity$showConsentDialog$2$dialog$1;->$uri:Landroid/net/Uri;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p0, v1, v2, v1}, Lcom/sightcall/core/experiences/SightCall;->start$default(Lcom/sightcall/core/experiences/SightCall;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
