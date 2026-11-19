.class public final Lcom/vuitton/android/data/dto/config/cache/AddressAutocompleteConfigCache;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/config/cache/AddressAutocompleteConfigCache$$serializer;,
        Lcom/vuitton/android/data/dto/config/cache/AddressAutocompleteConfigCache$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u000b2\u00020\u0001:\u0002\u000c\u000bB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B#\u0008\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\u0004\u0010\n\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/config/cache/AddressAutocompleteConfigCache;",
        "",
        "",
        "isDebounceEnabled",
        "<init>",
        "(Z)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(IZLkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "Companion",
        "$serializer",
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

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lcom/vuitton/android/data/dto/config/cache/AddressAutocompleteConfigCache$Companion;


# instance fields
.field public final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/dto/config/cache/AddressAutocompleteConfigCache$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/config/cache/AddressAutocompleteConfigCache$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/config/cache/AddressAutocompleteConfigCache;->Companion:Lcom/vuitton/android/data/dto/config/cache/AddressAutocompleteConfigCache$Companion;

    return-void
.end method

.method public synthetic constructor <init>(IZLkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p3, p1, 0x1

    const/4 v0, 0x1

    if-ne v0, p3, :cond_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/vuitton/android/data/dto/config/cache/AddressAutocompleteConfigCache;->a:Z

    return-void

    :cond_0
    sget-object p0, Lcom/vuitton/android/data/dto/config/cache/AddressAutocompleteConfigCache$$serializer;->a:Lcom/vuitton/android/data/dto/config/cache/AddressAutocompleteConfigCache$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/config/cache/AddressAutocompleteConfigCache$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/config/cache/AddressAutocompleteConfigCache;->a:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/config/cache/AddressAutocompleteConfigCache;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/config/cache/AddressAutocompleteConfigCache;

    iget-boolean p0, p0, Lcom/vuitton/android/data/dto/config/cache/AddressAutocompleteConfigCache;->a:Z

    iget-boolean p1, p1, Lcom/vuitton/android/data/dto/config/cache/AddressAutocompleteConfigCache;->a:Z

    if-eq p0, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget-boolean p0, p0, Lcom/vuitton/android/data/dto/config/cache/AddressAutocompleteConfigCache;->a:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, "AddressAutocompleteConfigCache(isDebounceEnabled="

    const-string v1, ")"

    iget-boolean p0, p0, Lcom/vuitton/android/data/dto/config/cache/AddressAutocompleteConfigCache;->a:Z

    invoke-static {v0, v1, p0}, Ltr;->i(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
