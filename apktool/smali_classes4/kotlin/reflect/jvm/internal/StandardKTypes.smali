.class public abstract Lkotlin/reflect/jvm/internal/StandardKTypes;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0008\u00c0\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lkotlin/reflect/jvm/internal/StandardKTypes;",
        "",
        "kotlin-reflection"
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
.field public static final a:Lkotlin/reflect/KType;

.field public static final b:Lkotlin/reflect/KType;

.field public static final c:Lkotlin/reflect/KType;

.field public static final d:Lkotlin/reflect/KType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget-object v0, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v1, Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lkotlin/jvm/internal/ReflectionFactory;->l(Lkotlin/reflect/KClass;Ljava/util/List;Z)Lkotlin/reflect/KType;

    move-result-object v2

    sput-object v2, Lkotlin/reflect/jvm/internal/StandardKTypes;->a:Lkotlin/reflect/KType;

    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lkotlin/jvm/internal/ReflectionFactory;->l(Lkotlin/reflect/KClass;Ljava/util/List;Z)Lkotlin/reflect/KType;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/StandardKTypes;->b:Lkotlin/reflect/KType;

    const-class v1, Ljava/lang/Cloneable;

    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Lkotlin/jvm/internal/ReflectionFactory;->l(Lkotlin/reflect/KClass;Ljava/util/List;Z)Lkotlin/reflect/KType;

    move-result-object v1

    sput-object v1, Lkotlin/reflect/jvm/internal/StandardKTypes;->c:Lkotlin/reflect/KType;

    const-class v1, Ljava/io/Serializable;

    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Lkotlin/jvm/internal/ReflectionFactory;->l(Lkotlin/reflect/KClass;Ljava/util/List;Z)Lkotlin/reflect/KType;

    move-result-object v0

    sput-object v0, Lkotlin/reflect/jvm/internal/StandardKTypes;->d:Lkotlin/reflect/KType;

    return-void
.end method
