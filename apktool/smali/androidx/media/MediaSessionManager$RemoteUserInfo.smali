.class public final Landroidx/media/MediaSessionManager$RemoteUserInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final a:Landroidx/media/MediaSessionManagerImplApi28$RemoteUserInfoImplApi28;


# direct methods
.method public constructor <init>(Landroid/media/session/MediaSessionManager$RemoteUserInfo;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroidx/media/MediaSessionManagerImplApi28$RemoteUserInfoImplApi28;

    invoke-virtual {p1}, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->getPid()I

    move-result v2

    invoke-virtual {p1}, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->getUid()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Landroidx/media/MediaSessionManager$RemoteUserInfo;->a:Landroidx/media/MediaSessionManagerImplApi28$RemoteUserInfoImplApi28;

    return-void

    :cond_0
    const-string p0, "packageName should be nonempty"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string p0, "package shouldn\'t be null"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 49
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    new-instance v0, Landroidx/media/MediaSessionManagerImplApi28$RemoteUserInfoImplApi28;

    .line 51
    invoke-direct {v0, p1, p2, p3}, Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;-><init>(Ljava/lang/String;II)V

    .line 52
    new-instance v1, Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    invoke-direct {v1, p1, p2, p3}, Landroid/media/session/MediaSessionManager$RemoteUserInfo;-><init>(Ljava/lang/String;II)V

    .line 53
    iput-object v0, p0, Landroidx/media/MediaSessionManager$RemoteUserInfo;->a:Landroidx/media/MediaSessionManagerImplApi28$RemoteUserInfoImplApi28;

    return-void

    .line 54
    :cond_0
    const-string p0, "packageName should be nonempty"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_1
    const-string p0, "package shouldn\'t be null"

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Landroidx/media/MediaSessionManager$RemoteUserInfo;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Landroidx/media/MediaSessionManager$RemoteUserInfo;

    iget-object p1, p1, Landroidx/media/MediaSessionManager$RemoteUserInfo;->a:Landroidx/media/MediaSessionManagerImplApi28$RemoteUserInfoImplApi28;

    iget-object p0, p0, Landroidx/media/MediaSessionManager$RemoteUserInfo;->a:Landroidx/media/MediaSessionManagerImplApi28$RemoteUserInfoImplApi28;

    invoke-virtual {p0, p1}, Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/media/MediaSessionManager$RemoteUserInfo;->a:Landroidx/media/MediaSessionManagerImplApi28$RemoteUserInfoImplApi28;

    invoke-virtual {p0}, Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->hashCode()I

    move-result p0

    return p0
.end method
