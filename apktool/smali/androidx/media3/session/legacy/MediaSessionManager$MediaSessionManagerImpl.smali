.class Landroidx/media3/session/legacy/MediaSessionManager$MediaSessionManagerImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/legacy/MediaSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaSessionManagerImpl"
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/content/ContentResolver;


# virtual methods
.method public final a(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfoImplApi28;Ljava/lang/String;)Z
    .locals 1

    iget v0, p1, Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfoImplBase;->b:I

    iget-object p0, p0, Landroidx/media3/session/legacy/MediaSessionManager$MediaSessionManagerImpl;->a:Landroid/content/Context;

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    iget-object p1, p1, Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfoImplBase;->a:Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_0
    iget p1, p1, Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfoImplBase;->c:I

    invoke-virtual {p0, p2, v0, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_1

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
