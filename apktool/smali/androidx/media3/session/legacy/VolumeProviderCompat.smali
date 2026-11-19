.class public abstract Landroidx/media3/session/legacy/VolumeProviderCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/legacy/VolumeProviderCompat$ControlType;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/lang/String;

.field public d:I

.field public e:Landroid/media/VolumeProvider;


# direct methods
.method public constructor <init>(III)V
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/media3/session/legacy/VolumeProviderCompat;-><init>(IIILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/session/legacy/VolumeProviderCompat;->a:I

    iput p2, p0, Landroidx/media3/session/legacy/VolumeProviderCompat;->b:I

    iput p3, p0, Landroidx/media3/session/legacy/VolumeProviderCompat;->d:I

    iput-object p4, p0, Landroidx/media3/session/legacy/VolumeProviderCompat;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Landroid/media/VolumeProvider;
    .locals 8

    iget-object v0, p0, Landroidx/media3/session/legacy/VolumeProviderCompat;->e:Landroid/media/VolumeProvider;

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    new-instance v2, Landroidx/media3/session/legacy/VolumeProviderCompat$1;

    iget v6, p0, Landroidx/media3/session/legacy/VolumeProviderCompat;->d:I

    iget-object v7, p0, Landroidx/media3/session/legacy/VolumeProviderCompat;->c:Ljava/lang/String;

    iget v4, p0, Landroidx/media3/session/legacy/VolumeProviderCompat;->a:I

    iget v5, p0, Landroidx/media3/session/legacy/VolumeProviderCompat;->b:I

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Landroidx/media3/session/legacy/VolumeProviderCompat$1;-><init>(Landroidx/media3/session/legacy/VolumeProviderCompat;IIILjava/lang/String;)V

    iput-object v2, v3, Landroidx/media3/session/legacy/VolumeProviderCompat;->e:Landroid/media/VolumeProvider;

    goto :goto_0

    :cond_0
    move-object v3, p0

    new-instance p0, Landroidx/media3/session/legacy/VolumeProviderCompat$2;

    iget v0, v3, Landroidx/media3/session/legacy/VolumeProviderCompat;->b:I

    iget v1, v3, Landroidx/media3/session/legacy/VolumeProviderCompat;->d:I

    iget v2, v3, Landroidx/media3/session/legacy/VolumeProviderCompat;->a:I

    invoke-direct {p0, v3, v2, v0, v1}, Landroidx/media3/session/legacy/VolumeProviderCompat$2;-><init>(Landroidx/media3/session/legacy/VolumeProviderCompat;III)V

    iput-object p0, v3, Landroidx/media3/session/legacy/VolumeProviderCompat;->e:Landroid/media/VolumeProvider;

    goto :goto_0

    :cond_1
    move-object v3, p0

    :goto_0
    iget-object p0, v3, Landroidx/media3/session/legacy/VolumeProviderCompat;->e:Landroid/media/VolumeProvider;

    return-object p0
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public c(I)V
    .locals 0

    return-void
.end method
