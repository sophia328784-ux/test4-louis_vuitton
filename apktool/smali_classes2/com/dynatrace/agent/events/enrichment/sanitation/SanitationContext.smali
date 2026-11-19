.class public final Lcom/dynatrace/agent/events/enrichment/sanitation/SanitationContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/dynatrace/agent/events/enrichment/sanitation/SanitationContext;",
        "",
        "Lorg/json/JSONObject;",
        "sanitizedJson",
        "",
        "Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttribute;",
        "droppedAttributes",
        "droppedCustomAttributes",
        "<init>",
        "(Lorg/json/JSONObject;Ljava/util/List;Ljava/util/List;)V",
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
.field public final a:Lorg/json/JSONObject;

.field public final b:Ljava/util/List;

.field public final c:Ljava/util/List;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List<",
            "Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttribute;",
            ">;",
            "Ljava/util/List<",
            "Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttribute;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dynatrace/agent/events/enrichment/sanitation/SanitationContext;->a:Lorg/json/JSONObject;

    iput-object p2, p0, Lcom/dynatrace/agent/events/enrichment/sanitation/SanitationContext;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/dynatrace/agent/events/enrichment/sanitation/SanitationContext;->c:Ljava/util/List;

    return-void
.end method
