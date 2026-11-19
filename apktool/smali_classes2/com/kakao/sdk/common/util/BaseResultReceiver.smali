.class public abstract Lcom/kakao/sdk/common/util/BaseResultReceiver;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/ResultReceiver;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u0001*\u0004\u0008\u0001\u0010\u00032\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/kakao/sdk/common/util/BaseResultReceiver;",
        "",
        "T",
        "E",
        "Landroid/os/ResultReceiver;",
        "common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final b:Ljava/lang/String;

.field public c:Lkotlin/jvm/internal/Lambda;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/kakao/sdk/common/util/BaseResultReceiver;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/net/Uri;)Z
.end method

.method public abstract b(Ljava/lang/Throwable;)V
.end method

.method public abstract c(Ljava/lang/Object;)V
.end method

.method public abstract d(Landroid/net/Uri;)Ljava/lang/Throwable;
.end method

.method public abstract e(Landroid/net/Uri;)Ljava/lang/Object;
.end method

.method public final onReceiveResult(ILandroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/kakao/sdk/common/util/SdkLog;->d:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "***** "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kakao/sdk/common/util/BaseResultReceiver;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/kakao/sdk/common/util/SdkLog;->e:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kakao/sdk/common/util/SdkLog;

    sget-object v2, Lcom/kakao/sdk/common/util/SdkLogLevel;->D:Lcom/kakao/sdk/common/util/SdkLogLevel;

    invoke-static {v0, v1, v2}, Lcom/kakao/sdk/common/util/SdkLog;->a(Lcom/kakao/sdk/common/util/SdkLog;Ljava/lang/Object;Lcom/kakao/sdk/common/util/SdkLogLevel;)V

    const/4 v0, -0x1

    const/16 v1, 0x21

    if-eq p1, v0, :cond_2

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unknown resultCode in "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#onReceivedResult()"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/kakao/sdk/common/util/BaseResultReceiver;->b(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v0, "key.exception"

    if-lt p1, v1, :cond_1

    const-class p1, Lcom/kakao/sdk/common/model/KakaoSdkError;

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/kakao/sdk/common/model/KakaoSdkError;

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/kakao/sdk/common/model/KakaoSdkError;

    :goto_0
    if-eqz p1, :cond_6

    invoke-virtual {p0, p1}, Lcom/kakao/sdk/common/util/BaseResultReceiver;->b(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v0, "key.url"

    if-lt p1, v1, :cond_3

    const-class p1, Landroid/net/Uri;

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    goto :goto_1

    :cond_3
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    :goto_1
    if-eqz p1, :cond_7

    invoke-virtual {p0, p1}, Lcom/kakao/sdk/common/util/BaseResultReceiver;->a(Landroid/net/Uri;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0, p1}, Lcom/kakao/sdk/common/util/BaseResultReceiver;->d(Landroid/net/Uri;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kakao/sdk/common/util/BaseResultReceiver;->b(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p1}, Lcom/kakao/sdk/common/util/BaseResultReceiver;->e(Landroid/net/Uri;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_5

    new-instance p2, Lcom/kakao/sdk/common/model/ClientError;

    sget-object v0, Lcom/kakao/sdk/common/model/ClientErrorCause;->Unknown:Lcom/kakao/sdk/common/model/ClientErrorCause;

    const-string v1, "Failed to parse response\n"

    invoke-static {p1, v1}, Lpq0;->l(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lcom/kakao/sdk/common/model/ClientError;-><init>(Lcom/kakao/sdk/common/model/ClientErrorCause;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/kakao/sdk/common/util/BaseResultReceiver;->b(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0, p2}, Lcom/kakao/sdk/common/util/BaseResultReceiver;->c(Ljava/lang/Object;)V

    :cond_6
    :goto_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/kakao/sdk/common/util/BaseResultReceiver;->c:Lkotlin/jvm/internal/Lambda;

    return-void

    :cond_7
    invoke-static {}, Lr81;->b()V

    return-void
.end method
