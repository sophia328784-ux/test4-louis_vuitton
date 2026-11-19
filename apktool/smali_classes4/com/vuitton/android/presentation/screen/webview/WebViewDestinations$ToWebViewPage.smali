.class public final Lcom/vuitton/android/presentation/screen/webview/WebViewDestinations$ToWebViewPage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/webview/WebViewDestinations;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/webview/WebViewDestinations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ToWebViewPage"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u00002\u00020\u0001BE\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/webview/WebViewDestinations$ToWebViewPage;",
        "Lcom/vuitton/android/presentation/screen/webview/WebViewDestinations;",
        "",
        "urlWebView",
        "",
        "isCart",
        "isPLPStory",
        "storyTitle",
        "Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;",
        "nativeCheckoutPreviousScreen",
        "isDistantRepairPBL",
        "<init>",
        "(Ljava/lang/String;ZZLjava/lang/String;Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;Z)V",
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
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Z

.field public final d:Ljava/lang/String;

.field public final e:Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;

.field public final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZLjava/lang/String;Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;Z)V
    .locals 0

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewDestinations$ToWebViewPage;->a:Ljava/lang/String;

    .line 33
    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewDestinations$ToWebViewPage;->b:Z

    .line 34
    iput-boolean p3, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewDestinations$ToWebViewPage;->c:Z

    .line 35
    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewDestinations$ToWebViewPage;->d:Ljava/lang/String;

    .line 36
    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewDestinations$ToWebViewPage;->e:Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;

    .line 37
    iput-boolean p6, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewDestinations$ToWebViewPage;->f:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZZLjava/lang/String;Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p7, 0x2

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_2

    const-string p4, ""

    :cond_2
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_3

    const/4 p5, 0x0

    :cond_3
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_4

    move p6, v0

    :cond_4
    invoke-direct/range {p0 .. p6}, Lcom/vuitton/android/presentation/screen/webview/WebViewDestinations$ToWebViewPage;-><init>(Ljava/lang/String;ZZLjava/lang/String;Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;Z)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/webview/WebViewDestinations$ToWebViewPage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/webview/WebViewDestinations$ToWebViewPage;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewDestinations$ToWebViewPage;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/webview/WebViewDestinations$ToWebViewPage;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewDestinations$ToWebViewPage;->b:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/webview/WebViewDestinations$ToWebViewPage;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewDestinations$ToWebViewPage;->c:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/webview/WebViewDestinations$ToWebViewPage;->c:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewDestinations$ToWebViewPage;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/webview/WebViewDestinations$ToWebViewPage;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewDestinations$ToWebViewPage;->e:Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/webview/WebViewDestinations$ToWebViewPage;->e:Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewDestinations$ToWebViewPage;->f:Z

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/webview/WebViewDestinations$ToWebViewPage;->f:Z

    if-eq p0, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewDestinations$ToWebViewPage;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v1, v2

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewDestinations$ToWebViewPage;->b:Z

    invoke-static {v1, v2, v3}, Lo60;->b(IIZ)I

    move-result v1

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewDestinations$ToWebViewPage;->c:Z

    invoke-static {v1, v2, v3}, Lo60;->b(IIZ)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewDestinations$ToWebViewPage;->d:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewDestinations$ToWebViewPage;->e:Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v1, v0

    mul-int/2addr v1, v2

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewDestinations$ToWebViewPage;->f:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", isCart="

    const-string v1, ", isPLPStory="

    const-string v2, "ToWebViewPage(urlWebView="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewDestinations$ToWebViewPage;->a:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewDestinations$ToWebViewPage;->b:Z

    invoke-static {v2, v3, v0, v1, v4}, Ld21;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", storyTitle="

    const-string v2, ", nativeCheckoutPreviousScreen="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewDestinations$ToWebViewPage;->d:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewDestinations$ToWebViewPage;->c:Z

    invoke-static {v1, v3, v2, v0, v4}, Lcj;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewDestinations$ToWebViewPage;->e:Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isDistantRepairPBL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/webview/WebViewDestinations$ToWebViewPage;->f:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
