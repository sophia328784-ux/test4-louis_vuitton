.class public Lcom/kakao/sdk/common/model/ServerHosts;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/common/model/ServerHosts$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0014\u0008\u0016\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001a\u0010\u0005\u001a\u00020\u00048\u0016X\u0096D\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u00048\u0016X\u0096D\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\u0006\u001a\u0004\u0008\n\u0010\u0008R\u001a\u0010\u000b\u001a\u00020\u00048\u0016X\u0096D\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u0006\u001a\u0004\u0008\u000c\u0010\u0008R\u001a\u0010\r\u001a\u00020\u00048\u0016X\u0096D\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u0006\u001a\u0004\u0008\u000e\u0010\u0008R\u001a\u0010\u000f\u001a\u00020\u00048\u0016X\u0096D\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0006\u001a\u0004\u0008\u0010\u0010\u0008R\u001a\u0010\u0011\u001a\u00020\u00048\u0016X\u0096D\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0006\u001a\u0004\u0008\u0012\u0010\u0008R\u001a\u0010\u0013\u001a\u00020\u00048\u0016X\u0096D\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0006\u001a\u0004\u0008\u0014\u0010\u0008R\u001a\u0010\u0015\u001a\u00020\u00048\u0016X\u0096D\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0006\u001a\u0004\u0008\u0016\u0010\u0008\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/kakao/sdk/common/model/ServerHosts;",
        "",
        "<init>",
        "()V",
        "",
        "kauth",
        "Ljava/lang/String;",
        "b",
        "()Ljava/lang/String;",
        "kapi",
        "a",
        "apps",
        "getApps",
        "account",
        "getAccount",
        "mobileAccount",
        "getMobileAccount",
        "sharer",
        "getSharer",
        "navi",
        "getNavi",
        "channel",
        "getChannel",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/kakao/sdk/common/model/ServerHosts$Companion;


# instance fields
.field private final account:Ljava/lang/String;

.field private final apps:Ljava/lang/String;

.field private final channel:Ljava/lang/String;

.field private final kapi:Ljava/lang/String;

.field private final kauth:Ljava/lang/String;

.field private final mobileAccount:Ljava/lang/String;

.field private final navi:Ljava/lang/String;

.field private final sharer:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakao/sdk/common/model/ServerHosts$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakao/sdk/common/model/ServerHosts$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakao/sdk/common/model/ServerHosts;->Companion:Lcom/kakao/sdk/common/model/ServerHosts$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "kauth.kakao.com"

    iput-object v0, p0, Lcom/kakao/sdk/common/model/ServerHosts;->kauth:Ljava/lang/String;

    const-string v0, "kapi.kakao.com"

    iput-object v0, p0, Lcom/kakao/sdk/common/model/ServerHosts;->kapi:Ljava/lang/String;

    const-string v0, "apps.kakao.com"

    iput-object v0, p0, Lcom/kakao/sdk/common/model/ServerHosts;->apps:Ljava/lang/String;

    const-string v0, "accounts.kakao.com"

    iput-object v0, p0, Lcom/kakao/sdk/common/model/ServerHosts;->account:Ljava/lang/String;

    const-string v0, "auth.kakao.com"

    iput-object v0, p0, Lcom/kakao/sdk/common/model/ServerHosts;->mobileAccount:Ljava/lang/String;

    const-string v0, "sharer.kakao.com"

    iput-object v0, p0, Lcom/kakao/sdk/common/model/ServerHosts;->sharer:Ljava/lang/String;

    const-string v0, "kakaonavi-wguide.kakao.com"

    iput-object v0, p0, Lcom/kakao/sdk/common/model/ServerHosts;->navi:Ljava/lang/String;

    const-string v0, "pf.kakao.com"

    iput-object v0, p0, Lcom/kakao/sdk/common/model/ServerHosts;->channel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/kakao/sdk/common/model/ServerHosts;->kapi:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/kakao/sdk/common/model/ServerHosts;->kauth:Ljava/lang/String;

    return-object p0
.end method
