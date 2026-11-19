.class public abstract Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttributeSanitationKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "com.dynatrace.agent_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lkotlin/text/Regex;

.field public static final b:Ljava/util/List;

.field public static final c:Ljava/util/List;

.field public static final d:Ljava/util/List;

.field public static final e:Ld20;

.field public static final f:Ld20;

.field public static final g:Ld20;

.field public static final h:Ld20;

.field public static final i:Ld20;

.field public static final j:Ld20;

.field public static final k:Ld20;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "^[a-zA-Z0-9]+(?:\\.[a-zA-Z][a-zA-Z0-9]*|_[a-zA-Z0-9]+)*$"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttributeSanitationKt;->a:Lkotlin/text/Regex;

    const-string v0, "duration"

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttributeSanitationKt;->b:Ljava/util/List;

    const-string v0, "url.full"

    const-string v1, "exception.stack_trace"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttributeSanitationKt;->c:Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttributeSanitationKt;->d:Ljava/util/List;

    new-instance v0, Ld20;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ld20;-><init>(I)V

    sput-object v0, Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttributeSanitationKt;->e:Ld20;

    new-instance v0, Ld20;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Ld20;-><init>(I)V

    sput-object v0, Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttributeSanitationKt;->f:Ld20;

    new-instance v0, Ld20;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Ld20;-><init>(I)V

    sput-object v0, Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttributeSanitationKt;->g:Ld20;

    new-instance v0, Ld20;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Ld20;-><init>(I)V

    sput-object v0, Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttributeSanitationKt;->h:Ld20;

    new-instance v0, Ld20;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ld20;-><init>(I)V

    sput-object v0, Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttributeSanitationKt;->i:Ld20;

    new-instance v0, Ld20;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Ld20;-><init>(I)V

    sput-object v0, Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttributeSanitationKt;->j:Ld20;

    new-instance v0, Ld20;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Ld20;-><init>(I)V

    sput-object v0, Lcom/dynatrace/agent/events/enrichment/sanitation/JsonAttributeSanitationKt;->k:Ld20;

    return-void
.end method
