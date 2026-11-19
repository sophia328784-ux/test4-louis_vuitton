.class public final Lcom/vuitton/android/presentation/screen/osa/OsaDestinations$ToRegisterWithPrefilledEmailPage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/osa/OsaDestinations;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/osa/OsaDestinations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ToRegisterWithPrefilledEmailPage"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u001b\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/osa/OsaDestinations$ToRegisterWithPrefilledEmailPage;",
        "Lcom/vuitton/android/presentation/screen/osa/OsaDestinations;",
        "",
        "cid",
        "",
        "isNativeAccountActivationEnabled",
        "<init>",
        "(Ljava/lang/String;Z)V",
        "presentation"
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
.field public final a:Ljava/lang/String;

.field public final b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/osa/OsaDestinations$ToRegisterWithPrefilledEmailPage;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/osa/OsaDestinations$ToRegisterWithPrefilledEmailPage;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/osa/OsaDestinations$ToRegisterWithPrefilledEmailPage;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/osa/OsaDestinations$ToRegisterWithPrefilledEmailPage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/osa/OsaDestinations$ToRegisterWithPrefilledEmailPage;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/OsaDestinations$ToRegisterWithPrefilledEmailPage;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/osa/OsaDestinations$ToRegisterWithPrefilledEmailPage;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/osa/OsaDestinations$ToRegisterWithPrefilledEmailPage;->b:Z

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/osa/OsaDestinations$ToRegisterWithPrefilledEmailPage;->b:Z

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/osa/OsaDestinations$ToRegisterWithPrefilledEmailPage;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/osa/OsaDestinations$ToRegisterWithPrefilledEmailPage;->b:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, ", isNativeAccountActivationEnabled="

    const-string v1, ")"

    const-string v2, "ToRegisterWithPrefilledEmailPage(cid="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/osa/OsaDestinations$ToRegisterWithPrefilledEmailPage;->a:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/osa/OsaDestinations$ToRegisterWithPrefilledEmailPage;->b:Z

    invoke-static {v2, v3, v0, v1, p0}, Ld21;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
