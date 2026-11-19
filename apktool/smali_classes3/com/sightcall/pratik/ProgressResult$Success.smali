.class public final Lcom/sightcall/pratik/ProgressResult$Success;
.super Lcom/sightcall/pratik/ProgressResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/pratik/ProgressResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Success"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Progress:",
        "Ljava/lang/Object;",
        "Success:",
        "Ljava/lang/Object;",
        "Error:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/sightcall/pratik/ProgressResult<",
        "TProgress;TSuccess;TError;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u0000*\u0004\u0008\u0003\u0010\u0001*\u0004\u0008\u0004\u0010\u0002*\u0004\u0008\u0005\u0010\u00032\u0014\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0004B\u000f\u0012\u0006\u0010\u0005\u001a\u00028\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000e\u0010\u000b\u001a\u00028\u0004H\u00c6\u0003\u00a2\u0006\u0002\u0010\tJ*\u0010\u000c\u001a\u0014\u0012\u0004\u0012\u00028\u0003\u0012\u0004\u0012\u00028\u0004\u0012\u0004\u0012\u00028\u00050\u00002\u0008\u0008\u0002\u0010\u0005\u001a\u00028\u0004H\u00c6\u0001\u00a2\u0006\u0002\u0010\rJ\u0014\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u00d6\u0083\u0004J\n\u0010\u0012\u001a\u00020\u0013H\u00d6\u0081\u0004J\n\u0010\u0014\u001a\u00020\u0015H\u00d6\u0081\u0004R\u0013\u0010\u0005\u001a\u00028\u0004\u00a2\u0006\n\n\u0002\u0010\n\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/sightcall/pratik/ProgressResult$Success;",
        "Progress",
        "Success",
        "Error",
        "Lcom/sightcall/pratik/ProgressResult;",
        "success",
        "<init>",
        "(Ljava/lang/Object;)V",
        "getSuccess",
        "()Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "component1",
        "copy",
        "(Ljava/lang/Object;)Lcom/sightcall/pratik/ProgressResult$Success;",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
        "pratik_release"
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
.field private final success:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TSuccess;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSuccess;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sightcall/pratik/ProgressResult;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/sightcall/pratik/ProgressResult$Success;->success:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic copy$default(Lcom/sightcall/pratik/ProgressResult$Success;Ljava/lang/Object;ILjava/lang/Object;)Lcom/sightcall/pratik/ProgressResult$Success;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/sightcall/pratik/ProgressResult$Success;->success:Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sightcall/pratik/ProgressResult$Success;->copy(Ljava/lang/Object;)Lcom/sightcall/pratik/ProgressResult$Success;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TSuccess;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/pratik/ProgressResult$Success;->success:Ljava/lang/Object;

    return-object p0
.end method

.method public final copy(Ljava/lang/Object;)Lcom/sightcall/pratik/ProgressResult$Success;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSuccess;)",
            "Lcom/sightcall/pratik/ProgressResult$Success<",
            "TProgress;TSuccess;TError;>;"
        }
    .end annotation

    new-instance p0, Lcom/sightcall/pratik/ProgressResult$Success;

    invoke-direct {p0, p1}, Lcom/sightcall/pratik/ProgressResult$Success;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sightcall/pratik/ProgressResult$Success;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sightcall/pratik/ProgressResult$Success;

    iget-object p0, p0, Lcom/sightcall/pratik/ProgressResult$Success;->success:Ljava/lang/Object;

    iget-object p1, p1, Lcom/sightcall/pratik/ProgressResult$Success;->success:Ljava/lang/Object;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getSuccess()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TSuccess;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/pratik/ProgressResult$Success;->success:Ljava/lang/Object;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/sightcall/pratik/ProgressResult$Success;->success:Ljava/lang/Object;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/sightcall/pratik/ProgressResult$Success;->success:Ljava/lang/Object;

    const-string v0, "Success(success="

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Lo60;->n(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
