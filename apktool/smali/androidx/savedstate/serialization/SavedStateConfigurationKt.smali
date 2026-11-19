.class public abstract Landroidx/savedstate/serialization/SavedStateConfigurationKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "savedstate"
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
.field public static final a:Lkotlinx/serialization/modules/SerialModuleImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlinx/serialization/modules/SerializersModuleBuilder;

    invoke-direct {v0}, Lkotlinx/serialization/modules/SerializersModuleBuilder;-><init>()V

    sget-object v1, Landroidx/savedstate/serialization/serializers/SavedStateSerializer;->a:Landroidx/savedstate/serialization/serializers/SavedStateSerializer;

    sget-object v2, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v3, Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lkotlinx/serialization/modules/SerializersModuleBuilder;->c(Lkotlin/reflect/KClass;Lkotlinx/serialization/KSerializer;)V

    const-class v1, Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    new-instance v3, Lgt0;

    const/16 v4, 0x8

    invoke-direct {v3, v4}, Lgt0;-><init>(I)V

    invoke-virtual {v0, v1, v3}, Lkotlinx/serialization/modules/SerializersModuleBuilder;->e(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0}, Lkotlinx/serialization/modules/SerializersModuleBuilder;->f()Lkotlinx/serialization/modules/SerialModuleImpl;

    move-result-object v0

    new-instance v1, Lkotlinx/serialization/modules/SerializersModuleBuilder;

    invoke-direct {v1}, Lkotlinx/serialization/modules/SerializersModuleBuilder;-><init>()V

    sget-object v3, Landroidx/savedstate/serialization/serializers/SizeSerializer;->a:Landroidx/savedstate/serialization/serializers/SizeSerializer;

    const-class v4, Landroid/util/Size;

    invoke-virtual {v2, v4}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Lkotlinx/serialization/modules/SerializersModuleBuilder;->c(Lkotlin/reflect/KClass;Lkotlinx/serialization/KSerializer;)V

    sget-object v3, Landroidx/savedstate/serialization/serializers/SizeFSerializer;->a:Landroidx/savedstate/serialization/serializers/SizeFSerializer;

    const-class v4, Landroid/util/SizeF;

    invoke-virtual {v2, v4}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Lkotlinx/serialization/modules/SerializersModuleBuilder;->c(Lkotlin/reflect/KClass;Lkotlinx/serialization/KSerializer;)V

    const-class v3, Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    new-instance v3, Lgt0;

    const/16 v4, 0x9

    invoke-direct {v3, v4}, Lgt0;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Lkotlinx/serialization/modules/SerializersModuleBuilder;->e(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1}, Lkotlinx/serialization/modules/SerializersModuleBuilder;->f()Lkotlinx/serialization/modules/SerialModuleImpl;

    move-result-object v1

    sget-object v2, Lkotlinx/serialization/modules/SerializersModuleKt;->a:Lkotlinx/serialization/modules/SerialModuleImpl;

    new-instance v2, Lkotlinx/serialization/modules/SerializersModuleBuilder;

    invoke-direct {v2}, Lkotlinx/serialization/modules/SerializersModuleBuilder;-><init>()V

    invoke-virtual {v0, v2}, Lkotlinx/serialization/modules/SerialModuleImpl;->a(Lkotlinx/serialization/modules/SerializersModuleCollector;)V

    invoke-virtual {v1, v2}, Lkotlinx/serialization/modules/SerialModuleImpl;->a(Lkotlinx/serialization/modules/SerializersModuleCollector;)V

    invoke-virtual {v2}, Lkotlinx/serialization/modules/SerializersModuleBuilder;->f()Lkotlinx/serialization/modules/SerialModuleImpl;

    move-result-object v0

    sput-object v0, Landroidx/savedstate/serialization/SavedStateConfigurationKt;->a:Lkotlinx/serialization/modules/SerialModuleImpl;

    return-void
.end method
