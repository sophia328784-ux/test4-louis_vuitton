.class public final Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$preloadServerConfiguration$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Lkotlinx/coroutines/flow/FlowCollector;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;)V
    .locals 0

    iput-object p1, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$preloadServerConfiguration$$inlined$map$1$2;->b:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$preloadServerConfiguration$$inlined$map$1$2$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$preloadServerConfiguration$$inlined$map$1$2$1;

    iget v3, v2, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$preloadServerConfiguration$$inlined$map$1$2$1;->c:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$preloadServerConfiguration$$inlined$map$1$2$1;->c:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$preloadServerConfiguration$$inlined$map$1$2$1;

    invoke-direct {v2, v0, v1}, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$preloadServerConfiguration$$inlined$map$1$2$1;-><init>(Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$preloadServerConfiguration$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$preloadServerConfiguration$$inlined$map$1$2$1;->b:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v2, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$preloadServerConfiguration$$inlined$map$1$2$1;->c:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_10

    :cond_1
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v1, p1

    check-cast v1, Landroidx/datastore/preferences/core/Preferences;

    sget-object v4, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$Keys;->a:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {v1, v4}, Landroidx/datastore/preferences/core/Preferences;->b(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    :goto_1
    move-wide v9, v6

    goto :goto_2

    :cond_3
    const-wide/16 v6, 0x0

    goto :goto_1

    :goto_2
    sget-object v4, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$Keys;->b:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {v1, v4}, Landroidx/datastore/preferences/core/Preferences;->b(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_3
    move v11, v4

    goto :goto_4

    :cond_4
    const/16 v4, 0x400

    goto :goto_3

    :goto_4
    sget-object v4, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$Keys;->c:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {v1, v4}, Landroidx/datastore/preferences/core/Preferences;->b(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_5
    move v12, v4

    goto :goto_6

    :cond_5
    const/16 v4, 0x100

    goto :goto_5

    :goto_6
    sget-object v4, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$Keys;->d:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {v1, v4}, Landroidx/datastore/preferences/core/Preferences;->b(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move v13, v4

    goto :goto_7

    :cond_6
    move v13, v5

    :goto_7
    sget-object v4, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$Keys;->e:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {v1, v4}, Landroidx/datastore/preferences/core/Preferences;->b(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_9

    const-string v6, ","

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x6

    invoke-static {v4, v6, v7, v8}, Lkotlin/text/StringsKt;->L(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_9

    check-cast v4, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_8
    :goto_9
    move-object v14, v6

    goto :goto_a

    :cond_9
    sget-object v6, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    goto :goto_9

    :goto_a
    sget-object v4, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$Keys;->f:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {v1, v4}, Landroidx/datastore/preferences/core/Preferences;->b(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_a

    const-string v4, ""

    :cond_a
    move-object v15, v4

    sget-object v4, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$Keys;->g:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {v1, v4}, Landroidx/datastore/preferences/core/Preferences;->b(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move/from16 v16, v4

    goto :goto_b

    :cond_b
    move/from16 v16, v5

    :goto_b
    sget-object v4, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$Keys;->h:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {v1, v4}, Landroidx/datastore/preferences/core/Preferences;->b(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move/from16 v17, v4

    goto :goto_c

    :cond_c
    move/from16 v17, v5

    :goto_c
    sget-object v4, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$Keys;->i:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {v1, v4}, Landroidx/datastore/preferences/core/Preferences;->b(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    const/16 v6, 0x64

    if-eqz v4, :cond_d

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move/from16 v18, v4

    goto :goto_d

    :cond_d
    move/from16 v18, v6

    :goto_d
    sget-object v4, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$Keys;->j:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {v1, v4}, Landroidx/datastore/preferences/core/Preferences;->b(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_e

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :cond_e
    move/from16 v19, v6

    sget-object v4, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$Keys;->k:Landroidx/datastore/preferences/core/Preferences$Key;

    invoke-virtual {v1, v4}, Landroidx/datastore/preferences/core/Preferences;->b(Landroidx/datastore/preferences/core/Preferences$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_e
    move/from16 v20, v1

    goto :goto_f

    :cond_f
    const v1, 0xc350

    goto :goto_e

    :goto_f
    new-instance v8, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    invoke-direct/range {v8 .. v20}, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;-><init>(JIIZLjava/util/List;Ljava/lang/String;ZZIII)V

    iput v5, v2, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$preloadServerConfiguration$$inlined$map$1$2$1;->c:I

    iget-object v0, v0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$preloadServerConfiguration$$inlined$map$1$2;->b:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {v0, v8, v2}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_10

    return-object v3

    :cond_10
    :goto_10
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
