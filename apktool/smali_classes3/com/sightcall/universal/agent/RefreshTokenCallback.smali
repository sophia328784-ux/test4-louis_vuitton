.class public interface abstract Lcom/sightcall/universal/agent/RefreshTokenCallback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/agent/RefreshTokenCallback$Error;,
        Lcom/sightcall/universal/agent/RefreshTokenCallback$Success;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001:\u0002\t\nJ\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H&\u00a8\u0006\u000b\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/sightcall/universal/agent/RefreshTokenCallback;",
        "",
        "onRefreshTokenSuccess",
        "",
        "success",
        "Lcom/sightcall/universal/agent/RefreshTokenCallback$Success;",
        "onRefreshTokenError",
        "error",
        "Lcom/sightcall/universal/agent/RefreshTokenCallback$Error;",
        "Success",
        "Error",
        "sdk_installedRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract onRefreshTokenError(Lcom/sightcall/universal/agent/RefreshTokenCallback$Error;)V
.end method

.method public abstract onRefreshTokenSuccess(Lcom/sightcall/universal/agent/RefreshTokenCallback$Success;)V
.end method
