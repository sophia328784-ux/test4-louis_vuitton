.class public Lcom/sightcall/universal/util/Deeplink;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0017R\u0014\u0010\u0004\u001a\u00020\u0005X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/sightcall/universal/util/Deeplink;",
        "",
        "<init>",
        "()V",
        "logger",
        "Lnet/rtccloud/sdk/util/OldLogger;",
        "getLogger",
        "()Lnet/rtccloud/sdk/util/OldLogger;",
        "execute",
        "",
        "context",
        "Landroid/content/Context;",
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
.field private final logger:Lnet/rtccloud/sdk/util/OldLogger;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DEEPLINK"

    invoke-static {v0}, Lnet/rtccloud/sdk/util/OldLogger;->get(Ljava/lang/String;)Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lcom/sightcall/universal/util/Deeplink;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    return-void
.end method


# virtual methods
.method public execute(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/sightcall/universal/util/Deeplink;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v0, "execute(%s)"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final getLogger()Lnet/rtccloud/sdk/util/OldLogger;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/util/Deeplink;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    return-object p0
.end method
