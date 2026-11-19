.class Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final b:Ljava/lang/ClassLoader;

.field public final c:Lkotlin/reflect/jvm/internal/TypeParameterTable;

.field public final d:Lkotlin/jvm/functions/Function0;

.field public final e:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;Lkotlin/reflect/jvm/internal/TypeParameterTable;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt$$Lambda$2;->b:Ljava/lang/ClassLoader;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt$$Lambda$2;->c:Lkotlin/reflect/jvm/internal/TypeParameterTable;

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt$$Lambda$2;->d:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt$$Lambda$2;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/km/KmTypeProjection;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt$$Lambda$2;->d:Lkotlin/jvm/functions/Function0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt$$Lambda$4;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt$$Lambda$2;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0, v2}, Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt$$Lambda$4;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    new-instance v2, Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt$$Lambda$3;

    invoke-direct {v2, v0, p1}, Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt$$Lambda$3;-><init>(Lkotlin/jvm/functions/Function0;I)V

    :goto_0
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/km/KmTypeProjection;->c:Lkotlin/reflect/jvm/internal/impl/km/KmTypeProjection;

    invoke-virtual {p2, p1}, Lkotlin/reflect/jvm/internal/impl/km/KmTypeProjection;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p0, Lkotlin/reflect/KTypeProjection;->c:Lkotlin/reflect/KTypeProjection$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lkotlin/reflect/KTypeProjection;->d:Lkotlin/reflect/KTypeProjection;

    return-object p0

    :cond_1
    new-instance p1, Lkotlin/reflect/KTypeProjection;

    iget-object v0, p2, Lkotlin/reflect/jvm/internal/impl/km/KmTypeProjection;->a:Lkotlin/reflect/jvm/internal/impl/km/KmVariance;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt;->g(Lkotlin/reflect/jvm/internal/impl/km/KmVariance;)Lkotlin/reflect/KVariance;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    :goto_1
    iget-object p2, p2, Lkotlin/reflect/jvm/internal/impl/km/KmTypeProjection;->b:Lkotlin/reflect/jvm/internal/impl/km/KmType;

    if-eqz p2, :cond_3

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt$$Lambda$2;->b:Ljava/lang/ClassLoader;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt$$Lambda$2;->c:Lkotlin/reflect/jvm/internal/TypeParameterTable;

    invoke-static {p2, v1, p0, v2}, Lkotlin/reflect/jvm/internal/ConvertFromMetadataKt;->f(Lkotlin/reflect/jvm/internal/impl/km/KmType;Ljava/lang/ClassLoader;Lkotlin/reflect/jvm/internal/TypeParameterTable;Lkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/types/SimpleKType;

    move-result-object v1

    :cond_3
    invoke-direct {p1, v0, v1}, Lkotlin/reflect/KTypeProjection;-><init>(Lkotlin/reflect/KVariance;Lkotlin/reflect/KType;)V

    return-object p1
.end method
