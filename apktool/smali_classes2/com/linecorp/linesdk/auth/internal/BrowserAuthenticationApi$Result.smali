.class Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/Boolean;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;->b:Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lcom/linecorp/linesdk/LineApiError;
    .locals 4

    iget-object v0, p0, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v0, Lcom/linecorp/linesdk/LineApiError;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "error"

    iget-object v3, p0, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "error_description"

    iget-object p0, p0, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Lcom/linecorp/linesdk/LineApiError;

    invoke-direct {v0, p0}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/Exception;)V

    return-object v0

    :cond_0
    new-instance p0, Lcom/linecorp/linesdk/LineApiError;

    invoke-direct {p0, v0}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/String;)V

    return-object p0
.end method
