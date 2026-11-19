.class public final Lcom/sightcall/universal/agent/RefreshTokenCallback$Success;
.super Lcom/sightcall/universal/api/ApiCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/agent/RefreshTokenCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Success"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sightcall/universal/api/ApiCallback<",
        "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
        "Lcom/sightcall/universal/agent/registration/AccessTokensResponse;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B#\u0012\u0012\u0010\u0004\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/sightcall/universal/agent/RefreshTokenCallback$Success;",
        "Lcom/sightcall/universal/api/ApiCallback;",
        "Lcom/sightcall/universal/api/JsonApi$Wrapper;",
        "Lcom/sightcall/universal/agent/registration/AccessTokensResponse;",
        "hold",
        "Lcom/sightcall/universal/api/ApiCallback$Holder;",
        "registration",
        "<init>",
        "(Lcom/sightcall/universal/api/ApiCallback$Holder;Lcom/sightcall/universal/agent/registration/AccessTokensResponse;)V",
        "getRegistration",
        "()Lcom/sightcall/universal/agent/registration/AccessTokensResponse;",
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


# instance fields
.field private final registration:Lcom/sightcall/universal/agent/registration/AccessTokensResponse;


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/api/ApiCallback$Holder;Lcom/sightcall/universal/agent/registration/AccessTokensResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/universal/api/ApiCallback$Holder<",
            "Lcom/sightcall/universal/api/JsonApi$Wrapper<",
            "Lcom/sightcall/universal/agent/registration/AccessTokensResponse;",
            ">;>;",
            "Lcom/sightcall/universal/agent/registration/AccessTokensResponse;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Lcom/sightcall/universal/api/ApiCallback;-><init>(Lcom/sightcall/universal/api/ApiCallback$Holder;)V

    iput-object p2, p0, Lcom/sightcall/universal/agent/RefreshTokenCallback$Success;->registration:Lcom/sightcall/universal/agent/registration/AccessTokensResponse;

    return-void
.end method


# virtual methods
.method public final getRegistration()Lcom/sightcall/universal/agent/registration/AccessTokensResponse;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/RefreshTokenCallback$Success;->registration:Lcom/sightcall/universal/agent/registration/AccessTokensResponse;

    return-object p0
.end method
