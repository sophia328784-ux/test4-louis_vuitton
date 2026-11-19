.class public final Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$Unknown;
.super Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Unknown"
.end annotation


# direct methods
.method public constructor <init>(Lkotlin/Metadata;Z)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance p0, Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;

    invoke-interface {p1}, Lkotlin/Metadata;->mv()[I

    move-result-object p2

    invoke-direct {p0, p2}, Lkotlin/reflect/jvm/internal/impl/km/jvm/JvmMetadataVersion;-><init>([I)V

    invoke-interface {p1}, Lkotlin/Metadata;->xi()I

    return-void
.end method
