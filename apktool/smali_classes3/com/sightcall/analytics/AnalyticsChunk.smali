.class public final Lcom/sightcall/analytics/AnalyticsChunk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/analytics/AnalyticsChunk$Param;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u00002\u00020\u0001:\u0001\u0014B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/sightcall/analytics/AnalyticsChunk;",
        "",
        "chunk",
        "",
        "uuid",
        "Ljava/util/UUID;",
        "param",
        "Lcom/sightcall/analytics/AnalyticsChunk$Param;",
        "emissionDate",
        "Ljava/util/Date;",
        "<init>",
        "([BLjava/util/UUID;Lcom/sightcall/analytics/AnalyticsChunk$Param;Ljava/util/Date;)V",
        "getChunk",
        "()[B",
        "getUuid",
        "()Ljava/util/UUID;",
        "getParam",
        "()Lcom/sightcall/analytics/AnalyticsChunk$Param;",
        "getEmissionDate",
        "()Ljava/util/Date;",
        "Param",
        "analytics_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final chunk:[B

.field private final emissionDate:Ljava/util/Date;

.field private final param:Lcom/sightcall/analytics/AnalyticsChunk$Param;

.field private final uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>([BLjava/util/UUID;Lcom/sightcall/analytics/AnalyticsChunk$Param;Ljava/util/Date;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/analytics/AnalyticsChunk;->chunk:[B

    iput-object p2, p0, Lcom/sightcall/analytics/AnalyticsChunk;->uuid:Ljava/util/UUID;

    iput-object p3, p0, Lcom/sightcall/analytics/AnalyticsChunk;->param:Lcom/sightcall/analytics/AnalyticsChunk$Param;

    iput-object p4, p0, Lcom/sightcall/analytics/AnalyticsChunk;->emissionDate:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public final getChunk()[B
    .locals 0

    iget-object p0, p0, Lcom/sightcall/analytics/AnalyticsChunk;->chunk:[B

    return-object p0
.end method

.method public final getEmissionDate()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/analytics/AnalyticsChunk;->emissionDate:Ljava/util/Date;

    return-object p0
.end method

.method public final getParam()Lcom/sightcall/analytics/AnalyticsChunk$Param;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/analytics/AnalyticsChunk;->param:Lcom/sightcall/analytics/AnalyticsChunk$Param;

    return-object p0
.end method

.method public final getUuid()Ljava/util/UUID;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/analytics/AnalyticsChunk;->uuid:Ljava/util/UUID;

    return-object p0
.end method
