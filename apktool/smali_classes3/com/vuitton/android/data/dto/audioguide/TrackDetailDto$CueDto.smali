.class public final Lcom/vuitton/android/data/dto/audioguide/TrackDetailDto$CueDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/data/dto/audioguide/TrackDetailDto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CueDto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/audioguide/TrackDetailDto$CueDto$$serializer;,
        Lcom/vuitton/android/data/dto/audioguide/TrackDetailDto$CueDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u000e2\u00020\u0001:\u0002\u000f\u000eB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008B5\u0008\u0010\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0004\u0008\u0007\u0010\r\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/audioguide/TrackDetailDto$CueDto;",
        "",
        "",
        "startMs",
        "endMs",
        "",
        "text",
        "<init>",
        "(JJLjava/lang/String;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(IJJLjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "Companion",
        "$serializer",
        "data"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lcom/vuitton/android/data/dto/audioguide/TrackDetailDto$CueDto$Companion;


# instance fields
.field public final a:J

.field public final b:J

.field public final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/dto/audioguide/TrackDetailDto$CueDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/audioguide/TrackDetailDto$CueDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/audioguide/TrackDetailDto$CueDto;->Companion:Lcom/vuitton/android/data/dto/audioguide/TrackDetailDto$CueDto$Companion;

    return-void
.end method

.method public synthetic constructor <init>(IJJLjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p1, 0x7

    const/4 v0, 0x7

    if-ne v0, p7, :cond_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/vuitton/android/data/dto/audioguide/TrackDetailDto$CueDto;->a:J

    iput-wide p4, p0, Lcom/vuitton/android/data/dto/audioguide/TrackDetailDto$CueDto;->b:J

    iput-object p6, p0, Lcom/vuitton/android/data/dto/audioguide/TrackDetailDto$CueDto;->c:Ljava/lang/String;

    return-void

    :cond_0
    sget-object p0, Lcom/vuitton/android/data/dto/audioguide/TrackDetailDto$CueDto$$serializer;->a:Lcom/vuitton/android/data/dto/audioguide/TrackDetailDto$CueDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/audioguide/TrackDetailDto$CueDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(JJLjava/lang/String;)V
    .locals 0

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-wide p1, p0, Lcom/vuitton/android/data/dto/audioguide/TrackDetailDto$CueDto;->a:J

    .line 28
    iput-wide p3, p0, Lcom/vuitton/android/data/dto/audioguide/TrackDetailDto$CueDto;->b:J

    .line 29
    iput-object p5, p0, Lcom/vuitton/android/data/dto/audioguide/TrackDetailDto$CueDto;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/audioguide/TrackDetailDto$CueDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/audioguide/TrackDetailDto$CueDto;

    iget-wide v3, p0, Lcom/vuitton/android/data/dto/audioguide/TrackDetailDto$CueDto;->a:J

    iget-wide v5, p1, Lcom/vuitton/android/data/dto/audioguide/TrackDetailDto$CueDto;->a:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/vuitton/android/data/dto/audioguide/TrackDetailDto$CueDto;->b:J

    iget-wide v5, p1, Lcom/vuitton/android/data/dto/audioguide/TrackDetailDto$CueDto;->b:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/vuitton/android/data/dto/audioguide/TrackDetailDto$CueDto;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/audioguide/TrackDetailDto$CueDto;->c:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/vuitton/android/data/dto/audioguide/TrackDetailDto$CueDto;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lcom/vuitton/android/data/dto/audioguide/TrackDetailDto$CueDto;->b:J

    invoke-static {v0, v1, v2, v3}, Lfc;->a(IIJ)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/android/data/dto/audioguide/TrackDetailDto$CueDto;->c:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, "CueDto(startMs="

    const-string v1, ", endMs="

    iget-wide v2, p0, Lcom/vuitton/android/data/dto/audioguide/TrackDetailDto$CueDto;->a:J

    invoke-static {v2, v3, v0, v1}, Lpq0;->q(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/vuitton/android/data/dto/audioguide/TrackDetailDto$CueDto;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/audioguide/TrackDetailDto$CueDto;->c:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
