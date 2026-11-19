.class public final Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$AcdProduct;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AcdProduct"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u0011\u0008\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0008J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\u000c\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0014\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0001H\u00d6\u0083\u0004J\n\u0010\u0010\u001a\u00020\u0011H\u00d6\u0081\u0004J\n\u0010\u0012\u001a\u00020\u0007H\u00d6\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$AcdProduct;",
        "",
        "data",
        "Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$Data;",
        "<init>",
        "(Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$Data;)V",
        "id",
        "",
        "(Ljava/lang/String;)V",
        "getData",
        "()Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$Data;",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "sdk_installedRelease"
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
.field private final data:Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$Data;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$Data;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$AcdProduct;->data:Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$Data;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$Data;

    const-string v1, "acdProducts"

    invoke-direct {v0, p1, v1}, Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$Data;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$AcdProduct;-><init>(Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$Data;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$AcdProduct;Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$Data;ILjava/lang/Object;)Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$AcdProduct;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$AcdProduct;->data:Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$Data;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$AcdProduct;->copy(Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$Data;)Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$AcdProduct;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$Data;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$AcdProduct;->data:Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$Data;

    return-object p0
.end method

.method public final copy(Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$Data;)Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$AcdProduct;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$AcdProduct;

    invoke-direct {p0, p1}, Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$AcdProduct;-><init>(Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$Data;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$AcdProduct;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$AcdProduct;

    iget-object p0, p0, Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$AcdProduct;->data:Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$Data;

    iget-object p1, p1, Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$AcdProduct;->data:Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$Data;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getData()Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$Data;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$AcdProduct;->data:Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$Data;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$AcdProduct;->data:Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$Data;

    invoke-virtual {p0}, Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$Data;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$AcdProduct;->data:Lcom/sightcall/universal/agent/recording/RecordingV3Request$Data$Relationships$Data;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AcdProduct(data="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
