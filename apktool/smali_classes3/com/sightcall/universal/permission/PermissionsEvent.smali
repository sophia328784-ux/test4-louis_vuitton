.class public Lcom/sightcall/universal/permission/PermissionsEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final grantResults:[I

.field private final neverAskAgain:Z

.field private final permissions:[Ljava/lang/String;

.field private final shouldShowRationales:[Z


# direct methods
.method public constructor <init>([Ljava/lang/String;[I[ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/permission/PermissionsEvent;->permissions:[Ljava/lang/String;

    iput-object p2, p0, Lcom/sightcall/universal/permission/PermissionsEvent;->grantResults:[I

    iput-object p3, p0, Lcom/sightcall/universal/permission/PermissionsEvent;->shouldShowRationales:[Z

    iput-boolean p4, p0, Lcom/sightcall/universal/permission/PermissionsEvent;->neverAskAgain:Z

    return-void
.end method


# virtual methods
.method public granted()Z
    .locals 5

    iget-object p0, p0, Lcom/sightcall/universal/permission/PermissionsEvent;->grantResults:[I

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public neverAskAgain()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/universal/permission/PermissionsEvent;->neverAskAgain:Z

    return p0
.end method

.method public shouldShowRationales()[Z
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/permission/PermissionsEvent;->shouldShowRationales:[Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PermissionsEvent{permissions="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sightcall/universal/permission/PermissionsEvent;->permissions:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", grantResults="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sightcall/universal/permission/PermissionsEvent;->grantResults:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", shouldShowRationales="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sightcall/universal/permission/PermissionsEvent;->shouldShowRationales:[Z

    invoke-static {v1}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", neverAskAgain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sightcall/universal/permission/PermissionsEvent;->neverAskAgain:Z

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Ld21;->q(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
