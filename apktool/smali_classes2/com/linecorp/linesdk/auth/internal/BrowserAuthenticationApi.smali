.class Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$AuthenticationIntentHolder;,
        Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Result;,
        Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Request;
    }
.end annotation


# instance fields
.field public final a:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;


# direct methods
.method public constructor <init>(Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;->a:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;Lcom/linecorp/linesdk/internal/pkce/PKCECode;Lcom/linecorp/linesdk/auth/LineAuthenticationParams;)Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Request;
    .locals 20

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    const/16 v2, 0x10

    invoke-static {v2}, Lcom/linecorp/linesdk/utils/StringUtils;->a(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v3, p0

    iget-object v3, v3, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi;->a:Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;

    iput-object v8, v3, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->d:Ljava/lang/String;

    iget-object v4, v1, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->b:Ljava/util/List;

    iget-object v5, v1, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->c:Ljava/lang/String;

    sget-object v6, Lcom/linecorp/linesdk/Scope;->d:Lcom/linecorp/linesdk/Scope;

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    move-object v2, v5

    goto :goto_1

    :cond_0
    invoke-static {v2}, Lcom/linecorp/linesdk/utils/StringUtils;->a(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    move-object v2, v6

    :goto_1
    iput-object v2, v3, Lcom/linecorp/linesdk/auth/internal/LineAuthenticationStatus;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "intent://result#Intent;package="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";scheme=lineauth;end"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v3, v6

    iget-object v6, v0, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;->b:Ljava/lang/String;

    move-object/from16 v4, p3

    iget-object v10, v4, Lcom/linecorp/linesdk/internal/pkce/PKCECode;->c:Ljava/lang/String;

    sget-object v4, Lcom/linecorp/linesdk/internal/pkce/CodeChallengeMethod;->S256:Lcom/linecorp/linesdk/internal/pkce/CodeChallengeMethod;

    invoke-virtual {v4}, Lcom/linecorp/linesdk/internal/pkce/CodeChallengeMethod;->a()Ljava/lang/String;

    move-result-object v12

    iget-object v4, v1, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->b:Ljava/util/List;

    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v4}, Lcom/linecorp/linesdk/Scope;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v4

    const-string v5, " "

    invoke-static {v5, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v18, v4

    move-object v4, v3

    goto :goto_3

    :cond_3
    :goto_2
    move-object v4, v3

    move-object/from16 v18, v4

    :goto_3
    const-string v3, "response_type"

    move-object v5, v4

    const-string v4, "code"

    move-object v7, v5

    const-string v5, "client_id"

    move-object v9, v7

    const-string v7, "state"

    move-object v11, v9

    const-string v9, "code_challenge"

    move-object v13, v11

    const-string v11, "code_challenge_method"

    move-object v15, v13

    const-string v13, "redirect_uri"

    move-object/from16 v16, v15

    const-string v15, "sdk_ver"

    move-object/from16 v17, v16

    const-string v16, "5.11.1"

    move-object/from16 v19, v17

    const-string v17, "scope"

    filled-new-array/range {v3 .. v18}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/linecorp/linesdk/utils/UriUtils;->b([Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "nonce"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v2, v1, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->d:Lcom/linecorp/linesdk/auth/LineAuthenticationParams$BotPrompt;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v4, "bot_prompt"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v2, v1, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->f:Ljava/lang/String;

    if-eqz v2, :cond_6

    const-string v4, "prompt_bot_id"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const-string v2, "/oauth2/v2.1/authorize/consent"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/linecorp/linesdk/utils/UriUtils;->a(Landroid/net/Uri$Builder;Ljava/util/Map;)V

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "loginChannelId"

    iget-object v4, v0, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;->b:Ljava/lang/String;

    const-string v5, "returnUri"

    filled-new-array {v5, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/linecorp/linesdk/utils/UriUtils;->b([Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v2

    iget-object v3, v1, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->e:Ljava/util/Locale;

    if-eqz v3, :cond_7

    const-string v4, "ui_locales"

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v3, v0, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;->e:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    iget-object v1, v1, Lcom/linecorp/linesdk/auth/LineAuthenticationParams;->g:Lcom/linecorp/linesdk/auth/LineAuthenticationParams$WebAuthenticationMethod;

    sget-object v5, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$WebAuthenticationMethod;->qrCode:Lcom/linecorp/linesdk/auth/LineAuthenticationParams$WebAuthenticationMethod;

    if-ne v1, v5, :cond_8

    invoke-virtual {v3}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    const-string v1, "/qr"

    invoke-virtual {v4, v1}, Landroid/net/Uri$Builder;->encodedFragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_8
    const/4 v11, 0x0

    goto :goto_4

    :cond_9
    const-string v0, "Multiple fragment is not yet supported. Require review or report to developer."

    invoke-static {v0}, Lmd;->h(Ljava/lang/Object;)V

    const/4 v11, 0x0

    return-object v11

    :goto_4
    invoke-static {v4, v2}, Lcom/linecorp/linesdk/utils/UriUtils;->a(Landroid/net/Uri$Builder;Ljava/util/Map;)V

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    iget-boolean v0, v0, Lcom/linecorp/linesdk/auth/LineAuthenticationConfig;->f:Z

    new-instance v2, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {v2}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    const v3, 0x106000b

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    const/high16 v5, -0x1000000

    or-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v5, v2, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->b:Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;

    iput-object v3, v5, Landroidx/browser/customtabs/CustomTabColorSchemeParams$Builder;->a:Ljava/lang/Integer;

    invoke-virtual {v2}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->a()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object v2

    iget-object v3, v2, Landroidx/browser/customtabs/CustomTabsIntent;->a:Landroid/content/Intent;

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    iget-object v2, v2, Landroidx/browser/customtabs/CustomTabsIntent;->b:Landroid/os/Bundle;

    invoke-static {v4}, Lcom/linecorp/linesdk/auth/internal/LineAppVersion;->a(Landroid/content/Context;)Lcom/linecorp/linesdk/auth/internal/LineAppVersion;

    move-result-object v5

    const/4 v6, 0x1

    const-string v7, "android.intent.action.VIEW"

    if-nez v0, :cond_a

    if-eqz v5, :cond_a

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v5, "jp.naver.line.android"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_a

    new-instance v1, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$AuthenticationIntentHolder;

    invoke-direct {v1, v0, v2, v6}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$AuthenticationIntentHolder;-><init>(Landroid/content/Intent;Landroid/os/Bundle;Z)V

    goto/16 :goto_6

    :cond_a
    new-instance v0, Landroid/content/Intent;

    const-string v5, "https://"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v0, v7, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v8

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v3, :cond_b

    invoke-virtual {v9, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_b
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_e

    if-ne v0, v6, :cond_d

    new-instance v1, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$AuthenticationIntentHolder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-direct {v1, v0, v2, v5}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$AuthenticationIntentHolder;-><init>(Landroid/content/Intent;Landroid/os/Bundle;Z)V

    goto :goto_6

    :cond_d
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-static {v0, v11}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/os/Parcelable;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/Parcelable;

    const-string v3, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    new-instance v1, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$AuthenticationIntentHolder;

    invoke-direct {v1, v0, v2, v5}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$AuthenticationIntentHolder;-><init>(Landroid/content/Intent;Landroid/os/Bundle;Z)V

    :goto_6
    new-instance v0, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Request;

    iget-object v2, v1, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$AuthenticationIntentHolder;->b:Landroid/os/Bundle;

    iget-boolean v3, v1, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$AuthenticationIntentHolder;->c:Z

    iget-object v1, v1, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$AuthenticationIntentHolder;->a:Landroid/content/Intent;

    invoke-direct {v0, v1, v2, v14, v3}, Lcom/linecorp/linesdk/auth/internal/BrowserAuthenticationApi$Request;-><init>(Landroid/content/Intent;Landroid/os/Bundle;Ljava/lang/String;Z)V

    return-object v0

    :cond_e
    new-instance v0, Landroid/content/ActivityNotFoundException;

    const-string v2, "Activity for LINE log-in is not found. uri="

    invoke-static {v1, v2}, Lpq0;->l(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
