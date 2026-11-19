.class public final Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$SyntheticClass;
.super Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SyntheticClass"
.end annotation


# direct methods
.method public constructor <init>(Lkotlin/Metadata;Z)V
    .locals 10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lkotlin/Metadata;->d1()[Ljava/lang/String;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p2, v1

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p1}, Lkotlin/Metadata;->d2()[Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmProtoBufUtil;->g([Ljava/lang/String;[Ljava/lang/String;)Lkotlin/Pair;

    move-result-object p2

    iget-object v0, p2, Lkotlin/Pair;->b:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmNameResolver;

    iget-object p2, p2, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/km/jvm/internal/JvmReadUtils;->a(Lkotlin/Metadata;)Z

    move-result v5

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/KmLambda;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/km/KmLambda;-><init>()V

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;

    new-instance v3, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;

    iget-object v4, p2, Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;->r:Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v4}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$TypeTable;)V

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;->b:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;->c:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;

    const/16 v8, 0x30

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v9}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;-><init>(Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/NameResolver;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/TypeTable;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;ZLkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p2, v1}, Lkotlin/reflect/jvm/internal/impl/km/internal/ReadersKt;->e(Lkotlin/reflect/jvm/internal/impl/metadata/ProtoBuf$Function;Lkotlin/reflect/jvm/internal/impl/km/internal/ReadContext;)Lkotlin/reflect/jvm/internal/impl/km/KmFunction;

    move-object v1, v0

    :cond_1
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;

    invoke-interface {p1}, Lkotlin/Metadata;->mv()[I

    move-result-object v0

    invoke-direct {p2, v0}, Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;-><init>([I)V

    invoke-interface {p1}, Lkotlin/Metadata;->xi()I

    move-result p1

    invoke-direct {p0, v1, p2, p1}, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$SyntheticClass;-><init>(Lkotlin/reflect/jvm/internal/impl/km/KmLambda;Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;I)V

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/km/KmLambda;Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;I)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    .line 94
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
