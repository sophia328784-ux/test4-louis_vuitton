.class public final Lcom/vuitton/android/data/datasource/consents/UserConsentsLocalDataSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/datasource/consents/UserConsentsLocalDataSource$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\tB!\u0008\u0007\u0012\u000e\u0008\u0001\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/android/data/datasource/consents/UserConsentsLocalDataSource;",
        "",
        "Ldagger/Lazy;",
        "Landroid/content/SharedPreferences;",
        "encryptedSharedPreferences",
        "Lkotlinx/serialization/json/Json;",
        "json",
        "<init>",
        "(Ldagger/Lazy;Lkotlinx/serialization/json/Json;)V",
        "Companion",
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
.field public final a:Ldagger/Lazy;

.field public final b:Lkotlinx/serialization/json/Json;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/datasource/consents/UserConsentsLocalDataSource$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/datasource/consents/UserConsentsLocalDataSource$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ldagger/Lazy;Lkotlinx/serialization/json/Json;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Landroid/content/SharedPreferences;",
            ">;",
            "Lkotlinx/serialization/json/Json;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/datasource/consents/UserConsentsLocalDataSource;->a:Ldagger/Lazy;

    iput-object p2, p0, Lcom/vuitton/android/data/datasource/consents/UserConsentsLocalDataSource;->b:Lkotlinx/serialization/json/Json;

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/Result;
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/data/datasource/consents/UserConsentsLocalDataSource;->a:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    const-string v1, "USER_CONSENT"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    sget-object v1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object p0, p0, Lcom/vuitton/android/data/datasource/consents/UserConsentsLocalDataSource;->b:Lkotlinx/serialization/json/Json;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents;->Companion:Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents$Companion;

    invoke-virtual {v1}, Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {p0, v1, v0}, Lkotlinx/serialization/json/Json;->b(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents;

    new-instance v0, Lkotlin/Result;

    invoke-direct {v0, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    instance-of v0, p0, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_2

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object v0, p0

    :goto_1
    check-cast v0, Lkotlin/Result;

    new-instance p0, Lkotlin/Result;

    iget-object v0, v0, Lkotlin/Result;->b:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    return-object p0

    :cond_2
    throw p0
.end method

.method public final b(Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lcom/vuitton/android/data/datasource/consents/UserConsentsLocalDataSource;->a:Ldagger/Lazy;

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/SharedPreferences;

    const-string v4, "USER_CONSENT"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Lcom/vuitton/android/data/datasource/consents/UserConsentsLocalDataSource;->b:Lkotlinx/serialization/json/Json;

    if-eqz v3, :cond_0

    sget-object v6, Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents;->Companion:Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents$Companion;

    invoke-virtual {v6}, Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v6

    check-cast v6, Lkotlinx/serialization/DeserializationStrategy;

    invoke-virtual {v0, v6, v3}, Lkotlinx/serialization/json/Json;->b(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents;

    goto :goto_0

    :cond_0
    move-object v3, v5

    :goto_0
    if-eqz v3, :cond_1f

    iget-object v6, v3, Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents;->b:Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsents;

    iget-object v3, v3, Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents;->a:Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;

    iget-object v7, v1, Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents;->a:Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;

    if-eqz v7, :cond_11

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;

    iget-object v9, v7, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;->a:Ljava/lang/Boolean;

    if-nez v9, :cond_2

    if-eqz v3, :cond_1

    iget-object v9, v3, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;->a:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    move-object v9, v5

    :cond_2
    :goto_1
    iget-object v10, v7, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;->b:Ljava/lang/Boolean;

    if-nez v10, :cond_4

    if-eqz v3, :cond_3

    iget-object v10, v3, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;->b:Ljava/lang/Boolean;

    goto :goto_2

    :cond_3
    move-object v10, v5

    :cond_4
    :goto_2
    iget-object v11, v7, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;->c:Ljava/lang/Boolean;

    if-nez v11, :cond_6

    if-eqz v3, :cond_5

    iget-object v11, v3, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;->c:Ljava/lang/Boolean;

    goto :goto_3

    :cond_5
    move-object v11, v5

    :cond_6
    :goto_3
    iget-object v12, v7, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;->d:Ljava/lang/Boolean;

    if-nez v12, :cond_8

    if-eqz v3, :cond_7

    iget-object v12, v3, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;->d:Ljava/lang/Boolean;

    goto :goto_4

    :cond_7
    move-object v12, v5

    :cond_8
    :goto_4
    iget-object v13, v7, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;->e:Ljava/lang/Boolean;

    if-nez v13, :cond_a

    if-eqz v3, :cond_9

    iget-object v13, v3, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;->e:Ljava/lang/Boolean;

    goto :goto_5

    :cond_9
    move-object v13, v5

    :cond_a
    :goto_5
    iget-object v14, v7, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;->f:Ljava/lang/Boolean;

    if-nez v14, :cond_c

    if-eqz v3, :cond_b

    iget-object v14, v3, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;->f:Ljava/lang/Boolean;

    goto :goto_6

    :cond_b
    move-object v14, v5

    :cond_c
    :goto_6
    iget-object v15, v7, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;->g:Ljava/lang/Boolean;

    if-nez v15, :cond_e

    if-eqz v3, :cond_d

    iget-object v15, v3, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;->g:Ljava/lang/Boolean;

    goto :goto_7

    :cond_d
    move-object v15, v5

    :cond_e
    :goto_7
    iget-object v7, v7, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;->h:Ljava/lang/Boolean;

    if-nez v7, :cond_f

    if-eqz v3, :cond_10

    iget-object v7, v3, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;->h:Ljava/lang/Boolean;

    :cond_f
    move-object/from16 v16, v7

    goto :goto_8

    :cond_10
    move-object/from16 v16, v5

    :goto_8
    invoke-direct/range {v8 .. v16}, Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_9

    :cond_11
    move-object v8, v5

    :goto_9
    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents;->b:Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsents;

    if-eqz v1, :cond_1e

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsents;

    iget-object v3, v1, Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsents;->a:Ljava/lang/Boolean;

    if-nez v3, :cond_12

    if-eqz v6, :cond_13

    iget-object v3, v6, Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsents;->a:Ljava/lang/Boolean;

    :cond_12
    move-object v10, v3

    goto :goto_a

    :cond_13
    move-object v10, v5

    :goto_a
    iget-object v3, v1, Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsents;->b:Ljava/lang/Boolean;

    if-nez v3, :cond_14

    if-eqz v6, :cond_15

    iget-object v3, v6, Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsents;->b:Ljava/lang/Boolean;

    :cond_14
    move-object v11, v3

    goto :goto_b

    :cond_15
    move-object v11, v5

    :goto_b
    iget-object v3, v1, Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsents;->c:Ljava/lang/Boolean;

    if-nez v3, :cond_16

    if-eqz v6, :cond_17

    iget-object v3, v6, Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsents;->c:Ljava/lang/Boolean;

    :cond_16
    move-object v12, v3

    goto :goto_c

    :cond_17
    move-object v12, v5

    :goto_c
    iget-object v3, v1, Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsents;->d:Ljava/lang/Boolean;

    if-nez v3, :cond_18

    if-eqz v6, :cond_19

    iget-object v3, v6, Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsents;->d:Ljava/lang/Boolean;

    :cond_18
    move-object v13, v3

    goto :goto_d

    :cond_19
    move-object v13, v5

    :goto_d
    iget-object v3, v1, Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsents;->e:Ljava/lang/Boolean;

    if-nez v3, :cond_1a

    if-eqz v6, :cond_1b

    iget-object v3, v6, Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsents;->e:Ljava/lang/Boolean;

    :cond_1a
    move-object v14, v3

    goto :goto_e

    :cond_1b
    move-object v14, v5

    :goto_e
    iget-object v1, v1, Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsents;->f:Ljava/lang/Boolean;

    if-nez v1, :cond_1d

    if-eqz v6, :cond_1c

    iget-object v5, v6, Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsents;->f:Ljava/lang/Boolean;

    :cond_1c
    move-object v15, v5

    goto :goto_f

    :cond_1d
    move-object v15, v1

    :goto_f
    const/16 v17, 0x40

    const/16 v18, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v9 .. v18}, Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsents;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v5, v9

    :cond_1e
    new-instance v1, Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents;

    invoke-direct {v1, v8, v5}, Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents;-><init>(Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;Lcom/vuitton/foundation/model/domain/model/account/consent/MarketingConsents;)V

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents;->Companion:Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents$Companion;

    invoke-virtual {v3}, Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v3

    check-cast v3, Lkotlinx/serialization/SerializationStrategy;

    invoke-virtual {v0, v3, v1}, Lkotlinx/serialization/json/Json;->c(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :cond_1f
    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents;->Companion:Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents$Companion;

    invoke-virtual {v3}, Lcom/vuitton/foundation/model/domain/model/account/consent/UserConsents$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v3

    check-cast v3, Lkotlinx/serialization/SerializationStrategy;

    invoke-virtual {v0, v3, v1}, Lkotlinx/serialization/json/Json;->c(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
