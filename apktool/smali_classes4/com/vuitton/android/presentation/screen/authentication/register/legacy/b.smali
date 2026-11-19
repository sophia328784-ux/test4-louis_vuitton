.class public final synthetic Lcom/vuitton/android/presentation/screen/authentication/register/legacy/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:Lcom/vuitton/foundation/logger/Logger;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;

.field public final synthetic d:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/legacy/b;->b:Lcom/vuitton/foundation/logger/Logger;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/authentication/register/legacy/b;->c:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/authentication/register/legacy/b;->d:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/base/WebViewAuthClient;

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/register/legacy/WebViewRegisterScreenKt$WebViewRegisterScreen$7$1$1$1;

    const-string v6, "onWebViewPageStarted()V"

    const/4 v7, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/authentication/register/legacy/b;->c:Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;

    const-class v4, Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;

    const-string v5, "onWebViewPageStarted"

    invoke-direct/range {v1 .. v7}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v4, Lq61;

    const/4 v2, 0x1

    invoke-direct {v4, v3, v2}, Lq61;-><init>(Lcom/vuitton/android/presentation/screen/authentication/AuthenticationViewModel;I)V

    new-instance v5, Lqn;

    const/16 v2, 0x1b

    invoke-direct {v5, v2}, Lqn;-><init>(I)V

    move-object v2, v1

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/legacy/b;->b:Lcom/vuitton/foundation/logger/Logger;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/authentication/register/legacy/b;->d:Lkotlin/jvm/functions/Function1;

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/authentication/base/WebViewAuthClient;-><init>(Lcom/vuitton/foundation/logger/Logger;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function4;)V

    return-object v0
.end method
