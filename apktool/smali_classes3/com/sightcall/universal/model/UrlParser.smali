.class public final Lcom/sightcall/universal/model/UrlParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/model/UrlParser$Factory;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\u0012B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0013\u0010\n\u001a\u0004\u0018\u00010\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\tR\u0013\u0010\u000c\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\tR\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\tR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/sightcall/universal/model/UrlParser;",
        "",
        "uri",
        "Landroid/net/Uri;",
        "<init>",
        "(Landroid/net/Uri;)V",
        "hash",
        "",
        "getHash",
        "()Ljava/lang/String;",
        "pin",
        "getPin",
        "uid",
        "getUid",
        "invitation",
        "getInvitation",
        "parser",
        "Lcom/sightcall/universal/model/UrlParser$Factory;",
        "Factory",
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
.field private final hash:Ljava/lang/String;

.field private final parser:Lcom/sightcall/universal/model/UrlParser$Factory;

.field private final uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/sightcall/pratik/extensions/UriExtensionsKt;->getHash(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/model/UrlParser;->hash:Ljava/lang/String;

    invoke-static {p1}, Lcom/sightcall/pratik/extensions/UriExtensionsKt;->getHash(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sightcall/universal/model/UrlParser;->uid:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    new-instance p1, Lcom/sightcall/universal/model/NewUrlParser;

    invoke-direct {p1, v0}, Lcom/sightcall/universal/model/NewUrlParser;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sightcall/universal/model/OldUrlParser;

    invoke-direct {v0, p1}, Lcom/sightcall/universal/model/OldUrlParser;-><init>(Landroid/net/Uri;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/sightcall/universal/model/UrlParser;->parser:Lcom/sightcall/universal/model/UrlParser$Factory;

    return-void
.end method


# virtual methods
.method public final getHash()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/model/UrlParser;->hash:Ljava/lang/String;

    return-object p0
.end method

.method public final getInvitation()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/model/UrlParser;->parser:Lcom/sightcall/universal/model/UrlParser$Factory;

    invoke-interface {p0}, Lcom/sightcall/universal/model/UrlParser$Factory;->getInvitation()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getPin()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/model/UrlParser;->parser:Lcom/sightcall/universal/model/UrlParser$Factory;

    invoke-interface {p0}, Lcom/sightcall/universal/model/UrlParser$Factory;->getPin()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getUid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/model/UrlParser;->uid:Ljava/lang/String;

    return-object p0
.end method
