.class public final Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder$DuplicatedActionException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0002:\u0001 B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004JK\u0010\u000e\u001aG\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0010\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000b0\n\u0012\u0004\u0012\u00020\t\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000b0\n0\u000fj\u0008\u0012\u0004\u0012\u00028\u0000`\u0011\u00a2\u0006\u0002\u0008\u000cJC\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000\"\u0008\u0008\u0001\u0010\u0013*\u00020\t2\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u0002H\u00130\u00072\u001d\u0010\u0015\u001a\u0019\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u0002H\u0013\u0012\u0004\u0012\u00028\u00000\u0008\u00a2\u0006\u0002\u0008\u000cJC\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000\"\u0008\u0008\u0001\u0010\u0013*\u00020\t2\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u0002H\u00130\u00072\u001d\u0010\u0015\u001a\u0019\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u0002H\u0013\u0012\u0004\u0012\u00020\u000b0\u0008\u00a2\u0006\u0002\u0008\u000cJO\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000\"\u0008\u0008\u0001\u0010\u0013*\u00020\t2\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u0002H\u00130\u00072)\u0010\u0015\u001a%\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u0002H\u0013\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000b0\n0\u0008\u00a2\u0006\u0002\u0008\u000cJ<\u0010\u0018\u001a\u00020\u0019\"\u0008\u0008\u0001\u0010\u0013*\u00020\t*\u0008\u0012\u0004\u0012\u0002H\u00130\u00072\u001d\u0010\u0015\u001a\u0019\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u0002H\u0013\u0012\u0004\u0012\u00028\u00000\u0008\u00a2\u0006\u0002\u0008\u000cH\u0086\u0004J<\u0010\u001a\u001a\u00020\u0019\"\u0008\u0008\u0001\u0010\u0013*\u00020\t*\u0008\u0012\u0004\u0012\u0002H\u00130\u00072\u001d\u0010\u0015\u001a\u0019\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u0002H\u0013\u0012\u0004\u0012\u00020\u000b0\u0008\u00a2\u0006\u0002\u0008\u000cH\u0086\u0004J+\u0010\u001b\u001a\u00020\u0019\"\u0008\u0008\u0001\u0010\u0013*\u00020\t*\u0008\u0012\u0004\u0012\u0002H\u00130\u00072\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u001dH\u0086\u0004JH\u0010\u001e\u001a\u00020\u0019\"\u0008\u0008\u0001\u0010\u0013*\u00020\t*\u0008\u0012\u0004\u0012\u0002H\u00130\u00072)\u0010\u0015\u001a%\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u0002H\u0013\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000b0\n0\u0008\u00a2\u0006\u0002\u0008\u000cH\u0086\u0004JG\u0010\u001f\u001a\u00020\u0019\"\u0008\u0008\u0001\u0010\u0013*\u00020\t*\u0008\u0012\u0004\u0012\u0002H\u00130\u00072)\u0010\u0015\u001a%\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u0002H\u0013\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000b0\n0\u0008\u00a2\u0006\u0002\u0008\u000cH\u0002RQ\u0010\u0005\u001aE\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0007\u00127\u00125\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\t\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000b0\n0\u0008j\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\t`\r\u00a2\u0006\u0002\u0008\u000c0\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;",
        "S",
        "",
        "<init>",
        "()V",
        "predicates",
        "",
        "Lkotlin/reflect/KClass;",
        "Lkotlin/Function2;",
        "Lcom/sightcall/libraries/archi/nucleus/Action;",
        "Lkotlin/Pair;",
        "Lcom/sightcall/libraries/archi/nucleus/Command;",
        "Lkotlin/ExtensionFunctionType;",
        "Lcom/sightcall/libraries/archi/nucleus/NucleusReduceFun;",
        "build",
        "Lkotlin/Function3;",
        "Lcom/sightcall/libraries/archi/nucleus/Nucleus;",
        "Lcom/sightcall/libraries/archi/nucleus/NucleusReducer;",
        "registerStateChange",
        "A",
        "kClass",
        "reduce",
        "registerCommandChange",
        "registerBothChange",
        "changesState",
        "",
        "changesCommand",
        "executesSimpleCommand",
        "function",
        "Lkotlin/Function0;",
        "changesBoth",
        "addReducer",
        "DuplicatedActionException",
        "archi_release"
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
.field private final predicates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/reflect/KClass<",
            "*>;",
            "Lkotlin/jvm/functions/Function2<",
            "TS;",
            "Lcom/sightcall/libraries/archi/nucleus/Action;",
            "Lkotlin/Pair<",
            "TS;",
            "Lcom/sightcall/libraries/archi/nucleus/Command;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;->predicates:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lcom/sightcall/libraries/archi/nucleus/Action;)Lkotlin/Pair;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;->changesState$lambda$0(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lcom/sightcall/libraries/archi/nucleus/Action;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method private final addReducer(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/sightcall/libraries/archi/nucleus/Action;",
            ">(",
            "Lkotlin/reflect/KClass<",
            "TA;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TS;-TA;+",
            "Lkotlin/Pair<",
            "+TS;+",
            "Lcom/sightcall/libraries/archi/nucleus/Command;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;->predicates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;->predicates:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x2

    invoke-static {v0, p2}, Lkotlin/jvm/internal/TypeIntrinsics;->e(ILjava/lang/Object;)V

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder$DuplicatedActionException;

    invoke-direct {p0, p1}, Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder$DuplicatedActionException;-><init>(Lkotlin/reflect/KClass;)V

    throw p0
