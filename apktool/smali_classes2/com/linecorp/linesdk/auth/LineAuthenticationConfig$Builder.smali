.class public Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroid/net/Uri;

.field public final c:Landroid/net/Uri;

.field public final d:Landroid/net/Uri;

.field public e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, v0}, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/linecorp/linesdk/ManifestParser;

    invoke-direct {v0}, Lcom/linecorp/linesdk/ManifestParser;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iput-object p1, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;->a:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Lcom/linecorp/linesdk/ManifestParser;->parse(Landroid/content/Context;)Lcom/linecorp/linesdk/api/LineEnvConfig;

    move-result-object v2

    :cond_0
    if-nez v2, :cond_1

    new-instance v2, Lcom/linecorp/linesdk/api/LineDefaultEnvConfig;

    invoke-direct {v2}, Lcom/linecorp/linesdk/api/LineDefaultEnvConfig;-><init>()V

    :cond_1
    invoke-virtual {v2}, Lcom/linecorp/linesdk/api/LineEnvConfig;->getOpenIdDiscoveryDocumentUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;->b:Landroid/net/Uri;

    invoke-virtual {v2}, Lcom/linecorp/linesdk/api/LineEnvConfig;->getApiServerBaseUri()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;->c:Landroid/net/Uri;

    invoke-virtual {v2}, Lcom/linecorp/linesdk/api/LineEnvConfig;->getWebLoginPageUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig$Builder;->d:Landroid/net/Uri;

    return-void

    :cond_2
    const-string p0, "channelId is empty."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw v2
.end method
