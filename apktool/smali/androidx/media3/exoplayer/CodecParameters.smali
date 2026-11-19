.class public final Landroidx/media3/exoplayer/CodecParameters;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/CodecParameters$Builder;
    }
.end annotation


# static fields
.field public static final b:Landroidx/media3/exoplayer/CodecParameters;


# instance fields
.field public final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/media3/exoplayer/CodecParameters$Builder;

    invoke-direct {v0}, Landroidx/media3/exoplayer/CodecParameters$Builder;-><init>()V

    new-instance v1, Landroidx/media3/exoplayer/CodecParameters;

    iget-object v0, v0, Landroidx/media3/exoplayer/CodecParameters$Builder;->a:Ljava/util/HashMap;

    invoke-direct {v1, v0}, Landroidx/media3/exoplayer/CodecParameters;-><init>(Ljava/util/HashMap;)V

    sput-object v1, Landroidx/media3/exoplayer/CodecParameters;->b:Landroidx/media3/exoplayer/CodecParameters;

    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/CodecParameters;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Landroidx/media3/exoplayer/CodecParameters;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Landroidx/media3/exoplayer/CodecParameters;

    iget-object p0, p0, Landroidx/media3/exoplayer/CodecParameters;->a:Ljava/util/Map;

    iget-object p1, p1, Landroidx/media3/exoplayer/CodecParameters;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/CodecParameters;->a:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->hashCode()I

    move-result p0

    return p0
.end method
