.class public abstract Lkotlin/reflect/jvm/internal/CachesKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002*0\u0008\u0002\u0010\u0004\"\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u0012\u0004\u0012\u00020\u00030\u00002\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u0012\u0004\u0012\u00020\u00030\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "Lkotlin/Pair;",
        "",
        "Lkotlin/reflect/KTypeProjection;",
        "",
        "Key",
        "kotlin-reflection"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/CacheByClass;

.field public static final b:Lkotlin/reflect/jvm/internal/CacheByClass;

.field public static final c:Lkotlin/reflect/jvm/internal/CacheByClass;

.field public static final d:Lkotlin/reflect/jvm/internal/CacheByClass;

.field public static final e:Lkotlin/reflect/jvm/internal/CacheByClass;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$0;->b:Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$0;

    sget v1, Lkotlin/reflect/jvm/internal/CacheByClassKt;->a:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lkotlin/reflect/jvm/internal/ConcurrentHashMapCache;

    invoke-direct {v1, v0}, Lkotlin/reflect/jvm/internal/ConcurrentHashMapCache;-><init>(Lkotlin/jvm/functions/Function1;)V

    sput-object v1, Lkotlin/reflect/jvm/internal/CachesKt;->a:Lkotlin/reflect/jvm/internal/CacheByClass;

    sget-object v0, Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$1;->b:Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lkotlin/reflect/jvm/internal/ConcurrentHashMapCache;

    invoke-direct {v1, v0}, Lkotlin/reflect/jvm/internal/ConcurrentHashMapCache;-><init>(Lkotlin/jvm/functions/Function1;)V

    sput-object v1, Lkotlin/reflect/jvm/internal/CachesKt;->b:Lkotlin/reflect/jvm/internal/CacheByClass;

    sget-object v0, Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$2;->b:Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lkotlin/reflect/jvm/internal/ConcurrentHashMapCache;

    invoke-direct {v1, v0}, Lkotlin/reflect/jvm/internal/ConcurrentHashMapCache;-><init>(Lkotlin/jvm/functions/Function1;)V

    sput-object v1, Lkotlin/reflect/jvm/internal/CachesKt;->c:Lkotlin/reflect/jvm/internal/CacheByClass;

    sget-object v0, Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$3;->b:Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lkotlin/reflect/jvm/internal/ConcurrentHashMapCache;

    invoke-direct {v1, v0}, Lkotlin/reflect/jvm/internal/ConcurrentHashMapCache;-><init>(Lkotlin/jvm/functions/Function1;)V

    sput-object v1, Lkotlin/reflect/jvm/internal/CachesKt;->d:Lkotlin/reflect/jvm/internal/CacheByClass;

    sget-object v0, Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$4;->b:Lkotlin/reflect/jvm/internal/CachesKt$$Lambda$4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lkotlin/reflect/jvm/internal/ConcurrentHashMapCache;

    invoke-direct {v1, v0}, Lkotlin/reflect/jvm/internal/ConcurrentHashMapCache;-><init>(Lkotlin/jvm/functions/Function1;)V

    sput-object v1, Lkotlin/reflect/jvm/internal/CachesKt;->e:Lkotlin/reflect/jvm/internal/CacheByClass;

    return-void
.end method

.method public static final a(Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/KClassImpl;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlin/reflect/jvm/internal/CachesKt;->a:Lkotlin/reflect/jvm/internal/CacheByClass;

    invoke-virtual {v0, p0}, Lkotlin/reflect/jvm/internal/CacheByClass;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lkotlin/reflect/jvm/internal/KClassImpl;

    return-object p0
.end method
