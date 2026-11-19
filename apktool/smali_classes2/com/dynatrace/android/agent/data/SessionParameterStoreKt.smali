.class public abstract Lcom/dynatrace/android/agent/data/SessionParameterStoreKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "agent.core_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Landroidx/datastore/preferences/PreferenceDataStoreSingletonDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v1, Lcom/dynatrace/android/agent/data/SessionParameterStoreKt;

    const-string v2, "dataStore"

    const-string v3, "getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->h(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    new-array v1, v4, [Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Lcom/dynatrace/android/agent/data/SessionParameterStoreKt;->a:[Lkotlin/reflect/KProperty;

    new-instance v0, Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;

    new-instance v1, Lav0;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Lav0;-><init>(I)V

    invoke-direct {v0, v1}, Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;-><init>(Lkotlin/jvm/functions/Function1;)V

    const/4 v1, 0x0

    const/16 v2, 0xc

    const-string v3, "dynatrace-legacy-preferences"

    invoke-static {v3, v0, v1, v1, v2}, Landroidx/datastore/preferences/PreferenceDataStoreDelegateKt;->a(Ljava/lang/String;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Ll00;Lkotlinx/coroutines/CoroutineScope;I)Landroidx/datastore/preferences/PreferenceDataStoreSingletonDelegate;

    move-result-object v0

    sput-object v0, Lcom/dynatrace/android/agent/data/SessionParameterStoreKt;->b:Landroidx/datastore/preferences/PreferenceDataStoreSingletonDelegate;

    return-void
.end method
