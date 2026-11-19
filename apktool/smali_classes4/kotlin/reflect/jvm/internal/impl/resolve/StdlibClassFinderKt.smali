.class public abstract Lkotlin/reflect/jvm/internal/impl/resolve/StdlibClassFinderKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleCapability;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleCapability;

    const-string v1, "StdlibClassFinder"

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleCapability;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/resolve/StdlibClassFinderKt;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleCapability;

    return-void
.end method
