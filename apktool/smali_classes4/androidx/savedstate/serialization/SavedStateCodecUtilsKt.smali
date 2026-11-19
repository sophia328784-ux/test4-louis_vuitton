.class public abstract Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;
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
.field public static final a:Lkotlinx/serialization/internal/ArrayListClassDesc;

.field public static final b:Lkotlinx/serialization/internal/ArrayListClassDesc;

.field public static final c:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

.field public static final d:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

.field public static final e:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

.field public static final f:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

.field public static final g:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

.field public static final h:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

.field public static final i:Lkotlinx/serialization/internal/ArrayClassDesc;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lkotlin/jvm/internal/IntCompanionObject;->a:Lkotlin/jvm/internal/IntCompanionObject;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlinx/serialization/internal/IntSerializer;->a:Lkotlinx/serialization/internal/IntSerializer;

    new-instance v1, Lkotlinx/serialization/internal/ArrayListSerializer;

    invoke-direct {v1, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    iget-object v0, v1, Lkotlinx/serialization/internal/ArrayListSerializer;->b:Lkotlinx/serialization/internal/ArrayListClassDesc;

    sput-object v0, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->a:Lkotlinx/serialization/internal/ArrayListClassDesc;

    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->e(Lkotlin/jvm/internal/StringCompanionObject;)V

    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    new-instance v1, Lkotlinx/serialization/internal/ArrayListSerializer;

    invoke-direct {v1, v0}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    iget-object v1, v1, Lkotlinx/serialization/internal/ArrayListSerializer;->b:Lkotlinx/serialization/internal/ArrayListClassDesc;

    sput-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->b:Lkotlinx/serialization/internal/ArrayListClassDesc;

    sget-object v1, Lkotlinx/serialization/internal/BooleanArraySerializer;->c:Lkotlinx/serialization/internal/BooleanArraySerializer;

    iget-object v1, v1, Lkotlinx/serialization/internal/PrimitiveArraySerializer;->b:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

    sput-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->c:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

    sget-object v1, Lkotlinx/serialization/internal/CharArraySerializer;->c:Lkotlinx/serialization/internal/CharArraySerializer;

    iget-object v1, v1, Lkotlinx/serialization/internal/PrimitiveArraySerializer;->b:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

    sput-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->d:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

    sget-object v1, Lkotlinx/serialization/internal/DoubleArraySerializer;->c:Lkotlinx/serialization/internal/DoubleArraySerializer;

    iget-object v1, v1, Lkotlinx/serialization/internal/PrimitiveArraySerializer;->b:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

    sput-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->e:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

    sget-object v1, Lkotlinx/serialization/internal/FloatArraySerializer;->c:Lkotlinx/serialization/internal/FloatArraySerializer;

    iget-object v1, v1, Lkotlinx/serialization/internal/PrimitiveArraySerializer;->b:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

    sput-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->f:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

    sget-object v1, Lkotlinx/serialization/internal/IntArraySerializer;->c:Lkotlinx/serialization/internal/IntArraySerializer;

    iget-object v1, v1, Lkotlinx/serialization/internal/PrimitiveArraySerializer;->b:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

    sput-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->g:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

    sget-object v1, Lkotlinx/serialization/internal/LongArraySerializer;->c:Lkotlinx/serialization/internal/LongArraySerializer;

    iget-object v1, v1, Lkotlinx/serialization/internal/PrimitiveArraySerializer;->b:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

    sput-object v1, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->h:Lkotlinx/serialization/internal/PrimitiveArrayDescriptor;

    const-class v1, Ljava/lang/String;

    sget-object v2, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v2, v1}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlinx/serialization/builtins/BuiltinSerializersKt;->a(Lkotlin/reflect/KClass;Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/internal/ReferenceArraySerializer;

    move-result-object v0

    iget-object v0, v0, Lkotlinx/serialization/internal/ReferenceArraySerializer;->c:Lkotlinx/serialization/internal/ArrayClassDesc;

    sput-object v0, Landroidx/savedstate/serialization/SavedStateCodecUtilsKt;->i:Lkotlinx/serialization/internal/ArrayClassDesc;

    return-void
.end method
