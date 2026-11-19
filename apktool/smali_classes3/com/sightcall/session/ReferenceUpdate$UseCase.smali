.class public final Lcom/sightcall/session/ReferenceUpdate$UseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sightcall/session/ReferenceUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UseCase"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0015\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001Bs\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000b\u001a\u00020\u0007\u0012\u0006\u0010\u000c\u001a\u00020\u0007\u0012\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e\u0012\u0006\u0010\u0010\u001a\u00020\u0007\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u0012\u0006\u0010\u0013\u001a\u00020\u0007\u0012\u0006\u0010\u0014\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\t\u0010\u0017\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0007H\u00c6\u0003J\u000b\u0010\u001a\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u0007H\u00c6\u0003J\u0011\u0010\u001e\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000eH\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u0007H\u00c6\u0003J\t\u0010 \u001a\u00020\u0012H\u00c6\u0003J\t\u0010!\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\"\u001a\u00020\u0007H\u00c6\u0003J\u008d\u0001\u0010#\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00072\u0010\u0008\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0007H\u00c6\u0001J\u0014\u0010$\u001a\u00020\u00072\u0008\u0010%\u001a\u0004\u0018\u00010\u0001H\u00d6\u0083\u0004J\n\u0010&\u001a\u00020\u0012H\u00d6\u0081\u0004J\n\u0010\'\u001a\u00020(H\u00d6\u0081\u0004R\u0010\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u00020\u00128\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Lcom/sightcall/session/ReferenceUpdate$UseCase;",
        "",
        "userRole",
        "Lcom/sightcall/session/Reference$UserRole;",
        "videoOut",
        "Lcom/sightcall/session/Reference$CameraSide;",
        "videoOutStartup",
        "",
        "videoProfile",
        "Lcom/sightcall/session/Reference$VideoProfile;",
        "videoPointerOut",
        "mute",
        "videoOutWhilePicture",
        "buttonsLocal",
        "",
        "Lcom/sightcall/session/Reference$Button;",
        "alwaysVisible",
        "chatMessageOverlayTimeout",
        "",
        "chatQuickBar",
        "allowUsbCamera",
        "<init>",
        "(Lcom/sightcall/session/Reference$UserRole;Lcom/sightcall/session/Reference$CameraSide;ZLcom/sightcall/session/Reference$VideoProfile;ZZZLjava/util/List;ZIZZ)V",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "component11",
        "component12",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
        "",
        "session_release"
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
.field public final allowUsbCamera:Z

.field public final alwaysVisible:Z

.field public final buttonsLocal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sightcall/session/Reference$Button;",
            ">;"
        }
    .end annotation
.end field

.field public final chatMessageOverlayTimeout:I

.field public final chatQuickBar:Z

.field public final mute:Z

.field public final userRole:Lcom/sightcall/session/Reference$UserRole;

.field public final videoOut:Lcom/sightcall/session/Reference$CameraSide;

.field public final videoOutStartup:Z

.field public final videoOutWhilePicture:Z

.field public final videoPointerOut:Z

.field public final videoProfile:Lcom/sightcall/session/Reference$VideoProfile;


