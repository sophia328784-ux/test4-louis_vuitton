.class public final Lcom/vuitton/android/presentation/redirectlink/DeepLinkConnectivityHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B!\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/redirectlink/DeepLinkConnectivityHandler;",
        "",
        "Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;",
        "emitter",
        "Lcom/vuitton/android/domain/service/authentication/UserSessionService;",
        "userSessionService",
        "Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;",
        "redirectionState",
        "<init>",
        "(Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;)V",
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
.field public final a:Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;

.field public final b:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

.field public final c:Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;Lcom/vuitton/android/domain/service/authentication/UserSessionService;Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkConnectivityHandler;->a:Lcom/vuitton/android/presentation/redirectlink/LinkEffectEmitter;

    iput-object p2, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkConnectivityHandler;->b:Lcom/vuitton/android/domain/service/authentication/UserSessionService;

    iput-object p3, p0, Lcom/vuitton/android/presentation/redirectlink/DeepLinkConnectivityHandler;->c:Lcom/vuitton/android/presentation/redirectlink/LinkRedirectionState;

    return-void
.end method
