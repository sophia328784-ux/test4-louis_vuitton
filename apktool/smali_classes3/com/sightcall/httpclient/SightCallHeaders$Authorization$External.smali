.class public final Lcom/sightcall/httpclient/SightCallHeaders$Authorization$External;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/httpclient/SightCallHeaders$Authorization;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "External"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\n\u0010\u0006\u001a\u00020\u0007H\u0096\u0080\u0004R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/sightcall/httpclient/SightCallHeaders$Authorization$External;",
        "",
        "token",
        "Lcom/sightcall/httpclient/AuthorizationToken;",
        "<init>",
        "(Lcom/sightcall/httpclient/AuthorizationToken;)V",
        "toString",
        "",
        "httpclient_release"
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
.field private final token:Lcom/sightcall/httpclient/AuthorizationToken;


# direct methods
.method public constructor <init>(Lcom/sightcall/httpclient/AuthorizationToken;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/httpclient/SightCallHeaders$Authorization$External;->token:Lcom/sightcall/httpclient/AuthorizationToken;

    invoke-virtual {p1}, Lcom/sightcall/httpclient/AuthorizationToken;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/sightcall/httpclient/SightCallHeadersException;

    const-string p1, "AuthorizationToken is blank or empty"

    invoke-direct {p0, p1}, Lcom/sightcall/httpclient/SightCallHeadersException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sightcall/httpclient/SightCallHeaders$Authorization$External;->token:Lcom/sightcall/httpclient/AuthorizationToken;

    invoke-virtual {p0}, Lcom/sightcall/httpclient/AuthorizationToken;->getValue()Ljava/lang/String;

    move-result-object p0

    const-string v0, "External "

    invoke-static {v0, p0}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
