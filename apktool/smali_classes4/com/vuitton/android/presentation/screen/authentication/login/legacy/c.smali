.class public final synthetic Lcom/vuitton/android/presentation/screen/authentication/login/legacy/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:Lcom/vuitton/foundation/logger/Logger;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/c;->b:Lcom/vuitton/foundation/logger/Logger;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/c;->c:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 10

    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/base/WebViewAuthChromeClient;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/c;->c:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;

    invoke-interface {v3}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;->R()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;->j0()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v8, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginScreenKt$WebViewLoginScreen$6$2$1$1;

    const-string v6, "onWebViewPageStarted()V"

    const/4 v7, 0x0

    const/4 v2, 0x0

    const-class v4, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;

    const-string v5, "onWebViewPageStarted"

    invoke-direct/range {v1 .. v7}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v9, v1

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/WebViewLoginScreenKt$WebViewLoginScreen$6$2$1$2;

    const-string v6, "extractAndProcessKisaPayload(Ljava/lang/String;)V"

    const/4 v2, 0x1

    const-class v4, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;

    const-string v5, "extractAndProcessKisaPayload"

    invoke-direct/range {v1 .. v7}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/login/legacy/c;->b:Lcom/vuitton/foundation/logger/Logger;

    invoke-direct {v0, p0, v8, v9, v1}, Lcom/vuitton/android/presentation/screen/authentication/base/WebViewAuthChromeClient;-><init>(Lcom/vuitton/foundation/logger/Logger;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method
