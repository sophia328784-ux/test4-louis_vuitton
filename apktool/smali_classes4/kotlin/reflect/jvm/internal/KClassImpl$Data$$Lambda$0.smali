.class Lkotlin/reflect/jvm/internal/KClassImpl$Data$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final b:Lkotlin/reflect/jvm/internal/KClassImpl;

.field public final c:Lkotlin/reflect/jvm/internal/KClassImpl$Data;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/KClassImpl;Lkotlin/reflect/jvm/internal/KClassImpl$Data;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$Lambda$0;->b:Lkotlin/reflect/jvm/internal/KClassImpl;

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$Lambda$0;->c:Lkotlin/reflect/jvm/internal/KClassImpl$Data;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/reflect/jvm/internal/KClassImpl$Data;->u:[Lkotlin/reflect/KProperty;

    sget-boolean v0, Lkotlin/reflect/jvm/internal/SystemPropertiesKt;->b:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_d

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$Lambda$0;->b:Lkotlin/reflect/jvm/internal/KClassImpl;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KClassImpl;->e:Ljava/lang/Class;

    const-class v0, Lkotlin/Metadata;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lkotlin/Metadata;

    if-eqz p0, :cond_12

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata;->a:Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Lkotlin/Metadata;->mv()[I

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_c

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;

    invoke-interface {p0}, Lkotlin/Metadata;->mv()[I

    move-result-object v5

    invoke-interface {p0}, Lkotlin/Metadata;->xi()I

    move-result v6

    and-int/2addr v2, v6

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-direct {v0, v5, v2}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;-><init>([IZ)V

    invoke-virtual {v0, v3, v3, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;->a(III)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v1, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "while maximum supported version is "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;->f:Z

    if-eqz v1, :cond_1

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;->g:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;

    goto :goto_1

    :cond_1
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;->h:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/MetadataVersion;

    :goto_1
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". To support newer versions, update the kotlin-metadata-jvm library."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    const-string p0, "while minimum supported version is 1.1.0 (Kotlin 1.0)."

    :goto_2
    const-string v1, "Provided Metadata instance has version "

    const-string v2, ", "

    invoke-static {v1, v0, v2, p0}, Lb21;->s(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4

    :cond_3
    :try_start_0
    invoke-interface {p0}, Lkotlin/Metadata;->k()I

    move-result v0

    if-eq v0, v3, :cond_8

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$Unknown;

    invoke-direct {v0, p0, v3}, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$Unknown;-><init>(Lkotlin/Metadata;Z)V

    goto :goto_3

    :cond_4
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$MultiFileClassPart;

    invoke-direct {v0, p0, v3}, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$MultiFileClassPart;-><init>(Lkotlin/Metadata;Z)V

    goto :goto_3

    :cond_5
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$MultiFileClassFacade;

    invoke-direct {v0, p0, v3}, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$MultiFileClassFacade;-><init>(Lkotlin/Metadata;Z)V

    goto :goto_3

    :cond_6
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$SyntheticClass;

    invoke-direct {v0, p0, v3}, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$SyntheticClass;-><init>(Lkotlin/Metadata;Z)V

    goto :goto_3

    :cond_7
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$FileFacade;

    invoke-direct {v0, p0, v3}, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$FileFacade;-><init>(Lkotlin/Metadata;Z)V

    goto :goto_3

    :cond_8
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$Class;

    invoke-direct {v0, p0, v3}, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$Class;-><init>(Lkotlin/Metadata;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    instance-of p0, v0, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$Class;

    if-eqz p0, :cond_9

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$Class;

    goto :goto_4

    :cond_9
    move-object v0, v4

    :goto_4
    if-eqz v0, :cond_12

    iget-object p0, v0, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$Class;->b:Lkotlin/reflect/jvm/internal/impl/km/KmClass;

    return-object p0

    :catchall_0
    move-exception p0

    instance-of v0, p0, Ljava/lang/IllegalArgumentException;

    if-nez v0, :cond_b

    instance-of v0, p0, Ljava/lang/VirtualMachineError;

    if-nez v0, :cond_b

    instance-of v0, p0, Ljava/lang/ThreadDeath;

    if-eqz v0, :cond_a

    goto :goto_5

    :cond_a
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/InconsistentKotlinMetadataException;

    const-string v1, "Exception occurred when reading Kotlin metadata"

    invoke-direct {v0, v1, p0}, Lkotlin/reflect/jvm/internal/impl/km/InconsistentKotlinMetadataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v0

    :cond_b
    :goto_5
    throw p0

    :cond_c
    const-string p0, "Provided Metadata instance does not have metadataVersion in it and therefore is malformed and cannot be read."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v4

    :cond_d
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/KClassImpl$Data$$Lambda$0;->c:Lkotlin/reflect/jvm/internal/KClassImpl$Data;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/KClassImpl$Data;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    move-result-object p0

    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;

    if-eqz v0, :cond_10

    move-object v0, p0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;

    iget-object v1, v0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;->i:Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKind;

    instance-of v5, v1, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionTypeKind$Function;

    if-eqz v5, :cond_f

    iget p0, v0, Lkotlin/reflect/jvm/internal/impl/builtins/functions/FunctionClassDescriptor;->j:I

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/KmClass;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/km/KmClass;-><init>()V

    const-string v1, "kotlin/Function"

    invoke-static {p0, v1}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lkotlin/reflect/jvm/internal/impl/km/KmClass;->b:Ljava/lang/String;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/km/ClassKind;->INTERFACE:Lkotlin/reflect/jvm/internal/impl/km/ClassKind;

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/km/Attributes;->a:[Lkotlin/reflect/KProperty;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/km/Attributes;->d:Lkotlin/reflect/jvm/internal/impl/km/internal/EnumFlagDelegate;

    sget-object v6, Lkotlin/reflect/jvm/internal/impl/km/Attributes;->a:[Lkotlin/reflect/KProperty;

    const/16 v7, 0x9

    aget-object v7, v6, v7

    invoke-virtual {v5, v0, v7, v4}, Lkotlin/reflect/jvm/internal/impl/km/internal/EnumFlagDelegate;->b(Lkotlin/reflect/jvm/internal/impl/km/KmClass;Lkotlin/reflect/KProperty;Ljava/lang/Enum;)V

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/km/Modality;->ABSTRACT:Lkotlin/reflect/jvm/internal/impl/km/Modality;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/km/Attributes;->b:Lkotlin/reflect/jvm/internal/impl/km/internal/EnumFlagDelegate;

    const/4 v7, 0x7

    aget-object v7, v6, v7

    invoke-virtual {v5, v0, v7, v4}, Lkotlin/reflect/jvm/internal/impl/km/internal/EnumFlagDelegate;->b(Lkotlin/reflect/jvm/internal/impl/km/KmClass;Lkotlin/reflect/KProperty;Ljava/lang/Enum;)V

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/km/Visibility;->PUBLIC:Lkotlin/reflect/jvm/internal/impl/km/Visibility;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/km/Attributes;->c:Lkotlin/reflect/jvm/internal/impl/km/internal/EnumFlagDelegate;

    aget-object v2, v6, v2

    invoke-virtual {v5, v0, v2, v4}, Lkotlin/reflect/jvm/internal/impl/km/internal/EnumFlagDelegate;->b(Lkotlin/reflect/jvm/internal/impl/km/KmClass;Lkotlin/reflect/KProperty;Ljava/lang/Enum;)V

    iget-object v2, v0, Lkotlin/reflect/jvm/internal/impl/km/KmClass;->c:Ljava/util/ArrayList;

    if-gt v3, p0, :cond_e

    move v4, v3

    :goto_6
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/km/KmTypeParameter;

    const-string v6, "P"

    invoke-static {v4, v6}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lkotlin/reflect/jvm/internal/impl/km/KmVariance;->IN:Lkotlin/reflect/jvm/internal/impl/km/KmVariance;

    invoke-direct {v5, v6, v4, v7}, Lkotlin/reflect/jvm/internal/impl/km/KmTypeParameter;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/km/KmVariance;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq v4, p0, :cond_e

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_e
    add-int/2addr p0, v3

    new-instance v3, Lkotlin/reflect/jvm/internal/impl/km/KmTypeParameter;

    const-string v4, "R"

    sget-object v5, Lkotlin/reflect/jvm/internal/impl/km/KmVariance;->OUT:Lkotlin/reflect/jvm/internal/impl/km/KmVariance;

    invoke-direct {v3, v4, p0, v5}, Lkotlin/reflect/jvm/internal/impl/km/KmTypeParameter;-><init>(Ljava/lang/String;ILkotlin/reflect/jvm/internal/impl/km/KmVariance;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/km/KmType;

    invoke-direct {v2}, Lkotlin/reflect/jvm/internal/impl/km/KmType;-><init>()V

    new-instance v3, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier$Class;

    invoke-direct {v3, v1}, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier$Class;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Lkotlin/reflect/jvm/internal/impl/km/KmType;->b:Lkotlin/reflect/jvm/internal/impl/km/KmClassifier;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/km/KmVariance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/km/KmVariance;

    new-instance v3, Lkotlin/reflect/jvm/internal/impl/km/KmType;

    invoke-direct {v3}, Lkotlin/reflect/jvm/internal/impl/km/KmType;-><init>()V

    new-instance v4, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier$TypeParameter;

    invoke-direct {v4, p0}, Lkotlin/reflect/jvm/internal/impl/km/KmClassifier$TypeParameter;-><init>(I)V

    iput-object v4, v3, Lkotlin/reflect/jvm/internal/impl/km/KmType;->b:Lkotlin/reflect/jvm/internal/impl/km/KmClassifier;

    new-instance p0, Lkotlin/reflect/jvm/internal/impl/km/KmTypeProjection;

    invoke-direct {p0, v1, v3}, Lkotlin/reflect/jvm/internal/impl/km/KmTypeProjection;-><init>(Lkotlin/reflect/jvm/internal/impl/km/KmVariance;Lkotlin/reflect/jvm/internal/impl/km/KmType;)V

    iget-object v1, v2, Lkotlin/reflect/jvm/internal/impl/km/KmType;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, v0, Lkotlin/reflect/jvm/internal/impl/km/KmClass;->d:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_f
    const-string v0, "Unsupported function type kind: "

    const-string v2, " ("

    invoke-static {v0, v1, v2, p0}, Lwp;->f(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4

    :cond_10
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;

    if-eqz v0, :cond_11

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;

    goto :goto_7

    :cond_11
    move-object p0, v4

    :goto_7
    if-eqz p0, :cond_12

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->g:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/descriptors/DeserializedClassDescriptor;->n:Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/DeserializationContext;->b:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;

    const/4 v2, 0x6

    invoke-static {v0, p0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt;->c(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Class;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;ZI)Lkotlin/reflect/jvm/internal/impl/km/KmClass;

    move-result-object p0

    return-object p0

    :cond_12
    return-object v4
.end method
