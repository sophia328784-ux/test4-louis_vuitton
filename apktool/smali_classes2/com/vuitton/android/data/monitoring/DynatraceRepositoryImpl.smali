.class public final Lcom/vuitton/android/data/monitoring/DynatraceRepositoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/repository/PrivacyRelatedToolRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B#\u0008\u0007\u0012\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/android/data/monitoring/DynatraceRepositoryImpl;",
        "Lcom/vuitton/android/domain/repository/PrivacyRelatedToolRepository;",
        "Landroid/content/Context;",
        "context",
        "Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;",
        "buildConfigProvider",
        "Lcom/vuitton/foundation/secrets/SecretsProvider;",
        "secretsProvider",
        "<init>",
        "(Landroid/content/Context;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;Lcom/vuitton/foundation/secrets/SecretsProvider;)V",
        "data"
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
.field public final a:Landroid/content/Context;

.field public final b:Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

.field public final c:Lcom/vuitton/foundation/secrets/SecretsProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;Lcom/vuitton/foundation/secrets/SecretsProvider;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation runtime Ldagger/hilt/android/qualifiers/ApplicationContext;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/monitoring/DynatraceRepositoryImpl;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/vuitton/android/data/monitoring/DynatraceRepositoryImpl;->b:Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

    iput-object p3, p0, Lcom/vuitton/android/data/monitoring/DynatraceRepositoryImpl;->c:Lcom/vuitton/foundation/secrets/SecretsProvider;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/android/domain/repository/PrivacyRelatedToolRequirements;)V
    .locals 34

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/data/monitoring/DynatraceRepositoryImpl;->c:Lcom/vuitton/foundation/secrets/SecretsProvider;

    iget-object v2, v0, Lcom/vuitton/android/data/monitoring/DynatraceRepositoryImpl;->a:Landroid/content/Context;

    instance-of v3, v2, Landroid/app/Application;

    if-eqz v3, :cond_1d

    iget-object v0, v0, Lcom/vuitton/android/data/monitoring/DynatraceRepositoryImpl;->b:Lcom/vuitton/android/domain/provider/buildconfig/BuildConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/foundation/secrets/SecretKey;->DYNATRACE_APP_ID_PROD:Lcom/vuitton/foundation/secrets/SecretKey;

    move-object v6, v2

    check-cast v6, Landroid/app/Application;

    new-instance v2, Lcom/dynatrace/android/agent/conf/DynatraceConfigurationBuilder;

    invoke-interface {v1, v0}, Lcom/vuitton/foundation/secrets/SecretsProvider;->a(Lcom/vuitton/foundation/secrets/SecretKey;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/vuitton/foundation/secrets/SecretKey;->DYNATRACE_BEACON_URL:Lcom/vuitton/foundation/secrets/SecretKey;

    invoke-interface {v1, v3}, Lcom/vuitton/foundation/secrets/SecretsProvider;->a(Lcom/vuitton/foundation/secrets/SecretKey;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/dynatrace/android/agent/conf/DynatraceConfigurationBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/dynatrace/android/agent/conf/ConfigurationBuilder;->k:Z

    iget-object v1, v2, Lcom/dynatrace/android/agent/conf/ConfigurationBuilder;->a:Lcom/dynatrace/android/agent/conf/AgentMode;

    sget-object v3, Lcom/dynatrace/android/agent/conf/AgentMode;->APP_MON:Lcom/dynatrace/android/agent/conf/AgentMode;

    if-eq v1, v3, :cond_0

    iput-boolean v0, v2, Lcom/dynatrace/android/agent/conf/ConfigurationBuilder;->l:Z

    :cond_0
    iget-object v3, v2, Lcom/dynatrace/android/agent/conf/ConfigurationBuilder;->t:Lcom/dynatrace/agent/common/InstrumentationFlavor;

    iget-object v4, v2, Lcom/dynatrace/android/agent/conf/ConfigurationBuilder;->c:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v9, 0x0

    if-eqz v4, :cond_b

    if-nez v1, :cond_1

    goto/16 :goto_4

    :cond_1
    const-string v1, "/"

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    goto :goto_0

    :cond_2
    move-object v4, v5

    :goto_0
    if-nez v4, :cond_4

    :cond_3
    :goto_1
    move-object v13, v5

    goto :goto_3

    :cond_4
    const-string v7, "^(https?://)?([^\\s/$.?#](?::?[^\\s?]*\\@)?[^\\s/:?]*(?::[\\d]+)?)(?:/|$)([^\\s?]*)"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v4, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x3

    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_6

    goto :goto_1

    :cond_6
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_7

    goto :goto_1

    :cond_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v7, :cond_8

    const-string v7, "https://"

    :cond_8
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {v10, v4, v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_9
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    :goto_2
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v13, v1

    :goto_3
    if-nez v13, :cond_c

    :cond_b
    :goto_4
    move-object v10, v5

    goto/16 :goto_6

    :cond_c
    iget-object v1, v2, Lcom/dynatrace/android/agent/conf/ConfigurationBuilder;->b:Ljava/lang/String;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_d

    goto :goto_5

    :cond_d
    move-object v1, v5

    :goto_5
    if-nez v1, :cond_e

    goto :goto_4

    :cond_e
    const/16 v4, 0xfa

    invoke-static {v4, v1}, Lcom/dynatrace/android/agent/util/Utility;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/dynatrace/android/agent/util/Utility;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "_"

    const-string v5, "%5F"

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sget-object v1, Lcom/dynatrace/agent/common/InstrumentationFlavor;->PLAIN:Lcom/dynatrace/agent/common/InstrumentationFlavor;

    if-ne v3, v1, :cond_f

    sget-object v3, Lcom/dynatrace/agent/common/InstrumentationFlavor;->JETPACK_COMPOSE:Lcom/dynatrace/agent/common/InstrumentationFlavor;

    :cond_f
    move-object/from16 v31, v3

    new-instance v10, Lcom/dynatrace/android/agent/conf/Configuration;

    iget-object v14, v2, Lcom/dynatrace/android/agent/conf/ConfigurationBuilder;->a:Lcom/dynatrace/android/agent/conf/AgentMode;

    iget-boolean v15, v2, Lcom/dynatrace/android/agent/conf/ConfigurationBuilder;->d:Z

    iget v1, v2, Lcom/dynatrace/android/agent/conf/ConfigurationBuilder;->n:I

    iget v3, v2, Lcom/dynatrace/android/agent/conf/ConfigurationBuilder;->o:I

    iget-boolean v4, v2, Lcom/dynatrace/android/agent/conf/ConfigurationBuilder;->p:Z

    iget-boolean v5, v2, Lcom/dynatrace/android/agent/conf/ConfigurationBuilder;->q:Z

    iget-boolean v7, v2, Lcom/dynatrace/android/agent/conf/ConfigurationBuilder;->m:Z

    iget-boolean v8, v2, Lcom/dynatrace/android/agent/conf/ConfigurationBuilder;->e:Z

    iget-boolean v9, v2, Lcom/dynatrace/android/agent/conf/ConfigurationBuilder;->f:Z

    iget-boolean v0, v2, Lcom/dynatrace/android/agent/conf/ConfigurationBuilder;->g:Z

    move/from16 v23, v0

    iget-boolean v0, v2, Lcom/dynatrace/android/agent/conf/ConfigurationBuilder;->r:Z

    move/from16 v24, v0

    iget-object v0, v2, Lcom/dynatrace/android/agent/conf/ConfigurationBuilder;->h:[Ljava/lang/String;

    move-object/from16 v25, v0

    iget-object v0, v2, Lcom/dynatrace/android/agent/conf/ConfigurationBuilder;->i:[Ljava/lang/String;

    move-object/from16 v26, v0

    iget-object v0, v2, Lcom/dynatrace/android/agent/conf/ConfigurationBuilder;->s:[Ljava/lang/String;

    move-object/from16 v27, v0

    iget-boolean v0, v2, Lcom/dynatrace/android/agent/conf/ConfigurationBuilder;->j:Z

    move/from16 v28, v0

    iget-boolean v0, v2, Lcom/dynatrace/android/agent/conf/ConfigurationBuilder;->k:Z

    move/from16 v29, v0

    iget-boolean v0, v2, Lcom/dynatrace/android/agent/conf/ConfigurationBuilder;->l:Z

    move/from16 v30, v0

    iget-boolean v0, v2, Lcom/dynatrace/android/agent/conf/ConfigurationBuilder;->u:Z

    iget v2, v2, Lcom/dynatrace/android/agent/conf/ConfigurationBuilder;->v:I

    move/from16 v32, v0

    move/from16 v16, v1

    move/from16 v33, v2

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v7

    move/from16 v21, v8

    move/from16 v22, v9

    invoke-direct/range {v10 .. v33}, Lcom/dynatrace/android/agent/conf/Configuration;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dynatrace/android/agent/conf/AgentMode;ZIIZZZZZZZ[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZZZLcom/dynatrace/agent/common/InstrumentationFlavor;ZI)V

    :goto_6
    sget-object v0, Lcom/dynatrace/android/agent/Dynatrace;->a:Ljava/lang/Object;

    if-nez v10, :cond_10

    goto :goto_9

    :cond_10
    sget-object v0, Lcom/dynatrace/android/agent/util/Utility;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Landroid/os/Process;->isIsolated()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_9

    :cond_11
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_7

    :cond_12
    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_7
    if-nez v0, :cond_13

    goto :goto_9

    :cond_13
    sget-object v1, Lcom/dynatrace/android/agent/Dynatrace;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/dynatrace/android/agent/Dynatrace;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_14

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_9

    :catchall_0
    move-exception v0

    goto/16 :goto_d

    :cond_14
    :try_start_1
    new-instance v3, Lcom/dynatrace/android/agent/mixed/AgentServiceLocatorImpl;

    invoke-virtual {v10}, Lcom/dynatrace/android/agent/conf/Configuration;->a()Lcom/dynatrace/agent/OneAgentConfiguration;

    move-result-object v4

    new-instance v2, Lcom/dynatrace/android/agent/mixed/TimeProviderFactory;

    invoke-direct {v2}, Lcom/dynatrace/android/agent/mixed/TimeProviderFactory;-><init>()V

    invoke-static {}, Lcom/dynatrace/android/agent/mixed/TimeProviderFactory;->a()Lcom/dynatrace/agent/common/time/TimeProvider;

    move-result-object v5

    new-instance v8, Lcom/dynatrace/android/agent/mixed/SecondGenServiceLocatorImpl;

    invoke-direct {v8, v6}, Lcom/dynatrace/android/agent/mixed/SecondGenServiceLocatorImpl;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/dynatrace/android/agent/mixed/AgentServiceLocatorImpl;-><init>(Lcom/dynatrace/agent/OneAgentConfiguration;Lcom/dynatrace/agent/common/time/TimeProvider;Landroid/app/Application;Lokhttp3/Call$Factory;Lcom/dynatrace/agent/di/SecondGenServiceLocator;)V

    invoke-static {v6, v10, v3}, Lcom/dynatrace/android/agent/Core;->j(Landroid/app/Application;Lcom/dynatrace/android/agent/conf/Configuration;Lcom/dynatrace/android/agent/mixed/AgentServiceLocatorImpl;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_8

    :catch_0
    :try_start_2
    sget-boolean v0, Lcom/dynatrace/android/agent/Global;->a:Z

    :goto_8
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_9
    new-instance v0, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions$Builder;

    invoke-direct {v0}, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions$Builder;-><init>()V

    sget-object v1, Lcom/dynatrace/android/agent/conf/DataCollectionLevel;->USER_BEHAVIOR:Lcom/dynatrace/android/agent/conf/DataCollectionLevel;

    invoke-virtual {v0, v1}, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions$Builder;->a(Lcom/dynatrace/android/agent/conf/DataCollectionLevel;)V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions$Builder;->b:Z

    iget-object v1, v0, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions$Builder;->d:Ljava/lang/Boolean;

    if-nez v1, :cond_15

    iput-boolean v2, v0, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions$Builder;->c:Z

    :cond_15
    new-instance v1, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;

    invoke-direct {v1, v0}, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;-><init>(Lcom/dynatrace/android/agent/conf/UserPrivacyOptions$Builder;)V

    sget-object v0, Lcom/dynatrace/android/agent/Global;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_16

    goto/16 :goto_c

    :cond_16
    sget-object v2, Lcom/dynatrace/android/agent/AdkSettings;->k:Lcom/dynatrace/android/agent/AdkSettings;

    iget-object v3, v2, Lcom/dynatrace/android/agent/AdkSettings;->f:Lcom/dynatrace/android/agent/conf/Configuration;

    iget-boolean v3, v3, Lcom/dynatrace/android/agent/conf/Configuration;->s:Z

    if-nez v3, :cond_17

    goto/16 :goto_c

    :cond_17
    iget-boolean v3, v1, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;->b:Z

    if-nez v3, :cond_19

    iget-boolean v4, v1, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;->c:Z

    if-eqz v4, :cond_19

    new-instance v5, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions$Builder;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iget-object v6, v1, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;->a:Lcom/dynatrace/android/agent/conf/DataCollectionLevel;

    iput-object v6, v5, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions$Builder;->a:Lcom/dynatrace/android/agent/conf/DataCollectionLevel;

    iput-boolean v3, v5, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions$Builder;->b:Z

    iput-boolean v4, v5, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions$Builder;->c:Z

    iget-object v1, v1, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;->d:Ljava/lang/Boolean;

    iput-object v1, v5, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions$Builder;->d:Ljava/lang/Boolean;

    if-nez v1, :cond_18

    const/4 v1, 0x0

    iput-boolean v1, v5, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions$Builder;->c:Z

    :cond_18
    new-instance v1, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;

    invoke-direct {v1, v5}, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;-><init>(Lcom/dynatrace/android/agent/conf/UserPrivacyOptions$Builder;)V

    sget-boolean v3, Lcom/dynatrace/android/agent/Global;->a:Z

    :cond_19
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1a

    sget-object v0, Lcom/dynatrace/android/agent/conf/PrivacyRules;->b:Lcom/dynatrace/android/agent/conf/PrivacyRules;

    iget-object v0, v0, Lcom/dynatrace/android/agent/conf/PrivacyRules;->a:Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;

    goto :goto_a

    :cond_1a
    invoke-static {}, Lcom/dynatrace/android/agent/data/Session;->a()Lcom/dynatrace/android/agent/data/Session;

    move-result-object v0

    iget-object v0, v0, Lcom/dynatrace/android/agent/data/Session;->i:Lcom/dynatrace/android/agent/conf/PrivacyRules;

    iget-object v0, v0, Lcom/dynatrace/android/agent/conf/PrivacyRules;->a:Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;

    :goto_a
    invoke-virtual {v1, v0}, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_c

    :cond_1b
    iget-object v0, v2, Lcom/dynatrace/android/agent/AdkSettings;->d:Lcom/dynatrace/android/agent/conf/PreferencesManager;

    const-string v2, "DTXCScreenRecordOptedIn"

    iget-object v0, v0, Lcom/dynatrace/android/agent/conf/PreferencesManager;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "DTXOptInCrashes"

    iget-boolean v4, v1, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;->b:Z

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "DTXDataCollectionLevel"

    iget-object v4, v1, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;->a:Lcom/dynatrace/android/agent/conf/DataCollectionLevel;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "DTXCrashReplayOptedIn"

    iget-boolean v4, v1, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;->c:Z

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v3, v1, Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;->d:Ljava/lang/Boolean;

    if-nez v3, :cond_1c

    const/4 v3, -0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_b

    :cond_1c
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :goto_b
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v0, Lcom/dynatrace/android/agent/conf/PrivacyRules;

    invoke-direct {v0, v1}, Lcom/dynatrace/android/agent/conf/PrivacyRules;-><init>(Lcom/dynatrace/android/agent/conf/UserPrivacyOptions;)V

    sget-object v1, Lcom/dynatrace/android/agent/Core;->a:Lcom/dynatrace/android/lifecycle/ActivityLifecycleMonitor;

    sget-object v1, Lcom/dynatrace/android/agent/TimeLineProvider;->c:Lcom/dynatrace/android/agent/TimeLineProvider;

    invoke-virtual {v1}, Lcom/dynatrace/android/agent/TimeLineProvider;->a()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-static {v3, v0, v1, v2}, Lcom/dynatrace/android/agent/Core;->i(ZLcom/dynatrace/android/agent/conf/PrivacyRules;J)V

    :goto_c
    return-void

    :goto_d
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_1d
    const-string v0, "Failed requirement."

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method
