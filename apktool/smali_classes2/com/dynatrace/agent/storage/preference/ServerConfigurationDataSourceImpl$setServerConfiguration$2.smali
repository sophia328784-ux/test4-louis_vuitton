.class final Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$setServerConfiguration$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/datastore/preferences/core/MutablePreferences;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "preferences",
        "Landroidx/datastore/preferences/core/MutablePreferences;"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.dynatrace.agent.storage.preference.ServerConfigurationDataSourceImpl$setServerConfiguration$2"
    f = "ServerConfigurationDataSourceImpl.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;


# direct methods
.method public constructor <init>(Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$setServerConfiguration$2;->c:Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$setServerConfiguration$2;

    iget-object p0, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$setServerConfiguration$2;->c:Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    invoke-direct {v0, p0, p2}, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$setServerConfiguration$2;-><init>(Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$setServerConfiguration$2;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/datastore/preferences/core/MutablePreferences;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$setServerConfiguration$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$setServerConfiguration$2;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$setServerConfiguration$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$setServerConfiguration$2;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/datastore/preferences/core/MutablePreferences;

    sget-object v0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$Keys;->a:Landroidx/datastore/preferences/core/Preferences$Key;

    iget-object p0, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$setServerConfiguration$2;->c:Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;

    iget-wide v1, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->a:J

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, v1, v2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {p1, v0, v3}, Landroidx/datastore/preferences/core/MutablePreferences;->e(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$Keys;->b:Landroidx/datastore/preferences/core/Preferences$Key;

    iget v1, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->b:I

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0, v2}, Landroidx/datastore/preferences/core/MutablePreferences;->e(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$Keys;->c:Landroidx/datastore/preferences/core/Preferences$Key;

    iget v1, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->c:I

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0, v2}, Landroidx/datastore/preferences/core/MutablePreferences;->e(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$Keys;->d:Landroidx/datastore/preferences/core/Preferences$Key;

    iget-boolean v1, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->d:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/datastore/preferences/core/MutablePreferences;->e(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$Keys;->e:Landroidx/datastore/preferences/core/Preferences$Key;

    iget-object v1, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->e:Ljava/util/List;

    move-object v2, v1

    check-cast v2, Ljava/lang/Iterable;

    new-instance v6, Lav0;

    const/4 v1, 0x1

    invoke-direct {v6, v1}, Lav0;-><init>(I)V

    const/16 v7, 0x1e

    const-string v3, ","

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/collections/CollectionsKt;->K(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/datastore/preferences/core/MutablePreferences;->e(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$Keys;->f:Landroidx/datastore/preferences/core/Preferences$Key;

    iget-object v1, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroidx/datastore/preferences/core/MutablePreferences;->e(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$Keys;->g:Landroidx/datastore/preferences/core/Preferences$Key;

    iget-boolean v1, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->g:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/datastore/preferences/core/MutablePreferences;->e(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$Keys;->h:Landroidx/datastore/preferences/core/Preferences$Key;

    iget-boolean v1, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->h:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/datastore/preferences/core/MutablePreferences;->e(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$Keys;->i:Landroidx/datastore/preferences/core/Preferences$Key;

    iget v1, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->i:I

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0, v2}, Landroidx/datastore/preferences/core/MutablePreferences;->e(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$Keys;->j:Landroidx/datastore/preferences/core/Preferences$Key;

    iget v1, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->j:I

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0, v2}, Landroidx/datastore/preferences/core/MutablePreferences;->e(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    sget-object v0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationDataSourceImpl$Keys;->k:Landroidx/datastore/preferences/core/Preferences$Key;

    iget p0, p0, Lcom/dynatrace/agent/storage/preference/ServerConfigurationV4;->k:I

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Landroidx/datastore/preferences/core/MutablePreferences;->e(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
