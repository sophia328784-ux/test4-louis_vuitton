.class public final Lcom/appsflyer/sdk_base/util/OptionalFeaturesValidator$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/sdk_base/util/OptionalFeaturesValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0000\n\u0002\u0010\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0006H\u0007J\u000e\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000bH\u0007J\u0008\u0010\u000c\u001a\u00020\rH\u0007R\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/appsflyer/sdk_base/util/OptionalFeaturesValidator$Companion;",
        "",
        "<init>",
        "()V",
        "registeredFeatures",
        "",
        "Lcom/appsflyer/sdk_base/util/SupportedOptionalFeatures;",
        "addOptionalFeature",
        "",
        "feature",
        "getRegisteredFeatures",
        "",
        "clearRegisteredFeatures",
        "",
        "sdk_base_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lcom/appsflyer/sdk_base/util/OptionalFeaturesValidator$Companion;

.field private static final registeredFeatures:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/appsflyer/sdk_base/util/SupportedOptionalFeatures;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appsflyer/sdk_base/util/OptionalFeaturesValidator$Companion;

    invoke-direct {v0}, Lcom/appsflyer/sdk_base/util/OptionalFeaturesValidator$Companion;-><init>()V

    sput-object v0, Lcom/appsflyer/sdk_base/util/OptionalFeaturesValidator$Companion;->$$INSTANCE:Lcom/appsflyer/sdk_base/util/OptionalFeaturesValidator$Companion;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lcom/appsflyer/sdk_base/util/OptionalFeaturesValidator$Companion;->registeredFeatures:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addOptionalFeature(Lcom/appsflyer/sdk_base/util/SupportedOptionalFeatures;)Z
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/appsflyer/sdk_base/util/OptionalFeaturesValidator$Companion;->registeredFeatures:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final clearRegisteredFeatures()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object p0, Lcom/appsflyer/sdk_base/util/OptionalFeaturesValidator$Companion;->registeredFeatures:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public final getRegisteredFeatures()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/appsflyer/sdk_base/util/SupportedOptionalFeatures;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object p0, Lcom/appsflyer/sdk_base/util/OptionalFeaturesValidator$Companion;->registeredFeatures:Ljava/util/Set;

    return-object p0
.end method
