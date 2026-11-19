.class public final Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidAddress;
.super Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InvalidAddress"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidAddress;",
        "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException;",
        "",
        "errorMessage",
        "Lcom/vuitton/foundation/model/domain/model/authentication/oauth/InvalidAddressScope;",
        "scope",
        "<init>",
        "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/authentication/oauth/InvalidAddressScope;)V",
        "domain"
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
.field public final c:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/InvalidAddressScope;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/authentication/oauth/InvalidAddressScope;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/vuitton/foundation/model/domain/model/authentication/oauth/NativeRegisterException$InvalidAddress;->c:Lcom/vuitton/foundation/model/domain/model/authentication/oauth/InvalidAddressScope;

    return-void
.end method
