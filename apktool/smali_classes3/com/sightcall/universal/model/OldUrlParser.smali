.class public final Lcom/sightcall/universal/model/OldUrlParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/universal/model/UrlParser$Factory;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0016\u0010\n\u001a\u0004\u0018\u00010\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\t\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/sightcall/universal/model/OldUrlParser;",
        "Lcom/sightcall/universal/model/UrlParser$Factory;",
        "uri",
        "Landroid/net/Uri;",
        "<init>",
        "(Landroid/net/Uri;)V",
        "pin",
        "",
        "getPin",
        "()Ljava/lang/String;",
        "invitation",
        "getInvitation",
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
.field private final invitation:Ljava/lang/String;

.field private final pin:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/sightcall/pratik/extensions/UriExtensionsKt;->getPinCode(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/model/OldUrlParser;->pin:Ljava/lang/String;

    invoke-static {p1}, Lcom/sightcall/pratik/extensions/UriExtensionsKt;->getInvitation(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/universal/model/OldUrlParser;->invitation:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getInvitation()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/model/OldUrlParser;->invitation:Ljava/lang/String;

    return-object p0
.end method

.method public getPin()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/model/OldUrlParser;->pin:Ljava/lang/String;

    return-object p0
.end method
