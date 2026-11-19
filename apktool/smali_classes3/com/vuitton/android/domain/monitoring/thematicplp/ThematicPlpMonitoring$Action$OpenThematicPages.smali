.class public final Lcom/vuitton/android/domain/monitoring/thematicplp/ThematicPlpMonitoring$Action$OpenThematicPages;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/domain/monitoring/thematicplp/ThematicPlpMonitoring$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/domain/monitoring/thematicplp/ThematicPlpMonitoring$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OpenThematicPages"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/domain/monitoring/thematicplp/ThematicPlpMonitoring$Action$OpenThematicPages;",
        "Lcom/vuitton/android/domain/monitoring/thematicplp/ThematicPlpMonitoring$Action;",
        "domain"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcom/vuitton/android/domain/monitoring/thematicplp/ThematicPlpMonitoring$Action$OpenThematicPages;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vuitton/android/domain/monitoring/thematicplp/ThematicPlpMonitoring$Action$OpenThematicPages;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vuitton/android/domain/monitoring/thematicplp/ThematicPlpMonitoring$Action$OpenThematicPages;->a:Lcom/vuitton/android/domain/monitoring/thematicplp/ThematicPlpMonitoring$Action$OpenThematicPages;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    const-string p0, "Open Thematic Page"

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of p0, p1, Lcom/vuitton/android/domain/monitoring/thematicplp/ThematicPlpMonitoring$Action$OpenThematicPages;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method public final hashCode()I
    .locals 0

    const p0, 0x28e770e4

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "OpenThematicPages"

    return-object p0
.end method
