.class public Lcom/linecorp/linesdk/internal/AccessTokenCache;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/linecorp/linesdk/internal/security/encryption/StringCipher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 17
    sget-object v0, Lcom/linecorp/linesdk/internal/EncryptorHolder;->a:Lcom/linecorp/linesdk/internal/security/encryption/StringAesCipher;

    .line 18
    invoke-direct {p0, p1, p2, v0}, Lcom/linecorp/linesdk/internal/AccessTokenCache;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/linecorp/linesdk/internal/security/encryption/StringCipher;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/linecorp/linesdk/internal/security/encryption/StringCipher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/internal/AccessTokenCache;->a:Landroid/content/Context;

    const-string p1, "com.linecorp.linesdk.accesstoken."

    invoke-static {p1, p2}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/linecorp/linesdk/internal/AccessTokenCache;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/linecorp/linesdk/internal/AccessTokenCache;->c:Lcom/linecorp/linesdk/internal/security/encryption/StringCipher;

    return-void
.end method


# virtual methods
.method public final a()Lcom/linecorp/linesdk/internal/InternalAccessToken;
    .locals 13

    iget-object v1, p0, Lcom/linecorp/linesdk/internal/AccessTokenCache;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/linecorp/linesdk/internal/AccessTokenCache;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    :try_start_0
    const-string v4, "accessToken"

    const/4 v5, 0x0

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Lcom/linecorp/linesdk/internal/security/encryption/EncryptionException; {:try_start_0 .. :try_end_0} :catch_2

    iget-object p0, p0, Lcom/linecorp/linesdk/internal/AccessTokenCache;->c:Lcom/linecorp/linesdk/internal/security/encryption/StringCipher;

    if-nez v4, :cond_0

    move-object v7, v5

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-interface {p0, v1, v4}, Lcom/linecorp/linesdk/internal/security/encryption/StringCipher;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v7, v4

    :goto_0
    const-string v4, "expiresIn"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v8, -0x1

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0, v1, v4}, Lcom/linecorp/linesdk/internal/security/encryption/StringCipher;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Lcom/linecorp/linesdk/internal/security/encryption/EncryptionException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/linecorp/linesdk/internal/security/encryption/EncryptionException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_0
    :goto_1
    move-wide v10, v8

    :goto_2
    :try_start_3
    const-string v4, "issuedClientTime"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_3

    :cond_2
    invoke-interface {p0, v1, v4}, Lcom/linecorp/linesdk/internal/security/encryption/StringCipher;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_3
    .catch Lcom/linecorp/linesdk/internal/security/encryption/EncryptionException; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/linecorp/linesdk/internal/security/encryption/EncryptionException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_1
    :goto_3
    move-wide v2, v8

    :goto_4
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    cmp-long v4, v10, v8

    if-eqz v4, :cond_6

    cmp-long v4, v2, v8

    if-nez v4, :cond_3

    goto :goto_8

    :cond_3
    const-string v4, "refreshToken"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_5

    :cond_4
    invoke-interface {p0, v1, v0}, Lcom/linecorp/linesdk/internal/security/encryption/StringCipher;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_5
    if-eqz v5, :cond_5

    :goto_6
    move-object v12, v5

    goto :goto_7

    :cond_5
    const-string v5, ""

    goto :goto_6

    :goto_7
    new-instance v6, Lcom/linecorp/linesdk/internal/InternalAccessToken;

    move-wide v8, v10

    move-wide v10, v2

    invoke-direct/range {v6 .. v12}, Lcom/linecorp/linesdk/internal/InternalAccessToken;-><init>(Ljava/lang/String;JJLjava/lang/String;)V

    return-object v6

    :cond_6
    :goto_8
    return-object v5

    :catch_2
    move-exception v0

    move-object p0, v0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    throw p0
.end method

.method public final b(Lcom/linecorp/linesdk/internal/InternalAccessToken;)V
    .locals 5

    iget-object v0, p0, Lcom/linecorp/linesdk/internal/AccessTokenCache;->b:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/linecorp/linesdk/internal/AccessTokenCache;->a:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p1, Lcom/linecorp/linesdk/internal/InternalAccessToken;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/linecorp/linesdk/internal/AccessTokenCache;->c:Lcom/linecorp/linesdk/internal/security/encryption/StringCipher;

    invoke-interface {p0, v2, v1}, Lcom/linecorp/linesdk/internal/security/encryption/StringCipher;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "accessToken"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-wide v3, p1, Lcom/linecorp/linesdk/internal/InternalAccessToken;->b:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2, v1}, Lcom/linecorp/linesdk/internal/security/encryption/StringCipher;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "expiresIn"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-wide v3, p1, Lcom/linecorp/linesdk/internal/InternalAccessToken;->c:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v2, v1}, Lcom/linecorp/linesdk/internal/security/encryption/StringCipher;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "issuedClientTime"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object p1, p1, Lcom/linecorp/linesdk/internal/InternalAccessToken;->d:Ljava/lang/String;

    invoke-interface {p0, v2, p1}, Lcom/linecorp/linesdk/internal/security/encryption/StringCipher;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "refreshToken"

    invoke-interface {v0, p1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