# direct methods
.method public constructor <init>(Lcom/sightcall/session/Reference$UserRole;Lcom/sightcall/session/Reference$CameraSide;ZLcom/sightcall/session/Reference$VideoProfile;ZZZLjava/util/List;ZIZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/session/Reference$UserRole;",
            "Lcom/sightcall/session/Reference$CameraSide;",
            "Z",
            "Lcom/sightcall/session/Reference$VideoProfile;",
            "ZZZ",
            "Ljava/util/List<",
            "+",
            "Lcom/sightcall/session/Reference$Button;",
            ">;ZIZZ)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->userRole:Lcom/sightcall/session/Reference$UserRole;

    iput-object p2, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->videoOut:Lcom/sightcall/session/Reference$CameraSide;

    iput-boolean p3, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->videoOutStartup:Z

    iput-object p4, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->videoProfile:Lcom/sightcall/session/Reference$VideoProfile;

    iput-boolean p5, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->videoPointerOut:Z

    iput-boolean p6, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->mute:Z

    iput-boolean p7, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->videoOutWhilePicture:Z

    iput-object p8, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->buttonsLocal:Ljava/util/List;

    iput-boolean p9, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->alwaysVisible:Z

    iput p10, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->chatMessageOverlayTimeout:I

    iput-boolean p11, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->chatQuickBar:Z

    iput-boolean p12, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->allowUsbCamera:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/sightcall/session/ReferenceUpdate$UseCase;Lcom/sightcall/session/Reference$UserRole;Lcom/sightcall/session/Reference$CameraSide;ZLcom/sightcall/session/Reference$VideoProfile;ZZZLjava/util/List;ZIZZILjava/lang/Object;)Lcom/sightcall/session/ReferenceUpdate$UseCase;
    .locals 0

    and-int/lit8 p14, p13, 0x1

    if-eqz p14, :cond_0

    iget-object p1, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->userRole:Lcom/sightcall/session/Reference$UserRole;

    :cond_0
    and-int/lit8 p14, p13, 0x2

    if-eqz p14, :cond_1

    iget-object p2, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->videoOut:Lcom/sightcall/session/Reference$CameraSide;

    :cond_1
    and-int/lit8 p14, p13, 0x4

    if-eqz p14, :cond_2

    iget-boolean p3, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->videoOutStartup:Z

    :cond_2
    and-int/lit8 p14, p13, 0x8

    if-eqz p14, :cond_3

    iget-object p4, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->videoProfile:Lcom/sightcall/session/Reference$VideoProfile;

    :cond_3
    and-int/lit8 p14, p13, 0x10

    if-eqz p14, :cond_4

    iget-boolean p5, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->videoPointerOut:Z

    :cond_4
    and-int/lit8 p14, p13, 0x20

    if-eqz p14, :cond_5

    iget-boolean p6, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->mute:Z

    :cond_5
    and-int/lit8 p14, p13, 0x40

    if-eqz p14, :cond_6

    iget-boolean p7, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->videoOutWhilePicture:Z

    :cond_6
    and-int/lit16 p14, p13, 0x80

    if-eqz p14, :cond_7

    iget-object p8, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->buttonsLocal:Ljava/util/List;

    :cond_7
    and-int/lit16 p14, p13, 0x100

    if-eqz p14, :cond_8

    iget-boolean p9, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->alwaysVisible:Z

    :cond_8
    and-int/lit16 p14, p13, 0x200

    if-eqz p14, :cond_9

    iget p10, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->chatMessageOverlayTimeout:I

    :cond_9
    and-int/lit16 p14, p13, 0x400

    if-eqz p14, :cond_a

    iget-boolean p11, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->chatQuickBar:Z

    :cond_a
    and-int/lit16 p13, p13, 0x800

    if-eqz p13, :cond_b

    iget-boolean p12, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->allowUsbCamera:Z

    :cond_b
    move p13, p11

    move p14, p12

    move p11, p9

    move p12, p10

    move p9, p7

    move-object p10, p8

    move p7, p5

    move p8, p6

    move p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p14}, Lcom/sightcall/session/ReferenceUpdate$UseCase;->copy(Lcom/sightcall/session/Reference$UserRole;Lcom/sightcall/session/Reference$CameraSide;ZLcom/sightcall/session/Reference$VideoProfile;ZZZLjava/util/List;ZIZZ)Lcom/sightcall/session/ReferenceUpdate$UseCase;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/sightcall/session/Reference$UserRole;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->userRole:Lcom/sightcall/session/Reference$UserRole;

    return-object p0
.end method

.method public final component10()I
    .locals 0

    iget p0, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->chatMessageOverlayTimeout:I

    return p0
.end method

.method public final component11()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->chatQuickBar:Z

    return p0
.end method

.method public final component12()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->allowUsbCamera:Z

    return p0
.end method

.method public final component2()Lcom/sightcall/session/Reference$CameraSide;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->videoOut:Lcom/sightcall/session/Reference$CameraSide;

    return-object p0
.end method

.method public final component3()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->videoOutStartup:Z

    return p0
.end method

.method public final component4()Lcom/sightcall/session/Reference$VideoProfile;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->videoProfile:Lcom/sightcall/session/Reference$VideoProfile;

    return-object p0
.end method

.method public final component5()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->videoPointerOut:Z

    return p0
.end method

.method public final component6()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->mute:Z

    return p0
.end method

.method public final component7()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->videoOutWhilePicture:Z

    return p0
.end method

.method public final component8()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sightcall/session/Reference$Button;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->buttonsLocal:Ljava/util/List;

    return-object p0
.end method

.method public final component9()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->alwaysVisible:Z

    return p0
.end method

