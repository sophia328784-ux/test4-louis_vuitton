.class public final Lcom/vuitton/android/presentation/screen/webview/WebViewViewEvents$DisplayError;
.super Lcom/vuitton/android/presentation/screen/webview/WebViewViewEvents;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/webview/WebViewViewEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisplayError"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/webview/WebViewViewEvents$DisplayError;",
        "Lcom/vuitton/android/presentation/screen/webview/WebViewViewEvents;",
        "",
        "error",
        "<init>",
        "(Ljava/lang/Throwable;)V",
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
.field public final a:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/screen/webview/WebViewViewEvents;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewEvents$DisplayError;->a:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/webview/WebViewViewEvents$DisplayError;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/webview/WebViewViewEvents$DisplayError;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewEvents$DisplayError;->a:Ljava/lang/Throwable;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/webview/WebViewViewEvents$DisplayError;->a:Ljava/lang/Throwable;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewEvents$DisplayError;->a:Ljava/lang/Throwable;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, "DisplayError(error="

    const-string v1, ")"

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewViewEvents$DisplayError;->a:Ljava/lang/Throwable;

    invoke-static {v0, v1, p0}, Ld21;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
