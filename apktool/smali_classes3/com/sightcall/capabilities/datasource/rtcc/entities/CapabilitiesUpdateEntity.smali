.class public final Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesUpdateEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0080\u0008\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\u000f\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005H\u00c6\u0003J\u000f\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005H\u00c6\u0003J3\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00052\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005H\u00c6\u0001J\u0014\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d6\u0083\u0004J\n\u0010\u0015\u001a\u00020\u0016H\u00d6\u0081\u0004J\n\u0010\u0017\u001a\u00020\u0003H\u00d6\u0081\u0004R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u001c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u001c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000c\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesUpdateEntity;",
        "",
        "id",
        "",
        "addCapabilities",
        "",
        "removeCapabilities",
        "<init>",
        "(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V",
        "getId",
        "()Ljava/lang/String;",
        "getAddCapabilities",
        "()Ljava/util/List;",
        "getRemoveCapabilities",
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
        "capabilities_release"
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
.field private final addCapabilities:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "add"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "requestId"
    .end annotation
.end field

.field private final removeCapabilities:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "remove"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesUpdateEntity;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesUpdateEntity;->addCapabilities:Ljava/util/List;

    iput-object p3, p0, Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesUpdateEntity;->removeCapabilities:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesUpdateEntity;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesUpdateEntity;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesUpdateEntity;->id:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesUpdateEntity;->addCapabilities:Ljava/util/List;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesUpdateEntity;->removeCapabilities:Ljava/util/List;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesUpdateEntity;->copy(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesUpdateEntity;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesUpdateEntity;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesUpdateEntity;->addCapabilities:Ljava/util/List;

    return-object p0
.end method

.method public final component3()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesUpdateEntity;->removeCapabilities:Ljava/util/List;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesUpdateEntity;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesUpdateEntity;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesUpdateEntity;

    invoke-direct {p0, p1, p2, p3}, Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesUpdateEntity;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesUpdateEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesUpdateEntity;

    iget-object v1, p0, Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesUpdateEntity;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesUpdateEntity;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesUpdateEntity;->addCapabilities:Ljava/util/List;

    iget-object v3, p1, Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesUpdateEntity;->addCapabilities:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesUpdateEntity;->removeCapabilities:Ljava/util/List;

    iget-object p1, p1, Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesUpdateEntity;->removeCapabilities:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getAddCapabilities()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesUpdateEntity;->addCapabilities:Ljava/util/List;

    return-object p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesUpdateEntity;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final getRemoveCapabilities()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesUpdateEntity;->removeCapabilities:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesUpdateEntity;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesUpdateEntity;->addCapabilities:Ljava/util/List;

    invoke-static {v0, v1, v2}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object p0, p0, Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesUpdateEntity;->removeCapabilities:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesUpdateEntity;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesUpdateEntity;->addCapabilities:Ljava/util/List;

    iget-object p0, p0, Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesUpdateEntity;->removeCapabilities:Ljava/util/List;

    const-string v2, ", addCapabilities="

    const-string v3, ", removeCapabilities="

    const-string v4, "CapabilitiesUpdateEntity(id="

    invoke-static {v4, v0, v2, v1, v3}, Ld21;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-static {v0, p0, v1}, La;->o(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
