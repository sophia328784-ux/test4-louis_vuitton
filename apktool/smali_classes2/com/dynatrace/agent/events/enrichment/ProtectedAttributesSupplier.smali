.class public final Lcom/dynatrace/agent/events/enrichment/ProtectedAttributesSupplier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/dynatrace/agent/events/enrichment/AttributeSupplier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dynatrace/agent/events/enrichment/ProtectedAttributesSupplier$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001:\u0001\u0007B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/dynatrace/agent/events/enrichment/ProtectedAttributesSupplier;",
        "Lcom/dynatrace/agent/events/enrichment/AttributeSupplier;",
        "",
        "applicationId",
        "agentVersion",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "Companion",
        "com.dynatrace.agent_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/dynatrace/agent/events/enrichment/ProtectedAttributesSupplier$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/events/enrichment/ProtectedAttributesSupplier$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/events/enrichment/ProtectedAttributesSupplier;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/dynatrace/agent/events/enrichment/ProtectedAttributesSupplier;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lkotlin/collections/builders/ListBuilder;
    .locals 3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->v()Lkotlin/collections/builders/ListBuilder;

    move-result-object v0

    const-string v1, "dt.rum.schema_version"

    const-string v2, "0.24.0"

    invoke-static {v0, v1, v2}, Lcom/dynatrace/agent/events/enrichment/AttributeSupplierKt;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "dt.rum.agent.version"

    iget-object v2, p0, Lcom/dynatrace/agent/events/enrichment/ProtectedAttributesSupplier;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/dynatrace/agent/events/enrichment/AttributeSupplierKt;->b(Lkotlin/collections/builders/ListBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "dt.rum.agent.type"

    const-string v2, "android"

    invoke-static {v0, v1, v2}, Lcom/dynatrace/agent/events/enrichment/AttributeSupplierKt;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "dt.rum.application.id"

    iget-object p0, p0, Lcom/dynatrace/agent/events/enrichment/ProtectedAttributesSupplier;->a:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/dynatrace/agent/events/enrichment/AttributeSupplierKt;->b(Lkotlin/collections/builders/ListBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->r(Ljava/util/List;)Lkotlin/collections/builders/ListBuilder;

    move-result-object p0

    return-object p0
.end method