.end method

.method public static synthetic b(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lcom/sightcall/libraries/archi/nucleus/Action;)Lkotlin/Pair;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;->changesCommand$lambda$0(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lcom/sightcall/libraries/archi/nucleus/Action;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static final build$lambda$0(Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;Lcom/sightcall/libraries/archi/nucleus/Nucleus;Lkotlin/Pair;Lcom/sightcall/libraries/archi/nucleus/Action;)Lkotlin/Pair;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p2, Lkotlin/Pair;->b:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    sget-object v0, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v0, p2}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p2

    iget-object v0, p0, Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;->predicates:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;->predicates:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/KClass;

    invoke-static {p2, v2}, Lkotlin/reflect/full/KClasses;->a(Lkotlin/reflect/KClass;Lkotlin/reflect/KClass;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->C(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lkotlin/jvm/functions/Function2;

    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0, p1, p3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/Pair;

    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    new-instance p0, Lkotlin/Pair;

    sget-object p2, Lcom/sightcall/libraries/archi/nucleus/NoCommand;->INSTANCE:Lcom/sightcall/libraries/archi/nucleus/NoCommand;

    invoke-direct {p0, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static synthetic c(Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;Lcom/sightcall/libraries/archi/nucleus/Nucleus;Lkotlin/Pair;Lcom/sightcall/libraries/archi/nucleus/Action;)Lkotlin/Pair;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;->build$lambda$0(Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;Lcom/sightcall/libraries/archi/nucleus/Nucleus;Lkotlin/Pair;Lcom/sightcall/libraries/archi/nucleus/Action;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static final changesCommand$lambda$0(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lcom/sightcall/libraries/archi/nucleus/Action;)Lkotlin/Pair;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkotlin/Pair;

    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static final changesState$lambda$0(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lcom/sightcall/libraries/archi/nucleus/Action;)Lkotlin/Pair;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkotlin/Pair;

    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/sightcall/libraries/archi/nucleus/NoCommand;->INSTANCE:Lcom/sightcall/libraries/archi/nucleus/NoCommand;

    invoke-direct {v0, p0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static synthetic d(Lkotlin/jvm/functions/Function0;Ljava/lang/Object;Lcom/sightcall/libraries/archi/nucleus/Action;)Lkotlin/Pair;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;->executesSimpleCommand$lambda$0(Lkotlin/jvm/functions/Function0;Ljava/lang/Object;Lcom/sightcall/libraries/archi/nucleus/Action;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static final executesSimpleCommand$lambda$0(Lkotlin/jvm/functions/Function0;Ljava/lang/Object;Lcom/sightcall/libraries/archi/nucleus/Action;)Lkotlin/Pair;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lkotlin/Pair;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1, v0}, Lcom/sightcall/libraries/archi/nucleus/CommandsKt;->simpleCommand$default(Lcom/sightcall/libraries/archi/nucleus/Action;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/sightcall/libraries/archi/nucleus/Command;

    move-result-object p0

    invoke-direct {p2, p1, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method


# virtual methods
.method public final build()Lkotlin/jvm/functions/Function3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function3<",
            "Lcom/sightcall/libraries/archi/nucleus/Nucleus<",
            "TS;>;",
            "Lkotlin/Pair<",
            "+TS;+",
            "Lcom/sightcall/libraries/archi/nucleus/Command;",
            ">;",
            "Lcom/sightcall/libraries/archi/nucleus/Action;",
            "Lkotlin/Pair<",
            "TS;",
            "Lcom/sightcall/libraries/archi/nucleus/Command;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lxe0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lxe0;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public final changesBoth(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/sightcall/libraries/archi/nucleus/Action;",
            ">(",
            "Lkotlin/reflect/KClass<",
            "TA;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TS;-TA;+",
            "Lkotlin/Pair<",
            "+TS;+",
            "Lcom/sightcall/libraries/archi/nucleus/Command;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1, p2}, Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;->addReducer(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final changesCommand(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/sightcall/libraries/archi/nucleus/Action;",
            ">(",
            "Lkotlin/reflect/KClass<",
            "TA;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TS;-TA;+",
            "Lcom/sightcall/libraries/archi/nucleus/Command;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lz4;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p2}, Lz4;-><init>(ILkotlin/jvm/functions/Function2;)V

    const/4 p2, 0x2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/TypeIntrinsics;->e(ILjava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;->addReducer(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final changesState(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/sightcall/libraries/archi/nucleus/Action;",
            ">(",
            "Lkotlin/reflect/KClass<",
            "TA;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TS;-TA;+TS;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lz4;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p2}, Lz4;-><init>(ILkotlin/jvm/functions/Function2;)V

    const/4 p2, 0x2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/TypeIntrinsics;->e(ILjava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;->addReducer(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final executesSimpleCommand(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/sightcall/libraries/archi/nucleus/Action;",
            ">(",
            "Lkotlin/reflect/KClass<",
            "TA;>;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkw;

    const/16 v1, 0xc

    invoke-direct {v0, p2, v1}, Lkw;-><init>(Lkotlin/jvm/functions/Function0;I)V

    const/4 p2, 0x2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/TypeIntrinsics;->e(ILjava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;->addReducer(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final registerBothChange(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function2;)Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/sightcall/libraries/archi/nucleus/Action;",
            ">(",
            "Lkotlin/reflect/KClass<",
            "TA;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TS;-TA;+",
            "Lkotlin/Pair<",
            "+TS;+",
            "Lcom/sightcall/libraries/archi/nucleus/Command;",
            ">;>;)",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder<",
            "TS;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;->changesBoth(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function2;)V

    return-object p0
.end method

.method public final registerCommandChange(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function2;)Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/sightcall/libraries/archi/nucleus/Action;",
            ">(",
            "Lkotlin/reflect/KClass<",
            "TA;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TS;-TA;+",
            "Lcom/sightcall/libraries/archi/nucleus/Command;",
            ">;)",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder<",
            "TS;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;->changesCommand(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function2;)V

    return-object p0
.end method

.method public final registerStateChange(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function2;)Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/sightcall/libraries/archi/nucleus/Action;",
            ">(",
            "Lkotlin/reflect/KClass<",
            "TA;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TS;-TA;+TS;>;)",
            "Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder<",
            "TS;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lcom/sightcall/libraries/archi/nucleus/NucleusReducerBuilder;->changesState(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function2;)V

    return-object p0
.end method