.method public final copy(Lcom/sightcall/session/Reference$UserRole;Lcom/sightcall/session/Reference$CameraSide;ZLcom/sightcall/session/Reference$VideoProfile;ZZZLjava/util/List;ZIZZ)Lcom/sightcall/session/ReferenceUpdate$UseCase;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/session/Reference$UserRole;",
            "Lcom/sightcall/session/Reference$CameraSide;",
            "Z",
            "Lcom/sightcall/session/Reference$VideoProfile;",
            "ZZZ",
            "Ljava/util/List<",
            "+",
            "Lcom/sightcall/session/Reference$Button;",
            ">;ZIZZ)",
            "Lcom/sightcall/session/ReferenceUpdate$UseCase;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;

    invoke-direct/range {p0 .. p12}, Lcom/sightcall/session/ReferenceUpdate$UseCase;-><init>(Lcom/sightcall/session/Reference$UserRole;Lcom/sightcall/session/Reference$CameraSide;ZLcom/sightcall/session/Reference$VideoProfile;ZZZLjava/util/List;ZIZZ)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sightcall/session/ReferenceUpdate$UseCase;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sightcall/session/ReferenceUpdate$UseCase;

    iget-object v1, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->userRole:Lcom/sightcall/session/Reference$UserRole;

    iget-object v3, p1, Lcom/sightcall/session/ReferenceUpdate$UseCase;->userRole:Lcom/sightcall/session/Reference$UserRole;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->videoOut:Lcom/sightcall/session/Reference$CameraSide;

    iget-object v3, p1, Lcom/sightcall/session/ReferenceUpdate$UseCase;->videoOut:Lcom/sightcall/session/Reference$CameraSide;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->videoOutStartup:Z

    iget-boolean v3, p1, Lcom/sightcall/session/ReferenceUpdate$UseCase;->videoOutStartup:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->videoProfile:Lcom/sightcall/session/Reference$VideoProfile;

    iget-object v3, p1, Lcom/sightcall/session/ReferenceUpdate$UseCase;->videoProfile:Lcom/sightcall/session/Reference$VideoProfile;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->videoPointerOut:Z

    iget-boolean v3, p1, Lcom/sightcall/session/ReferenceUpdate$UseCase;->videoPointerOut:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->mute:Z

    iget-boolean v3, p1, Lcom/sightcall/session/ReferenceUpdate$UseCase;->mute:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->videoOutWhilePicture:Z

    iget-boolean v3, p1, Lcom/sightcall/session/ReferenceUpdate$UseCase;->videoOutWhilePicture:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->buttonsLocal:Ljava/util/List;

    iget-object v3, p1, Lcom/sightcall/session/ReferenceUpdate$UseCase;->buttonsLocal:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->alwaysVisible:Z

    iget-boolean v3, p1, Lcom/sightcall/session/ReferenceUpdate$UseCase;->alwaysVisible:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget v1, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->chatMessageOverlayTimeout:I

    iget v3, p1, Lcom/sightcall/session/ReferenceUpdate$UseCase;->chatMessageOverlayTimeout:I

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-boolean v1, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->chatQuickBar:Z

    iget-boolean v3, p1, Lcom/sightcall/session/ReferenceUpdate$UseCase;->chatQuickBar:Z

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-boolean p0, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->allowUsbCamera:Z

    iget-boolean p1, p1, Lcom/sightcall/session/ReferenceUpdate$UseCase;->allowUsbCamera:Z

    if-eq p0, p1, :cond_d

    return v2

    :cond_d
    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->userRole:Lcom/sightcall/session/Reference$UserRole;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->videoOut:Lcom/sightcall/session/Reference$CameraSide;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->videoOutStartup:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->videoProfile:Lcom/sightcall/session/Reference$VideoProfile;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->videoPointerOut:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->mute:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->videoOutWhilePicture:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->buttonsLocal:Ljava/util/List;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->alwaysVisible:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget v2, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->chatMessageOverlayTimeout:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget-boolean v2, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->chatQuickBar:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->allowUsbCamera:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    iget-object v0, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->userRole:Lcom/sightcall/session/Reference$UserRole;

    iget-object v1, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->videoOut:Lcom/sightcall/session/Reference$CameraSide;

    iget-boolean v2, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->videoOutStartup:Z

    iget-object v3, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->videoProfile:Lcom/sightcall/session/Reference$VideoProfile;

    iget-boolean v4, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->videoPointerOut:Z

    iget-boolean v5, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->mute:Z

    iget-boolean v6, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->videoOutWhilePicture:Z

    iget-object v7, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->buttonsLocal:Ljava/util/List;

    iget-boolean v8, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->alwaysVisible:Z

    iget v9, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->chatMessageOverlayTimeout:I

    iget-boolean v10, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->chatQuickBar:Z

    iget-boolean p0, p0, Lcom/sightcall/session/ReferenceUpdate$UseCase;->allowUsbCamera:Z

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "UseCase(userRole="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", videoOut="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", videoOutStartup="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", videoProfile="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", videoPointerOut="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mute="

    const-string v1, ", videoOutWhilePicture="

    invoke-static {v11, v4, v0, v5, v1}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", buttonsLocal="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", alwaysVisible="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", chatMessageOverlayTimeout="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", chatQuickBar="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", allowUsbCamera="

    const-string v1, ")"

    invoke-static {v11, v10, v0, p0, v1}, Lpq0;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
