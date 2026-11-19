.class public final Lcom/sightcall/libraries/archi/coordinator/Permission;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\r\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0014\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u00d6\u0083\u0004J\n\u0010\u0012\u001a\u00020\u0003H\u00d6\u0081\u0004J\n\u0010\u0013\u001a\u00020\u0014H\u00d6\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/sightcall/libraries/archi/coordinator/Permission;",
        "",
        "requestCode",
        "",
        "state",
        "Lcom/sightcall/libraries/archi/coordinator/PermissionState;",
        "<init>",
        "(ILcom/sightcall/libraries/archi/coordinator/PermissionState;)V",
        "getRequestCode",
        "()I",
        "getState",
        "()Lcom/sightcall/libraries/archi/coordinator/PermissionState;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
        "archi_release"
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
.field private final requestCode:I

.field private final state:Lcom/sightcall/libraries/archi/coordinator/PermissionState;


# direct methods
.method public constructor <init>(ILcom/sightcall/libraries/archi/coordinator/PermissionState;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sightcall/libraries/archi/coordinator/Permission;->requestCode:I

    iput-object p2, p0, Lcom/sightcall/libraries/archi/coordinator/Permission;->state:Lcom/sightcall/libraries/archi/coordinator/PermissionState;

    return-void
.end method

.method public static synthetic copy$default(Lcom/sightcall/libraries/archi/coordinator/Permission;ILcom/sightcall/libraries/archi/coordinator/PermissionState;ILjava/lang/Object;)Lcom/sightcall/libraries/archi/coordinator/Permission;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/sightcall/libraries/archi/coordinator/Permission;->requestCode:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/sightcall/libraries/archi/coordinator/Permission;->state:Lcom/sightcall/libraries/archi/coordinator/PermissionState;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/sightcall/libraries/archi/coordinator/Permission;->copy(ILcom/sightcall/libraries/archi/coordinator/PermissionState;)Lcom/sightcall/libraries/archi/coordinator/Permission;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 0

    iget p0, p0, Lcom/sightcall/libraries/archi/coordinator/Permission;->requestCode:I

    return p0
.end method

.method public final component2()Lcom/sightcall/libraries/archi/coordinator/PermissionState;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/libraries/archi/coordinator/Permission;->state:Lcom/sightcall/libraries/archi/coordinator/PermissionState;

    return-object p0
.end method

.method public final copy(ILcom/sightcall/libraries/archi/coordinator/PermissionState;)Lcom/sightcall/libraries/archi/coordinator/Permission;
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/sightcall/libraries/archi/coordinator/Permission;

    invoke-direct {p0, p1, p2}, Lcom/sightcall/libraries/archi/coordinator/Permission;-><init>(ILcom/sightcall/libraries/archi/coordinator/PermissionState;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sightcall/libraries/archi/coordinator/Permission;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sightcall/libraries/archi/coordinator/Permission;

    iget v1, p0, Lcom/sightcall/libraries/archi/coordinator/Permission;->requestCode:I

    iget v3, p1, Lcom/sightcall/libraries/archi/coordinator/Permission;->requestCode:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/sightcall/libraries/archi/coordinator/Permission;->state:Lcom/sightcall/libraries/archi/coordinator/PermissionState;

    iget-object p1, p1, Lcom/sightcall/libraries/archi/coordinator/Permission;->state:Lcom/sightcall/libraries/archi/coordinator/PermissionState;

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getRequestCode()I
    .locals 0

    iget p0, p0, Lcom/sightcall/libraries/archi/coordinator/Permission;->requestCode:I

    return p0
.end method

.method public final getState()Lcom/sightcall/libraries/archi/coordinator/PermissionState;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/libraries/archi/coordinator/Permission;->state:Lcom/sightcall/libraries/archi/coordinator/PermissionState;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/sightcall/libraries/archi/coordinator/Permission;->requestCode:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/sightcall/libraries/archi/coordinator/Permission;->state:Lcom/sightcall/libraries/archi/coordinator/PermissionState;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/sightcall/libraries/archi/coordinator/Permission;->requestCode:I

    iget-object p0, p0, Lcom/sightcall/libraries/archi/coordinator/Permission;->state:Lcom/sightcall/libraries/archi/coordinator/PermissionState;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Permission(requestCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", state="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
