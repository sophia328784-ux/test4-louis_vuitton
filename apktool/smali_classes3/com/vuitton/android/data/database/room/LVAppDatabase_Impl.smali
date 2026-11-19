.class public final Lcom/vuitton/android/data/database/room/LVAppDatabase_Impl;
.super Lcom/vuitton/android/data/database/room/LVAppDatabase;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/vuitton/android/data/database/room/LVAppDatabase_Impl;",
        "Lcom/vuitton/android/data/database/room/LVAppDatabase;",
        "<init>",
        "()V",
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


# static fields
.field public static final synthetic s:I


# instance fields
.field public final r:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/vuitton/android/data/database/room/LVAppDatabase;-><init>()V

    new-instance v0, Lss;

    const/16 v1, 0x19

    invoke-direct {v0, p0, v1}, Lss;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/vuitton/android/data/database/room/LVAppDatabase_Impl;->r:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final d(Ljava/util/LinkedHashMap;)Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance p1, Lcom/vuitton/android/data/database/room/LVAppDatabase_AutoMigration_3_4_Impl;

    invoke-direct {p1}, Lcom/vuitton/android/data/database/room/LVAppDatabase_AutoMigration_3_4_Impl;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/vuitton/android/data/database/room/LVAppDatabase_AutoMigration_4_5_Impl;

    invoke-direct {p1}, Lcom/vuitton/android/data/database/room/LVAppDatabase_AutoMigration_4_5_Impl;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/vuitton/android/data/database/room/LVAppDatabase_AutoMigration_5_6_Impl;

    invoke-direct {p1}, Lcom/vuitton/android/data/database/room/LVAppDatabase_AutoMigration_5_6_Impl;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/vuitton/android/data/database/room/LVAppDatabase_AutoMigration_6_7_Impl;

    invoke-direct {p1}, Lcom/vuitton/android/data/database/room/LVAppDatabase_AutoMigration_6_7_Impl;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/vuitton/android/data/database/room/LVAppDatabase_AutoMigration_7_8_Impl;

    invoke-direct {p1}, Lcom/vuitton/android/data/database/room/LVAppDatabase_AutoMigration_7_8_Impl;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/vuitton/android/data/database/room/LVAppDatabase_AutoMigration_8_9_Impl;

    invoke-direct {p1}, Lcom/vuitton/android/data/database/room/LVAppDatabase_AutoMigration_8_9_Impl;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final e()Landroidx/room/InvalidationTracker;
    .locals 4

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v2, Landroidx/room/InvalidationTracker;

    const-string v3, "LightUp"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v0, v1, v3}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v2
.end method

.method public final f()Landroidx/room/RoomOpenDelegateMarker;
    .locals 1

    new-instance v0, Lcom/vuitton/android/data/database/room/LVAppDatabase_Impl$createOpenDelegate$_openDelegate$1;

    invoke-direct {v0, p0}, Lcom/vuitton/android/data/database/room/LVAppDatabase_Impl$createOpenDelegate$_openDelegate$1;-><init>(Lcom/vuitton/android/data/database/room/LVAppDatabase_Impl;)V

    return-object v0
.end method

.method public final m()Ljava/util/Set;
    .locals 0

    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object p0
.end method

.method public final o()Ljava/util/LinkedHashMap;
    .locals 2

    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    const-class v0, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    sget-object v1, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl;->e:Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao_Impl$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final y()Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/data/database/room/LVAppDatabase_Impl;->r:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/data/connectivity/lightup/LightUpProductDao;

    return-object p0
.end method
