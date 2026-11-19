.class public final Lcom/dynatrace/agent/storage/di/StorageModule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/dynatrace/agent/storage/di/StorageModule;",
        "",
        "Landroid/content/Context;",
        "context",
        "Lkotlinx/coroutines/CoroutineScope;",
        "externalScope",
        "<init>",
        "(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;)V",
        "com.dynatrace.agent_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic d:[Lkotlin/reflect/KProperty;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroidx/datastore/preferences/PreferenceDataStoreSingletonDelegate;

.field public final c:Lcom/dynatrace/agent/storage/db/OneAgentDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/jvm/internal/PropertyReference2Impl;

    const-class v1, Lcom/dynatrace/agent/storage/di/StorageModule;

    const-string v2, "dataStore"

    const-string v3, "getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference2Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->i(Lkotlin/jvm/internal/PropertyReference2;)Lkotlin/reflect/KProperty2;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    aput-object v0, v1, v4

    sput-object v1, Lcom/dynatrace/agent/storage/di/StorageModule;->d:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/storage/di/StorageModule;->a:Landroid/content/Context;

    new-instance v0, Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;

    new-instance v1, Ll01;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ll01;-><init>(I)V

    invoke-direct {v0, v1}, Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;-><init>(Lkotlin/jvm/functions/Function1;)V

    const/4 v1, 0x0

    const/4 v2, 0x4

    const-string v3, "dynatrace-preferences"

    invoke-static {v3, v0, v1, p2, v2}, Landroidx/datastore/preferences/PreferenceDataStoreDelegateKt;->a(Ljava/lang/String;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Ll00;Lkotlinx/coroutines/CoroutineScope;I)Landroidx/datastore/preferences/PreferenceDataStoreSingletonDelegate;

    move-result-object p2

    iput-object p2, p0, Lcom/dynatrace/agent/storage/di/StorageModule;->b:Landroidx/datastore/preferences/PreferenceDataStoreSingletonDelegate;

    const-class p2, Lcom/dynatrace/agent/storage/db/OneAgentDatabase;

    const-string v0, "dynatrace-database"

    invoke-static {p1, p2, v0}, Landroidx/room/Room;->a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/room/RoomDatabase$Builder;->b()Landroidx/room/RoomDatabase;

    move-result-object p1

    check-cast p1, Lcom/dynatrace/agent/storage/db/OneAgentDatabase;

    iput-object p1, p0, Lcom/dynatrace/agent/storage/di/StorageModule;->c:Lcom/dynatrace/agent/storage/db/OneAgentDatabase;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroidx/datastore/core/DataStore;
    .locals 2

    sget-object v0, Lcom/dynatrace/agent/storage/di/StorageModule;->d:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object p0, p0, Lcom/dynatrace/agent/storage/di/StorageModule;->b:Landroidx/datastore/preferences/PreferenceDataStoreSingletonDelegate;

    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/PreferenceDataStoreSingletonDelegate;->b(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/datastore/core/DataStore;

    return-object p0
.end method
