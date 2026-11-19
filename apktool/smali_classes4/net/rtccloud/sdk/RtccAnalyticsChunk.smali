.class public final Lnet/rtccloud/sdk/RtccAnalyticsChunk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/rtccloud/sdk/RtccAnalyticsChunk$Param;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u0001\u001bB\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0012\u001a\u00020\u0007H\u00c6\u0003J\'\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0014\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u00d6\u0083\u0004J\n\u0010\u0017\u001a\u00020\u0018H\u00d6\u0081\u0004J\n\u0010\u0019\u001a\u00020\u001aH\u00d6\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001c"
    }
    d2 = {
        "Lnet/rtccloud/sdk/RtccAnalyticsChunk;",
        "",
        "chunk",
        "Ljava/nio/ByteBuffer;",
        "param",
        "Lnet/rtccloud/sdk/RtccAnalyticsChunk$Param;",
        "emissionDate",
        "Ljava/util/Date;",
        "<init>",
        "(Ljava/nio/ByteBuffer;Lnet/rtccloud/sdk/RtccAnalyticsChunk$Param;Ljava/util/Date;)V",
        "getChunk",
        "()Ljava/nio/ByteBuffer;",
        "getParam",
        "()Lnet/rtccloud/sdk/RtccAnalyticsChunk$Param;",
        "getEmissionDate",
        "()Ljava/util/Date;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "Param",
        "rtcc_release"
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
.field private final chunk:Ljava/nio/ByteBuffer;

.field private final emissionDate:Ljava/util/Date;

.field private final param:Lnet/rtccloud/sdk/RtccAnalyticsChunk$Param;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Lnet/rtccloud/sdk/RtccAnalyticsChunk$Param;Ljava/util/Date;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/rtccloud/sdk/RtccAnalyticsChunk;->chunk:Ljava/nio/ByteBuffer;

    iput-object p2, p0, Lnet/rtccloud/sdk/RtccAnalyticsChunk;->param:Lnet/rtccloud/sdk/RtccAnalyticsChunk$Param;

    iput-object p3, p0, Lnet/rtccloud/sdk/RtccAnalyticsChunk;->emissionDate:Ljava/util/Date;

    return-void
.end method

.method public static synthetic copy$default(Lnet/rtccloud/sdk/RtccAnalyticsChunk;Ljava/nio/ByteBuffer;Lnet/rtccloud/sdk/RtccAnalyticsChunk$Param;Ljava/util/Date;ILjava/lang/Object;)Lnet/rtccloud/sdk/RtccAnalyticsChunk;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lnet/rtccloud/sdk/RtccAnalyticsChunk;->chunk:Ljava/nio/ByteBuffer;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lnet/rtccloud/sdk/RtccAnalyticsChunk;->param:Lnet/rtccloud/sdk/RtccAnalyticsChunk$Param;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lnet/rtccloud/sdk/RtccAnalyticsChunk;->emissionDate:Ljava/util/Date;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lnet/rtccloud/sdk/RtccAnalyticsChunk;->copy(Ljava/nio/ByteBuffer;Lnet/rtccloud/sdk/RtccAnalyticsChunk$Param;Ljava/util/Date;)Lnet/rtccloud/sdk/RtccAnalyticsChunk;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/RtccAnalyticsChunk;->chunk:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final component2()Lnet/rtccloud/sdk/RtccAnalyticsChunk$Param;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/RtccAnalyticsChunk;->param:Lnet/rtccloud/sdk/RtccAnalyticsChunk$Param;

    return-object p0
.end method

.method public final component3()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/RtccAnalyticsChunk;->emissionDate:Ljava/util/Date;

    return-object p0
.end method

.method public final copy(Ljava/nio/ByteBuffer;Lnet/rtccloud/sdk/RtccAnalyticsChunk$Param;Ljava/util/Date;)Lnet/rtccloud/sdk/RtccAnalyticsChunk;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lnet/rtccloud/sdk/RtccAnalyticsChunk;

    invoke-direct {p0, p1, p2, p3}, Lnet/rtccloud/sdk/RtccAnalyticsChunk;-><init>(Ljava/nio/ByteBuffer;Lnet/rtccloud/sdk/RtccAnalyticsChunk$Param;Ljava/util/Date;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lnet/rtccloud/sdk/RtccAnalyticsChunk;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lnet/rtccloud/sdk/RtccAnalyticsChunk;

    iget-object v1, p0, Lnet/rtccloud/sdk/RtccAnalyticsChunk;->chunk:Ljava/nio/ByteBuffer;

    iget-object v3, p1, Lnet/rtccloud/sdk/RtccAnalyticsChunk;->chunk:Ljava/nio/ByteBuffer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lnet/rtccloud/sdk/RtccAnalyticsChunk;->param:Lnet/rtccloud/sdk/RtccAnalyticsChunk$Param;

    iget-object v3, p1, Lnet/rtccloud/sdk/RtccAnalyticsChunk;->param:Lnet/rtccloud/sdk/RtccAnalyticsChunk$Param;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lnet/rtccloud/sdk/RtccAnalyticsChunk;->emissionDate:Ljava/util/Date;

    iget-object p1, p1, Lnet/rtccloud/sdk/RtccAnalyticsChunk;->emissionDate:Ljava/util/Date;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getChunk()Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/RtccAnalyticsChunk;->chunk:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public final getEmissionDate()Ljava/util/Date;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/RtccAnalyticsChunk;->emissionDate:Ljava/util/Date;

    return-object p0
.end method

.method public final getParam()Lnet/rtccloud/sdk/RtccAnalyticsChunk$Param;
    .locals 0

    iget-object p0, p0, Lnet/rtccloud/sdk/RtccAnalyticsChunk;->param:Lnet/rtccloud/sdk/RtccAnalyticsChunk$Param;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lnet/rtccloud/sdk/RtccAnalyticsChunk;->chunk:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/rtccloud/sdk/RtccAnalyticsChunk;->param:Lnet/rtccloud/sdk/RtccAnalyticsChunk$Param;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lnet/rtccloud/sdk/RtccAnalyticsChunk;->emissionDate:Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lnet/rtccloud/sdk/RtccAnalyticsChunk;->chunk:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lnet/rtccloud/sdk/RtccAnalyticsChunk;->param:Lnet/rtccloud/sdk/RtccAnalyticsChunk$Param;

    iget-object p0, p0, Lnet/rtccloud/sdk/RtccAnalyticsChunk;->emissionDate:Ljava/util/Date;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RtccAnalyticsChunk(chunk="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", param="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", emissionDate="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
