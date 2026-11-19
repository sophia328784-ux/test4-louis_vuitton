.class public abstract Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$Class;,
        Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$Companion;,
        Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$FileFacade;,
        Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$MultiFileClassFacade;,
        Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$MultiFileClassPart;,
        Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$SyntheticClass;,
        Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$Unknown;
    }
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata;->a:Lkotlin/reflect/jvm/internal/impl/km/jvm/KotlinClassMetadata$Companion;

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
